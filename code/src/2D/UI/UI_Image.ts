import { BaseScript } from "../../BaseScript";

import Image = Laya.Image;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Image extends BaseScript {


    constructor() {
        super();
    }


    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		var dialog: Image = new Image("resources/res/ui/dialog (3).png");
		dialog.pos(165, 62.5);
		this.box2D.addChild(dialog);
	}
}