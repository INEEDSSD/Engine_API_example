import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Texture = Laya.Texture;

const { regClass, property } = Laya;

@regClass()
export class Sprite_SwitchTexture extends BaseScript {

    private monkey1Str: string = "resources/res/apes/monkey1.png";
	private monkey2Str: string = "resources/res/apes/monkey2.png";
	private monkey1Res: Texture;
	private monkey2Res: Texture;
    private flag: boolean;
    private ape: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.flag = true;
		Laya.loader.load([this.monkey1Str, this.monkey2Str]).then( ()=>{
            this.onAssetsLoaded();
        } );
	}

	onAssetsLoaded() {
		this.monkey1Res = Laya.loader.getRes(this.monkey1Str),
		this.monkey2Res = Laya.loader.getRes(this.monkey2Str);
		this.ape = new Laya.Sprite();
		this.owner.addChild(this.ape);
		this.ape.pivot(55, 72);
		this.ape.pos(this.pageWidth / 2, this.pageHeight / 2);

		this.switchTexture();

		this.ape.on(Laya.Event.CLICK, this, this.switchTexture);
	}
	
	switchTexture() {
		let monkey = (this.flag = !this.flag) ? this.monkey1Res : this.monkey2Res;

		this.ape.graphics.clear();
		this.ape.graphics.drawTexture(monkey, 0, 0);

		this.ape.size(monkey.width, monkey.height);
	}
}