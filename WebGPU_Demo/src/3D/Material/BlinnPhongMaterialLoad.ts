import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Vector3 = Laya.Vector3;
import Quaternion = Laya.Quaternion;

const { regClass, property } = Laya;

@regClass()
export class BlinnPhongMaterialLoad extends BaseScript {

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

		//加载模型
		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((res) => {
			var layaMonkey: Laya.Sprite3D = new Laya.Sprite3D();
			let monkeyMeshfilter: Laya.MeshFilter = layaMonkey.addComponent(Laya.MeshFilter);
			monkeyMeshfilter.sharedMesh = res as Laya.Mesh;
			let monkeyMeshrender: Laya.MeshRenderer = layaMonkey.addComponent(Laya.MeshRenderer);
			this.scene.addChild(layaMonkey);
			layaMonkey.transform.localScale = new Vector3(0.3, 0.3, 0.3);
			layaMonkey.transform.rotation = new Quaternion(0.7071068, 0, 0, -0.7071067);

			//加载材质
			Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat").then((mat) => {
				layaMonkey.getComponent(Laya.MeshRenderer).sharedMaterial = mat;
			});

			Laya.timer.frameLoop(1, this, () => {
				layaMonkey.transform.rotate(this.rotation, false);
			});
		});
	}

}