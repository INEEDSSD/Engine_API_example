import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class PerformanceTest_Cartoon extends BaseScript {

	private colAmount: number = 100;
	private extraSpace: number = 50;
	private moveSpeed: number = 2;
	private rotateSpeed: number = 2;

	private characterGroup: any[];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		Laya.loader.load("resources/res/cartoonCharacters/cartoonCharactors.json", Loader.ATLAS).then( ()=>{
            this.createCharacters();
        } );
	}

	private createCharacters(e: any = null): void {
		this.characterGroup = [];

		for (var i: number = 0; i < this.colAmount; ++i) {
			var tx: number = (this.pageWidth + this.extraSpace * 2) / this.colAmount * i - this.extraSpace;
			var tr: number = 360 / this.colAmount * i;
			var startY: number = (this.pageHeight - 500) / 2;

			this.createCharacter("cartoonCharactors/1.png", 46, 50, tr).pos(tx, 50 + startY);
			this.createCharacter("cartoonCharactors/2.png", 34, 50, tr).pos(tx, 150 + startY);
			this.createCharacter("cartoonCharactors/3.png", 42, 50, tr).pos(tx, 250 + startY);
			this.createCharacter("cartoonCharactors/4.png", 48, 50, tr).pos(tx, 350 + startY);
			this.createCharacter("cartoonCharactors/5.png", 36, 50, tr).pos(tx, 450 + startY);
		}

		Laya.timer.frameLoop(1, this, this.animate);
	}

	private createCharacter(skin: string, pivotX: number, pivotY: number, rotation: number): Sprite {
		var charactor: Sprite = new Sprite();
		charactor.loadImage(skin);
		charactor.rotation = rotation;
		charactor.pivot(pivotX, pivotY);
		this.box2D.addChild(charactor);
		this.characterGroup.push(charactor);

		return charactor;
	}

	private animate(): void {
		for (var i: number = this.characterGroup.length - 1; i >= 0; --i) {
			this.animateCharactor(this.characterGroup[i]);
		}
	}

	private animateCharactor(charactor: Sprite): void {
		charactor.x += this.moveSpeed;
		charactor.rotation += this.rotateSpeed;

		if (charactor.x > this.pageWidth + this.extraSpace) {
			charactor.x = -this.extraSpace;
		}
	}

	onDestroy(): void {
		Laya.timer.clear(this, this.animate);
	}
}