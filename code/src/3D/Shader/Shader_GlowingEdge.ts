import { BaseScript } from "../../BaseScript";
// import { GlowingEdgeMaterial } from "./customMaterials/GlowingEdgeMaterial";
// import GlowingEdgeShaderFS from "./customShader/glowingEdgeShader.fs";
// import GlowingEdgeShaderVS from "./customShader/glowingEdgeShader.vs";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Material = Laya.Material;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BaseTexture = Laya.BaseTexture;
import Shader3D = Laya.Shader3D;

const { regClass, property } = Laya;

@regClass()
export class Shader_GlowingEdge extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private rotation: Vector3 = new Vector3(0, 0.01, 0);

    constructor() {
        super();        
    }
	
    onAwake(): void {

        super.base(this.camera);
		//初始化shader
		this.initShader();

		var resource:any[] = [
            "resources/res/threeDimen/skinModel/dude/dude.lh",
            "resources/res/threeDimen/skinModel/dude/Assets/dude/head.png",
			"resources/res/threeDimen/skinModel/dude/Assets/dude/jacket.png",
			"resources/res/threeDimen/skinModel/dude/Assets/dude/pants.png",
			"resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyC.png",
			"resources/res/threeDimen/texture/earth.png"
        ];

        Laya.loader.load(resource).then( (res:any[] )=>{
			//初始化资源
            this.onComplete(res);
        });

	}

	onComplete(res:any[]):void{		
		//创建场景
		var scene: Scene3D = this.scene;

		//创建相机
		var camera: Camera = this.camera;
		camera.transform.position = (new Vector3(0, 1, 1));
		camera.transform.rotate(new Vector3(-15, 0, 0), true, false);
		
		//创建平行光
		var directionLight: DirectionLight = new DirectionLight();
		scene.addChild(directionLight);
		directionLight.color = new Laya.Color(1, 1, 1, 1);
		scene.ambientColor = new Laya.Color(1.0, 0.0, 0.0);
		//加载精灵
		let dude = scene.addChild(res[0].create());
		dude.active = false;
		Laya.timer.once(500, this, ()=> {
			dude.active = true;
		});

		//使用自定义的材质
		var glowingEdgeMaterial1: GlowingEdgeMaterial = new GlowingEdgeMaterial();
		//加载纹理
		glowingEdgeMaterial1.diffuseTexture = res[1];
		//设置边缘颜色
		glowingEdgeMaterial1.marginalColor = new Vector3(1, 0.7, 0);

		var glowingEdgeMaterial2: GlowingEdgeMaterial = new GlowingEdgeMaterial();
		glowingEdgeMaterial2.diffuseTexture = res[2];
		glowingEdgeMaterial2.marginalColor = new Vector3(1, 0.7, 0);

		var glowingEdgeMaterial3: GlowingEdgeMaterial = new GlowingEdgeMaterial();
		glowingEdgeMaterial3.diffuseTexture = res[3];
		glowingEdgeMaterial3.marginalColor = new Vector3(1, 0.7, 0);

		var glowingEdgeMaterial4: GlowingEdgeMaterial = new GlowingEdgeMaterial();
		glowingEdgeMaterial4.diffuseTexture = res[4];
		glowingEdgeMaterial4.marginalColor = new Vector3(1, 0.7, 0);

		var baseMaterials: Material[] = [];
		baseMaterials[0] = glowingEdgeMaterial1;
		baseMaterials[1] = glowingEdgeMaterial2;
		baseMaterials[2] = glowingEdgeMaterial3;
		baseMaterials[3] = glowingEdgeMaterial4;

		(<Laya.SkinnedMeshSprite3D>dude.getChildAt(0).getChildAt(0)).skinnedMeshRenderer.sharedMaterials = baseMaterials;
		dude.transform.position = new Vector3(0, 0.5, 0);
		dude.transform.setWorldLossyScale(new Vector3(0.2, 0.2, 0.2));
		dude.transform.rotate(new Vector3(0, 180, 0), false, false);

		//加载地球精灵
		var earth: MeshSprite3D = (<MeshSprite3D>scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(0.5, 128, 128))));

		var glowingEdgeMaterial: GlowingEdgeMaterial = new GlowingEdgeMaterial();
			
		glowingEdgeMaterial.diffuseTexture = res[5];
		earth.meshRenderer.sharedMaterial = glowingEdgeMaterial;	
		glowingEdgeMaterial.marginalColor = new Vector3(0.0, 0.3, 1.0);		

		Laya.timer.frameLoop(1, this, ()=> {
			earth.transform.rotate(this.rotation, true);
		});
	}
    //初始化shader
	private initShader(): void {
		//创建自定义shader
		var glowingEdgeShader: Laya.Shader3D = Laya.Shader3D.add("GlowingEdgeMaterial", true, true);
		//为当前自定义的shader添加SubShader
		var subShader: Laya.SubShader = new Laya.SubShader();
		glowingEdgeShader.addSubShader(subShader);
		//SubShader添加ShaderPass

		let GlowingEdgeShaderVS = 
		'#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\n'+
		'precision highp float;\r\n'+
		'precision highp int;\r\n'+
		'#else\r\n'+
			'precision mediump float;\r\n'+
			'precision mediump int;\r\n'+
		'#endif\r\n'+
		
		'#define SHADER_NAME EDGE_VS\r\n'+
		
		'#include "VertexCommon.glsl";\r\n'+
		'#include "Scene.glsl";\r\n'+
		'#include "Camera.glsl";\r\n'+
		'#include "Sprite3DVertex.glsl";\r\n'+
		'varying vec2 v_Texcoord;\r\n'+
		'varying vec3 v_Normal;\r\n'+
		'varying vec3 v_PositionWorld;\r\n'+
		
		'void main()\r\n'+
		'{\r\n'+
			'Vertex vertex;\r\n'+
			'getVertexParams(vertex);\r\n'+
			'v_Texcoord = vertex.texCoord0;\r\n'+
			'mat4 worldMat = getWorldMatrix();\r\n'+
			'vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n'+
			'v_PositionWorld = positionWS;\r\n'+
			'v_Normal = normalize((worldMat * vec4(vertex.normalOS, 0.0))).xyz;\r\n'+
			'gl_Position = getPositionCS(positionWS);\r\n'+
			'gl_Position=remapPositionZ(gl_Position);\r\n'+
		'}\r\n';

		// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
		let GlowingEdgeShaderFS = 
		'#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\n'+
		'precision highp float;\r\n'+
		'precision highp int;\r\n'+
		'#else\r\n'+
			'precision mediump float;\r\n'+
			'precision mediump int;\r\n'+
		'#endif\r\n'+
		'#define SHADER_NAME EDGE_FS\r\n'+
		
		'#include "Lighting.glsl";\r\n'+
		'#include "Camera.glsl";\r\n'+
		
		'#include "Scene.glsl";\r\n'+
		'#include "globalIllumination.glsl";\r\n'+
		
		'varying vec2 v_Texcoord;\r\n'+
		'uniform sampler2D u_texture;\r\n'+
		'uniform vec3 u_marginalColor;\r\n'+
		
		'varying vec3 v_Normal;\r\n'+
		'varying vec3 v_PositionWorld;\r\n'+
		
		'void main()\r\n'+
		'{\r\n'+
			'gl_FragColor=texture2D(u_texture, v_Texcoord);\r\n'+
			'vec3 ambientCol = diffuseIrradiance(v_Normal);\r\n'+
			'vec3 normal=normalize(v_Normal);\r\n'+
			'vec3 toEyeDir = normalize(getViewDirection(v_PositionWorld));\r\n'+
			'float Rim = 1.0 - max(0.0,dot(toEyeDir, normal));\r\n'+
			'vec3 lightColor = ambientCol;\r\n'+
			'vec3 Emissive = 2.0 * lightColor * u_marginalColor * pow(Rim,3.0);\r\n'+  
			
			'gl_FragColor = texture2D(u_texture, v_Texcoord) + vec4(Emissive,1.0);\r\n'+
		'}\r\n';

		(<Laya.ShaderPass>subShader.addShaderPass(GlowingEdgeShaderVS, GlowingEdgeShaderFS));
	}
}

class GlowingEdgeMaterial extends Material {
    public static DIFFUSETEXTURE: number;
    public static MARGINALCOLOR: number;
    public isInit:boolean = false;
    __init__() {
        GlowingEdgeMaterial.DIFFUSETEXTURE = Shader3D.propertyNameToID("u_texture");
        GlowingEdgeMaterial.MARGINALCOLOR = Shader3D.propertyNameToID("u_marginalColor");
    }
    constructor() {
        super();
        if(!this.isInit){
            this.__init__();
            this.isInit = true;
        }
        this.setShaderName("GlowingEdgeMaterial");
    }
    /**
     * 获取漫反射贴图。
     *  漫反射贴图。
     */
    public get diffuseTexture(): BaseTexture {
        return this.getTextureByIndex(GlowingEdgeMaterial.DIFFUSETEXTURE);
    }

    /**
     * 设置漫反射贴图。
     * 漫反射贴图。
     */
    public set diffuseTexture(value: BaseTexture) {
        this.setTextureByIndex(GlowingEdgeMaterial.DIFFUSETEXTURE, value);
    }

    /**
     * 设置边缘光照颜色。
     * 边缘光照颜色。
     */
    public set marginalColor(value: Vector3) {
        this.setVector3ByIndex(GlowingEdgeMaterial.MARGINALCOLOR, value);
    }
}