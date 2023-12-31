import { BaseScript } from "../../BaseScript";


import Text = Laya.Text;
import Input = Laya.Input;

const { regClass, property } = Laya;

@regClass()
export class Text_Restrict extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.createTexts();
	}

	private createTexts(): void {
		this.createLabel("只允许输入数字：").pos(50, 20);
		var input: Input = this.createInput();
		input.pos(50, 50);
		input.restrict = "0-9";

		this.createLabel("只允许输入字母：").pos(50, 100);
		input = this.createInput();
		input.pos(50, 130);
		input.restrict = "a-zA-Z";

		this.createLabel("只允许输入中文字符：").pos(50, 180);
		input = this.createInput();
		input.pos(50, 210);
		input.restrict = "\u4e00-\u9fa5";
	}

	private createLabel(text: string): Text {
		var label: Text = new Text();
		label.text = text;
		label.color = "white";
		label.fontSize = 20;
		this.box2D.addChild(label);
		return label;
	}

	private createInput(): Input {
		var input: Input = new Input();
		input.size(200, 30);

		input.borderColor = "#FFFF00";
		input.bold = true;
		input.fontSize = 20;
		input.color = "#FFFFFF";
		input.padding = [0, 4, 0, 4];

		this.box2D.addChild(input);
		return input;
	}
}