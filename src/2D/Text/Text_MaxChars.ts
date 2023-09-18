import { BaseScript } from "../../BaseScript";


import Input = Laya.Input;

const { regClass, property } = Laya;

@regClass()
export class Text_MaxChars extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createInput();
	}

	private createInput(): void {
		var inputText: Input = new Input();

		inputText.size(350, 100);
		inputText.x = this.pageWidth - inputText.width >> 1;
		inputText.y = this.pageHeight - inputText.height >> 1;

		// 设置字体样式
		inputText.bold = true;
		inputText.bgColor = "#666666";
		inputText.color = "#ffffff";
		inputText.fontSize = 20;

		inputText.maxChars = 5;

		this.box2D.addChild(inputText);
	}
}