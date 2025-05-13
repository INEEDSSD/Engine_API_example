import { createMesh, updateMesh } from "./CreateMesh";
import { MarchingCubes, Volume } from "./MarchingCubes";
import { Metaball_Base } from "./Metaball_Base";

export class Metaball_WriteBuffer extends Metaball_Base {

    vertexElements: number;
    indexElements: number;

    vertexArray: Float32Array;
    normalArray: Float32Array;
    indexArray: Uint32Array;

    mesh: Laya.Mesh;
    indexBuffer: Laya.IndexBuffer3D;
    vertexBuffer: Laya.VertexBuffer3D;
    subMesh: Laya.SubMesh;
    meshFilter: Laya.MeshFilter;

    constructor(volume: Volume, meshFilter: Laya.MeshFilter) {
        super(volume);

        this.vertexElements = this.vertexBufferSize / Float32Array.BYTES_PER_ELEMENT;
        this.indexElements = this.indexBufferSize / Uint32Array.BYTES_PER_ELEMENT;

        this.vertexArray = new Float32Array(this.vertexElements * 2);
        this.normalArray = new Float32Array(this.vertexElements);
        this.indexArray = new Uint32Array(this.indexElements);

        this.meshFilter = meshFilter;
    }

    update(marchingCubes: MarchingCubes): void {

        let obj = {
            positions: this.vertexArray,
            normals: this.vertexArray,
            indices: this.indexArray,
            vertexOffset: 0,
            indexOffset: 0,
            maxVertices: 0,
        }
        this.indexCount = marchingCubes.generateMesh(obj);


        if (!this.mesh) {
            let vbd = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL");
            let obj = createMesh(vbd, this.vertexArray, this.indexArray);

            this.mesh = obj.mesh;
            this.indexBuffer = obj.indexBuffer;
            this.vertexBuffer = obj.vertexBuffer;
            this.subMesh = obj.subMesh;
            this.subMesh.mode = Laya.MeshTopology.Triangles;
        }

        this.indexBuffer.setData(this.indexArray);
        this.vertexBuffer.setData(this.vertexArray.buffer);

        updateMesh(this.mesh, this.indexBuffer, this.vertexBuffer, this.subMesh, this.indexCount);

        if (this.meshFilter.sharedMesh != this.mesh) {
            this.meshFilter.sharedMesh = this.mesh;
        }
    }

    updateCompute(): void {

    }

    destroy(): void {
        super.destroy();

        if (this.meshFilter) {
            this.meshFilter.sharedMesh = null;
        }

        this.vertexArray = null;
        this.normalArray = null;
        this.indexArray = null;

        this.indexBuffer.destroy();
        this.vertexBuffer.destroy();
        this.mesh.destroy();
    }

}

