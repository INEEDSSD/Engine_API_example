import { BaseScript } from "../../BaseScript";


const { regClass, property } = Laya;

@regClass()
export class Text_UBB extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createParagraph();
	}

	private createParagraph(): void {
		var t = new Laya.Text();
		t.ubb = true;
		t.fontSize = 50;
		t.zOrder = 90000;
		t.text = '[color=#e3d26a]使用[/color]<br/>';
		t.text +='[color=#0bbd71]U[/color][color=#ff133c][u]B[/u][color][color=#409ed7][b]B[/b][/color]<br/>';
		t.text +='[color=#6ad2e3]创建的[/color]<br/>';
		t.text +='[color=#d26ae3]UBB文本[/color]<br/>';
		this.box2D.addChild(t);
	}
}