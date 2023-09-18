import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

import Event = Laya.Event;
import Templet = Laya.Templet;
import Skeleton = Laya.Skeleton;

@regClass()
export class Skeleton_SpineVine extends BaseScript {


    constructor() {
        super();
    }

    private mStartX: number = 400;
	private mStartY: number = 500;
	private mCurrIndex: number = 0;
	private mArmature: Skeleton;

    onAwake(): void {

        super.base();
		
		Laya.loader.load("resources/res/spine/spineRes5/vine.sk").then((templet: Templet) => {
			//创建模式为1，可以启用换装
			this.mArmature = templet.buildArmature(1);
			this.mArmature.x = this.mStartX;
			this.mArmature.y = this.mStartY;
			this.mArmature.scale(0.5, 0.5);
			this.owner.addChild(this.mArmature);
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

	onDestroy(): void {
		if (this.mArmature == null)
			return;
		this.mArmature.stop();
		this.mArmature.off(Event.STOPPED, this, this.completeHandler);
	}
}