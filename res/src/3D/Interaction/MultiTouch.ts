import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Text = Laya.Text;
import Vector2 = Laya.Vector2;
import Label = Laya.Label;

const { regClass, property } = Laya;

@regClass()
export class MultiTouch extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	public static text: Label;
	private infoText: Label;
    constructor() {
        super();
    }

    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 0.8, 1.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res)=>{
			this.onComplete(res);
		})
	}

	private onComplete(res:any): void {
		//加载小猴子精灵
		var monkey: Sprite3D = res.create();
		//猴子精灵添加组件（脚本）
		monkey.addComponent(MonkeyScript);
		this.scene.addChild(monkey);
		//设置相机的观察目标为小猴子
		this.camera.transform.lookAt(monkey.transform.position, new Vector3(0, 1, 0));

		MultiTouch.text = new Label();
		//设置文本显示框位置
		MultiTouch.text.text = "触控点归零";
		//显示文本显示框
		MultiTouch.text.name = "ceshi";
		MultiTouch.text.width = this.pageWidth;
		MultiTouch.text.align = "center";
		MultiTouch.text.anchorX = 0.5;
		MultiTouch.text.overflow = Text.HIDDEN;
		MultiTouch.text.color = "#FFFFFF";
		MultiTouch.text.font = "Impact";
		MultiTouch.text.fontSize = 25;
		MultiTouch.text.x = this.pageWidth / 2;
		MultiTouch.text.y = 70;
		this.owner.addChild(MultiTouch.text);

		//设置操作提示框
		this.infoText = new Laya.Label();
		this.infoText.x = this.pageWidth / 2;
		this.infoText.y = 20;
		this.infoText.width = this.pageWidth;
		this.infoText.anchorX = 0.5;
		this.infoText.align = "center";
		this.infoText.text = "单指旋转，双指缩放(请使用手机设备)";
		this.infoText.overflow = Laya.Text.HIDDEN;
		this.infoText.color = "#FFFFFF";
		this.infoText.font = "Impact";
		this.infoText.fontSize = 25;
		this.owner.addChild(this.infoText);
	}
}

class MonkeyScript extends Laya.Script {

	private _scene: Scene3D;
	private _text: Label;
	private _camera: Camera;
	private rotation: Vector3 = new Vector3(0, 0.01, 0);
	private lastPosition: Vector2 = new Vector2(0, 0);
	private distance: number = 0.0;
	private disVector1: Vector2 = new Vector2(0, 0);
	private disVector2: Vector2 = new Vector2(0, 0);
	private isTwoTouch: boolean = false;
	private first: boolean = true;
	private twoFirst: boolean = true;
	private tmpVector: Vector3 = new Vector3(0, 0, 0);

	onAwake(): void {
	}

	onStart(): void {
		this._scene = (<Scene3D>((<Sprite3D>this.owner)).parent);
		this._text = MultiTouch.text;
		this._camera = (<Camera>this._scene.getChildByName("Main Camera"));
	}

	onUpdate(): void {
		var touchCount: number = Laya.InputManager.touchCount;
		if (1 === touchCount) {
			//判断是否为两指触控，撤去一根手指后引发的touchCount===1
			if (this.isTwoTouch) {
				return;
			}
			this._text.text = "触控点为1";
			//获取当前的触控点，数量为1
			var touch = Laya.InputManager.touches[0];
			//是否为新一次触碰，并未发生移动
			if (this.first) {
				//获取触碰点的位置
				this.lastPosition.x = touch.pos.x;
				this.lastPosition.y = touch.pos.y;
				this.first = false;
			} else {
				//移动触碰点
				var deltaY: number = touch.pos.y - this.lastPosition.y;
				var deltaX: number = touch.pos.x - this.lastPosition.x;
				this.lastPosition.x = touch.pos.x;
				this.lastPosition.y = touch.pos.y;
				//根据移动的距离进行旋转
				this.tmpVector.setValue(1 * deltaY / 2, 1 * deltaX / 2, 0);
				((<Sprite3D>this.owner)).transform.rotate(this.tmpVector, true, false);
			}
		} else if (2 === touchCount) {
			this._text.text = "触控点为2";
			this.isTwoTouch = true;
			//获取两个触碰点
			var touch = Laya.InputManager.touches[0];
			var touch2 = Laya.InputManager.touches[1];
			//是否为新一次触碰，并未发生移动
			if (this.twoFirst) {
				//获取触碰点的位置
				this.disVector1.x = touch.pos.x - touch2.pos.x;
				this.disVector1.y = touch.pos.y - touch2.pos.y;
				this.distance = Vector2.scalarLength(this.disVector1);
				this.twoFirst = false;
			} else {
				this.disVector2.x = touch.pos.x - touch2.pos.x;
				this.disVector2.y = touch.pos.y - touch2.pos.y;
				var distance2: number = Vector2.scalarLength(this.disVector2);
				//根据移动的距离进行缩放
				this.tmpVector.setValue(0, 0, -0.01 * (distance2 - this.distance));
				this._camera.transform.translate(this.tmpVector);
				this.distance = distance2;
			}
		} else if (0 === touchCount) {
			this._text.text = "触控点归零";
			this.first = true;
			this.twoFirst = true;
			this.lastPosition.x = 0;
			this.lastPosition.y = 0;
			this.isTwoTouch = false;
		}
	}

	onLateUpdate(): void {
	}

}