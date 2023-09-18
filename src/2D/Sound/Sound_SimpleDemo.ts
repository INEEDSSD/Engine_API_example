import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Handler = Laya.Handler;
import SoundManager = Laya.SoundManager;

const { regClass, property } = Laya;

@regClass()
export class Sound_SimpleDemo extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		
		var gap: number = 10;

		//创建一个Sprite充当音效播放按钮
		var soundButton: Sprite = this.createButton("播放音效");
		soundButton.x = (this.pageWidth - soundButton.width * 2 + gap) / 2;
		soundButton.y = (this.pageHeight - soundButton.height) / 2;
		this.box2D.addChild(soundButton);

		//创建一个Sprite充当音乐播放按钮
		var musicButton: Sprite = this.createButton("播放音乐");
		musicButton.x = soundButton.x + gap + soundButton.width;
		musicButton.y = soundButton.y;
		this.box2D.addChild(musicButton);

		soundButton.on(Event.CLICK, this, this.onPlaySound);
		musicButton.on(Event.CLICK, this, this.onPlayMusic);
	}

	private createButton(label: string): Sprite {
		var w: number = 110;
		var h: number = 40;

		var button: Sprite = new Sprite();
		button.size(w, h);
		button.graphics.drawRect(0, 0, w, h, "#FF7F50");
		button.graphics.fillText(label, w / 2, 8, "25px SimHei", "#FFFFFF", "center");
		this.box2D.addChild(button);
		return button;
	}

	private onPlayMusic(e: Event = null): void {
		console.log("播放音乐");
		SoundManager.playMusic("resources/res/sounds/bgm.mp3", 1, new Handler(this, this.onComplete));
	}

	private onPlaySound(e: Event = null): void {
		console.log("播放音效");
		SoundManager.playSound("resources/res/sounds/btn.mp3", 1, new Handler(this, this.onComplete));
	}

	private onComplete(): void {
		console.log("播放完成");
	}

	onDestroy(): void {
		SoundManager.stopAllSound();
		SoundManager.stopMusic();
	}
}