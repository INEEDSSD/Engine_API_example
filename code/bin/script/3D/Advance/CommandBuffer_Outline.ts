import { BaseScript } from "../../BaseScript";
import { BlurEffect, BlurMaterial } from "./BlurShader/BlurEffect";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Camera = Laya.Camera;
import Vector4 = Laya.Vector4;
const { regClass, property } = Laya;

@regClass()
export class CommandBuffer_Outline extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private commandBuffer: Laya.CommandBuffer;
	private cameraEventFlag:Laya.CameraEventFlags = Laya.CameraEventFlags.BeforeImageEffect;
	private enableCommandBuffer:boolean = false;

    constructor() {
        super();
    }

    onAwake(): void {
		
        super.base(this.camera);
		//材质初始化
		var scene = this.scene;
		var camera = this.camera;
		BlurEffect.init();
		var unlitMaterial = new Laya.UnlitMaterial();
		unlitMaterial.albedoColor = new Laya.Color(255,0,0,255);
		var shurikenMaterial:Laya.ShurikenParticleMaterial = new Laya.ShurikenParticleMaterial();
		shurikenMaterial.color = new Laya.Color(255,0,0,255);
		// //加入摄像机移动控制脚本
		
		var renders:Laya.BaseRender[]  = [];
		var materials:Laya.Material[] = [];
		renders.push((scene.getChildByName("Cube") as Laya.MeshSprite3D).getComponent(Laya.MeshRenderer));
		materials.push(unlitMaterial);
		renders.push((scene.getChildByName("Particle") as Laya.ShuriKenParticle3D).getComponent(Laya.ShurikenParticleRenderer));
		materials.push(shurikenMaterial);
		renders.push((scene.getChildByName("LayaMonkey").getChildByName("LayaMonkey") as Laya.SkinnedMeshSprite3D).getComponent(Laya.SkinnedMeshRenderer));
		materials.push(unlitMaterial);
	
		//创建commandBuffer
		this.commandBuffer =  this.createDrawMeshCommandBuffer(camera,renders,materials);
		//将commandBuffer加入渲染流程
		camera.addCommandBuffer(this.cameraEventFlag,this.commandBuffer);
		// camera.removeCommandBuffer(this.cameraEventFlag,this.commandBuffer);
	}

	createDrawMeshCommandBuffer(camera:Laya.Camera,renders:Laya.BaseRender[],materials:Laya.Material[]):Laya.CommandBuffer{
		var buf:Laya.CommandBuffer = new Laya.CommandBuffer();
		//当需要在流程中拿摄像机渲染效果的时候 设置true
		camera.enableBuiltInRenderTexture = true;
		//创建和屏幕一样大的Rendertexture
		var viewPort:Laya.Viewport = camera.viewport;
		var renderTexture = Laya.RenderTexture.createFromPool(viewPort.width,viewPort.height,Laya.RenderTargetFormat.R8G8B8A8,Laya.RenderTargetFormat.STENCIL_8);
		//将RenderTexture设置为渲染目标
		buf.setRenderTarget(renderTexture);
		//清楚渲染目标的颜色为黑色，不清理深度
		buf.clearRenderTarget(true,false,new Laya.Color(0,0,0,0));
		
		//将传入的Render渲染到纹理上
		for(var i = 0,n = renders.length;i<n;i++){
			buf.drawRender(renders[i],materials[i],0);
		}
		//创建新的RenderTexture
		 var subRendertexture = Laya.RenderTexture.createFromPool(viewPort.width,viewPort.height,Laya.RenderTargetFormat.R8G8B8A8,Laya.RenderTargetFormat.STENCIL_8);
		//将renderTexture的结果复制到subRenderTexture
		 buf.blitScreenQuad(renderTexture,subRendertexture);
		//设置模糊的参数
		 var downSampleFactor:number = 2;
		 var downSampleWidth:number = viewPort.width/downSampleFactor;
		 var downSampleheigh:number = viewPort.height/downSampleFactor;
		var texSize:Vector4 = new Vector4(1.0/viewPort.width,1.0/viewPort.height,viewPort.width,downSampleheigh);
		//创建模糊材质
		var blurMaterial:BlurMaterial = new BlurMaterial(texSize,1);
		
		//创建降采样RenderTexture1
		 var downRenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth,downSampleheigh,Laya.RenderTargetFormat.R8G8B8,Laya.RenderTargetFormat.STENCIL_8);
		//降采样  使用blurMaterial材质的0SubShader将Rendertexture渲染到DownRendertexture
		 buf.blitScreenQuadByMaterial(renderTexture,downRenderTexture,null,blurMaterial,0);

		 //创建降采样RenderTexture2
		var blurTexture:Laya.RenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth,downSampleheigh, Laya.RenderTargetFormat.R8G8B8,Laya.RenderTargetFormat.STENCIL_8);
		blurTexture.filterMode = Laya.FilterMode.Bilinear;

		//Horizontal blur 使用blurMaterial材质的1SubShader
		buf.blitScreenQuadByMaterial(downRenderTexture,blurTexture,null,blurMaterial,1);
		//vertical blur	使用blurMaterial材质的2SubShader
		buf.blitScreenQuadByMaterial(blurTexture,downRenderTexture,null,blurMaterial,2);
		//Horizontal blur 使用blurMaterial材质的1SubShader
		buf.blitScreenQuadByMaterial(downRenderTexture,blurTexture,null,blurMaterial,1);
		//vertical blur   使用blurMaterial材质的2SubShader
		buf.blitScreenQuadByMaterial(blurTexture,downRenderTexture,null,blurMaterial,2);
		//在命令流里面插入设置图片命令流，在调用的时候会设置blurMaterial的图片数据
		buf.setShaderDataTexture(blurMaterial._shaderValues,BlurMaterial.SHADERVALUE_SOURCETEXTURE0,downRenderTexture);
		buf.setShaderDataTexture(blurMaterial._shaderValues,BlurMaterial.ShADERVALUE_SOURCETEXTURE1,subRendertexture);
		//caculate edge计算边缘图片
		buf.blitScreenQuadByMaterial(blurTexture,renderTexture,null,blurMaterial,3);
		//重新传入图片
		buf.setShaderDataTexture(blurMaterial._shaderValues,BlurMaterial.SHADERVALUE_SOURCETEXTURE0,renderTexture);
		//将camera渲染结果复制到subRendertexture，使用blurMaterial的4通道shader
		buf.blitScreenQuadByMaterial(null,subRendertexture,null,blurMaterial,4);
		//将subRenderTexture重新赋值到camera的渲染结果上面
		buf.blitScreenQuadByMaterial(subRendertexture,null);
		return buf;
	}
}