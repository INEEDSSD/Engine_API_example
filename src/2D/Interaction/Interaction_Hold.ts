import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Ease = Laya.Ease;
import Tween = Laya.Tween;
import Texture = Laya.Texture;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Hold extends BaseScript {

    private HOLD_TRIGGER_TIME: number = 1000;
	private apePath: string = "resources/res/apes/monkey2.png";
	//触发hold事件时间为1秒
	private ape: Sprite;
	private isApeHold: boolean;

    constructor() {
        super();
    }

    onAwake(): void {

        this.base();
        
		Laya.loader.load(this.apePath).then( ()=>{
            this.createApe();
        } );
	}

	private createApe(_e: any = null): void {
		// 添加一只猩猩
		this.ape = new Sprite();
		this.ape.loadImage(this.apePath);

		var texture: Texture = Laya.loader.getRes(this.apePath);
		this.ape.pivot(texture.width / 2, texture.height / 2);
		this.ape.pos(this.pageWidth / 2, this.pageHeight / 2);
		this.ape.scale(0.8, 0.8);
		this.box2D.addChild(this.ape);

		// 鼠标交互
		this.ape.on(Event.MOUSE_DOWN, this, this.onApePress);
	}

	private onApePress(e: Event = null): void {
		// 鼠标按下后，HOLD_TRIGGER_TIME毫秒后hold
		Laya.timer.once(this.HOLD_TRIGGER_TIME, this, this.onHold);
		this.box2D.on(Event.MOUSE_UP, this, this.onApeRelease);
	}

	private onHold(e: any = null): void {
		Tween.to(this.ape, { "scaleX": 1, "scaleY": 1 }, 500, Ease.bounceOut);
		this.isApeHold = true;
	}

	/** 鼠标放开后停止hold */
	private onApeRelease(e: any = null): void {
		// 鼠标放开时，如果正在hold，则播放放开的效果
		if (this.isApeHold) {
			this.isApeHold = false;
			Tween.to(this.ape, { "scaleX": 0.8, "scaleY": 0.8 }, 300);
		}
		else // 如果未触发hold，终止触发hold
			Laya.timer.clear(this, this.onHold);

		this.box2D.off(Event.MOUSE_UP, this, this.onApeRelease);
	}

	onDestroy(): void {
		if (this.ape) {
			this.ape.off(Event.MOUSE_DOWN, this, this.onApePress);
		}
		Laya.timer.clear(this, this.onHold);
		this.box2D.off(Event.MOUSE_UP, this, this.onApeRelease);
	}

}