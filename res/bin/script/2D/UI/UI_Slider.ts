import { BaseScript } from "../../BaseScript";

import HSlider = Laya.HSlider;
import VSlider = Laya.VSlider;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Slider extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		var skins: any[] = [];
		skins.push("resources/res/ui/hslider.png", "resources/res/ui/hslider$bar.png");
		skins.push("resources/res/ui/vslider.png", "resources/res/ui/vslider$bar.png");
		Laya.loader.load(skins, Handler.create(this, this.onLoadComplete));
	}

	private onLoadComplete(e: any = null): void {
		this.placeHSlider();
		this.placeVSlider();
	}

	private placeHSlider(): void {
		var hs: HSlider = new HSlider();
		hs.skin = "resources/res/ui/hslider.png";

		hs.width = 300;
		hs.pos(50, 170);
		hs.min = 0;
		hs.max = 100;
		hs.value = 50;
		hs.tick = 1;

		hs.changeHandler = new Handler(this, this.onChange);
		this.box2D.addChild(hs);
	}

	private placeVSlider(): void {
		var vs: VSlider = new VSlider();

		vs.skin = "resources/res/ui/vslider.png";

		vs.height = 300;
		vs.pos(400, 50);
		vs.min = 0;
		vs.max = 100;
		vs.value = 50;
		vs.tick = 1;

		vs.changeHandler = new Handler(this, this.onChange);
		this.box2D.addChild(vs);
	}

	private onChange(value: number): void {
		console.log("滑块的位置：" + value);
	}

 
}