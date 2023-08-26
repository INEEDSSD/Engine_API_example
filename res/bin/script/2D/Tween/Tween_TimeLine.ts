import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Templet = Laya.Templet;
import TimeLine = Laya.TimeLine;
import Handler = Laya.Handler;
import Tween = Laya.Tween;
import Keyboard = Laya.Keyboard;

const { regClass, property } = Laya;

@regClass()
export class Tween_TimeLine extends BaseScript {

	private target: Sprite;
	private timeLine: TimeLine = new TimeLine();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		this.createApe();
		this.createTimerLine();
		this.box2D.on(Event.KEY_DOWN, this, this.keyDown);
	}
	private createApe(): void {
		this.target = new Sprite();
		this.target.loadImage("resources/res/apes/monkey2.png");
		this.box2D.addChild(this.target);
		this.target.pivot(55, 72);
		this.target.pos(100, 100);
	}

	private createTimerLine(): void {

		this.timeLine.addLabel("turnRight", 0).to(this.target, { 'x': 450, 'y': 100, 'scaleX': 0.5, 'scaleY': 0.5 }, 2000, null, 0).
		addLabel("turnDown", 0).to(this.target, { 'x': 450, 'y': 300, 'scaleX': 0.2, 'scaleY': 1, 'alpha': 1 }, 2000, null, 0).
		addLabel("turnLeft", 0).to(this.target, { 'x': 100, 'y': 300, 'scaleX': 1, 'scaleY': 0.2, 'alpha': 0.1 }, 2000, null, 0).
		addLabel("turnUp", 0).to(this.target, { 'x': 100, 'y': 100, 'scaleX': 1, 'scaleY': 1, 'alpha': 1 }, 2000, null, 0);
		this.timeLine.play(0, true);
		this.timeLine.on(Event.COMPLETE, this, this.onComplete);
		this.timeLine.on(Event.LABEL, this, this.onLabel);
	}
	private onComplete(): void {
		console.log("timeLine complete!!!!");
	}
	private onLabel(label: string): void {
		console.log("LabelName:" + label);
	}
	private keyDown(e: Event): void {
		switch (e.keyCode) {
			case Keyboard.LEFT:
				this.timeLine.play("turnLeft");
				break;
			case Keyboard.RIGHT:
				this.timeLine.play("turnRight");
				break;
			case Keyboard.UP:
				this.timeLine.play("turnUp");
				break;
			case Keyboard.DOWN:
				this.timeLine.play("turnDown");
				break;
			case Keyboard.P:
				this.timeLine.pause();
				break;
			case Keyboard.R:
				this.timeLine.resume();
				break;
		}
	}

	onDestroy(): void {
		this.box2D.off(Event.KEY_DOWN, this, this.keyDown);
		if(this.timeLine)
		{
			this.timeLine.on(Event.COMPLETE, this, this.onComplete);
			this.timeLine.on(Event.LABEL, this, this.onLabel);
			this.timeLine.destroy();
			this.timeLine = null;
		}
	}
}