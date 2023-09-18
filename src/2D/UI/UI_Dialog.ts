import { BaseScript } from "../../BaseScript";

import Dialog = Laya.Dialog;
import Image = Laya.Image;
import Button = Laya.Button;

const { regClass, property } = Laya;

@regClass()
export class UI_Dialog extends BaseScript {

    private DIALOG_WIDTH: number = 220;
	private DIALOG_HEIGHT: number = 275;
	private CLOSE_BTN_WIDTH: number = 43;
	private CLOSE_BTN_PADDING: number = 5;

	private assets: any[];
    private dialog: Dialog;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.assets = ["resources/res/ui/dialog (1).png", "resources/res/ui/close.png"];
		Laya.loader.load(this.assets).then( ()=>{
            this.onSkinLoadComplete();
        } );
	}

	
	private onSkinLoadComplete(e: any = null): void {
		this.dialog = new Dialog();

		var bg: Image = new Image(this.assets[0]);
		this.dialog.addChild(bg);

		var button: Button = new Button(this.assets[1]);
		button.name = Dialog.CLOSE;
		button.pos(this.DIALOG_WIDTH - this.CLOSE_BTN_WIDTH - this.CLOSE_BTN_PADDING, this.CLOSE_BTN_PADDING);
		this.dialog.addChild(button);

		this.dialog.dragArea = "0,0," + this.DIALOG_WIDTH + "," + this.DIALOG_HEIGHT;
		this.dialog.show();
	}

	onDestroy(): void {
		if (this.dialog) {
			this.dialog.close();
		}
	}
}