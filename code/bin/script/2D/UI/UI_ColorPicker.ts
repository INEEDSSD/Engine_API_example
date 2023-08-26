import { BaseScript } from "../../BaseScript";

import ColorPicker = Laya.ColorPicker;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_ColorPicker extends BaseScript {

	private skin: string = "resources/res/ui/colorPicker.png";

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(this.skin).then( ()=>{
            this.onColorPickerSkinLoaded();
        } );
	}

	private onColorPickerSkinLoaded(e: any = null): void {
		var colorPicker: ColorPicker = new ColorPicker();
		colorPicker.selectedColor = "#ff0033";
		colorPicker.skin = this.skin;

		colorPicker.pos(100, 100);
		colorPicker.changeHandler = new Handler(this, this.onChangeColor, [colorPicker]);
		this.box2D.addChild(colorPicker);

		this.onChangeColor(colorPicker);
	}

	private onChangeColor(colorPicker: ColorPicker, e: any = null): void {
		console.log(colorPicker.selectedColor);
	}
}