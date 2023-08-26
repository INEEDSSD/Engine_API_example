import { BaseScript } from "../../BaseScript";

import HScrollBar = Laya.HScrollBar;
import VScrollBar = Laya.VScrollBar;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_ScrollBar extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		var skins: any[] = [];
		skins.push("resources/res/ui/hscroll.png", "resources/res/ui/hscroll$bar.png", "resources/res/ui/hscroll$down.png", "resources/res/ui/hscroll$up.png");
		skins.push("resources/res/ui/vscroll.png", "resources/res/ui/vscroll$bar.png", "resources/res/ui/vscroll$down.png", "resources/res/ui/vscroll$up.png");
		Laya.loader.load(skins).then( ()=>{
            this.onLoadComplete();
        } );
	}

	private onLoadComplete(e: any = null): void {
		this.placeHScroller();
		this.placeVScroller();
	}

	private placeHScroller(): void {
		var hs: HScrollBar = new HScrollBar();
		hs.skin = "resources/res/ui/hscroll.png";
		hs.width = 300;
		hs.pos(50, 170);

		hs.min = 0;
		hs.max = 100;

		hs.changeHandler = new Handler(this, this.onChange);
		this.box2D.addChild(hs);
	}

	private placeVScroller(): void {
		var vs: VScrollBar = new VScrollBar();
		vs.skin = "resources/res/ui/vscroll.png";
		vs.height = 300;
		vs.pos(400, 50);

		vs.min = 0;
		vs.max = 100;

		vs.changeHandler = new Handler(this, this.onChange);
		this.box2D.addChild(vs);
	}

	private onChange(value: number): void {
		console.log("滚动条的位置： value=" + value);
	}


 
}