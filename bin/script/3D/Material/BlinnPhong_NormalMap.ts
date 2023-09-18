import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshRenderer = Laya.MeshRenderer;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Texture2D = Laya.Texture2D;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class BlinnPhong_NormalMap extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private rotation: Vector3 = new Vector3(0, 0.01, 0);
	private normalMapUrl: any[] = ["resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizardeye_norm.png", 
	"resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png", 
	"resources/res/threeDimen/staticModel/lizard/Assets/Lizard/rock_norm.png"];


    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(0, 0.6, 1.1));
		this.camera.transform.rotate(new Vector3(-30, 0, 0), true, false);

		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(0.0, -0.8, -1.0));
		this.directionLight.transform.worldMatrix = mat;
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);

		Laya.loader.load("resources/res/threeDimen/staticModel/lizard/lizard.lh").then((res)=>{
			this.onComplete(res);
		});
	}

	onComplete(res:any): void {

		var monster1: Sprite3D = (<Sprite3D>this.scene.addChild(res.create()));
		monster1.transform.position = new Vector3(-0.6, 0, 0);
		monster1.transform.localScale = new Vector3(0.075, 0.075, 0.075);

		
		var monster2: Sprite3D = Sprite3D.instantiate(monster1, this.scene, false, new Vector3(0.6, 0, 0));
		monster2.transform.localScale = new Vector3(0.075, 0.075, 0.075);
		for (var i: number = 0; i < monster2.getChildByName("lizard").numChildren; i++) {
			var meshSprite3D: MeshSprite3D = (<MeshSprite3D>monster2.getChildByName("lizard").getChildAt(i));
			var material: BlinnPhongMaterial = (<BlinnPhongMaterial>meshSprite3D.getComponent(MeshRenderer).material);
			//法线贴图
			Laya.loader.load(this.normalMapUrl[i]).then((texture: Texture2D)=> {
				material.normalTexture = texture;
			});
		}

		Laya.timer.frameLoop(1, this, () => {
			monster1.transform.rotate(this.rotation);
			monster2.transform.rotate(this.rotation);
		});

	}
 
}