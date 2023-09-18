import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;

const { regClass, property } = Laya;

@regClass()
export class Sky_Procedural extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private rotation: Vector3;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 0.7, 5);
		this.camera.transform.rotate(new Vector3(10, 0, 0), true, false);

		//初始化平行光
		var mat = this.directionLight.transform.worldMatrix;
		mat.setForward(new Laya.Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;
		this.rotation = new Laya.Vector3(-0.01, 0, 0);

		//初始化天空渲染器
		var skyRenderer:Laya.SkyRenderer = this.scene.skyRenderer;
		skyRenderer.mesh = Laya.SkyDome.instance;
		skyRenderer.material = new Laya.SkyProceduralMaterial();
		//旋转平行光,模拟太阳轨迹
		Laya.timer.frameLoop(1, this, this.onFrameLoop);
	}

	onFrameLoop(){
		this.directionLight.transform.rotate(this.rotation);
	}
}