import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import CameraClearFlags = Laya.CameraClearFlags;
import PostProcessEffect = Laya.PostProcessEffect;
import PostProcessRenderContext = Laya.PostProcessRenderContext;
import CommandBuffer = Laya.CommandBuffer;
import Viewport = Laya.Viewport;
import Material = Laya.Material;
import BaseTexture = Laya.BaseTexture;
import FilterMode = Laya.FilterMode;
import RenderTargetFormat = Laya.RenderTargetFormat;
import Shader3D = Laya.Shader3D;
import ShaderData = Laya.ShaderData;
import ShaderDataType = Laya.ShaderDataType;
import LayaGL = Laya.LayaGL;
import Vector4 = Laya.Vector4;
import RenderTexture = Laya.RenderTexture;
import RenderState = Laya.RenderState;
import ShaderPass = Laya.ShaderPass;
import SubShader = Laya.SubShader;
import VertexMesh = Laya.VertexMesh;

//可访问LayaAirDemo工程查看
import BlurVS from "./BlurShader/Blur.vs";
import BlurHorizentalFS from "./BlurShader/BlurHorizontal.fs";
import BlurVerticalFS from "./BlurShader/BlurVertical.fs";
import BlurDownSampleFS from "./BlurShader/BlurDownSample.fs";
import BlurDownSampleVS from "./BlurShader/BlurDownSample.vs";
import BlurEdgeAdd from "./BlurShader/EdgeAdd.fs";
import BlurEdgeSub from "./BlurShader/EdgeSub.fs";

const { regClass, property } = Laya;

@regClass()
export class PostProcess_Blur extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private postProcess:Laya.PostProcess = null;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base(this.camera);

		(this.camera as Camera).clearFlag = CameraClearFlags.Sky;
		(this.camera as Camera).cullingMask ^=2;
		//this.camera.active = false;
		(this.camera as Camera).enableHDR = false;
		var mainCamera:Camera = (this.scene.getChildByName("BlurCamera") as Camera);// MainCamera//(this.camera as Camera).getChildAt(0) as Camera;
        mainCamera.clearFlag = CameraClearFlags.DepthOnly;//微信平台有bug这里得换成DepthOnly
		mainCamera.cullingMask = 2;
		mainCamera.renderingOrder = 1;
		mainCamera.enableHDR = false;
		(this.camera as Camera).addChild(mainCamera);
		mainCamera.transform.localMatrix = new Laya.Matrix4x4();

		//增加后期处理
		this.postProcess = new Laya.PostProcess();

		var blurEffect:BlurEffect = new BlurEffect();
		this.postProcess.addEffect(blurEffect);
		this.camera.postProcess = this.postProcess;
		
		//设置模糊参数
		blurEffect.downSampleNum =6;
		blurEffect.blurSpreadSize = 1;
		blurEffect.blurIterations = 1;

		super.addBottomButton( ["关闭高斯模糊","开启高斯模糊"] , this, [this.setPostProcess, this.setPostProcess] );
        // 这里为了处理MainCamera使用RenderTexture画到canvas上猴子的问题，单独跑示例时候不需要这里
        var RT = this.camera.renderTarget; 
        // RenderTexture.createFromPool(mainCamera.viewport.width, mainCamera.viewport.height, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.None, false, 1, false, true);
        mainCamera.renderTarget = RT; 
    }

	private setPostProcess(): void {
		var enableHDR = !!this.camera.postProcess;
		if (enableHDR) {
			this.camera.postProcess = null;
		}
		else {
			this.camera.postProcess = this.postProcess;
		}
	}
}

export class BlurEffect extends PostProcessEffect {

    static BLUR_TYPE_GaussianBlur: number = 0;
    static BLUR_TYPE_Simple: number = 1;
    static SHADERVALUE_MAINTEX: number;
    static SHADERVALUE_TEXELSIZE: number;
    static SHADERVALUE_DOWNSAMPLEVALUE: number;

    static init() {
        BlurEffect.SHADERVALUE_MAINTEX = Shader3D.propertyNameToID("u_MainTex");
        BlurEffect.SHADERVALUE_TEXELSIZE = Shader3D.propertyNameToID("u_MainTex_TexelSize");
        BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE = Shader3D.propertyNameToID("u_DownSampleValue");
        //初始化shader
        let attributeMap: any = {
            'a_PositionTexcoord': [VertexMesh.MESH_POSITION0, ShaderDataType.Vector4]
        };

        let uniformMap: any = {
            "u_MainTex": ShaderDataType.Texture2D,
            "u_sourceTexture0": ShaderDataType.Texture2D,
            "u_sourceTexture1": ShaderDataType.Texture2D,
            "u_MainTex_TexelSize": ShaderDataType.Vector4,
            "u_DownSampleValue": ShaderDataType.Float
        };
        var shader: Shader3D = Shader3D.add("blurEffect");
        //subShader0  降采样
        var subShader: SubShader = new SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        var shaderpass: ShaderPass = subShader.addShaderPass(BlurDownSampleVS, BlurDownSampleFS);
        var renderState: RenderState = shaderpass.renderState;
        renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
        renderState.depthWrite = false;
        renderState.cull = RenderState.CULL_NONE;
        renderState.blend = RenderState.BLEND_DISABLE;
        //subShader1 垂直反向模糊
        subShader = new SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        shaderpass = subShader.addShaderPass(BlurVS, BlurVerticalFS);
        renderState = shaderpass.renderState;
        renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
        renderState.depthWrite = false;
        renderState.cull = RenderState.CULL_NONE;
        renderState.blend = RenderState.BLEND_DISABLE;
        //subShader2 水平方向模糊
        subShader = new SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        shaderpass = subShader.addShaderPass(BlurVS, BlurHorizentalFS);
        renderState = shaderpass.renderState;
        renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
        renderState.depthWrite = false;
        renderState.cull = RenderState.CULL_NONE;
        renderState.blend = RenderState.BLEND_DISABLE;
        //subShader3 subTexture
        subShader = new SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        shaderpass = subShader.addShaderPass(BlurVS, BlurEdgeSub);
        renderState = shaderpass.renderState;
        renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
        renderState.depthWrite = false;
        renderState.cull = RenderState.CULL_NONE;
        renderState.blend = RenderState.BLEND_DISABLE;
        //subShader4 addTexture
        subShader = new SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        shaderpass = subShader.addShaderPass(BlurVS, BlurEdgeAdd);
        renderState = shaderpass.renderState;
        renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
        renderState.depthWrite = false;
        renderState.cull = RenderState.CULL_NONE;
        renderState.blend = RenderState.BLEND_DISABLE;

    }

    /**@internal */
    private _shader: Shader3D = null;
    /**@internal */
    private _shaderData: ShaderData = LayaGL.renderOBJCreate.createShaderData(null);
    /**@internal */
    private _downSampleNum: number = 1;
    /**@internal */
    private _blurSpreadSize: number = 1;
    /**@internal */
    private _blurIterations: number = 2;
    /**@internal */
    private _texSize: Vector4 = new Vector4(1.0, 1.0, 1.0, 1.0);
    /**@internal */
    private _tempRenderTexture: any[];

    constructor() {
        super();
        BlurEffect.init();
        this._shader = Shader3D.find("blurEffect");
        this._tempRenderTexture = new Array(13);
    }

    /**
     * @return 强度。
     */
    get downSampleNum(): number {
        return this._downSampleNum;
    }

    /**
     * 降采样,值范围为0-6。
     * @param value 强度。
     */
    set downSampleNum(value: number) {
        this._downSampleNum = Math.min(6, Math.max(value, 0.0));
    }

    /**
     * 采样间隔  过大会失真1-10
     * @return 。
     */
    get blurSpreadSize(): number {
        return this._blurSpreadSize;
    }

    /**
     * @param value 
     */
    set blurSpreadSize(value: number) {
        this._blurSpreadSize = Math.min(10, Math.max(value, 1.0));
    }

    /**
     * 迭代次数  越大性能消耗越大 效果越好
     * @return 。
     */
    get blurIterations(): number {
        return this._blurIterations;
    }

    /**
     * @param value。
     */
    set blurIterations(value: number) {
        this._blurIterations = Math.min(Math.max(value, 0.0), 6.0);
    }

    /**
     * @inheritDoc
     * @override
     * @internal
     */
    render(context: PostProcessRenderContext): void {
        var cmd: CommandBuffer = context.command;
        var viewport: Viewport = context.camera.viewport;
        var scaleFactor: number = 1.0 / (1 << Math.floor(this._downSampleNum));
        var tw: number = Math.floor(viewport.width * scaleFactor);
        var th: number = Math.floor(viewport.height * scaleFactor);
        this._texSize.setValue(1.0 / tw, 1.0 / th, tw, th);
        //赋值
        this._shaderData.setNumber(BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE, this.blurSpreadSize);
        this._shaderData.setVector(BlurEffect.SHADERVALUE_TEXELSIZE, this._texSize);
        //降采样
        var downSampleTexture: RenderTexture = RenderTexture.createFromPool(tw, th, RenderTargetFormat.R8G8B8, RenderTargetFormat.None, false, 1);
        downSampleTexture.filterMode = FilterMode.Bilinear;
        this._tempRenderTexture[0] = downSampleTexture;
        var lastDownTexture: RenderTexture = context.source;
        cmd.blitScreenTriangle(lastDownTexture, downSampleTexture, null, this._shader, this._shaderData, 0);
        lastDownTexture = downSampleTexture;
        //迭代次数
        for (var i: number = 0; i < this._blurIterations; i++) {
            //vertical
            var blurTexture: RenderTexture = RenderTexture.createFromPool(tw, th, RenderTargetFormat.R8G8B8, RenderTargetFormat.None, false, 1);
            blurTexture.filterMode = FilterMode.Bilinear;
            cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 1);
            lastDownTexture = blurTexture;
            this._tempRenderTexture[i * 2 + 1] = blurTexture;
            //Horizental
            blurTexture = RenderTexture.createFromPool(tw, th, RenderTargetFormat.R8G8B8, RenderTargetFormat.None, false, 1);
            blurTexture.filterMode = FilterMode.Bilinear;
            cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 2);
            lastDownTexture = blurTexture;
            this._tempRenderTexture[i * 2 + 2] = blurTexture;
        }
        context.source = lastDownTexture;
        cmd.blitScreenTriangle(context.source, context.destination);
        var maxTexture = this._blurIterations * 2 + 1;
        //释放渲染纹理
        for (i = 0; i < maxTexture; i++) {
            RenderTexture.recoverToPool(this._tempRenderTexture[i]);
        }
        context.deferredReleaseTextures.push(lastDownTexture);
    }
}

export class BlurMaterial extends Material {
    static SHADERVALUE_MAINTEX: number;
    static SHADERVALUE_TEXELSIZE: number;
    static SHADERVALUE_DOWNSAMPLEVALUE: number;
    static SHADERVALUE_SOURCETEXTURE0: number;
    static ShADERVALUE_SOURCETEXTURE1: number;

    static __init__(){
        BlurMaterial.SHADERVALUE_MAINTEX = Shader3D.propertyNameToID("u_MainTex");
        BlurMaterial.SHADERVALUE_TEXELSIZE = Shader3D.propertyNameToID("u_MainTex_TexelSize");
        BlurMaterial.SHADERVALUE_DOWNSAMPLEVALUE = Shader3D.propertyNameToID("u_DownSampleValue");
        BlurMaterial.SHADERVALUE_SOURCETEXTURE0 = Shader3D.propertyNameToID("u_sourceTexture0");
        BlurMaterial.ShADERVALUE_SOURCETEXTURE1 = Shader3D.propertyNameToID("u_sourceTexture1");
    }

    constructor(texelSize: Vector4, offset: number) {
        super();
        BlurMaterial.__init__();
        this.setShaderName("blurEffect");
        this.setIntByIndex(BlurMaterial.SHADERVALUE_DOWNSAMPLEVALUE, offset);
        this.setVector4ByIndex(BlurMaterial.SHADERVALUE_TEXELSIZE, texelSize);
    }

    sourceTexture(sourceTexture0: BaseTexture, sourceTexture1: BaseTexture) {
        this.setTextureByIndex(BlurMaterial.SHADERVALUE_SOURCETEXTURE0, sourceTexture0);
        this.setTextureByIndex(BlurMaterial.ShADERVALUE_SOURCETEXTURE1, sourceTexture1);
    }
}

