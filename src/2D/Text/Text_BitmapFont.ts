import { BaseScript } from "../../BaseScript";


import Text = Laya.Text;
import BitmapFont = Laya.BitmapFont;

const { regClass, property } = Laya;

@regClass()
export class Text_BitmapFont extends BaseScript {

    private fontName: string = "diyFont";


    constructor() {
        super();
    }
	
    onAwake(): void {

        super.base();
		this.loadFont();
	}

	private loadFont(): void {
		Laya.loader.load("resources/res/bitmapFont/test.fnt", Laya.Loader.FONT).then((res: BitmapFont) => {
			this.onFontLoaded(res);
		});
	}

	private onFontLoaded(bitmapFont: BitmapFont): void {
		
		Text.registerBitmapFont(this.fontName, bitmapFont);

		this.createText(this.fontName);
	}

	private createText(font: string): void {
		var txt: Text = new Text();
		txt.width = 250;
		txt.wordWrap = true;
		txt.text = "Do one thing at a time, and do well.";
		txt.font = font;
		txt.leading = 5;
		txt.x = this.pageWidth - txt.width >> 1;
		txt.y = this.pageHeight - txt.height >> 1;
		this.box2D.addChild(txt);
	}
}