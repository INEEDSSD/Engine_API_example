import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import SpineTemplet = Laya.SpineTemplet;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Skeleton_SpineAdapted extends BaseScript {

    constructor() {
        super();
    }

    private skeleton: Laya.Sprite;
    private spineCom: Laya.Spine2DRenderNode;
    private index: number = -1;

    onAwake(): void {
        super.base();

        Laya.loader.load("resources/res/spine/1/spineboy-pma.skel", Loader.SPINE).then((templet: SpineTemplet) => {
            this.skeleton = new Laya.Sprite();
            this.spineCom = this.skeleton.addComponent(Laya.Spine2DRenderNode);
            this.spineCom.templet = templet;
            this.owner.addChild(this.skeleton);
            this.skeleton.pos(this.pageWidth / 2 - 200, this.pageHeight / 2 - 20);
            this.skeleton.scale(0.3, 0.3);
            this.skeleton.on(Event.STOPPED, this, this.play);
            this.play();
        });
    }

    private play(): void {
        if (++this.index >= this.spineCom.getAnimNum()) {
            this.index = 0
        }
        this.spineCom.play(this.index, false, true)
    }
}