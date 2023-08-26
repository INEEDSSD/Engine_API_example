import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Tween = Laya.Tween;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Swipe extends BaseScript {

    	//swipe滚动范围
	private TrackLength: number = 200;
	//触发swipe的拖动距离
	private TOGGLE_DIST: number = this.TrackLength / 2;

	private buttonPosition: number;
	private beginPosition: number;
	private endPosition: number;

	private button: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.setup();
	}

	private setup(): void {
		this.createSprtie();
		this.drawTrack();
	}

	private createSprtie(): void {
		const w: number = 50;
		const h: number = 30;

		this.button = new Sprite();
		this.button.graphics.drawRect(0, 0, w, h, "#FF7F50");
		this.button.anchorX = 0.5;
		this.button.anchorY = 0.5;
		//设置宽高（要接收鼠标事件必须设置宽高，否则不会被命中）  
		this.button.size(w, h);
		this.button.x = (this.pageWidth - this.TrackLength) / 2;
		this.button.y = this.pageHeight / 2;

		this.button.on(Event.MOUSE_DOWN, this, this.onMouseDown);

		this.box2D.addChild(this.button);
		//左侧临界点设为圆形初始位置
		this.beginPosition = this.button.x;
		//右侧临界点设置
		this.endPosition = this.beginPosition + this.TrackLength;
	}

	private drawTrack(): void {
		var graph: Sprite = new Sprite();
		this.box2D.graphics.drawLine(
			this.beginPosition, this.pageHeight / 2,
			this.endPosition, this.pageHeight / 2,
			"#FFFFFF", 20);
		this.box2D.addChild(graph);
	}

	/**按下事件处理*/
	onMouseDown(e: Event = null): void {
		//添加鼠标移到侦听
		this.box2D.on(Event.MOUSE_MOVE, this, this.onMouseMove);
		this.buttonPosition = this.button.x;

		this.box2D.on(Event.MOUSE_UP, this, this.onMouseUp);
		this.box2D.on(Event.MOUSE_OUT, this, this.onMouseUp);
	}
	/**移到事件处理*/
	onMouseMove(e: Event = null): void {
		this.button.x = Math.max(Math.min(this.box2D.mouseX, this.endPosition), this.beginPosition);
	}

	/**抬起事件处理*/
	onMouseUp(e: Event = null): void {
		this.box2D.off(Event.MOUSE_MOVE, this, this.onMouseMove);
		this.box2D.off(Event.MOUSE_UP, this, this.onMouseUp);
		this.box2D.off(Event.MOUSE_OUT, this, this.onMouseUp);

		// 滑动到目的地
		var dist: number = this.box2D.mouseX - this.buttonPosition;

		var targetX = this.beginPosition;
		if (dist > this.TOGGLE_DIST)
			targetX = this.endPosition;
		Tween.to(this.button, { x: targetX }, 100);
	}

	onDestroy(): void {
		if (this.button) {
			this.button.off(Event.MOUSE_DOWN, this, this.onMouseDown);
		}
		this.box2D.off(Event.MOUSE_MOVE, this, this.onMouseMove);
		this.box2D.off(Event.MOUSE_UP, this, this.onMouseUp);
		this.box2D.off(Event.MOUSE_OUT, this, this.onMouseUp);
		this.box2D.graphics.clear();
	}
}