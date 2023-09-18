import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Texture = Laya.Texture;
import Rectangle = Laya.Rectangle;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Drag extends BaseScript {

	private ApePath: string = "resources/res/apes/monkey2.png";

	private ape: Sprite;
	private dragRegion: Rectangle;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(this.ApePath).then( ()=>{
            this.setup();
        } );
	}

	private setup(_e: any = null): void {
		this.createApe();
		this.showDragRegion();
	}

	private createApe(): void {
		this.ape = new Sprite();

		this.ape.loadImage(this.ApePath);
		this.box2D.addChild(this.ape);

		var texture: Texture = Laya.loader.getRes(this.ApePath);
		this.ape.pivot(texture.width / 2, texture.height / 2);
		this.ape.x = this.pageWidth / 2;
		this.ape.y = this.pageHeight / 2;

		this.ape.on(Event.MOUSE_DOWN, this, this.onStartDrag);
	}

	private showDragRegion(): void {
		//拖动限制区域
		var dragWidthLimit: number = 350;
		var dragHeightLimit: number = 200;
		this.dragRegion = new Rectangle(this.pageWidth - dragWidthLimit >> 1, this.pageHeight - dragHeightLimit >> 1, dragWidthLimit, dragHeightLimit);

		//画出拖动限制区域
		this.box2D.graphics.drawRect(
			this.dragRegion.x, this.dragRegion.y, this.dragRegion.width, this.dragRegion.height,
			null, "#FFFFFF", 2);
	}

	private onStartDrag(e: Event = null): void {
		//鼠标按下开始拖拽(设置了拖动区域和超界弹回的滑动效果)
		this.ape.startDrag(this.dragRegion, true, 100);
	}

	onDestroy(): void {
		if (this.ape) {
			this.ape.off(Event.MOUSE_DOWN, this, this.onStartDrag);
		}
	}

 
}