const { regClass, property } = Laya;

@regClass()
export class animationDinsoar_2D extends Laya.Script {
    private mArmature: Laya.Skeleton;
    private fileName: string = "Dragon";

    private rowCount: number = 10;
    private colCount: number = 10;
    private xOff: number = 50;
    private yOff: number = 100;
    private mSpacingX: number;
    private mSpacingY: number;
    private mAnimationArray: Laya.Skeleton[] = [];

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.mSpacingX = Laya.Browser.clientWidth / this.colCount;
        this.mSpacingY = Laya.Browser.clientHeight / this.rowCount;

        Laya.loader.load("dragon/" + this.fileName + "/" + this.fileName + ".sk").then((templet: Laya.Templet) => {
            for (var i: number = 0; i < this.rowCount; i++) {
                for (var j: number = 0; j < this.colCount; j++) {
                    this.mArmature = templet.buildArmature(1);
                    this.mArmature.x = this.xOff + j * this.mSpacingX;
                    this.mArmature.y = this.yOff + i * this.mSpacingY;
                    this.mAnimationArray.push(this.mArmature);
                    this.mArmature.play(0, true);
                    this.mArmature.scale(0.2, 0.2);
                    this.owner.addChild(this.mArmature);
                }
            }
            this.owner.on(Laya.Event.CLICK, this, this.toggleAction);
        });
    }

    onDestroy(): void {
        this.owner.off(Laya.Event.CLICK, this, this.toggleAction);
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