import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Templet = Laya.Templet;
import Ease = Laya.Ease;
import Handler = Laya.Handler;
import Tween = Laya.Tween;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Tween_Letters extends BaseScript {


    constructor() {
        super();
    }


    onAwake(): void {

        super.base();

		this.setup();
	}

	private setup(): void {
		var w: number = 400;
		var offset: number = this.pageWidth - w >> 1;
		var endY: number = this.pageHeight / 2 - 50;
		var demoString: string = "LayaBox";

		for (var i: number = 0, len: number = demoString.length; i < len; ++i) {
			var letterText: Text = this.createLetter(demoString.charAt(i));
			letterText.x = w / len * i + offset;

			Tween.to(letterText, { "y": endY }, 1000, Ease.elasticOut, null, i * 1000);
		}
	}

	private createLetter(char: string): Text {
		var letter: Text = new Text();
		letter.text = char;
		letter.color = "#FFFFFF";
		letter.font = "Impact";
		letter.fontSize = 110;
		this.box2D.addChild(letter);

		return letter;
	}

 
}