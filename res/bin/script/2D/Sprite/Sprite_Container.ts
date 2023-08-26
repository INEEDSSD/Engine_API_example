import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class Sprite_Container extends BaseScript {

    // 该容器用于装载4张猩猩图片
    private apesCtn: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
        this.createApes();

    }

    private createApes(): void {
        // 每只猩猩距离中心点150像素
        var layoutRadius: number = 150;
        var radianUnit: number = Math.PI / 2;

        this.apesCtn = new Sprite();
        this.owner.addChild(this.apesCtn);

        // 添加4张猩猩图片
        for (var i: number = 0; i < 4; i++) {
            var ape: Sprite = new Sprite();
            ape.loadImage("resources/res/apes/monkey" + i + ".png");

            ape.pivot(55, 72);

            // 以圆周排列猩猩
            ape.pos(
                Math.cos(radianUnit * i) * layoutRadius,
                Math.sin(radianUnit * i) * layoutRadius);

            this.apesCtn.addChild(ape);
        }

        this.apesCtn.pos(this.pageWidth / 2, this.pageHeight / 2);

        Laya.timer.frameLoop(1, this, this.animate);
    }

    private animate(e: Event): void {
        this.apesCtn.rotation += 1;
    }

    onDestroy(): void {
        Laya.timer.clear(this, this.animate);
    }
}