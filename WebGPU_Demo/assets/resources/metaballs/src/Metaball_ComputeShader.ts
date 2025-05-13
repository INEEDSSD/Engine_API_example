import { createMesh, updateMesh } from "./CreateMesh";
import { MarchingCubes, Volume } from "./MarchingCubes";
import { MarchingCubesEdgeTable, MarchingCubesTriTable } from "./MarchingCubesTables";
import { Metaball_Base } from "./Metaball_Base"
import { MarchingCubesComputeSource, MetaballFieldComputeSource, WORKGROUP_SIZE } from "./Metaball_ComputeSource";
import { Metaballs } from "./Metaballs";

const MAX_METABALLS = 32;

interface ResourceType {
    metaballBuffer: Laya.IDeviceBuffer;
    vertexBuffer: Laya.IDeviceBuffer;
    normalBuffer: Laya.IDeviceBuffer;
    indexBuffer: Laya.IDeviceBuffer;
    indirectBuffer: Laya.IDeviceBuffer;
    metaballComputeData: Laya.ShaderData;
    marchingCubesComputeData: Laya.ShaderData;
    defines: Laya.IDefineDatas;
}

export class Metaball_ComputeShader extends Metaball_Base {

    tablesBuffer: Laya.IDeviceBuffer;

    volumeElements: number = 0;

    volumeBufferSize: number = 0;

    volumeBuffer: Laya.IDeviceBuffer;

    metaballBufferSize: number;
    metaballArray: ArrayBuffer;
    metaballArrayHeader: Uint32Array;
    metaballArrayBalls: Float32Array;
    indirectArray: Uint32Array;

    resources: ResourceType[];

    drawIndex: number;
    computeIndex: number;

    computeCommandBuffer: Laya.ComputeCommandBuffer;

    MetaballIsosurfaceComputeShader: Laya.ComputeShader;
    MarchingCubesComputeShader: Laya.ComputeShader;


    /////
    mesh: Laya.Mesh;
    indexBuffer: Laya.IndexBuffer3D;
    vertexBuffer: Laya.VertexBuffer3D;
    subMesh: Laya.SubMesh;

    vertices: Float32Array;
    indices: Uint32Array;

    meshFilter: Laya.MeshFilter;

    constructor(volume: Volume, meshFilter: Laya.MeshFilter) {
        super(volume);
        this.meshFilter = meshFilter;

        const tablesDataLength = (MarchingCubesEdgeTable.length + MarchingCubesTriTable.length);
        const tablesArray = new Int32Array(tablesDataLength);
        tablesArray.set(MarchingCubesEdgeTable);
        tablesArray.set(MarchingCubesTriTable, MarchingCubesEdgeTable.length);

        this.tablesBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST);
        this.tablesBuffer.setDataLength(tablesDataLength * 4);
        this.tablesBuffer.setData(tablesArray.buffer, 0, 0, tablesArray.byteLength);

        this.volumeElements = this.volume.width * this.volume.height * this.volume.depth;

        this.volumeBufferSize = Float32Array.BYTES_PER_ELEMENT * 12 + Uint32Array.BYTES_PER_ELEMENT * 4 + Float32Array.BYTES_PER_ELEMENT * this.volumeElements;

        this.volumeBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST);
        this.volumeBuffer.setDataLength(this.volumeBufferSize);

        const volumeMappedArray = new ArrayBuffer(this.volumeBufferSize);

        const volumeFloat32 = new Float32Array(volumeMappedArray);
        const volumeSize = new Uint32Array(volumeMappedArray, 48, 3);
        {
            volumeFloat32[0] = volume.xMin;
            volumeFloat32[1] = volume.yMin;
            volumeFloat32[2] = volume.zMin;

            volumeFloat32[4] = volume.xMax;
            volumeFloat32[5] = volume.yMax;
            volumeFloat32[6] = volume.zMax;

            volumeFloat32[8] = volume.xStep;
            volumeFloat32[9] = volume.yStep;
            volumeFloat32[10] = volume.zStep;

            volumeSize[0] = volume.width;
            volumeSize[1] = volume.height;
            volumeSize[2] = volume.depth;

            volumeFloat32[15] = 40; // Threshold. TODO: Should be dynamic.
        }
        this.volumeBuffer.setData(volumeMappedArray, 0, 0, this.volumeBufferSize);

        this.metaballBufferSize = (Uint32Array.BYTES_PER_ELEMENT * 4) + (Float32Array.BYTES_PER_ELEMENT * 8 * MAX_METABALLS);
        this.metaballArray = new ArrayBuffer(this.metaballBufferSize);
        this.metaballArrayHeader = new Uint32Array(this.metaballArray, 0, 4);
        this.metaballArrayBalls = new Float32Array(this.metaballArray, 16);

        this.marchingCubeCells = (volume.width) * (volume.height) * (volume.depth);
        this.vertexBufferSize = (Float32Array.BYTES_PER_ELEMENT * 6) * 12 * this.marchingCubeCells;
        this.indexBufferSize = Uint32Array.BYTES_PER_ELEMENT * 15 * this.marchingCubeCells;

        this.indirectArray = new Uint32Array(9);
        this.indirectArray[0] = 4; // Number of vertices for point rendering
        this.indirectArray[5] = 1; // Number of instances for normal rendering

        const createMetaballResources = (): ResourceType => {
            let metaballBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST);
            metaballBuffer.setDataLength(this.metaballBufferSize);

            // todo buffer usage STORAGE | VERTEX
            let vertexBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST | Laya.EDeviceBufferUsage.COPY_SRC);
            vertexBuffer.setDataLength(this.vertexBufferSize);

            // todo buffer usage STORAGE | VERTEX
            let normalBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST | Laya.EDeviceBufferUsage.COPY_SRC);
            normalBuffer.setDataLength(this.vertexBufferSize / 2);

            // todo buffer usage STORAGE | INDEX
            let indexBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST | Laya.EDeviceBufferUsage.COPY_SRC);
            indexBuffer.setDataLength(this.indexBufferSize);

            // todo buffer usage STORAGE | INDIRECT | COPY_DST
            let indirectBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST);
            indirectBuffer.setDataLength(this.indirectArray.byteLength);

            let metaballComputeData = Laya.LayaGL.renderDeviceFactory.createShaderData();
            metaballComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("metaballs"), metaballBuffer);
            metaballComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("volume"), this.volumeBuffer);


            let marchingCubesComputeData = Laya.LayaGL.renderDeviceFactory.createShaderData();
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("tables"), this.tablesBuffer);
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("volume"), this.volumeBuffer);
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("positionsOut"), vertexBuffer);
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("normalsOut"), normalBuffer);
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("indicesOut"), indexBuffer);
            marchingCubesComputeData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("drawOut"), indirectBuffer);

            let defines = Laya.LayaGL.unitRenderModuleDataFactory.createDefineDatas();

            return {
                metaballBuffer,
                vertexBuffer,
                normalBuffer,
                indexBuffer,
                indirectBuffer,
                metaballComputeData,
                marchingCubesComputeData,
                defines,
            }
        };

        this.resources = [createMetaballResources(), createMetaballResources()];

        this.computeCommandBuffer = new Laya.ComputeCommandBuffer();

        const addUniform = (name: string, type: Laya.ShaderDataType, uniformMap: Laya.CommandUniformMap) => {
            let propertyID = Laya.Shader3D.propertyNameToID(name);
            uniformMap.addShaderUniform(propertyID, name, type);
            return propertyID;
        }
        {
            let uniformCommandMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("MetaballIsosurface");
            addUniform("metaballs", Laya.ShaderDataType.DeviceBuffer, uniformCommandMap);
            addUniform("volume", Laya.ShaderDataType.DeviceBuffer, uniformCommandMap);
            this.MetaballIsosurfaceComputeShader = new Laya.ComputeShader("MetaballIsosurface", MetaballFieldComputeSource, [uniformCommandMap]);
        }

        {
            let uniformMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("MarchingCubes");
            // todo 
            addUniform("tables", Laya.ShaderDataType.DeviceBuffer, uniformMap);
            addUniform("volume", Laya.ShaderDataType.DeviceBuffer, uniformMap);
            addUniform("positionsOut", Laya.ShaderDataType.DeviceBuffer, uniformMap);
            addUniform("normalsOut", Laya.ShaderDataType.DeviceBuffer, uniformMap);
            addUniform("indicesOut", Laya.ShaderDataType.DeviceBuffer, uniformMap);
            addUniform("drawOut", Laya.ShaderDataType.DeviceBuffer, uniformMap);

            this.MarchingCubesComputeShader = new Laya.ComputeShader("MarchingCubes", MarchingCubesComputeSource, [uniformMap]);
        }

        this.drawIndex = 0;
        this.computeIndex = 0;
    }

    updateMetaballs(metaballs: Metaballs, marchingCubes: MarchingCubes): void {
        super.updateMetaballs(metaballs, marchingCubes);

        this.metaballArrayHeader[0] = metaballs.balls.length;

        for (let i = 0; i < metaballs.balls.length; i++) {
            const ball = metaballs.balls[i];
            const offset = i * 8;
            this.metaballArrayBalls[offset] = ball.position.x;
            this.metaballArrayBalls[offset + 1] = ball.position.y;
            this.metaballArrayBalls[offset + 2] = ball.position.z;
            this.metaballArrayBalls[offset + 3] = ball.radius;
            this.metaballArrayBalls[offset + 4] = ball.strength;
            this.metaballArrayBalls[offset + 5] = ball.subtract;
        }

        // Update the metaball buffer with the latest metaball values.
        const resource = this.resources[this.computeIndex];
        resource.metaballBuffer.setData(this.metaballArray, 0, 0, this.metaballArray.byteLength);

    }

    update(marchingCubes: MarchingCubes): void {
        if (!this.mesh) {
            this.vertices = new Float32Array(new ArrayBuffer(this.vertexBufferSize));
            this.indices = new Uint32Array(new ArrayBuffer(this.indexBufferSize)).fill(0);
            let vbd = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL");
            let obj = createMesh(vbd, this.vertices, this.indices);

            this.mesh = obj.mesh;
            this.indexBuffer = obj.indexBuffer;
            this.vertexBuffer = obj.vertexBuffer;
            this.subMesh = obj.subMesh;
            this.subMesh.mode = Laya.MeshTopology.Triangles;
        }
    }

    async updateCompute() {
        this.drawIndex = this.computeIndex;
        this.computeIndex = (this.computeIndex + 1) % this.resources.length;

        const resource = this.resources[this.computeIndex];

        const dispatchSize = [
            Math.ceil((this.volume.width) / WORKGROUP_SIZE[0]),
            Math.ceil((this.volume.height) / WORKGROUP_SIZE[1]),
            Math.ceil((this.volume.depth) / WORKGROUP_SIZE[2])
        ];



        resource.indirectBuffer.setData(this.indirectArray, 0, 0, this.indirectArray.byteLength);

        // indirect draw ?
        const indirectDraw = false;
        if (!indirectDraw) {
            this.indexCount = this.indexBufferSize / Uint32Array.BYTES_PER_ELEMENT;
        }

        const dispatchParams = new Laya.Vector3();
        dispatchParams.fromArray(dispatchSize);

        resource.indexBuffer.setData(this.indices.buffer, 0, 0, this.indexBufferSize);

        this.computeCommandBuffer.clearCMDs();

        this.computeCommandBuffer.addDispatchCommand(this.MetaballIsosurfaceComputeShader, "computeMain", resource.defines, [resource.metaballComputeData], dispatchParams);

        this.computeCommandBuffer.addDispatchCommand(this.MarchingCubesComputeShader, "computeMain", resource.defines, [resource.marchingCubesComputeData], dispatchParams);

        this.computeCommandBuffer.addBufferToBufferCommand(resource.vertexBuffer, this.vertexBuffer._deviceBuffer, 0, 0, this.vertexBufferSize);

        this.computeCommandBuffer.addBufferToBufferCommand(resource.indexBuffer, this.indexBuffer._deviceBuffer, 0, 0, this.indexBufferSize);

        this.computeCommandBuffer.executeCMDs();

        {
            updateMesh(this.mesh, this.indexBuffer, this.vertexBuffer, this.subMesh, this.indexCount);

            if (this.meshFilter.sharedMesh != this.mesh) {
                this.meshFilter.sharedMesh = this.mesh;
            }
        }

    }

    destroy(): void {
        super.destroy();

        if (this.meshFilter) {
            this.meshFilter.sharedMesh = null;
        }

        this.vertices = null;
        this.indices = null;

        this.indexBuffer.destroy();
        this.vertexBuffer.destroy();
        this.mesh.destroy();

        // todo
    }

}