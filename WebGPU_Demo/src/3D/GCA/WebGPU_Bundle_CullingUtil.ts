export class WebGPU_Bundle_CullingUtil {

    //config
    //每个renderelement渲染多少物体
    static MAX_INSTANCES_PER_DRAWABLE = 1000;//PC 1000
    //每个computeshader  计算组是多少
    static CULLING_WORKGROUP_SIZE = 64;
    //是否使用调试视角
    static useoverHeadView: boolean = true;
    //是否使用绑定命令的方案渲染
    static useRenderBundle: boolean = true;

    static Cull_RenderBundle_ComputeShader: Laya.ComputeShader;
    static initShader() {

        let uniformMap = {

            "u_color": Laya.ShaderDataType.Color,
        };

        let defaultValue = {
            "u_color": Laya.Color.WHITE,
        }

        let vsCode = `
        #include "Camera.glsl";

        #ifdef STORAGEBUFFER
            layout(set = 2, binding = 0) readonly buffer Instances {
                mat4 instances[];
            };

            struct CulledInstances {
                uint indirectIndex;
                uint instances[${WebGPU_Bundle_CullingUtil.MAX_INSTANCES_PER_DRAWABLE}];  // 动态数组
            };
            layout(set = 2, binding = 1) readonly buffer Culled {
                CulledInstances culled;
            };
        #endif

        varying vec3 v_Normal;

        void main()
        {
            vec4 position = a_Position;
            vec3 normal = a_Normal.xyz;
            vec2 uv = a_Texcoord0;
            uint Instanceindex = gl_InstanceIndex;
            uint modelIndex = culled.instances[Instanceindex];
            mat4 worldmat = instances[modelIndex];

            vec3 normalWS = normalize((worldmat * vec4(a_Position.xyz, 0.0)).xyz);
            v_Normal = normalWS;
            vec3 positionWS = (worldmat*position).xyz;
            gl_Position=getPositionCS(positionWS);
            gl_Position=remapPositionZ(gl_Position);
        }
        `;

        let fsCode = `
        varying vec3 v_Normal;
        
        void main()
        {
            vec4 color = u_color;
            vec3 lightDir = vec3(0.25, 0.5, 1.0);
            vec3 lightColor = vec3(1, 1, 1);
            vec3 ambientColor = vec3(0.03, 0.03, 0.03);

            vec3 L = normalize(lightDir);
            float NDotL = max(dot(v_Normal, L), 0.0);
            vec3 surfaceColor = (u_color.rgb * ambientColor) + (u_color.rgb * NDotL);

            gl_FragColor = vec4(surfaceColor,1.0);
        }
        `;
        let shader = Laya.Shader3D.add("colorShader", true, false);
        shader.shaderType = Laya.ShaderFeatureType.D3;
        let subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, uniformMap, defaultValue);
        shader.addSubShader(subShader);
        let forwardPass = subShader.addShaderPass(vsCode, fsCode);
    }

    static createComputeShader() {
        //创建ComputeShader
        let code = `
        struct CameraUniforms {
           frustum: array<vec4f, 6>
        }
        @group(0) @binding(0) var<uniform> camera:CameraUniforms;
        
        @group(1) @binding(0) var<storage, read> instances: array<mat4x4f>;
        struct CulledInstances {
          indirectIndex: u32,
          instances: array<u32>,
        }
        
        @group(1) @binding(1) var<storage, read_write> culled: CulledInstances;

        struct IndirectArgs {
          drawCount: u32,
          instanceCount: atomic<u32>,
          reserved0: u32,
          reserved1: u32,
          reserved2: u32,
        }
        @group(1) @binding(2) var<storage, read_write> indirectArgs: array<IndirectArgs>;


        fn isVisible(instanceIndex: u32) -> bool {
          let model = instances[instanceIndex];
          let pos = model * vec4(0, 0, 0, 1);
          let radius = 1.0; // Just fudging it. None of the meshes should be bigger than this.

          for (var i = 0; i < 6; i++) {
            if (dot(camera.frustum[i], pos) < -radius) {
              return false;
            }
          }
          return true;
        }

        @compute @workgroup_size(${WebGPU_Bundle_CullingUtil.CULLING_WORKGROUP_SIZE})
        fn computeMain(@builtin(global_invocation_id) gloablId: vec3u) {
          let instanceIndex = gloablId.x;
          if (instanceIndex >= ${WebGPU_Bundle_CullingUtil.MAX_INSTANCES_PER_DRAWABLE}) {
            return;
          }

          if (!isVisible(instanceIndex)) { return; }

          let culledIndex = atomicAdd(&indirectArgs[culled.indirectIndex].instanceCount, 1u);
          culled.instances[culledIndex] = instanceIndex;
        }
      `;
        let uniformCommandMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cameraCull");
        uniformCommandMap.addShaderUniformArray(Laya.Shader3D.propertyNameToID("frustum"), "frustum", Laya.ShaderDataType.Vector4, 6);

        let uniformCommandMap2 = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("CullDataGroup");
        uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
        uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.DeviceBuffer);
        uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("indirectArgs"), "indirectArgs", Laya.ShaderDataType.DeviceBuffer);

        WebGPU_Bundle_CullingUtil.Cull_RenderBundle_ComputeShader = Laya.ComputeShader.createComputeShader("cullRenderBundle", code, [uniformCommandMap, uniformCommandMap2]);
    }

    static createCullSpriteCommandMap() {
        const spriteParms = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cullSprite");
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
        spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
    }
}


export class webgpuDrawCullingELement extends Laya.WebGPURenderElement3D {
    cullShaderData: Laya.WebGPUShaderData;
    constructor() {
        super();
        this.cullShaderData = Laya.LayaGL.renderDeviceFactory.createShaderData() as any;
        this.isRender = true;
    }

    _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle) {
        //生成RenderBundle  调用
        let shaders: Laya.WebGPUShaderInstance[] = (this._shaderInstances as any).elements;
        if (!this.isRender) {
            return 0;
        }

        for (let j: number = 0, m: number = (this as any)._shaderInstances.length; j < m; j++) {
            if (!shaders[j].complete)
                continue;
            let shaderInstance = shaders[j];
            this._bindGroup(context, shaderInstance, command); //绑定资源组

            command.setPipeline(this._getWebGPURenderPipeline(shaderInstance, context.destRT, context));  //新建渲染管线
            this._uploadGeometry(command); //上传几何数据 draw
        }

        return 0;
    }

    /**
      * 绑定资源组
      * @param shaderInstance 
      * @param command 
      * @param bundle 
      */
    protected _bindGroup(context: Laya.WebGPURenderContext3D, shaderInstance: Laya.WebGPUShaderInstance, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle) {

        {
            let sceneGroup = context._sceneBindGroup;
            command.setBindGroup(0, sceneGroup);
            this.bindGroupMap.set(0, sceneGroup);
        }
        {
            let cameraGroup = context._cameraBindGroup;
            command.setBindGroup(1, cameraGroup);
            this.bindGroupMap.set(1, cameraGroup);
        }
        {
            let shaderResource = shaderInstance.uniformSetMap.get(2);
            let textureExitsMask = shaderInstance.uniformTextureExits.get(2);

            let commands = this.owner?._commonUniformMap;
            // let shaderData = this.owner?.shaderData as WebGPUShaderData;
            let addition = this.owner?.additionShaderData;

            let shaderData = this.cullShaderData

            let bindGroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup(commands, shaderData, addition, shaderResource, textureExitsMask);

            command.setBindGroup(2, bindGroup);
            this.bindGroupMap.set(2, bindGroup);
        }
        {
            let resource = shaderInstance.uniformSetMap.get(3);
            let textureExitsMask = shaderInstance.uniformTextureExits.get(3);
            let bindgroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup([this.subShader.owner.name], this.materialShaderData, null, resource, textureExitsMask);

            command.setBindGroup(3, bindgroup);
            this.bindGroupMap.set(3, bindgroup);
        }
    }
}


export class webgpuRenderBundleElement extends Laya.WebGPURenderElement3D {
    private _renderelements: webgpuDrawCullingELement[] = [];
    private _needRecreateRenderBundle: boolean = false;
    private _commadnBundle: Laya.WebGPURenderBundle = new Laya.WebGPURenderBundle();

    constructor() {
        super();
        this.isRender = true;
        this.materialRenderQueue = 2000;
        this.materialShaderData = new Laya.WebGPUShaderData();
    }

    addrenderElement(element: webgpuDrawCullingELement) {
        this._renderelements.push(element);
        this._needRecreateRenderBundle = true;
    }

    _preUpdatePre(context: Laya.WebGPURenderContext3D) {
        for (var i = 0; i < this._renderelements.length; i++) {
            this._renderelements[i]._preUpdatePre(context);
        }
    }

    _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle) {
        if (this._needRecreateRenderBundle) {
            this._commadnBundle.startRender(context.destRT, "renderCullBundle");
            for (var i = 0; i < this._renderelements.length; i++) {
                this._renderelements[i]._render(context, this._commadnBundle);
            }
            this._commadnBundle.finish("renderCullBundle");
            this._needRecreateRenderBundle = false;
        }
        (command as Laya.WebGPURenderCommandEncoder).excuteBundle([this._commadnBundle._gpuBundle])
        return 0;
    }
}

export class BundleCullingRender extends Laya.BaseRender {

    private _renderelements: webgpuDrawCullingELement[] = [];
    private _renderBundleElement: webgpuRenderBundleElement;
    private elementChange = false;
    private cullPlaneData: Float32Array = new Float32Array(4 * 6);
    computeCommand = new Laya.ComputeCommandBuffer();
    private ViewCamera: Laya.Camera;
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

    onEnable(): void {
        if (WebGPU_Bundle_CullingUtil.useRenderBundle) {
            this._renderBundleElement = new webgpuRenderBundleElement();
            this._renderBundleElement.transform = this.owner.transform;
            this._renderBundleElement.renderShaderData = this.renderNode.shaderData as any;
            this._renderBundleElement.owner = this.renderNode as any;
            this.elementChange = true;
        }
    }

    addrenderElement(element: webgpuDrawCullingELement) {
        if (WebGPU_Bundle_CullingUtil.useRenderBundle) {
            this._renderBundleElement.addrenderElement(element);
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

        if (WebGPU_Bundle_CullingUtil.useoverHeadView) {
            (camera as any)._shaderValues.setMatrix4x4((Laya.BaseCamera as any).VIEWPROJECTMATRIX, this.ViewCamera.projectionViewMatrix);
        }
    }

    protected _setRenderElements() {
        if (WebGPU_Bundle_CullingUtil.useRenderBundle)
            this.renderNode.setRenderelements([this._renderBundleElement]);
        else
            this.renderNode.setRenderelements(this._renderelements as any);
        this.elementChange = false;
    }
}