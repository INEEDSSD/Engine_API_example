import { BaseScript } from "../../BaseScript";

import TextInput = Laya.TextInput;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Input extends BaseScript {

    private SPACING: number = 100;
	private INPUT_WIDTH: number = 300;
	private INPUT_HEIGHT: number = 50;
	private Y_OFFSET: number = 50;
	private skins: any[];

    constructor() {
        super();
    }


    onAwake(): void {

        super.base();
		this.skins = ["resources/res/ui/input (1).png", "resources/res/ui/input (2).png", "resources/res/ui/input (3).png", "resources/res/ui/input (4).png"];
		Laya.loader.load(this.skins).then( ()=>{
            this.onLoadComplete();
        } );
	}

	private onLoadComplete(e: any = null): void {
		for (var i: number = 0; i < this.skins.length; ++i) {
			var input: TextInput = this.createInput(this.skins[i]);
			input.prompt = 'Type:';
			input.x = (this.pageWidth - input.width) / 2;
			input.y = i * this.SPACING + this.Y_OFFSET;
		}
	}

	private createInput(skin: string): TextInput {
		var ti: TextInput = new TextInput();

		ti.skin = skin;
		ti.size(300, 50);
		ti.sizeGrid = "0,40,0,40";
		ti.font = "Arial";
		ti.fontSize = 30;
		ti.bold = true;
		ti.color = "#606368";

		this.box2D.addChild(ti);

		return ti;
	}
}