import { BaseScript } from "../../BaseScript";

import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Timer_CallLater extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.demonstrate();
	}

	private demonstrate(): void {
		for (var i: number = 0; i < 10; i++) {
			Laya.timer.callLater(this, this.onCallLater);
		}
	}

	private onCallLater(e: any = null): void {
		console.log("onCallLater triggered");

		var text: Text = new Text();
		text.font = "SimHei";
		text.fontSize = 30;
		text.color = "#FFFFFF";
		text.text = "打开控制台可见该函数仅触发了一次";
		text.size(this.pageWidth, this.pageHeight);
		text.wordWrap = true;
		text.valign = "middle";
		text.align = "center";
		this.box2D.addChild(text);
	}

 
}