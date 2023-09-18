import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
const { regClass, property } = Laya;

@regClass()
export class Sprite_RoateAndScale extends BaseScript {

    private ape: Sprite;
    private scaleDelta: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
        this.createApe();
    }

    private createApe(): void {
        this.ape = new Sprite();

        this.ape.loadImage("resources/res/apes/monkey2.png");
        this.owner.addChild(this.ape);
        this.ape.pivot(55, 72);
        this.ape.x = this.pageWidth / 2;
        this.ape.y = this.pageHeight / 2;
        
        //每帧调用animate方法
        Laya.timer.frameLoop(1, this, this.animate);
    }

    private animate(e: Event): void {
        this.ape.rotation += 2;

        //心跳缩放
        this.scaleDelta += 0.02;
        var scaleValue: number = Math.sin(this.scaleDelta);
        this.ape.scale(scaleValue, scaleValue);
    }

	onDestroy(): void {
		Laya.timer.clear(this, this.animate);
	}
}