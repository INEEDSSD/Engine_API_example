import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Templet = Laya.Templet;
import Skeleton = Laya.Skeleton;

const { regClass, property } = Laya;

@regClass()
export class PerformanceTest_Skeleton extends BaseScript {

    private mArmature: Skeleton;
    private fileName: string = "Dragon";

    private rowCount: number = 10;
    private colCount: number = 10;
    private xOff: number = 50;
    private yOff: number = 100;
    private mSpacingX: number;
    private mSpacingY: number;

    private mAnimationArray: any[] = [];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
        this.mSpacingX = this.pageWidth / this.colCount;
		this.mSpacingY = this.pageHeight / this.rowCount;
        Laya.loader.load("resources/res/skeleton/" + this.fileName + "/" + this.fileName + ".sk").then((templet: Templet) => {
            for (var i: number = 0; i < this.rowCount; i++) {
                for (var j: number = 0; j < this.colCount; j++) {
                    this.mArmature = templet.buildArmature(1);
                    this.mArmature.x = this.xOff + j * this.mSpacingX;
                    this.mArmature.y = this.yOff + i * this.mSpacingY;
                    this.mAnimationArray.push(this.mArmature);
                    this.mArmature.play(0, true);
                    this.mArmature.scale(0.2,0.2);
                    this.box2D.addChild(this.mArmature);
                }
            }
            this.box2D.on(Event.CLICK, this, this.toggleAction);
        });
    }

    onDestroy(): void {
        this.box2D.off(Event.CLICK, this, this.toggleAction);
    }

    private mActionIndex: number = 0;

    toggleAction(e: any = null): void {
        this.mActionIndex++;
        var tAnimNum: number = this.mArmature.getAnimNum();
        if (this.mActionIndex >= tAnimNum) {
            this.mActionIndex = 0;
        }
        for (var i: number = 0, n: number = this.mAnimationArray.length; i < n; i++) {
            this.mAnimationArray[i].play(this.mActionIndex, true);
        }
    }
}