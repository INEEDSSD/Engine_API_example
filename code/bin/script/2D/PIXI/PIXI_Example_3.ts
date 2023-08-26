import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Graphics = Laya.Graphics;

const { regClass, property } = Laya;

@regClass()
export class PIXI_Example_3 extends BaseScript {

	private colors: any[] = ["#5D0776", "#EC8A49", "#AF3666", "#F6C84C", "#4C779A"];
	private colorCount: number = 0;
	private isDown: boolean = false;
	private path: any[] = [];
	private color: string = this.colors[0];
	private liveGraphics: Graphics;
	private canvasGraphics: Graphics;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createCanvases();

		Laya.timer.frameLoop(1, this, this.animate);

	}

	private createCanvases(): void {
		var graphicsCanvas: Sprite = new Sprite();
		this.box2D.addChild(graphicsCanvas);
		var liveGraphicsCanvas: Sprite = new Sprite();
		this.box2D.addChild(liveGraphicsCanvas);

		this.liveGraphics = liveGraphicsCanvas.graphics;
		this.canvasGraphics = graphicsCanvas.graphics;
	}

	onMouseDown(e: any = null): void {
		this.isDown = true;
		this.color = this.colors[this.colorCount++ % this.colors.length];
		this.path.length = 0;
	}

	onMouseMove(e: any = null): void {
		if (!this.isDown) return;

		this.path.push(e.target.mouseX);
		this.path.push(e.target.mouseY);
	}

	onMouseUp(e: any = null): void {
		this.isDown = false;
		this.canvasGraphics.drawPoly(0, 0, this.path.concat(), this.color);
	}

	private animate(): void {
		this.liveGraphics.clear();
		this.liveGraphics.drawPoly(0, 0, this.path, this.color);
	}

    onDestroy(): void {

		Laya.timer.clear(this, this.animate);
	}
 
}