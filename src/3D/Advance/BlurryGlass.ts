import { BaseScript } from "../../BaseScript";
import { GlassWithoutGrabMaterial } from "./CommandBufferDemo/GlassWithoutGrabMaterial";
import { BlurEffect } from "./BlurShader/BlurEffect";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Vector4 = Laya.Vector4;
import Loader = Laya.Loader;
import Image = Laya.Image;

import Handler = Laya.Handler;


const { regClass, property } = Laya;

@regClass()
export class BlurGlass extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private mat: GlassWithoutGrabMaterial;
	private texture: Laya.RenderTexture;

    constructor() {
        super();
    }


    onAwake(): void {
		
        super.base(this.camera);
		//材质初始化
		BlurEffect.init();
		GlassWithoutGrabMaterial.init();

		//加载场景
		var scene = this.scene;
		var camera = this.camera;

		var glass01: Laya.MeshSprite3D = scene.getChildByName("glass01") as Laya.MeshSprite3D;
		var glass02: Laya.MeshSprite3D = scene.getChildByName("glass02") as Laya.MeshSprite3D;
		//在这里切换了材质
		var pbrStandard: Laya.PBRStandardMaterial = glass01.getComponent(Laya.MeshRenderer).sharedMaterial as Laya.PBRStandardMaterial;
		//将图片设置到玻璃材质
		var glassMaterial = new GlassWithoutGrabMaterial(pbrStandard.albedoTexture);
		//给模型赋毛玻璃材质
		glass01.getComponent(Laya.MeshRenderer).sharedMaterial = glassMaterial;
		glass02.getComponent(Laya.MeshRenderer).sharedMaterial = glassMaterial;
		this.mat = glassMaterial;
		//创建使用CommandBuffer
		this.createCommandBuffer(camera);
	}

	/**
	 * 创建CommandBuffer命令缓存流
	 * @param camera 
	 */
	createCommandBuffer(camera: Laya.Camera) {
		//当需要在流程中拿摄像机渲染效果的时候 设置true
		camera.enableBuiltInRenderTexture = true;
		//创建渲染命令流
		var buf: Laya.CommandBuffer = new Laya.CommandBuffer();
		//创建需要模糊使用的屏幕RenderTexture
		var viewPort: Laya.Viewport = camera.viewport;
		var renderTexture = Laya.RenderTexture.createFromPool(viewPort.width, viewPort.height, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
		//将当前渲染的结果拷贝到创建好的RenderTexture
		this.texture = renderTexture;
		buf.blitScreenTriangle(null, renderTexture);
		//获得shader
		var shader: Laya.Shader3D = Laya.Shader3D.find("blurEffect");
		var shaderValue: Laya.ShaderData = Laya.LayaGL.renderOBJCreate.createShaderData(null);
		//down Sample level设置降采样等级
		var downSampleFactor: number = 4;
		var downSampleWidth: number = viewPort.width / downSampleFactor;
		var downSampleheigh: number = viewPort.height / downSampleFactor;
		//设置模糊材质参数
		var texSize: Vector4 = new Vector4(1.0 / viewPort.width, 1.0 / viewPort.height, viewPort.width, downSampleheigh);//材质所在坐标位置
		shaderValue.setNumber(BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE, 1);
		shaderValue.setVector(BlurEffect.SHADERVALUE_TEXELSIZE, texSize);
		//创建降采样RenderTexture1
		var downRenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
		//降采样命令流
		buf.blitScreenTriangle(renderTexture, downRenderTexture, null, shader, shaderValue, 0);
		//创建降采样RenderTexture2
		var blurTexture: Laya.RenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
		blurTexture.filterMode = Laya.FilterMode.Bilinear;
		//Horizontal blur
		buf.blitScreenTriangle(downRenderTexture, blurTexture, null, shader, shaderValue, 1);
		//vertical blur
		buf.blitScreenTriangle(blurTexture, downRenderTexture, null, shader, shaderValue, 2);
		//Horizontal blur
		buf.blitScreenTriangle(downRenderTexture, blurTexture, null, shader, shaderValue, 1);
		//vertical blur
		buf.blitScreenTriangle(blurTexture, downRenderTexture, null, shader, shaderValue, 2);

		//设置全局uniform变量  
		var globalUniformNameID: number = Laya.Shader3D.propertyNameToID("u_screenTexture");
		buf.setGlobalTexture(globalUniformNameID, downRenderTexture);
		//将commandBuffer加入渲染流程
		camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, buf);
		//回收用过的RenderTexture
		Laya.RenderTexture.recoverToPool(downRenderTexture);
		Laya.RenderTexture.recoverToPool(blurTexture);
		return;
	}
}