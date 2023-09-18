import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Quaternion = Laya.Quaternion;
import PointLight = Laya.PointLight;
import Color = Laya.Color;

const { regClass, property } = Laya;

@regClass()
export class PointLightDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private _temp_position: Vector3 = new Vector3();
	private _temp_quaternion: Quaternion = new Quaternion();

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

		//创建点光源
		var pointLight: PointLight = (<PointLight>this.scene.addChild(new PointLight()));
		//点光源的颜色
		pointLight.color = new Color(1.0, 0.5, 0.0, 1);
		pointLight.transform.position = new Vector3(0.4, 0.4, 0.0);
		//设置点光源的范围
		pointLight.range = 3.0;

		//加载地面
		var resource: any[] = ["resources/res/threeDimen/staticModel/grid/plane.lh",
		"resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"];
		Laya.loader.load(resource).then((res:any[])=>{

			this.scene.addChild(res[0].create());
			this.scene.addChild(res[1].create());

			//设置时钟定时执行
			Laya.timer.frameLoop(1, this, ()=> {
				//从欧拉角生成四元数（顺序为Yaw、Pitch、Roll）
				Quaternion.createFromYawPitchRoll(0.025, 0, 0, this._temp_quaternion);
				//根据四元数旋转三维向量
				Vector3.transformQuat(pointLight.transform.position, this._temp_quaternion, this._temp_position);
				pointLight.transform.position = this._temp_position;
			});
		});
	}

}