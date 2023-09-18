import { BaseScript } from "../../BaseScript";
import { SeparableSSS_BlitMaterial } from "./SeparableSSSRender/Material/SeparableSSS_BlitMaterial";
import { SeparableSSSRenderMaterial } from "./SeparableSSSRender/Material/SeparableSSS_RenderMaterial";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import PBRStandardMaterial = Laya.PBRStandardMaterial;
import CameraEventFlags = Laya.CameraEventFlags;
import Shader3D = Laya.Shader3D;
import UnlitMaterial = Laya.UnlitMaterial;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector4 = Laya.Vector4;
import Loader = Laya.Loader;
import Button = Laya.Button;
import MeshRenderer = Laya.MeshRenderer;
import MeshFilter = Laya.MeshFilter;
import Camera = Laya.Camera;
import CommandBuffer = Laya.CommandBuffer;
import Mesh = Laya.Mesh;
import Viewport = Laya.Viewport;
import RenderTexture = Laya.RenderTexture;
import RenderTargetFormat = Laya.RenderTargetFormat;
import Vector2 = Laya.Vector2;
import FilterMode = Laya.FilterMode;
import Color = Laya.Color;
import DepthTextureMode = Laya.DepthTextureMode;


const { regClass, property } = Laya;

@regClass()
export class SeparableSSS_RenderDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    
    blinnphongCharacter:MeshSprite3D;
    SSSSSCharacter:MeshSprite3D;
    characterBlinnphongMaterial:BlinnPhongMaterial;
    pbrCharacter:MeshSprite3D;
    pbrMaterial:PBRStandardMaterial;
    //testPlane
    planeMat:UnlitMaterial;
    sssssBlitMaterail:SeparableSSS_BlitMaterial;
    sssssRenderMaterial:SeparableSSSRenderMaterial;
    private changeActionButton:Button;
   
    //reference:https://github.com/iryoku/separable-sss 
    //流程：分别渲染皮肤Mesh的漫反射部分以及渲染皮肤Mesh的高光部分,分别存储在不同的FrameBuffer中
    //进行两次根据kenerl的高斯采样模拟多极子光照模型
    //再将高光部分与模糊好的地方重新相加

    constructor() {
        super();
    }
	
    onAwake(): void {
		
        super.base(this.camera);

        Shader3D.debugMode = true;
        this.camera.depthTextureMode = DepthTextureMode.Depth;
        SeparableSSS_BlitMaterial.init();
        SeparableSSSRenderMaterial.init();
        
        this.sssssBlitMaterail = new SeparableSSS_BlitMaterial();
        this.sssssRenderMaterial = new SeparableSSSRenderMaterial();
		//预加载资源
		Laya.loader.load("resources/res/threeDimen/LayaScene_separable-sss/Conventional/HeadBlinnphong.lh").then((res)=>{
			this.onPreLoadFinish(res);
		});
	}
   
    onPreLoadFinish(res:any){

        //打开depthTexture
        this.blinnphongCharacter = res.create();
        this.characterBlinnphongMaterial = <BlinnPhongMaterial>this.blinnphongCharacter.getComponent(MeshRenderer).sharedMaterial.clone();
        //增加Mesh节点
        let buf = this.createCommandBuffer(this.camera,this.blinnphongCharacter.getComponent(MeshFilter).sharedMesh);
        this.camera.addCommandBuffer(CameraEventFlags.BeforeForwardOpaque,buf);
        this.sssssBlitMaterail.cameraFiledOfView = this.camera.fieldOfView;

        //增加节点
        this.SSSSSCharacter = <MeshSprite3D>this.blinnphongCharacter.clone();
        this.SSSSSCharacter.getComponent(MeshRenderer).sharedMaterial = this.sssssRenderMaterial;
        this.scene.addChild(this.SSSSSCharacter);
        this.scene.addChild(this.blinnphongCharacter);

        this.blinnphongCharacter.active = true;
        this.SSSSSCharacter.active = false;
        
    }

    createCommandBuffer(camera:Camera,character:Mesh):CommandBuffer{
        //记录一下最开始的漫反射颜色和高光颜色
        let oriColor = this.characterBlinnphongMaterial.albedoColor;
        let oriSpec = this.characterBlinnphongMaterial.specularColor;

        let buf: CommandBuffer = new CommandBuffer();
        let viewPort: Viewport = camera.viewport;

        //在延迟渲染管线中  可以一下把三张图直接搞出来
        //在我们前向渲染管线中  多浪费了几次drawMesh的性能
        //深度贴图
        let depthTexture = RenderTexture.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.DEPTH_16, false, 1, true, true);
        buf.setRenderTarget(depthTexture);
        buf.clearRenderTarget(true, true, new Color(0.5, 0.5, 0.5, 1.0));
        buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0,0);
        depthTexture = depthTexture.depthStencilTexture as RenderTexture;
        //将漫反射和高光分别画到两个RenderTexture
        //漫反射颜色
        let diffuseRenderTexture = RenderTexture.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.DEPTH_16, false, 1, true, true);
        buf.setRenderTarget(diffuseRenderTexture);
        buf.clearRenderTarget(true, true, new Color(0.5, 0.5, 0.5, 1.0));
        //@ts-ignore
        buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.ALBEDOCOLOR, oriColor);
        //@ts-ignore
        buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.MATERIALSPECULAR, new Color(0.0, 0.0, 0.0, 0.0));
        buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0, 0);
        // //高光颜色
        let specRrenderTexture = RenderTexture.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.DEPTH_16, false, 1, true, true);
        buf.setRenderTarget(specRrenderTexture);
        buf.clearRenderTarget(true, true, new Color(1.0, 0.0, 0.0, 0.0));
        //@ts-ignore
        buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.MATERIALSPECULAR, oriSpec);
        // @ts-ignore
        buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.ALBEDOCOLOR, new Color(0.0, 0.0, 0.0, 0.0));
        buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0, 0);
        // // 拿到三张图片后，对diffuse贴图进行高斯核模糊
        buf.setShaderDataTexture(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_DEPTHTEX, depthTexture);
        let blurRenderTexture = RenderTexture.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.None, false, 1, false, true);
        buf.setShaderDataVector2(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR, new Vector2(10.0, 0.0));
        buf.blitScreenQuadByMaterial(diffuseRenderTexture, blurRenderTexture, new Vector4(0, 0, 1.0, 1.0), this.sssssBlitMaterail, 0);
        buf.setShaderDataVector2(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR, new Vector2(0.0, 10.0));
        buf.blitScreenQuadByMaterial(blurRenderTexture, diffuseRenderTexture, new Vector4(0.0, 0.0, 0.0, 0.0), this.sssssBlitMaterail, 0);
        
        // buf.blitScreenQuad(diffuseRenderTexture, null);

        buf.setGlobalTexture(Shader3D.propertyNameToID("sssssDiffuseTexture"), diffuseRenderTexture);
        this.sssssRenderMaterial.shaderData.setTexture(Shader3D.propertyNameToID("sssssSpecularTexture"), specRrenderTexture);
        diffuseRenderTexture.filterMode = FilterMode.Point;
        specRrenderTexture.filterMode = FilterMode.Point;


        return buf;
    }

}