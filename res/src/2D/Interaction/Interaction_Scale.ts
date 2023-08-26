import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import ITouchInfo = Laya.ITouchInfo;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Scale extends BaseScript {

    //上次记录的两个触模点之间距离
    private lastDistance: number = 0;
    private sp: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
        this.setup();
    }

    private setup(): void {
        this.createSprite();

        this.box2D.on(Event.MOUSE_UP, this, this.onMouseUp);
        this.box2D.on(Event.MOUSE_OUT, this, this.onMouseUp);
    }

    private createSprite(): void {
        this.sp = new Sprite();
        var w: number = 300, h: number = 300;
        this.sp.graphics.drawRect(0, 0, w, h, "#FF7F50");
        this.sp.size(w, h);
        this.sp.pivot(w / 2, h / 2);
        this.sp.pos(this.pageWidth / 2, this.pageHeight / 2);
        this.box2D.addChild(this.sp);

        this.sp.on(Event.MOUSE_DOWN, this, this.onMouseDown);
    }

    onMouseDown(e: Event = null): void {
        var touches = e.touches;

        if (touches && touches.length == 2) {
            this.lastDistance = this.getDistance(touches);

            this.box2D.on(Event.MOUSE_MOVE, this, this.onMouseMove);
        }
    }

    onMouseMove(e: Event = null): void {
        var distance: number = this.getDistance(e.touches);

        //判断当前距离与上次距离变化，确定是放大还是缩小
        const factor: number = 0.01;
        this.sp.scaleX += (distance - this.lastDistance) * factor;
        this.sp.scaleY += (distance - this.lastDistance) * factor;

        this.lastDistance = distance;
    }

    onMouseUp(e: Event = null): void {
        this.box2D.off(Event.MOUSE_MOVE, this, this.onMouseMove);
    }

    /**计算两个触摸点之间的距离*/
    private getDistance(touches: ReadonlyArray<ITouchInfo>): number {
        var distance: number = 0;
        if (touches && touches.length == 2) {
            var dx: number = touches[0].pos.x - touches[1].pos.x;
            var dy: number = touches[0].pos.y - touches[1].pos.y;

            distance = Math.sqrt(dx * dx + dy * dy);
        }
        return distance;
    }

    onDestroy(): void {
        if (this.sp) {
            this.sp.off(Event.MOUSE_DOWN, this, this.onMouseDown);
        }
        this.box2D.off(Event.MOUSE_UP, this, this.onMouseUp);
        this.box2D.off(Event.MOUSE_OUT, this, this.onMouseUp);
        this.box2D.off(Event.MOUSE_MOVE, this, this.onMouseMove);
    }

}