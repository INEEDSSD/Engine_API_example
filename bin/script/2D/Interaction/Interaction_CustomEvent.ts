import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Tween = Laya.Tween;
import Ease = Laya.Ease;

const { regClass, property } = Laya;

@regClass()
export class Interaction_CustomEvent extends BaseScript {

    static ROTATE: string = "rotate";

	private sp: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createSprite();
	}

	private createSprite(): void {
		this.sp = new Sprite();
		this.sp.graphics.drawRect(0, 0, 200, 200, "#D2691E");
		this.sp.anchorX = 0.5;
		this.sp.anchorY = 0.5;

		this.sp.x = this.pageWidth / 2;
		this.sp.y = this.pageHeight / 2;

		this.sp.size(200, 200);
		this.box2D.addChild(this.sp);

		this.sp.on(Interaction_CustomEvent.ROTATE, this, this.onRotate);	// 侦听自定义的事件
		this.sp.on(Event.CLICK, this, this.onSpriteClick);
	}

	private onSpriteClick(e: Event = null): void {
		var randomAngle: number = Math.random() * 180;
		//发送自定义事件
		this.sp.event(Interaction_CustomEvent.ROTATE, [randomAngle]);
	}

	// 触发自定义的rotate事件
	private onRotate(newAngle: number): void {
		Tween.to(this.sp, { "rotation": newAngle }, 1000, Ease.elasticOut);
	}

 
}