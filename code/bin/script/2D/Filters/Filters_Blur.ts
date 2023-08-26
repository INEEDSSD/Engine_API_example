import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import BlurFilter = Laya.BlurFilter;

const { regClass, property } = Laya;

@regClass()
export class Filters_Blur extends BaseScript {

	private apePath: string = "resources/res/apes/monkey2.png";
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		Laya.loader.load(this.apePath).then( ()=>{
            this.createApe();
        } );
	}

	private createApe(_e: any = null): void {
		var ape: Sprite = new Sprite();
		ape.loadImage(this.apePath);

		ape.x = (this.pageWidth - ape.width) / 2;
		ape.y = (this.pageHeight - ape.height) / 2;

		this.box2D.addChild(ape);

		this.applayFilter(ape);
	}

	private applayFilter(ape: Sprite): void {
		var blurFilter: BlurFilter = new BlurFilter();
		blurFilter.strength = 5;
		ape.filters = [blurFilter];
	}
}