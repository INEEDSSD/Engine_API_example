import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Text_HTML extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createParagraph();
	}

	private createParagraph(): void {
		var t = new Laya.Text();
		t.html = true;
		t.fontSize = 50;
		t.zOrder = 90000;
		t.text = '<font color=#e3d26a>使用</font><br/>';
		t.text += '<font color=#409ed7><b>文本的</b>HTML</font><br/>';
        t.text += '<font color=#10d269><i>创建的</i></font><br/>';
        t.text += '<font color=#dfbfc9><u>HTML富文本</u></font>';
		this.box2D.addChild(t);
	}
}