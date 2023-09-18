import { BaseScript } from "../../BaseScript";
// import { MultiplePassOutlineMaterial } from "./customMaterials/MultiplePassOutlineMaterial";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Material = Laya.Material;
import BaseTexture = Laya.BaseTexture;
import ShaderDefine = Laya.ShaderDefine;
import Shader3D = Laya.Shader3D;
import Color = Laya.Color;
import ShaderDataType = Laya.ShaderDataType;
import SubShader = Laya.SubShader;
import ShaderPass = Laya.ShaderPass;
import RenderState = Laya.RenderState;

const { regClass, property } = Laya;

@regClass()
export class Shader_MultiplePassOutline extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private rotation: Vector3 = new Vector3(0, 0.01, 0);

    constructor() {
        super();        
    }

    onAwake(): void {
        super.base(this.camera);
		//初始化Shader
		MultiplePassOutlineMaterial.initShader();
		//创建场景
		var scene: Scene3D = this.scene;
		//创建相机
		var camera: Camera = this.camera;
		camera.transform.position = (new Vector3(0, 1, 1.5));
		camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		
		this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(1, 1, 1, 1);
		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((mesh: any)=> {
			var layaMonkey: MeshSprite3D = (<MeshSprite3D>scene.addChild(new MeshSprite3D(mesh)));
			layaMonkey.transform.localScale = new Vector3(0.3, 0.3, 0.3);
			layaMonkey.transform.rotation = new Laya.Quaternion(0.7071068, 0, 0, -0.7071067);
			var customMaterial: MultiplePassOutlineMaterial = new MultiplePassOutlineMaterial();
			layaMonkey.meshRenderer.sharedMaterial = customMaterial;
			//漫反射贴图
			Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/diffuse.png").then((res: any)=> {
				customMaterial.albedoTexture = res;
			});			

			Laya.timer.frameLoop(1, this, ()=> {
				layaMonkey.transform.rotate(this.rotation,false);
			});
		});
	}  
}

export class MultiplePassOutlineMaterial extends Material {
	static ALBEDOTEXTURE: number;
	static OUTLINECOLOR: number;
	static OUTLINEWIDTH: number;
	static OUTLINELIGHTNESS: number;

	static SHADERDEFINE_ALBEDOTEXTURE: ShaderDefine;

	/**
	 * @private
	 */
	static __init__(): void {
		MultiplePassOutlineMaterial.ALBEDOTEXTURE = Shader3D.propertyNameToID("u_AlbedoTexture");
		MultiplePassOutlineMaterial.OUTLINECOLOR = Shader3D.propertyNameToID("u_OutlineColor");
		MultiplePassOutlineMaterial.OUTLINEWIDTH = Shader3D.propertyNameToID("u_OutlineWidth");
		MultiplePassOutlineMaterial.OUTLINELIGHTNESS = Shader3D.propertyNameToID("u_OutlineLightness");
	}
	/**
	 * 漫反射贴图。
	 */
	get albedoTexture(): BaseTexture {
		return this.getTextureByIndex(MultiplePassOutlineMaterial.ALBEDOTEXTURE);
	}

	set albedoTexture(value: BaseTexture) {
		this.setTextureByIndex(MultiplePassOutlineMaterial.ALBEDOTEXTURE, value);
	}
	/**
	 * 线条颜色
	 */
	get outlineColor(): Color {
		return this.getColorByIndex(MultiplePassOutlineMaterial.OUTLINECOLOR);
	}

	set outlineColor(value: Color) {
		this.setColorByIndex(MultiplePassOutlineMaterial.OUTLINECOLOR, value);
	}
	/**
	 * 获取轮廓宽度,范围为0到0.05。
	 */
	get outlineWidth(): number {
		return this.getFloatByIndex(MultiplePassOutlineMaterial.OUTLINEWIDTH);
	}

	set outlineWidth(value: number) {
		value = Math.max(0.0, Math.min(0.05, value));
		this.setFloatByIndex(MultiplePassOutlineMaterial.OUTLINEWIDTH, value);
	}

	/**
	 * 轮廓亮度,范围为0到1。
	 */
	get outlineLightness(): number {
		return this.getFloatByIndex(MultiplePassOutlineMaterial.OUTLINELIGHTNESS);
	}

	set outlineLightness(value: number) {
		value = Math.max(0.0, Math.min(1.0, value));
		this.setFloatByIndex(MultiplePassOutlineMaterial.OUTLINELIGHTNESS, value);
	}


	static initShader(): void {
		MultiplePassOutlineMaterial.__init__();

		var uniformMap: any = {
			'u_OutlineLightness': ShaderDataType.Float,
			'u_OutlineColor': ShaderDataType.Color,
			'u_AlbedoTexture': ShaderDataType.Texture2D,
			'u_OutlineWidth': ShaderDataType.Float

		};
		var customShader: Shader3D = Shader3D.add("MultiplePassOutlineShader");
		var subShader: SubShader = new SubShader(SubShader.DefaultAttributeMap, uniformMap);
		customShader.addSubShader(subShader);

		let OutlineVS = 
		'#include "Sprite3DVertex.glsl";\r\n'+
		'#include "VertexCommon.glsl";\r\n'+
		'#include "Camera.glsl";\r\n'+
		'void main()\r\n'+
		'{\r\n'+
			'Vertex vertex;\r\n'+
			'getVertexParams(vertex);\r\n'+
			'vec4 position = vec4((vertex.positionOS) + (vertex.normalOS) * u_OutlineWidth, 1.0);\r\n'+
		
			'mat4 worldMat = getWorldMatrix();\r\n'+
			'vec3 positionWS = (worldMat * vec4(position)).xyz;\r\n'+
			'gl_Position = getPositionCS(positionWS);\r\n'+
			'gl_Position = remapPositionZ(gl_Position);\r\n'+
		'} \r\n';		


		// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
		let OutlineFS = 
		'#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\n'+ 
			'precision highp float;\r\n'+ 
		'#else \r\n'+ 
			'precision mediump float;\r\n'+ 
		'#endif \r\n'+ 

		'void main() \r\n'+ 
		'{ \r\n'+ 
			'vec3 finalColor = u_OutlineColor.rgb * u_OutlineLightness;\r\n'+ 
			'gl_FragColor = vec4(finalColor,0.0);\r\n'+ 
		'}\r\n';

		var pass1: ShaderPass = subShader.addShaderPass(OutlineVS, OutlineFS);
		pass1.statefirst = true;
		pass1.renderState.cull = RenderState.CULL_FRONT;

		let Outline02VS = 
		'#include "Camera.glsl";\r\n'+
		'#include "Sprite3DVertex.glsl";\r\n'+
		'#include "VertexCommon.glsl";\r\n'+
		
		'varying vec3 v_Normal;\r\n'+ 
		'varying vec2 v_Texcoord0;\r\n'+ 
		
		'void main() \r\n'+
		'{ \r\n'+
		
			'Vertex vertex;\r\n'+
			'getVertexParams(vertex);\r\n'+
			'mat4 worldMat = getWorldMatrix();\r\n'+
			'vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n'+
		
			'gl_Position = getPositionCS(positionWS);\r\n'+
		
			'v_Normal = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);\r\n'+
			'v_Texcoord0 = vertex.texCoord0;\r\n'+ 
			'gl_Position=remapPositionZ(gl_Position);\r\n'+ 
		'}\r\n';	


		// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
		let Outline02FS = 
		'#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\n'+
			'precision highp float;\r\n'+
		'#else\r\n'+
			'precision mediump float;\r\n'+
		'#endif\r\n'+
		'varying vec2 v_Texcoord0;\r\n'+
		'varying vec3 v_Normal;\r\n'+
		
		'void main()\r\n'+
		'{\r\n'+
			'vec4 albedoTextureColor = vec4(1.0);\r\n'+
			
			'albedoTextureColor = texture2D(u_AlbedoTexture, v_Texcoord0);\r\n'+
			'gl_FragColor = albedoTextureColor;\r\n'+
		'}\r\n';	
		var pass2: ShaderPass = subShader.addShaderPass(Outline02VS, Outline02FS);
	}
	
	constructor() {
		super();
		this.setShaderName("MultiplePassOutlineShader");
		this.setFloatByIndex(MultiplePassOutlineMaterial.OUTLINEWIDTH, 0.01581197);
		this.setFloatByIndex(MultiplePassOutlineMaterial.OUTLINELIGHTNESS, 1);
		this.setColorByIndex(MultiplePassOutlineMaterial.OUTLINECOLOR, new Color(1.0, 1.0, 1.0, 0.0));
	}
}