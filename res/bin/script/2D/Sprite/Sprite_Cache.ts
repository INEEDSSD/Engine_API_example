import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Sprite_Cache extends BaseScript {

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

		this.cacheText();
	}

	cacheText() {
		
		let textBox = new Sprite();
		this.owner.addChild(textBox);
		// 随机摆放文本
		let text;
		for (let i = 0; i < 1000; i++) {
			text = new Text();
			textBox.addChild(text);
			text.fontSize = 20;
			text.text = (Math.random() * 100).toFixed(0);
			text.rotation = Math.random() * 360;
			text.color = "#ccc";

			text.x = Math.random() * this.pageWidth;
			text.y = Math.random() * this.pageHeight;
		}
		
		//缓存为静态图像
		textBox.cacheAs = "bitmap";
	}
}