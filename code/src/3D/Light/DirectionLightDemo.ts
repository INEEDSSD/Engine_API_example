import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Matrix4x4 = Laya.Matrix4x4;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Quaternion = Laya.Quaternion;

const { regClass, property } = Laya;

@regClass()
export class DirectionLightDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private _quaternion: Quaternion = new Quaternion();
	private _direction: Vector3 = new Vector3();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(0, 0.7, 1.3));
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		//方向光的颜色
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;

		//加载地面
		var resource: any[] = ["resources/res/threeDimen/staticModel/grid/plane.lh",
			"resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"];
		Laya.loader.load(resource).then((res:any[])=>{

			this.scene.addChild(res[0].create());
			this.scene.addChild(res[1].create());

			//设置时钟定时执行
			Laya.timer.frameLoop(1, this, this.roll);
		});

	}

	roll(): void{
		//从欧拉角生成四元数（顺序为Yaw、Pitch、Roll）
		Quaternion.createFromYawPitchRoll(0.025, 0, 0, this._quaternion);
		//根据四元数旋转三维向量
		this.directionLight.transform.worldMatrix.getForward(this._direction);
		Vector3.transformQuat(this._direction, this._quaternion, this._direction);
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(this._direction);
		this.directionLight.transform.worldMatrix = mat;
	}

    onDestroy(): void {
		Laya.timer.clear(this, this.roll);
	}

}