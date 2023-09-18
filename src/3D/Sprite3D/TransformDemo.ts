import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Transform3D = Laya.Transform3D;

const { regClass, property } = Laya;

@regClass()
export class TransformDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private _position: Vector3 = new Vector3(0, 0, 0);
	private _position1: Vector3 = new Vector3(0, 0, 0);
	private _rotate: Vector3 = new Vector3(0, 1, 0);
	private _rotate1: Vector3 = new Vector3(0, 0, 0);
	private _scale: Vector3 = new Vector3();
	private scaleDelta: number = 0;
	private scaleValue: number = 0;

	private layaMonkey_clone1: Sprite3D;
	private layaMonkey_clone2: Sprite3D;
	private layaMonkey_clone3: Sprite3D;

	private clone1Transform: Transform3D;
	private clone2Transform: Transform3D;
	private clone3Transform: Transform3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1, 1);
		this.camera.transform.rotate(new Vector3(-30, 0, 0), true, false);


		//批量预加载资源
		Laya.loader.load(["resources/res/threeDimen/staticModel/grid/plane.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"]).then((res:any[])=>{
			this.onComplete(res);
		});

	}

	private onComplete(res:any[]): void {
		//加载地面
		this.scene.addChild(res[0].create());
		//加载静态小猴子
		var staticLayaMonkey: MeshSprite3D = (<MeshSprite3D>res[1].create());

		//克隆sprite3d
		this.layaMonkey_clone1 = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position1);
		this.layaMonkey_clone2 = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position1);
		this.layaMonkey_clone3 = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position1);
		//得到三个Transform
		this.clone1Transform = this.layaMonkey_clone1.transform;
		this.clone2Transform = this.layaMonkey_clone2.transform;
		this.clone3Transform = this.layaMonkey_clone3.transform;
		//平移
		this._position1.setValue(0.0, 0, 0.0);
		this.clone1Transform.translate(this._position1);
		this._position1.setValue(-0.5, 0, 0.0);
		this.clone2Transform.translate(this._position1);
		this._position1.setValue(0.5, 0, 0.0);
		this.clone3Transform.translate(this._position1);
		//旋转
		this._rotate1.setValue(0, 60, 0);
		this.clone2Transform.rotate(this._rotate1, false, false);

		staticLayaMonkey.destroy();

		//设置定时器执行,定时重复执行(基于帧率)
		Laya.timer.frameLoop(1, this, this.animate);

	}

	private animate(): void {

		this.scaleValue = Math.sin(this.scaleDelta += 0.1);

		this._position.y = Math.max(0, this.scaleValue / 2);
		this.clone1Transform.position = this._position;

		this.clone2Transform.rotate(this._rotate, false, false);

		this._scale.x = this._scale.y = this._scale.z = Math.abs(this.scaleValue);
		this.clone3Transform.localScale = this._scale;
	}
 
}