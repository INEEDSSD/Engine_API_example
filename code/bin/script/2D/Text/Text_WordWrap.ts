import { BaseScript } from "../../BaseScript";


import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Text_WordWrap extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createText();
	}

	private createText(): void {
		var txt: Text = new Text();

		txt.text = "Layabox是HTML5引擎技术提供商与优秀的游戏发行商，面向AS/JS/TS开发者提供HTML5开发技术方案！";

		txt.width = 300;

		txt.fontSize = 40;
		txt.color = "#ffffff";

		//设置文本为多行文本
		txt.wordWrap = true;

		txt.x = this.pageWidth - txt.width >> 1;
		txt.y = this.pageHeight - txt.height >> 1;

		this.box2D.addChild(txt);
	}
}