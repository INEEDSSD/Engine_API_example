import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Templet = Laya.Templet;
import Skeleton = Laya.Skeleton;
import Handler = Laya.Handler;
import Tween = Laya.Tween;
import EventData = Laya.EventData;

const { regClass, property } = Laya;

@regClass()
export class Tween_SimpleSample extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		var terminalX: number = 200;

		var characterA: Sprite = this.createCharacter("resources/res/cartoonCharacters/1.png");
		characterA.pivot(46.5, 50);
		characterA.y = 100;

		var characterB: Sprite = this.createCharacter("resources/res/cartoonCharacters/2.png");
		characterB.pivot(34, 50);
		characterB.y = 250;

		this.box2D.graphics.drawLine(terminalX, 0, terminalX, this.pageHeight, "#FFFFFF");

		// characterA使用Tween.to缓动
		Tween.to(characterA, { "x": terminalX }, 1000);
		// characterB使用Tween.from缓动
		characterB.x = terminalX;
		Tween.from(characterB, { "x": 0 }, 1000);
	}

	private createCharacter(skin: string): Sprite {
		var character: Sprite = new Sprite();
		character.loadImage(skin);
		this.box2D.addChild(character);

		return character;
	}

	onDestroy(): void {
		this.box2D.graphics.clear();
	}

 
}