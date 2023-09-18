import { BaseScript } from "../../BaseScript";
//import SimpleShaderVS from "./customShader/simpleShader.vs";
//import SimpleShaderFS from "./customShader/simpleShader.fs";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import Quaternion = Laya.Quaternion;
import SubShader = Laya.SubShader;
import MeshRenderer = Laya.MeshRenderer;
import Shader3D = Laya.Shader3D;
import Material = Laya.Material;
import MaterialRenderMode = Laya.MaterialRenderMode;

const { regClass, property } = Laya;

@regClass()
export class Shader_Simple extends BaseScript {

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

        this.camera.transform.position = (new Vector3(0, 0.5, 1.5));

		this.initShader();

		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((mesh: Mesh)=> {
			var layaMonkey: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(mesh)));
			layaMonkey.transform.localScale = new Vector3(0.3, 0.3, 0.3);
			layaMonkey.transform.rotation = new Quaternion(0.7071068, 0, 0, -0.7071067);

			var customMaterial: CustomMaterial = new CustomMaterial();
			layaMonkey.getComponent(MeshRenderer).sharedMaterial = customMaterial;

			Laya.timer.frameLoop(1, this, ()=> {
				layaMonkey.transform.rotate(this.rotation, false);
			});
		});
	}

	private initShader(): void {
		var customShader: Shader3D = Shader3D.add("CustomShader");
		var subShader: SubShader = new SubShader();
		customShader.addSubShader(subShader);
		
		let SimpleShaderVS = 
		'#include "Camera.glsl";\r\n'+
		'#include "Sprite3DVertex.glsl";\r\n'+
		'#include "VertexCommon.glsl";\r\n'+		
		'varying vec3 v_Normal;\r\n'+		
		'void main()\r\n'+
		'{\r\n'+
			'Vertex vertex;\r\n'+
			'getVertexParams(vertex);\r\n'+
			'mat4 worldMat = getWorldMatrix();\r\n'+
			'vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n'+		
			'gl_Position = getPositionCS(positionWS);\r\n'+			  
			'vec3 normalWS = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);\r\n'+
			'v_Normal = normalWS;\r\n'+
			'gl_Position=remapPositionZ(gl_Position);\r\n'+
		'}\r\n';

		// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
		let SimpleShaderFS = 
		'#if defined(GL_FRAGMENT_PRECISION_HIGH) \r\n'+
			'precision highp float;\r\n'+
		'#else\r\n '+
			'precision mediump float;\r\n'+
		'#endif \r\n'+		
		'#include "Color.glsl";\r\n'+
		'varying vec3 v_Normal;\r\n'+		
		'void main()\r\n'+
		'{\r\n'+
			'gl_FragColor=vec4(v_Normal, 1.0);\r\n'+
			'gl_FragColor = outputTransform(gl_FragColor);\r\n'+
		'}\r\n';

		subShader.addShaderPass(SimpleShaderVS, SimpleShaderFS);
	}
}

class CustomMaterial extends Material {
	constructor() {
		super();
		this.setShaderName("CustomShader");
		this.materialRenderMode = MaterialRenderMode.RENDERMODE_OPAQUE;
	}
}

