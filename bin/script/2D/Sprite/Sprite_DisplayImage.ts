import { BaseScript } from "../../BaseScript";


const { regClass, property } = Laya;

@regClass()
export class Sprite_DisplayImage extends BaseScript {

    constructor() {
        super();
    }


    onAwake(): void {

        super.base();
        this.showApe();
    }

    showApe() {

		const
			monkey1Path = "resources/res/apes/monkey1.png",
			monkey2Path = "resources/res/apes/monkey2.png";

		// 方法1：使用loadImage
		let ape = new Laya.Sprite();
		this.owner.addChild(ape);
		ape.loadImage(monkey1Path);

		// 方法2：使用drawTexture
		Laya.loader.load(monkey2Path).then(()=> {
			let monkey2 = Laya.loader.getRes(monkey2Path);
			let ape2 = new Laya.Sprite();
			this.owner.addChild(ape2);
			ape2.graphics.drawTexture(monkey2, 100, 0);
		});
	}
}