import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Rotate extends BaseScript {

    private sp: Sprite;
    private preRadian: number = 0;

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
        var w: number = 200, h: number = 300;
        this.sp.graphics.drawRect(0, 0, w, h, "#FF7F50");
        this.sp.size(w, h);
        this.sp.pivot(w / 2, h / 2);
        this.sp.pos(this.pageWidth / 2, this.pageHeight / 2);
        this.box2D.addChild(this.sp);

        this.sp.on(Event.MOUSE_DOWN, this, this.onMouseDown);
    }

    onMouseDown(e: Event): void {
        let touches = e.touches;

        if (touches && touches.length == 2) {
            this.preRadian = Math.atan2(
                touches[0].pos.y - touches[1].pos.y,
                touches[0].pos.x - touches[1].pos.y);

            this.box2D.on(Event.MOUSE_MOVE, this, this.onMouseMove);
        }
    }

    onMouseMove(e: Event): void {
        var touches = e.touches;
        if (touches && touches.length == 2) {
            var nowRadian: number = Math.atan2(
                touches[0].pos.y - touches[1].pos.y,
                touches[0].pos.x - touches[1].pos.x);

            this.sp.rotation += 180 / Math.PI * (nowRadian - this.preRadian);

            this.preRadian = nowRadian;
        }
    }

    onMouseUp(e: Event): void {
        this.box2D.off(Event.MOUSE_MOVE, this, this.onMouseMove);
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