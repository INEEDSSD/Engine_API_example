import { BaseScript } from "../../BaseScript";

import FontClip = Laya.FontClip;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_FontClip extends BaseScript {

    private TestClipNum: string = "resources/res/ui/fontClip_num.png";
    private _ClipNum: string = "resources/res/ui/fontClip_num.png";
    private _ClipNum1: string = "resources/res/ui/fontClip_num.png";
    private TestFontClip: string = "resources/res/ui/fontClip.png";
    private _FontClip: string = "resources/res/ui/fontClip.png";

    constructor() {
        super();
    }


    onAwake(): void {

        super.base();
        Laya.loader.load([this.TestClipNum, this.TestFontClip, this._ClipNum, this._FontClip, this._ClipNum1]).then( ()=>{
            this.ShowContent();
        } );
    }
    
    private ShowContent(): void {
        var clipnum: FontClip = new FontClip(this._ClipNum);
        var fontClip: FontClip = new FontClip(this._FontClip);
        var testFontClip: FontClip = new FontClip(this.TestFontClip);
        var testClipNum: FontClip = new FontClip(this.TestClipNum);
        var clipnum1: FontClip = new FontClip(this._ClipNum1);

        clipnum.pos(240, 400);
        clipnum.size(250, 50);
        clipnum.sheet = "0123456789";
        clipnum.value = "114499";
        clipnum.spaceY = 10;

        testClipNum.pos(200, 300);
        testClipNum.sheet = "0123456789";
        testClipNum.value = "0123456789";

        clipnum1.pos(150, 100);
        clipnum1.direction = "vertical";
        clipnum1.sheet = "0123456789";
        clipnum1.value = "223388";

        fontClip.pos(240, 200);
        fontClip.sheet = "鼠牛虎兔龙蛇马羊 猴鸡狗猪年快乐";
        fontClip.value = "猪年快乐";
        fontClip.spaceY = 10;

        testFontClip.pos(200, 100);
        testFontClip.sheet = "鼠牛虎兔龙蛇马羊猴鸡狗猪年快乐";
        testFontClip.value = "鼠牛虎兔龙蛇马羊猴鸡狗猪年快乐";
        testFontClip.spaceY = 10;

        this.box2D.addChild(clipnum);
        this.box2D.addChild(fontClip);
        this.box2D.addChild(testFontClip);
        this.box2D.addChild(testClipNum);
        this.box2D.addChild(clipnum1);
    }
}