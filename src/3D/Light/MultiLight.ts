import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import SpotLight = Laya.SpotLight;
import PointLight = Laya.PointLight;
import Transform3D = Laya.Transform3D;
import LightSprite = Laya.LightSprite;

const { regClass, property } = Laya;

@regClass()
export class MultiLight extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		var moveScript: LightMoveScript = this.camera.addComponent(LightMoveScript);
		var moverLights: LightSprite[] = moveScript.lights;
		var offsets: Vector3[] = moveScript.offsets;
		var moveRanges: Vector3[] = moveScript.moveRanges;
		moverLights.length = 15;
		for (var i: number = 0; i < 15; i++) {
			var pointLight: PointLight = (<PointLight>this.scene.addChild(new PointLight()));
			pointLight.range = 2.0 + Math.random() * 8.0;
			pointLight.color.setValue(Math.random(), Math.random(), Math.random(), 1);
			pointLight.intensity = 6.0 + Math.random() * 8;
			moverLights[i] = pointLight;
			offsets[i] = new Vector3((Math.random() - 0.5) * 10, pointLight.range * 0.75, (Math.random() - 0.5) * 10);
			moveRanges[i] = new Vector3((Math.random() - 0.5) * 40, 0, (Math.random() - 0.5) * 40);
		}

		var spotLight: SpotLight = (<SpotLight>this.scene.addChild(new SpotLight()));
		spotLight.transform.localPosition = new Vector3(0.0, 9.0, -35.0);
		spotLight.transform.localRotationEuler = new Vector3(-15.0, 180.0, 0.0);
		spotLight.color.setValue(Math.random(), Math.random(), Math.random(), 1);
		spotLight.range = 50;
		spotLight.intensity = 15;
		spotLight.spotAngle = 60;
	}
}

class LightMoveScript extends Laya.Script {

	forward: Vector3 = new Vector3();
	lights: LightSprite[] = [];
	offsets: Vector3[] = [];
	moveRanges: Vector3[] = [];

	onUpdate(): void {
		var seed: number = Laya.timer.currTimer * 0.002;
		for (var i: number = 0, n: number = this.lights.length; i < n; i++) {
			var transform: Transform3D = this.lights[i].transform;
			var pos: Vector3 = transform.localPosition;
			var off: Vector3 = this.offsets[i];
			var ran: Vector3 = this.moveRanges[i];
			pos.x = off.x + Math.sin(seed) * ran.x;
			pos.y = off.y + Math.sin(seed) * ran.y;
			pos.z = off.z + Math.sin(seed) * ran.z;
			transform.localPosition = pos;
		}
	}
}