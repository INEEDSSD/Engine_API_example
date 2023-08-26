import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;

const { regClass, property } = Laya;

@regClass()
export class Sprite_NodeControl extends BaseScript {

    private ape1: Sprite;
    private ape2: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

		this.createApes();
	}

	createApes() {
		const Sprite = Laya.Sprite;
		let monkey2Path = "resources/res/apes/monkey2.png";

		this.ape1 = new Sprite();
		this.ape2 = new Sprite();
		this.ape1.loadImage(monkey2Path);
		this.ape2.loadImage(monkey2Path);

		this.ape1.pivot(55, 72);
		this.ape2.pivot(55, 72);

		this.ape1.pos(this.pageWidth / 2, this.pageHeight / 2);
		this.ape2.pos(200, 0);

		// 一只猩猩在舞台上，另一只被添加成第一只猩猩的子级
		this.owner.addChild(this.ape1);
		this.ape1.addChild(this.ape2);
		
		Laya.timer.frameLoop(1, this, this.animate);
	}

	animate() {
		this.ape1.rotation += 2;
		this.ape2.rotation -= 4;
	}

    onDestroy(): void {
		Laya.timer.clear(this, this.animate);
	}

}