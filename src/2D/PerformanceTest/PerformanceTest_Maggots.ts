import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Rectangle = Laya.Rectangle;

const { regClass, property } = Laya;

@regClass()
export class PerformanceTest_Maggots extends BaseScript {

	private texturePath: string = "resources/res/tinyMaggot.png";

	private padding: number = 100;
	private maggotAmount: number = 5000;

	private tick: number = 0;
	private maggots: any[] = [];
	private wrapBounds: Rectangle;
	private maggotTexture: any;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.wrapBounds = new Rectangle(-this.padding, -this.padding, this.pageWidth + this.padding * 2, this.pageHeight + this.padding * 2);

		Laya.loader.load(this.texturePath).then( ()=>{
            this.onTextureLoaded();
        } );
	}

	private onTextureLoaded(e: any = null): void {
		this.maggotTexture = Laya.loader.getRes(this.texturePath);
		this.initMaggots();
		Laya.timer.frameLoop(1, this, this.animate);
	}

	private initMaggots(): void {
		var maggotContainer: Sprite;
		for (var i: number = 0; i < this.maggotAmount; i++) {
			if (i % 16000 == 0)
				maggotContainer = this.createNewContainer();

			var maggot: Maggot = this.newMaggot();
			maggotContainer.addChild(maggot);
			this.maggots.push(maggot);
		}
	}

	private createNewContainer(): Sprite {
		var container: Sprite = new Sprite();
		container.size(this.pageWidth, this.pageHeight);
		// 此处cacheAsBitmap主要是为了创建新画布
		// 解除IBQuadrangle数量限制
		// 在显示虫子数量超过16383时需要打开下面一行
		// container.cacheAsBitmap = true;
		this.box2D.addChild(container);
		return container;
	}

	private newMaggot(): Maggot {
		var maggot: Maggot = new Maggot();
		maggot.graphics.drawTexture(this.maggotTexture, 0, 0);

		maggot.pivot(16.5, 35);

		var rndScale: number = 0.8 + Math.random() * 0.3;
		maggot.scale(rndScale, rndScale);
		maggot.rotation = 0.1;
		maggot.x = Math.random() * this.pageWidth;
		maggot.y = Math.random() * this.pageHeight;

		maggot.direction = Math.random() * Math.PI;
		maggot.turningSpeed = Math.random() - 0.8;
		maggot.speed = (2 + Math.random() * 2) * 0.2;
		maggot.offset = Math.random() * 100;

		return maggot;
	}

	private animate(): void {
		var maggot: any;
		var wb: Rectangle = this.wrapBounds;
		var angleUnit: number = 180 / Math.PI;
		var dir: any, x: number = 0.0, y: number = 0.0;
		for (var i: number = 0; i < this.maggotAmount; i++) {
			maggot = this.maggots[i];

			maggot.scaleY = 0.90 + Math.sin(this.tick + maggot.offset) * 0.1;

			maggot.direction += maggot.turningSpeed * 0.01;
			dir = maggot.direction;
			x = maggot.x;
			y = maggot.y;

			x += Math.sin(dir) * (maggot.speed * maggot.scaleY);
			y += Math.cos(dir) * (maggot.speed * maggot.scaleY);

			maggot.rotation = (-dir + Math.PI) * angleUnit;

			if (x < wb.x)
				x += wb.width;
			else if (x > wb.x + wb.width)
				x -= wb.width;
			if (y < wb.y)
				y += wb.height;
			else if (y > wb.y + wb.height)
				y -= wb.height;

			maggot.pos(x, y);
		}

		this.tick += 0.1;
	}

	onDestroy(): void {
		Laya.timer.clear(this, this.animate);
	}
}

class Maggot extends Sprite {
	direction: number;
	turningSpeed: number;
	speed: number;
	offset: number;
}