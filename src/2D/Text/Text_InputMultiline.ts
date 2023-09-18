import { BaseScript } from "../../BaseScript";

import Input = Laya.Input;

const { regClass, property } = Laya;

@regClass()
export class Text_InputMultiline extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.createInput();
	}

	private createInput(): void {
		var inputText: Input = new Input();

		// 移动端输入提示符
		inputText.prompt = "Type some word...";

		//多行输入
		inputText.multiline = true;
		inputText.wordWrap = true;

		inputText.size(350, 100);
		inputText.x = this.pageWidth - inputText.width >> 1;
		inputText.y = this.pageHeight - inputText.height >> 1;
		inputText.padding = [2, 2, 2, 2];

		inputText.bgColor = "#666666";
		inputText.color = "#ffffff";
		inputText.fontSize = 20;

		this.box2D.addChild(inputText);
	}
}