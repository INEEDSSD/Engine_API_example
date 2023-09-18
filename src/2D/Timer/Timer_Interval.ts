import { BaseScript } from "../../BaseScript";

import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Timer_Interval extends BaseScript {

    private rotateTimeBasedText: Text;
	private rotateFrameRateBasedText: Text;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.setup();
	}

	private setup(): void {
		var vGap: number = 200;

		this.rotateTimeBasedText = this.createText("基于时间旋转", this.pageWidth / 2, ( this.pageHeight - vGap) / 2);
		this.rotateFrameRateBasedText = this.createText("基于帧频旋转", this.rotateTimeBasedText.x, this.rotateTimeBasedText.y + vGap);

		Laya.timer.loop(200, this, this.animateTimeBased);
		Laya.timer.frameLoop(2, this, this.animateFrameRateBased);
	}

	private createText(text: string, x: number, y: number): Text {
		var t: Text = new Text();
		t.text = text;
		t.fontSize = 30;
		t.color = "white";
		t.bold = true;
		t.pivot(t.width / 2, t.height / 2);
		t.pos(x, y);
		this.box2D.addChild(t);

		return t;
	}

	private animateTimeBased(): void {
		this.rotateTimeBasedText.rotation += 1;
	}

	private animateFrameRateBased(): void {
		this.rotateFrameRateBasedText.rotation += 1;
	}

	onDestroy(): void {
		Laya.timer.clear(this, this.animateTimeBased);
		Laya.timer.clear(this, this.animateFrameRateBased);
	}
}