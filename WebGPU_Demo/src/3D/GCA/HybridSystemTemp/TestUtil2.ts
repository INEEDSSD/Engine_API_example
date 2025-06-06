import { BatchElement, GCARenderGeometrtElement, GCARenderMask, GCAResData, IGCABVHCell, IGCAMaterialData } from "./HyBridUtil";
import { GCA_InsBatchAgent } from "../GCA_InsBatchAgent";
import { WebGPU_Bundle_CullingUtil } from "../WebGPU_Bundle_CullingUtil";

export class TestGCARender extends Laya.BaseRender {

    // private _renderelements: WebGPURenderElement3D[] = [];
    // private _renderBundleElement: webgpuRenderBundleElement;
    private opaqueList: Laya.RenderListQueue;
    private alphaTestList: Laya.RenderListQueue;
    private cullPlaneData: Float32Array = new Float32Array(4 * 6);
    // //computeCommand = new ComputeCommandBuffer();
    private useoverHeadView: boolean = false;
    _GCA_Agent: GCA_InsBatchAgent;
    private _useRenderBundle: boolean = false;
    private ViewCamera: Laya.Camera;
    constructor() {
        super();
        this.geometryBounds = new Laya.Bounds(new Laya.Vector3(-1000, -1000, -1000), new Laya.Vector3(1000, 1000, 1000));
        this.ViewCamera = new Laya.Camera(0, 0.1, 500);
        this.ViewCamera.transform.position = new Laya.Vector3(0, 200, 0);
        this.ViewCamera.transform.rotationEuler = new Laya.Vector3(-90, 0, 0);
        this._GCA_Agent = new GCA_InsBatchAgent(false);
        this.opaqueList = new Laya.RenderListQueue(false);
        this.alphaTestList = new Laya.RenderListQueue(false);
    }

    protected _getcommonUniformMap(): Array<string> {
        return ["GCA_RenderSprite"];
    }

    onEnable(): void {
        if (WebGPU_Bundle_CullingUtil.useRenderBundle) {

        }
    }

    // addrenderElement(element: webgpuDrawCullingELement) {
    //     if (WebGPU_Bundle_CullingUtil.useRenderBundle) {
    //         this._renderBundleElement.addrenderElement(element);
    //         element.transform = this.owner.transform;
    //         element.renderShaderData = this.renderNode.shaderData as any;
    //         element.owner = this.renderNode as any;
    //     } else {
    //         this._renderelements.push(element);
    //         element.transform = this.owner.transform;
    //         element.renderShaderData = this.renderNode.shaderData as any;
    //         element.owner = this.renderNode as any;
    //         this.elementChange = true;
    //     }

    // }

    _renderUpdate(context: Laya.IRenderContext3D): void {
        let camera = Laya.RenderContext3D._instance.camera;

        this._GCA_Agent.setCullingCamera(camera);//裁剪
        if (this.useoverHeadView) {
            (camera as any)._shaderValues.setMatrix4x4((Laya.BaseCamera as any).VIEWPROJECTMATRIX, this.ViewCamera.projectionViewMatrix);
        }
        this._setRenderElements();
    }

    protected _setRenderElements() {
        this.opaqueList.elements.length = 0;
        this._GCA_Agent.getRenderList((this._GCA_Agent as any)._forwardManager, this.opaqueList, this.alphaTestList);
        this.opaqueList.elements.elements.length = this.opaqueList.elements.length;
        if (WebGPU_Bundle_CullingUtil.useRenderBundle)
            this.renderNode.setRenderelements(this.opaqueList.elements.elements);
    }
}

export class testGCAShader {
    static initShader() {

        let uniformMap = {

            "u_color": Laya.ShaderDataType.Color,
        };

        let defaultValue = {
            "u_color": Laya.Color.WHITE,
        }

        let vsCode = `
        #include "Camera.glsl";

        //u_cullBlockData x为blockCount,y为这是第几个Block
        #ifdef GCA_StorageBuffer
            layout(set = 2, binding = 1) readonly buffer Instances {
                mat4 instances[];
            };

            layout(set = 2, binding = 2) readonly buffer culled {
                uint insIndexs[];
            };

            struct customData{
                vec4 color1;
                vec4 color2;
            };

            layout(set = 2, binding = 3) readonly buffer customDatas {
               customData datas[];
            };

        #endif

        varying vec3 v_Normal;
        varying vec4 v_color1;
        varying vec4 v_color2;

        void main()
        {
            vec4 position = a_Position;
            vec3 normal = a_Normal.xyz;
            vec2 uv = a_Texcoord0;
            uint Instanceindex = gl_InstanceIndex;
            uint InsDataOffset = uint(u_cullBlockData.x+2) * uint(u_cullBlockData.y);
            uint modelIndex =insIndexs[Instanceindex+InsDataOffset+2];
            mat4 worldmat = instances[modelIndex];
            v_color1 = datas[modelIndex].color1;
            v_color2 = datas[modelIndex].color2;

            vec3 normalWS = normalize((worldmat * vec4(a_Position.xyz, 0.0)).xyz);
            v_Normal = normalWS;
            vec3 positionWS = (worldmat*position).xyz;
            gl_Position=getPositionCS(positionWS);
            gl_Position=remapPositionZ(gl_Position);
        }
        `;

        let fsCode = `
        varying vec3 v_Normal;
        varying vec4 v_color1;
        varying vec4 v_color2;

        void main()
        {
            vec4 color = u_color;
            vec3 lightDir = vec3(0.25, 0.5, 1.0);
            vec3 lightColor = vec3(1, 1, 1);
            vec3 ambientColor = vec3(0.03, 0.03, 0.03);

            vec3 L = normalize(lightDir);
            float NDotL = max(dot(v_Normal, L), 0.0);
            vec3 surfaceColor = (u_color.rgb * ambientColor) + (u_color.rgb * NDotL);
            
            gl_FragColor = vec4(u_color.xyz,1.0);
        }
        `;
        let shader = Laya.Shader3D.add("GCA_ColorShader", true, false);
        shader.shaderType = Laya.ShaderFeatureType.D3;
        let subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, uniformMap, defaultValue);
        shader.addSubShader(subShader);
        let forwardPass = subShader.addShaderPass(vsCode, fsCode);
        this.createGCARenderCommandMap();
    }

    static createGCARenderCommandMap() {
        const spriteParms = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("GCA_RenderSprite");
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("insIndexs"), "insIndexs", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("customDatas"), "customDatas", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("u_cullBlockData"), "u_cullBlockData", Laya.ShaderDataType.Vector4);
    }
}




//模拟各种资源生成和流程测试
export class hybridSystemUtil {
    meshArray: Laya.Mesh[] = [];
    meshBatchArray: GCARenderGeometrtElement[] = [];
    materialArray: IGCAMaterialData[] = [];
    preResData: GCAResData[] = [];
    private _createGCARenderGeometryElemenet(mesh: Laya.Mesh) {
        let element = new GCARenderGeometrtElement();
        element.bufferState = mesh._bufferState._deviceBufferState;
        element.indexFormat = mesh.getSubMesh(0).indexFormat;
        element.indexOffset = mesh.getSubMesh(0)._indexStart;
        element.indexCount = mesh.getSubMesh(0).indexCount;
        this.meshBatchArray.push(element);
        this.meshArray.push(mesh);

    }
    //创建mesh数据
    _createMesh() {
        //创建mesh
        let cubeMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        this._createGCARenderGeometryElemenet(cubeMesh);
        let sphere = Laya.PrimitiveMesh.createSphere(0.5);
        this._createGCARenderGeometryElemenet(sphere);
        let cylinder = Laya.PrimitiveMesh.createCylinder(0.5, 1);
        this._createGCARenderGeometryElemenet(cylinder);
        let cone = Laya.PrimitiveMesh.createCone(0.5, 1);
        this._createGCARenderGeometryElemenet(cone);

    }

    //创建材质数据
    _createMaterial() {
        let createOneMaterial = (r: number, g: number, b: number): void => {
            let mat = new Laya.Material();
            mat.setShaderName("GCA_ColorShader");
            mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
            mat.setColor("u_color", new Laya.Color(r, g, b, 1));
            let materialData = new IGCAMaterialData();
            materialData.id = this.materialArray.length;
            materialData.shaderData = mat.shaderData;
            materialData.subShader = mat.shader.getSubShaderAt(0);
            materialData.cull = mat.cull;
            materialData.renderQueue = mat.renderQueue;
            this.materialArray.push(materialData);

        }
        createOneMaterial(1, 1, 1);
        createOneMaterial(1, 0, 0);
        createOneMaterial(0, 1, 0);
        createOneMaterial(0, 0, 1);
        createOneMaterial(1, 1, 0);
        createOneMaterial(1, 0, 1);
        createOneMaterial(0, 1, 1);
        createOneMaterial(0.5, 0.5, 0.5);
        createOneMaterial(0.5, 0, 0);
        createOneMaterial(0, 0.5, 0);
        createOneMaterial(0, 0, 0.5);
        createOneMaterial(0.5, 0.5, 0);
        createOneMaterial(0.5, 0, 0.5);
        createOneMaterial(0, 0.5, 0.5);
    }

    //创建一个实例
    _createIns(resID: number, worldMatrix: Laya.Matrix4x4, enableCastShadow: boolean, enableReceiveShadeow: boolean,
        renderNormal: boolean, lightmapIndex: number, customData: any): IGCABVHCell {
        let ins = new IGCABVHCell();
        ins.resId = resID;
        ins.worldMatrix = worldMatrix.clone();
        //bounds
        let meshid = GCAResData.getResDataById(resID % this.meshArray.length).meshid;
        ins.bounds = new Laya.Bounds();
        this.meshArray[meshid].bounds._tranform(worldMatrix, ins.bounds);
        if (enableCastShadow)
            ins.renderMask |= GCARenderMask.CastShadow;
        if (enableReceiveShadeow)
            ins.renderMask |= GCARenderMask.ReceiveShadow;
        if (renderNormal)
            ins.renderMask |= GCARenderMask.Normal;
        ins.lightmapIndex = lightmapIndex;
        ins.customData = customData;//测试的时候  color1以及color2
        ins.hasLower = GCAResData.getResDataById(resID % this.materialArray.length).haslowerMat;
        return ins;
    }

    _createOneRes(matArrays: IGCAMaterialData[], geometrys: GCARenderGeometrtElement[], meshid: number, lowerMat?: IGCAMaterialData, lowermesh?: GCARenderGeometrtElement) {
        let resData = new GCAResData();
        resData.materials = matArrays;
        resData.mesh = geometrys;
        resData.meshid = meshid;
        let batchElements = new BatchElement();
        batchElements.matIdx = 0;
        batchElements.subMeshIdx = 0;
        resData.batchElements.push(batchElements);
        if (lowerMat && lowermesh) {
            resData.haslowerMat = true;
            resData.lowermat = lowerMat;
            resData.lowerMeshGeometry = lowermesh;
        }
        GCA_InsBatchAgent.completeLoadRes(resData.id);
        return resData;
    }

    _creatResDatas() {
        //创建多个resData

        for (var i = 1; i < this.materialArray.length; i++) {
            for (var j = 0; j < this.meshArray.length; j++) {
                this._createOneRes([this.materialArray[i]], [this.meshBatchArray[j]], j, this.materialArray[0], this.meshBatchArray[j]);
            }
        }
    }

    _createInsInRange(min: Laya.Vector3, max: Laya.Vector3, count: number, resID: number, customData?: any) {
        let instances: any[] = [];

        for (let i = 0; i < count; i++) {
            // 在范围内随机生成位置
            let randomX = min.x + Math.random() * (max.x - min.x);
            let randomY = min.y + Math.random() * (max.y - min.y);
            let randomZ = min.z + Math.random() * (max.z - min.z);

            // 创建世界矩阵（只包含位置变换）
            let worldMatrix = new Laya.Matrix4x4();
            worldMatrix.setTranslationVector(new Laya.Vector3(randomX, randomY, randomZ));

            // 处理customData中的color值
            let finalCustomData: any;
            if (customData && customData.color1 && customData.color2) {
                // 如果customData有值，使用传入的值
                finalCustomData = {
                    color1: customData.color1,
                    color2: customData.color2
                };
            } else {
                // 如果没有，随机生成color值
                finalCustomData = {
                    color1: new Laya.Color(Math.random(), Math.random(), Math.random(), 1.0),
                    color2: new Laya.Color(Math.random(), Math.random(), Math.random(), 1.0)
                };
            }

            // 创建实例
            let instance = this._createIns(
                resID,                  // 资源ID
                worldMatrix,           // 世界矩阵
                true,                  // 启用投射阴影
                true,                  // 启用接收阴影
                true,                  // 正常渲染
                -1,                    // 光照贴图索引
                finalCustomData        // 自定义数据
            );

            instances.push(instance);
        }

        return instances;
    }


}
