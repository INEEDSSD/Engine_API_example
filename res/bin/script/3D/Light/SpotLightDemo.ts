import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Color = Laya.Color;

const { regClass, property } = Laya;

@regClass()
export class SpotLightDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight:Laya.Sprite3D;

    private _quaternion:Laya.Quaternion = new Laya.Quaternion();
    private _direction:Laya.Vector3 = new Laya.Vector3();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(0, 0.7, 1.3));
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.active = false;
		//设置场景环境光颜色
		this.scene.ambientColor = new Color(0.1, 0.1, 0.1);

        //聚光灯
        var spotLight:Laya.SpotLight = this.scene.addChild(new Laya.SpotLight()) as Laya.SpotLight;
        spotLight.color = new Laya.Color(1, 1, 0);
        spotLight.transform.position = new Laya.Vector3(0.0, 1.2, 0.0);
        var mat = spotLight.transform.worldMatrix;
        mat.setForward(new Laya.Vector3(0.15, -1.0, 0.0));
        spotLight.transform.worldMatrix = mat;
        spotLight.range = 6.0;
        spotLight.spotAngle = 32;

		//加载地面
		var resource: any[] = ["resources/res/threeDimen/staticModel/grid/plane.lh",
		                        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"];
                                
		Laya.loader.load(resource).then((res:any[])=>{

			this.scene.addChild(res[0].create());
			this.scene.addChild(res[1].create());

            Laya.timer.frameLoop(1, this, ()=> {
                Laya.Quaternion.createFromYawPitchRoll(0.025, 0, 0, this._quaternion);
                spotLight.transform.worldMatrix.getForward(this._direction);
                Laya.Vector3.transformQuat(this._direction, this._quaternion, this._direction);
                var mat = spotLight.transform.worldMatrix;
                mat.setForward(this._direction);
                spotLight.transform.worldMatrix = mat;
            });
		});
	}

}