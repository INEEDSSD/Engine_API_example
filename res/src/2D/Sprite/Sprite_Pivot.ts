import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;

const { regClass, property } = Laya;

@regClass()
export class Sprite_Pivot extends BaseScript {

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
		let gap = 150;

		this.ape1 = new Sprite();
		this.owner.addChild(this.ape1);
		this.ape1.loadImage(monkey2Path);
		// 设置轴心点为中心
		this.ape1.pivot(55, 72);
		this.ape1.pos(this.pageWidth / 2 - gap, this.pageHeight / 2);

		// 不设置轴心点默认为左上角
		this.ape2 = new Sprite();
		this.owner.addChild(this.ape2);
		this.ape2.loadImage(monkey2Path);
		this.ape2.pos(this.pageWidth / 2 + gap, this.pageHeight / 2);
		
		Laya.timer.frameLoop(1, this, this.animate);
	}

	animate() {
		this.ape1.rotation += 2;
		this.ape2.rotation += 2;
	}
    
    onDestroy(): void {
		Laya.timer.clear(this, this.animate);
	}
}