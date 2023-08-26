import { BaseScript } from "../../BaseScript";

import Panel = Laya.Panel;
import Image = Laya.Image;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Panel extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		var panel: Panel = new Panel();
		panel.hScrollBarSkin = "resources/res/ui/hscroll.png";
		panel.hScrollBar.hide = true;
		panel.size(600, 275);
		panel.x = (this.pageWidth - panel.width) / 2;
		panel.y = (this.pageHeight - panel.height) / 2;
		this.box2D.addChild(panel);

		var img: Image;
		for (var i: number = 0; i < 4; i++) {
			img = new Image("resources/res/ui/dialog (1).png");
			img.x = i * 250;
			panel.addChild(img);
		}
	}


 
}