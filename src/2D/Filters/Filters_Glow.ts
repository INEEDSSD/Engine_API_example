import { BaseScript } from "../../BaseScript";

import Texture = Laya.Texture;
import Sprite = Laya.Sprite;
import GlowFilter = Laya.GlowFilter;

const { regClass, property } = Laya;

@regClass()
export class Filters_Glow extends BaseScript {

	private apePath: string = "resources/res/apes/monkey2.png";

	private ape: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(this.apePath).then( (tex: Texture)=>{
            this.setup(tex);
        } );
	}

	private setup(tex: Texture): void {
		this.createApe();
		this.applayFilter();
	}

	private createApe(): void {
		this.ape = new Sprite();
		this.ape.loadImage(this.apePath);

		var texture: Texture = Laya.loader.getRes(this.apePath);
		this.ape.x = (this.pageWidth - texture.width) / 2;
		this.ape.y = (this.pageHeight - texture.height) / 2;

		this.box2D.addChild(this.ape);
	}

	private applayFilter(): void {
		//创建一个发光滤镜
		var glowFilter: GlowFilter = new GlowFilter("#ffff00", 10, 0, 0);
		//设置滤镜集合为发光滤镜
		this.ape.filters = [glowFilter];
	}

}