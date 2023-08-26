import { BaseScript } from "../../BaseScript";

import Texture = Laya.Texture;
import Sprite = Laya.Sprite;
import ColorFilter = Laya.ColorFilter;

const { regClass, property } = Laya;

@regClass()
export class Filters_Color extends BaseScript {

	private ApePath: string = "resources/res/apes/monkey2.png";

	private apeTexture: Texture;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		Laya.loader.load(this.ApePath).then( ()=>{
            this.setup();
        } );
	}

	private setup(e: any = null): void {
		this.normalizeApe();
		this.makeRedApe();
		this.grayingApe();
	}

	private normalizeApe(): void {
		var originalApe: Sprite = this.createApe();

		this.apeTexture = Laya.loader.getRes(this.ApePath);
		originalApe.x = (this.pageWidth - this.apeTexture.width) / 2 - this.apeTexture.width;
		originalApe.y = (this.pageHeight - this.apeTexture.height) / 2;
	}

	private makeRedApe(): void {
		//由 20 个项目（排列成 4 x 5 矩阵）组成的数组，红色
		var redMat: any[] =
			[1, 0, 0, 0, 0, //R
				0, 0, 0, 0, 0, //G
				0, 0, 0, 0, 0, //B
				0, 0, 0, 1, 0];

		//创建一个颜色滤镜对象,红色
		var redFilter: ColorFilter = new ColorFilter(redMat);

		// 赤化猩猩
		var redApe: Sprite = this.createApe();
		redApe.filters = [redFilter];

		redApe.x = (this.pageWidth - this.apeTexture.width) / 2 ;
		redApe.y = (this.pageHeight - this.apeTexture.height) / 2;
	}

	private grayingApe(): void {
		//由 20 个项目（排列成 4 x 5 矩阵）组成的数组，灰图
		var grayscaleMat: any[] = [0.3086, 0.6094, 0.0820, 0, 0,
			0.3086, 0.6094, 0.0820, 0, 0,
			0.3086, 0.6094, 0.0820, 0, 0,
			0, 0, 0, 1, 0];

		//创建一个颜色滤镜对象，灰图
		var grayscaleFilter: ColorFilter = new ColorFilter(grayscaleMat);

		// 灰度猩猩
		var grayApe: Sprite = this.createApe();
		grayApe.filters = [grayscaleFilter];

		grayApe.x = (this.pageWidth - this.apeTexture.width) / 2 + this.apeTexture.width;
		grayApe.y = (this.pageHeight - this.apeTexture.height) / 2;
	}

	private createApe(): Sprite {
		var ape: Sprite = new Sprite();
		ape.loadImage("resources/res/apes/monkey2.png");
		this.box2D.addChild(ape);

		return ape;
	}
}