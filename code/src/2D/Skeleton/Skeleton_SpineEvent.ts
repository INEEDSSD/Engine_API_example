import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Templet = Laya.Templet;
import Skeleton = Laya.Skeleton;
import Handler = Laya.Handler;
import Tween = Laya.Tween;
import EventData = Laya.EventData;


const { regClass, property } = Laya;

@regClass()
export class Skeleton_SpineEvent extends BaseScript {

    private mStartX:number = 400;
    private mStartY:number = 400;
	private mCurrIndex: number = 0;
	private mArmature: Skeleton;

	private mLabelSprite: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.mLabelSprite = new Sprite();

		Laya.loader.load("resources/res/spine/spineRes6/alien.sk").then((templet: Templet) => {
			//创建模式为1，可以启用换装
			this.mArmature = templet.buildArmature(1);
			this.mArmature.x = this.mStartX;
			this.mArmature.y = this.mStartY;
			this.mArmature.scale(0.5, 0.5);
			this.owner.addChild(this.mArmature);
			this.mArmature.on(Event.LABEL, this, this.onEvent);
			this.mArmature.on(Event.STOPPED, this, this.completeHandler);
			this.play();
		});
	}

	private completeHandler(): void {
		this.play();
	}

	private play(): void {
		this.mCurrIndex++;
		if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
			this.mCurrIndex = 0;
		}
		this.mArmature.play(this.mCurrIndex, false);

	}

	private onEvent(e: any): void {
		var tEventData: EventData = (<EventData>e);

		this.owner.addChild(this.mLabelSprite);
		this.mLabelSprite.x = this.mStartX;
		this.mLabelSprite.y = this.mStartY;
		this.mLabelSprite.graphics.clear();
		this.mLabelSprite.graphics.fillText(tEventData.name, 0, 0, "20px Arial", "#ff0000", "center");
		Tween.to(this.mLabelSprite, { "y": this.mStartY - 200 }, 1000, null, Handler.create(this, this.playEnd))
	}

	private playEnd(): void {
		this.mLabelSprite.removeSelf();
	}

	onDestroy(): void {
		if (this.mArmature == null)
			return;
		Tween.clearAll(this.mLabelSprite);
		this.mArmature.stop();
		this.mArmature.off(Event.STOPPED, this, this.completeHandler);
	}
}