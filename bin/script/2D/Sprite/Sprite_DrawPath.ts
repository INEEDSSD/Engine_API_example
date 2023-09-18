import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;

const { regClass, property } = Laya;

@regClass()
export class Sprite_DrawPath extends BaseScript {

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

        this.drawPentagram();
    }

    private drawPentagram(): void {

        var canvas: Sprite = new Sprite();
        this.owner.addChild(canvas);

        var path: Array<number> = [];
        path.push(0, -130);
        path.push(33, -33);
        path.push(137, -30);
        path.push(55, 32);
        path.push(85, 130);
        path.push(0, 73);
        path.push(-85, 130);
        path.push(-55, 32);
        path.push(-137, -30);
        path.push(-33, -33);

        canvas.graphics.drawPoly(this.pageWidth / 2, this.pageHeight / 2, path, "#FF7F50");
    }
}