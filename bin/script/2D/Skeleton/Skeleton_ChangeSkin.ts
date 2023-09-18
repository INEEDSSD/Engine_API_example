import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Templet = Laya.Templet;
import Skeleton = Laya.Skeleton;

const { regClass, property } = Laya;

@regClass()
export class Skeleton_ChangeSkin extends BaseScript {


    constructor() {
        super();
    }

	private mStartX: number = 400;
	private mStartY: number = 400;
	private mCurrIndex: number = 0;
	private mArmature: Skeleton;
	private mCurrSkinIndex: number = 0;
	private mSkinList: any[] = ["goblin", "goblingirl"];

    onAwake(): void {

        super.base();
		Laya.loader.load("resources/res/spine/spineRes2/goblins.sk").then((templet: Templet) => {
			//创建模式为1，可以启用换装
			this.mArmature = templet.buildArmature(1);
			this.mArmature.x = this.mStartX;
			this.mArmature.y = this.mStartY;
			this.mArmature.scale(0.8, 0.8);
			this.owner.addChild(this.mArmature);
			this.mArmature.on(Event.STOPPED, this, this.completeHandler);
			this.play();
			this.changeSkin();
			Laya.timer.loop(1000, this, this.changeSkin);
		});
	}

	private changeSkin(): void {
		this.mCurrSkinIndex++;
		if (this.mCurrSkinIndex >= this.mSkinList.length) {
			this.mCurrSkinIndex = 0;
		}
		this.mArmature.showSkinByName(this.mSkinList[this.mCurrSkinIndex]);
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

	onDestroy(): void {
		if (this.mArmature == null)
			return;
		this.mArmature.stop();
		Laya.timer.clear(this, this.changeSkin);
		this.mArmature.off(Event.STOPPED, this, this.completeHandler);
	}
}