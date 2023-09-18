import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Shake = Laya.Shake;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class InputDevice_Shake extends BaseScript {

    private picW: number = 824;
	private picH: number = 484;
	private console: Text;

	private shakeCount: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.showShakePic();
		this.showConsoleText();
		this.startShake();
	}

	private showShakePic(): void {
		var shakePic: Sprite = new Sprite();
		shakePic.loadImage("resources/res/inputDevice/shake.png");
		this.box2D.addChild(shakePic);
	}

	private showConsoleText(): void {
		this.console = new Text();
		this.box2D.addChild(this.console);

		this.console.y = this.picH + 10;
		this.console.width = this.pageWidth;
		this.console.height = this.pageHeight - this.console.y;
		this.console.color = "#FFFFFF";
		this.console.fontSize = 50;
		this.console.align = "center";
		this.console.valign = 'middle';
		this.console.leading = 10;
	}

	private startShake(): void {
		Shake.instance.start(5, 500);
		Shake.instance.on(Event.CHANGE, this, this.onShake);

		this.console.text = '开始接收设备摇动\n';
	}

	private onShake(): void {
		this.shakeCount++;

		this.console.text += "设备摇晃了" + this.shakeCount + "次\n";

		if (this.shakeCount >= 3) {
			Shake.instance.stop();

			this.console.text += "停止接收设备摇动";
		}
	}
}