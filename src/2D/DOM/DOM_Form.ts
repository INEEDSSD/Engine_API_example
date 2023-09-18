import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import SpriteUtils = Laya.SpriteUtils;
import Render = Laya.Render;
import Browser = Laya.Browser;
import Text = Laya.Text;


const { regClass, property } = Laya;

@regClass()
export class DOM_Form extends BaseScript {

	private form: Sprite;
	private rowHeight: number = 30;
	private rowSpacing: number = 10;
	private emailInput : any;
	private birthdayInput : any;
	private passwordInput : any;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

        this.box2D.bgColor = "#FFFFFF";
		
		this.form = new Sprite();
		this.form.size(250, 120);
		this.form.pos((this.pageWidth - this.form.width) / 2, (this.pageHeight - this.form.height) / 2);
		this.owner.addChild(this.form);

		var rowHeightDelta = this.rowSpacing + this.rowHeight;

		// 显示左侧标签
		this.showLabel("邮箱", 0, rowHeightDelta * 0);
		this.showLabel("出生日期", 0, rowHeightDelta * 1);
		this.showLabel("密码", 0, rowHeightDelta * 2);

		// 显示右侧输入框
		this.emailInput = this.createInputElement();
		this.birthdayInput = this.createInputElement();
		this.passwordInput = this.createInputElement();

		this.birthdayInput.type = "date";
		this.passwordInput.type = "password";

		var dom: any;
		let all = [this.emailInput, this.birthdayInput, this.passwordInput];
		for (var i = 0; i < all.length; i++) {
			dom = all[i];
			if( Index.curPage )
				SpriteUtils.fitDOMElementInArea(dom, this.form, Index.pagePos.x+100, Index.pagePos.y+i * (this.rowSpacing + this.rowHeight), 150, this.rowHeight);
			else
				SpriteUtils.fitDOMElementInArea(dom, this.form, 100, i * (this.rowSpacing + this.rowHeight), 150, this.rowHeight);	
		}
	}

	onDestroy(): void {
		Browser.removeElement(this.emailInput);
		Browser.removeElement(this.birthdayInput);
		Browser.removeElement(this.passwordInput);
	}

	private showLabel(label: string, x: number, y: number): void {
		var t: Text = new Text();
		t.height = this.rowHeight;
		t.valign = "middle";
		t.fontSize = 15;
		t.font = "SimHei";
		t.text = label;
		t.pos(x, y);
		this.form.addChild(t);
	}

	private createInputElement(): any {
		var input: any = Browser.createElement("input");
		input.style.zIndex = Render.canvas.zIndex + 1;
		input.style.width = "100px";
		Browser.document.body.appendChild(input);
		return input;
	}
}