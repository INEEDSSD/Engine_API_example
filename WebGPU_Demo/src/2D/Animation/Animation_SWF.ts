import { BaseScript } from "../../BaseScript";

import MovieClip = Laya.MovieClip;

const { regClass, property } = Laya;

@regClass()
export class Animation_SWF extends BaseScript {

    private SWFPath: string = "resources/res/swf/dragon.swf";

    private MCWidth: number = 318;
    private MCHeight: number = 406;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
        this.createMovieClip();
    }

    //创建MovieClip组件创建动画
    private createMovieClip(): void {
        var mc: MovieClip = new MovieClip();
        mc.load(this.SWFPath);

        mc.x = (this.pageWidth - this.MCWidth) / 2;
        mc.y = (this.pageHeight - this.MCHeight) / 2;

        this.owner.addChild(mc);
    }
}