import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
const { regClass, property } = Laya;

@regClass()
export class Timer_DelayExcute extends BaseScript {

	private button1: Sprite;
	private button2: Sprite;

    constructor() {
        super();
    }
	
    onAwake(): void {

        super.base();
		
		this.setup();
	}

	private setup(): void {
		var vGap: number = 100;

		this.button1 = this.createButton("点我3秒之后 alpha - 0.5");
		this.button1.x = (this.pageWidth - this.button1.width) / 2;
		this.button1.y = (this.pageHeight - this.button1.height - vGap) / 2;
		this.box2D.addChild(this.button1);
		this.button1.on(Event.CLICK, this, this.onDecreaseAlpha1);

		this.button2 = this.createButton("点我60帧之后 alpha - 0.5");
		this.button2.pos(this.button1.x, this.button1.y + vGap);
		this.box2D.addChild(this.button2);
		this.button2.on(Event.CLICK, this, this.onDecreaseAlpha2);
	}

	private createButton(label: string): Sprite {
		var w: number = 300, h: number = 60;

		var button: Sprite = new Sprite();
		button.graphics.drawRect(0, 0, w, h, "#FF7F50");
		button.size(w, h);
		button.graphics.fillText(label, w / 2, 17, "20px simHei", "#ffffff", "center");
		return button;
	}

	private onDecreaseAlpha1(e: Event = null): void {
		//移除鼠标单击事件
		this.button1.off(Event.CLICK, this, this.onDecreaseAlpha1);
		//定时执行一次(间隔时间)
		Laya.timer.once(3000, this, this.onComplete1);
	}

	private onDecreaseAlpha2(e: Event = null): void {
		//移除鼠标单击事件
		this.button2.off(Event.CLICK, this, this.onDecreaseAlpha2);
		//定时执行一次(基于帧率)
		Laya.timer.frameOnce(60, this, this.onComplete2);
	}

	private onComplete1(): void {
		//spBtn1的透明度减少0.5
		this.button1.alpha -= 0.5;
	}

	private onComplete2(): void {
		//spBtn2的透明度减少0.5
		this.button2.alpha -= 0.5;
	}

	onDestroy(): void {
		Laya.timer.clearAll(this);
	}

 
}