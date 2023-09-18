import { BaseScript } from "../../BaseScript";

import Button = Laya.Button;

const { regClass, property } = Laya;

@regClass()
export class UI_Button extends BaseScript {


    constructor() {
        super();
    }

	private COLUMNS: number = 2;
	private BUTTON_WIDTH: number = 147;
	private BUTTON_HEIGHT: number = 165 / 3;
	private HORIZONTAL_SPACING: number = 200;
	private VERTICAL_SPACING: number = 100;

	private xOffset: number;
	private yOffset: number;

	private skins: any[];

    onAwake(): void {

        super.base();
		this.skins = ["resources/res/ui/button-1.png", "resources/res/ui/button-2.png", "resources/res/ui/button-3.png",
			"resources/res/ui/button-4.png", "resources/res/ui/button-5.png", "resources/res/ui/button-6.png"];

		// 计算将Button至于舞台中心的偏移量
		this.xOffset = (this.pageWidth - this.HORIZONTAL_SPACING * (this.COLUMNS - 1) - this.BUTTON_WIDTH) / 2;
		this.yOffset = (this.pageHeight - this.VERTICAL_SPACING * (this.skins.length / this.COLUMNS - 1) - this.BUTTON_HEIGHT) / 2;

		Laya.loader.load(this.skins).then( ()=>{
            this.onUIAssetsLoaded();
        } );
	}

	private onUIAssetsLoaded(e: any = null): void {
		for (var i: number = 0, len: number = this.skins.length; i < len; ++i) {
			var btn: Button = this.createButton(this.skins[i]);
			var x: number = i % this.COLUMNS * this.HORIZONTAL_SPACING + this.xOffset;
			var y: number = (i / this.COLUMNS | 0) * this.VERTICAL_SPACING + this.yOffset;
			btn.pos(x, y);
			console.log(x, y);
		}
	}

	private createButton(skin: string): Button {
		var btn: Button = new Button(skin);
		this.box2D.addChild(btn);
		return btn;
	}
}