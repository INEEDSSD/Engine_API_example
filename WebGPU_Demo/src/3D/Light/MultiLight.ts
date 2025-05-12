import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;

const { regClass, property } = Laya;

@regClass()
export class MultiLight extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Sprite3D)
	private pointLight: Laya.Sprite3D;

	private spotLights: Laya.Sprite3D[] = [];
	private angleSpeedX: number[] = [];
	private angleSpeedZ: number[] = [];
	constructor() {
		super();
	}

	onAwake(): void {
		super.base(this.camera);

		for (var i: number = 0; i < 15; i++) {
			let spotLight = new Laya.Sprite3D();
			let spotCom: Laya.SpotLightCom = spotLight.addComponent(Laya.SpotLightCom);
			this.scene.addChild(spotLight);

			// 随机颜色 (RGB)
			spotCom.color = new Laya.Color(Math.random(), Math.random(), Math.random(), 1.0);

			// 设定光照范围 & 强度
			spotCom.range = 500;
			spotCom.spotAngle = 5 + Math.random() * 30;
			spotCom.intensity = 5 + Math.random() * 10;

			let x = -0.1;
			let y = 1.65;
			let z = -3 + 0.3 * i;
			spotLight.transform.position = new Laya.Vector3(x, y, z);
			spotLight.transform.localRotationEulerX = -90;


			this.spotLights.push(spotLight);
			this.angleSpeedX.push(0.5 + Math.random());
			this.angleSpeedZ.push(0.5 + Math.random());
		}

		// 让灯光持续晃动
		Laya.timer.frameLoop(1, this, this.updateSpotLights);
	}

	private updateSpotLights(): void {
		let time = Laya.timer.currTimer * 0.0015; // 获取当前时间（秒）
		for (let i = 0; i < this.spotLights.length; i++) {
			let spotLight = this.spotLights[i];

			let angleX = Math.sin(time * this.angleSpeedX[i]) * 20 - 90;
			let angleY = Math.sin(time * this.angleSpeedZ[i]) * 60;

			spotLight.transform.localRotationEuler = new Laya.Vector3(angleX, angleY, 0);
		}
		let newZ = Math.sin(time) * 2;
		this.pointLight.transform.localPositionZ = newZ;
	}
}