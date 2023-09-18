import { BaseScript } from "../../BaseScript";

import Image = Laya.Image;
import Button = Laya.Button;
import Clip = Laya.Clip;

const { regClass, property } = Laya;

@regClass()
export class UI_Clip extends BaseScript {

	private buttonSkin: string = "resources/res/ui/button-7.png";
	private clipSkin: string = "resources/res/ui/num0-9.png";
	private bgSkin: string = "resources/res/ui/coutDown.png";

	private counter: Clip;
	private currFrame: number;
	private controller: Button;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

		Laya.loader.load([this.buttonSkin, this.clipSkin, this.bgSkin]).then( ()=>{
            this.onSkinLoaded();
        } );
	}

	private onSkinLoaded(e: any = null): void {
		this.showBg();
		this.createTimerAnimation();
		this.showTotalSeconds();
		this.createController();
	}

	private showBg(): void {
		var bg: Image = new Image(this.bgSkin);
		bg.size(224 , 302);
		bg.pos(this.pageWidth - bg.width >> 1, this.pageHeight - bg.height >> 1);
		this.box2D.addChild(bg);
	}

	private createTimerAnimation(): void {
		this.counter = new Clip(this.clipSkin, 10, 1);
		this.counter.autoPlay = true;
		this.counter.interval = 1000;

		this.counter.x = (this.pageWidth - this.counter.width) / 2 - 35;
		this.counter.y = (this.pageHeight - this.counter.height) / 2 - 40;

		this.box2D.addChild(this.counter);
	}

	private showTotalSeconds(): void {
		var clip: Clip = new Clip(this.clipSkin, 10, 1);
		clip.index = clip.clipX - 1;
		clip.pos(this.counter.x + 60, this.counter.y);
		this.box2D.addChild(clip);
	}

	private createController(): void {
		this.controller = new Button(this.buttonSkin, "暂停");
		this.controller.labelBold = true;
		this.controller.labelColors = "#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF";
		this.controller.size(84, 30);

		this.controller.on('click', this, this.onClipSwitchState);

		this.controller.x = (this.pageWidth - this.controller.width) / 2;
		this.controller.y = (this.pageHeight - this.controller.height) / 2 + 110;
		this.box2D.addChild(this.controller);
	}

	private onClipSwitchState(e: any = null): void {
		if (this.counter.isPlaying) {
			this.counter.stop();
			this.currFrame = this.counter.index;
			this.controller.label = "播放";
		}
		else {
			this.counter.play();
			this.counter.index = this.currFrame;
			this.controller.label = "暂停";
		}
	}
}