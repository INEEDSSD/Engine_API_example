import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Text = Laya.Text;
import BitmapFont = Laya.BitmapFont;
import Handler = Laya.Handler;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class AvatarMask extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;

	private fontName: string = "fontClip";

	constructor() {
		super();
	}

	onAwake(): void {
		super.base(this.camera);
		this.loadFont();

		//加载场景
		Scene3D.load("resources/res/threeDimen/LayaScene_MaskModelTest/maskScene.ls", Handler.create(this, (scene: Scene3D) => {
			(<Scene3D>this.scene.addChild(scene));
		}));
	}


	private loadFont(): void {
		Laya.loader.load("resources/res/threeDimen/LayaScene_MaskModelTest/font/fontClip.fnt", Laya.Loader.FONT).then((res: BitmapFont) => {
			this.onFontLoaded(res);
		});
	}

	private onFontLoaded(bitmapFont: BitmapFont): void {
		Text.registerBitmapFont(this.fontName, bitmapFont);
		this.createText(this.fontName);
		this.createText1(this.fontName);
		this.createText2(this.fontName);
	}

	private createText(font: string): void {
		var txt: Text = new Text();
		txt.width = 250;
		txt.wordWrap = true;
		txt.text = "正常动画一";
		txt.color = "#1e1e1e";
		txt.size(200, 300);
		txt.leading = 5;
		txt.fontSize = 15;
		txt.zOrder = 999999999;
		txt.pos(this.box2D.width / 2, this.box2D.height / 2 - 300);
		this.box2D.on(Event.RESIZE, txt, () => {
			txt.pos(this.box2D.width / 2, this.box2D.height / 2 - 300);
		});
		this.box2D.addChild(txt);
	}

	createText1(font: string) {
		var txt = new Text();
		txt.width = 250;
		txt.wordWrap = true;
		txt.text = "骨骼遮罩-遮罩上半部分";
		txt.color = "#1e1e1e";
		txt.size(200, 300);
		txt.leading = 5;
		txt.fontSize = 15;
		txt.zOrder = 999999999;
		txt.pos(this.box2D.width / 2 - 500, this.box2D.height / 2 - 300);
		this.box2D.on(Event.RESIZE, txt, () => {
			txt.pos(this.box2D.width / 2 - 500, this.box2D.height / 2 - 300);
		});
		this.box2D.addChild(txt);
	}

	createText2(font: string) {
		var txt = new Text();
		txt.width = 250;
		txt.wordWrap = true;
		txt.text = "骨骼遮罩-遮罩下半部分";
		txt.color = "#1e1e1e";
		txt.size(200, 300);
		txt.leading = 5;
		txt.zOrder = 999999999;
		txt.fontSize = 15;
		txt.pos(this.box2D.width / 2 + 500, this.box2D.height / 2 - 300);
		this.box2D.on(Event.RESIZE, txt, () => {
			txt.pos(this.box2D.width / 2 + 500, this.box2D.height / 2 - 300);
		});
		this.box2D.addChild(txt);
	}

}