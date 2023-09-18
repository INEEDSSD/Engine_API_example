import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Mesh = Laya.Mesh;
import Texture2D = Laya.Texture2D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import UnlitMaterial = Laya.UnlitMaterial;
import CameraClearFlags = Laya.CameraClearFlags;

const { regClass, property } = Laya;

@regClass()
export class UnlitMaterialDemo extends BaseScript {

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

		this.camera.transform.position = (new Vector3(0, 0, 2));
		this.camera.transform.rotate(new Vector3(0, 0, 0), true, false);
		this.camera.clearFlag = CameraClearFlags.Sky;


		//创建一个公用的sphereMesh
		var sphereMesh: Mesh = PrimitiveMesh.createSphere();
		var earth1: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(sphereMesh)));
		earth1.transform.position = new Vector3(-0.6, 0, 0);
		var earth2: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(sphereMesh)));
		earth2.transform.position = new Vector3(0.6, 0, 0);

		//创建BlinnPhong材质
		var material: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture: Texture2D)=>{
			//设置反照率贴图
			material.albedoTexture = texture;
		});
		earth1.meshRenderer.material = material;

		//创建Unlit材质
		var material2: UnlitMaterial = new UnlitMaterial();
		Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture: Texture2D)=>{
			//设置反照率贴图
			material2.albedoTexture = texture;
		});
		earth2.meshRenderer.material = material2;

		Laya.timer.frameLoop(1, this, ()=> {
			earth1.transform.rotate(this.rotation, false);
			earth2.transform.rotate(this.rotation, false);
		});
	}
 
}