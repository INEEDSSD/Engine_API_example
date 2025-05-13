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
export class Skeleton_SpineIkMesh extends BaseScript {

    private mStartX: number = 180;
    private mStartY: number = 340;
    private mActionIndex: number = 0;
    private mCurrIndex: number = 0;
    private mArmature: Skeleton;
    private mCurrSkinIndex: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base();

        Laya.loader.load("resources/res/spine/spineRes3/raptor.sk").then((templet: Templet) => {
            //创建模式为1，可以启用换装
            this.mArmature = templet.buildArmature(1);
            this.mArmature.x = this.mStartX;
            this.mArmature.y = this.mStartY;
            this.mArmature.scale(0.3, 0.3);
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
    dispose(): void {
        if (this.mArmature == null)
            return;
        this.mArmature.stop();
        this.mArmature.off(Event.STOPPED, this, this.completeHandler);
    }
}