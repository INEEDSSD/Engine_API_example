import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Browser = Laya.Browser;
import RotationInfo = Laya.RotationInfo;
import Handler = Laya.Handler;
import Text = Laya.Text;
import Gyroscope = Laya.Gyroscope;

const { regClass, property } = Laya;

@regClass()
export class InputDevice_Compasss extends BaseScript {

	private compassImgPath: string = "resources/res/inputDevice/kd.png";
	private compassImg: Sprite;
	private degreesText: Text;
	private directionIndicator: Sprite;
	private firstTime: boolean = true;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		Laya.loader.load(this.compassImgPath).then( ()=>{
            this.init();
        } );
	}

	private init(): void {
		// 创建罗盘
		this.createCompass();
		// 创建方位指示器
		this.createDirectionIndicator();
		// 画出其他UI
		this.drawUI();
		// 创建显示角度的文本
		this.createDegreesText();

		Gyroscope.instance.on(Event.CHANGE, this, this.onOrientationChange);
	}

	private createCompass(): void {
		this.compassImg = new Sprite();
		this.box2D.addChild(this.compassImg);
		this.compassImg.loadImage(this.compassImgPath);

		this.compassImg.pivot(this.compassImg.width / 2, this.compassImg.height / 2);
		this.compassImg.pos(this.pageWidth / 2, 400);
	}

	private drawUI(): void {
		var canvas: Sprite = new Sprite();
		this.box2D.addChild(canvas);

		canvas.graphics.drawLine(this.compassImg.x, 50, this.compassImg.x, 182, "#FFFFFF", 3);

		canvas.graphics.drawLine(-140 + this.compassImg.x, this.compassImg.y, 140 + this.compassImg.x, this.compassImg.y, "#AAAAAA", 1);
		canvas.graphics.drawLine(this.compassImg.x, -140 + this.compassImg.y, this.compassImg.x, 140 + this.compassImg.y, "#AAAAAA", 1);
	}

	private createDegreesText(): void {
		this.degreesText = new Text();
		this.box2D.addChild(this.degreesText);

		this.degreesText.align = "center";
		this.degreesText.size(this.pageWidth, 100);
		this.degreesText.pos(0, this.compassImg.y + 400);
		this.degreesText.fontSize = 100;
		this.degreesText.color = "#FFFFFF";
	}

	// 方位指示器指向当前所朝方位。
	private createDirectionIndicator(): void {
		this.directionIndicator = new Sprite();
		this.box2D.addChild(this.directionIndicator);

		this.directionIndicator.alpha = 0.8;

		this.directionIndicator.graphics.drawCircle(0, 0, 70, "#343434");
		this.directionIndicator.graphics.drawLine(-40, 0, 40, 0, "#FFFFFF", 3);
		this.directionIndicator.graphics.drawLine(0, -40, 0, 40, "#FFFFFF", 3);

		this.directionIndicator.x = this.compassImg.x;
		this.directionIndicator.y = this.compassImg.y;
	}

	private onOrientationChange(absolute: boolean, info: RotationInfo): void {
		if (info.alpha === null) {
			alert("当前设备不支持陀螺仪。");
		}
		else if (this.firstTime && !absolute && !Browser.onIOS) {
			this.firstTime = false;
			alert("在当前设备中无法获取地球坐标系，使用设备坐标系，你可以继续观赏，但是提供的方位并非正确方位。");
		}

		// 更新角度显示
		this.degreesText.text = 360 - Math.floor(info.alpha) + "°";
		this.compassImg.rotation = info.alpha;

		// 更新方位指示器
		this.directionIndicator.x = -1 * Math.floor(info.gamma) / 90 * 70 + this.compassImg.x;
		this.directionIndicator.y = -1 * Math.floor(info.beta) / 90 * 70 + this.compassImg.y;
	}
}

