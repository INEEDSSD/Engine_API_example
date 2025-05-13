import { BundleCullingBundleElement } from "./BundleCullingBundleElement";
import { createComputeShader, createCullingSpriteCommandMap, initShader } from "./BundleCullingComputeShader";
import { BundleCullingConfig } from "../BundleCullingConfig";
import { BundleCullingRenderElement } from "./BundleCullingRenderElement";

const { regClass, property } = Laya;


const tempvec0 = new Laya.Vector3();
const tempvec1 = new Laya.Vector3();
const tempQuaternion0 = new Laya.Quaternion();
const tempMatrix = new Laya.Matrix4x4();

@regClass()
export class BundleCullingRender extends Laya.BaseRender {
    private _renderelements: BundleCullingRenderElement[] = [];
    private _renderBundleElement: BundleCullingBundleElement;
    private elementChange = false;
    private cullPlaneData: Float32Array = new Float32Array(4 * 6);

    computeCommand = new Laya.ComputeCommandBuffer();
    private ViewCamera: Laya.Camera;

    private _config: BundleCullingConfig;
    public get config(): BundleCullingConfig {
        return this._config;
    }
    public set config(value: BundleCullingConfig) {
        this._config = value;

        this.tempFloatArray = new Float32Array(this.config.max_instance_per_drawable * 16);
    }

    bundleMeshes: Laya.Mesh[] = [];

    bundleMaterials: Laya.Material[] = [];

    createMeshes() {
        let cubeMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        this.bundleMeshes.push(cubeMesh);
        let sphereMesh = Laya.PrimitiveMesh.createSphere(0.5);
        this.bundleMeshes.push(sphereMesh);
        let cylinderMesh = Laya.PrimitiveMesh.createCylinder(0.5, 1);
        this.bundleMeshes.push(cylinderMesh);
        let coneMesh = Laya.PrimitiveMesh.createCone(0.5, 1);
        this.bundleMeshes.push(coneMesh);

        this.bundleMeshes.forEach(mesh => {
            mesh.lock = true;
        });
    }

    createMaterials() {
        const createMaterial = (r: number, g: number, b: number) => {
            let material = new Laya.Material();
            material.setShaderName("colorShader");
            material.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
            material.setColor("u_color", new Laya.Color(r, g, b, 1.0));
            return material;
        };
        this.bundleMaterials.push(createMaterial(1, 1, 1));
        this.bundleMaterials.push(createMaterial(1, 0, 0));
        this.bundleMaterials.push(createMaterial(0, 1, 0));
        this.bundleMaterials.push(createMaterial(0, 0, 1));
        this.bundleMaterials.push(createMaterial(1, 1, 0));
        this.bundleMaterials.push(createMaterial(1, 0, 1));
        this.bundleMaterials.push(createMaterial(0, 1, 1));
        this.bundleMaterials.push(createMaterial(0.5, 0.5, 0.5));
        this.bundleMaterials.push(createMaterial(0.5, 0, 0));
        this.bundleMaterials.push(createMaterial(0, 0.5, 0));
        this.bundleMaterials.push(createMaterial(0, 0, 0.5));
        this.bundleMaterials.push(createMaterial(0.5, 0.5, 0));
        this.bundleMaterials.push(createMaterial(0.5, 0, 0.5));
        this.bundleMaterials.push(createMaterial(0, 0.5, 0.5));

        this.bundleMaterials.forEach(material => {
            material.lock = true;
        });
    }

    indirectDrawBuffer: Laya.IDeviceBuffer;

    private createIndirectDrawBuffer() {

        let drawElementCount = this.bundleMeshes.length * this.bundleMaterials.length;

        let usage = Laya.EDeviceBufferUsage.INDIRECT | Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;
        let byteLength = 20 * drawElementCount;
        this.indirectDrawBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
        this.indirectDrawBuffer.setDataLength(byteLength);
        let indirectDrawArray = new Uint32Array(drawElementCount * 5);
        for (var i = 0; i < this.bundleMaterials.length; i++) {
            for (var j = 0; j < this.bundleMeshes.length; j++) {
                let index = i *  this.bundleMeshes.length * 5+j*5;
                let mesh = this.bundleMeshes[j];
                indirectDrawArray[index] = mesh.getSubMesh(0).indexCount;
                indirectDrawArray[index + 1] = this.config.max_instance_per_drawable;
                indirectDrawArray[index + 2] = 0;
            }
        }
        this.indirectDrawBuffer.setData(indirectDrawArray.buffer, 0, 0, indirectDrawArray.byteLength);
    }

    indirectCullBuffers: Laya.IDeviceBuffer[] = [];

    private createInstanceCullBuffer() {
        let usage = Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;
        //第一位是渲染多少个，后面是渲染哪些index的数据
        let byteLength = this.config.max_instance_per_drawable * Uint32Array.BYTES_PER_ELEMENT + 4;

        let index = 0;
        let tempArray = new Uint32Array(byteLength / Uint32Array.BYTES_PER_ELEMENT);
        for (var i = 0; i < this.bundleMaterials.length; i++) {
            for (var j = 0; j < this.bundleMeshes.length; j++) {
                tempArray[0] = index;
                let indirectCullBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
                indirectCullBuffer.setDataLength(byteLength);
                indirectCullBuffer.setData(tempArray.buffer, 0, 0, tempArray.byteLength);
                this.indirectCullBuffers.push(indirectCullBuffer);
                index++;
            }
        }
    }

    instanceBuffer: Laya.IDeviceBuffer[] = [];

    static posIndex = 0;
    private createInstanceDataDeviceBuffer() {
        const createOnePosGeometry = (): Laya.Matrix4x4 => {
            tempvec0.set(
                (Math.random() * 2 - 1) * 100,
                 (Math.random() * 2 - 1) * 100,
                (Math.random() * 2 - 1) * 100);

            const scale = Math.random() + 0.5;
            tempvec1.set(scale, scale, scale);//大小 0-1

            let quaternion = tempQuaternion0;
            Laya.Quaternion.createFromYawPitchRoll((Math.random() * 2 - 1) * Math.PI,
                (Math.random() * 2 - 1) * Math.PI,
                (Math.random() * 2 - 1) * Math.PI, quaternion
            );
            let worldMatrix = tempMatrix;
            Laya.Matrix4x4.createAffineTransformation(tempvec0, quaternion, tempvec1, worldMatrix);
            return worldMatrix;
        }
        let usage = Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;

        let drawElementCount = this.bundleMeshes.length * this.bundleMaterials.length;

        let bytelength = 16 * 4 * this.config.max_instance_per_drawable;
        for (var i = 0; i < drawElementCount; i++) {
            let deviceBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
            deviceBuffer.setDataLength(bytelength);
            this.instanceBuffer.push(deviceBuffer);
            for (var j = 0; j < this.config.max_instance_per_drawable; j++) {
                let matrix = createOnePosGeometry();
                let offset = j * 16;
                this.tempFloatArray.set(matrix.elements, offset);
            }
            deviceBuffer.setData(this.tempFloatArray.buffer, 0, 0, this.tempFloatArray.byteLength);
        }
    }

    private createBundleCullingRenderElements() {
        const createGeometry = (mesh: Laya.Mesh, index: number, deviceBuffer: Laya.WebGPUDeviceBuffer): Laya.IRenderGeometryElement => {
            let geometry = Laya.LayaGL.renderDeviceFactory.createRenderGeometryElement(Laya.MeshTopology.Triangles, Laya.DrawType.DrawElementIndirect);
            let meshBufferState = mesh.getSubMesh(0).bufferState._deviceBufferState;
            let vertexBuffers = meshBufferState._vertexBuffers.slice();
            let indexBuffer = meshBufferState._bindedIndexBuffer;
            geometry.drawType = Laya.DrawType.DrawElementIndirect;
            geometry.bufferState = Laya.LayaGL.renderDeviceFactory.createBufferState();
            geometry.bufferState.applyState(vertexBuffers, indexBuffer);
            geometry.indexFormat = Laya.IndexFormat.UInt16;
            geometry.setIndirectDrawBuffer(deviceBuffer, index * 20);
            return geometry;
        };

        const createRenderElement = (geometry: Laya.IRenderGeometryElement, material: Laya.Material) => {
            let element = new BundleCullingRenderElement();
            element.materialShaderData = material.shaderData as Laya.WebGPUShaderData;
            element.materialId = material.id;
            element.subShader = material.shader.getSubShaderAt(0);
            element.geometry = geometry as Laya.WebGPURenderGeometry;
            return element;
        };
        let index = 0;
        for (let i = 0; i < this.bundleMaterials.length; i++) {
            for (let j = 0; j < this.bundleMeshes.length; j++) {
                let mesh = this.bundleMeshes[j];
                let material = this.bundleMaterials[i];

                let geoemtry = createGeometry(mesh, index, this.indirectDrawBuffer as Laya.WebGPUDeviceBuffer);

                let element = createRenderElement(geoemtry, material);
                this.addrenderElement(element);


                element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("instances"), this.instanceBuffer[index] as any);
                element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("culled"), this.indirectCullBuffers[index] as any);
                element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("indirectArgs"), this.indirectDrawBuffer as any);
                index++;
                console.log(index);
            }
        }
    }

    private createComputeCommand() {
        let commandBuffer = this.computeCommand = new Laya.ComputeCommandBuffer();
        let drawlength = this._renderelements.length;

        for (let i = 0; i < drawlength; i++) {
            commandBuffer.addClearBufferCommand(this.indirectDrawBuffer, i * 20 + 4, 4);
        }

        let shaderDefine = Laya.LayaGL.unitRenderModuleDataFactory.createDefineDatas();
        //compute dispatch
        for (let i = 0; i < drawlength; i++) {
            commandBuffer.addDispatchCommand(this.computeShader,
                "computeMain",
                shaderDefine,
                [this.renderNode.shaderData, this._renderelements[i].cullShaderData],
                new Laya.Vector3(Math.ceil(this.config.max_instance_per_drawable / this.config.culling_workgroup_size), 1, 1));
        }

    }

    tempFloatArray: Float32Array;

    constructor() {
        super();
        this.geometryBounds = new Laya.Bounds(new Laya.Vector3(-1000, -1000, -1000), new Laya.Vector3(1000, 1000, 1000));
        this.ViewCamera = new Laya.Camera(0, 0.1, 500);
        this.ViewCamera.transform.position = new Laya.Vector3(0, 200, 0);
        this.ViewCamera.transform.rotationEuler = new Laya.Vector3(-90, 0, 0);
    }

    protected _getcommonUniformMap(): Array<string> {
        return ["cullSprite"];
    }

    computeShader: Laya.ComputeShader;

    onAwake(): void {
        createCullingSpriteCommandMap();
        initShader(this.config);
        this.computeShader = createComputeShader(this.config);

        this.createMeshes();
        this.createMaterials();

        this.createIndirectDrawBuffer();
        this.createInstanceCullBuffer();
        this.createInstanceDataDeviceBuffer();

        if (this.config.useRenderBundle) {
            this._renderBundleElement = new BundleCullingBundleElement();
            this._renderBundleElement.transform = this.owner.transform;
            this._renderBundleElement.renderShaderData = this.renderNode.shaderData as any;
            this._renderBundleElement.owner = this.renderNode as any;
            this.elementChange = true;
        }

        this.createBundleCullingRenderElements();
        this.createComputeCommand();

    }

    onEnable(): void {

    }

    addrenderElement(element: BundleCullingRenderElement) {
        if (this.config.useRenderBundle) {
            this._renderelements.push(element);
            this._renderBundleElement.addRenderElement(element);
            element.transform = this.owner.transform;
            element.renderShaderData = this.renderNode.shaderData as any;
            element.owner = this.renderNode as any;
        } else {
            this._renderelements.push(element);
            element.transform = this.owner.transform;
            element.renderShaderData = this.renderNode.shaderData as any;
            element.owner = this.renderNode as any;
            this.elementChange = true;
        }

    }

    _renderUpdate(context: Laya.IRenderContext3D): void {
        if (this.elementChange) {
            this._setRenderElements();
        }
        let camera = Laya.RenderContext3D._instance.camera;
        let boundFrustum = camera.boundFrustum;

        let fillCullData = (plane: Laya.Plane, index: number) => {
            this.cullPlaneData[index] = plane.normal.x;
            this.cullPlaneData[index + 1] = plane.normal.y;
            this.cullPlaneData[index + 2] = plane.normal.z;
            this.cullPlaneData[index + 3] = plane.distance;
        }
        fillCullData(boundFrustum.near, 0);
        fillCullData(boundFrustum.far, 4);
        fillCullData(boundFrustum.left, 8);
        fillCullData(boundFrustum.right, 12);
        fillCullData(boundFrustum.top, 16);
        fillCullData(boundFrustum.bottom, 20);
        this.renderNode.shaderData.setBuffer(Laya.Shader3D.propertyNameToID("frustum"), this.cullPlaneData);
        this.computeCommand.executeCMDs();

        if (this.config.useOverHeadView) {
            (camera as any)._shaderValues.setMatrix4x4((Laya.BaseCamera as any).VIEWPROJECTMATRIX, this.ViewCamera.projectionViewMatrix);
        }
    }

    protected _setRenderElements() {
        if (this.config.useRenderBundle)
            this.renderNode.setRenderelements([this._renderBundleElement]);
        else
            this.renderNode.setRenderelements(this._renderelements as any);
        this.elementChange = false;
    }

    onDestroy(): void {
        super.onDestroy();

        this.bundleMeshes.forEach(mesh => {
            mesh.lock = false;
            mesh.destroy();
        });

        this.bundleMaterials.forEach(material => {
            material.lock = false;
            material.destroy();
        });
    }

};