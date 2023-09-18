import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import SpineTemplet = Laya.SpineTemplet;
import Loader = Laya.Loader;
import SpineSkeleton = Laya.SpineSkeleton;

const { regClass, property } = Laya;

@regClass()
export class Skeleton_SpineAdapted extends BaseScript {


    constructor() {
        super();
    }

    private skeleton: SpineSkeleton;
    private index: number = -1;

    onAwake(): void {

        super.base();

        Laya.loader.load("resources/res/spine/spineboy-pro.skel", Loader.SPINE).then((templet: SpineTemplet) => {
            this.skeleton = new SpineSkeleton();
            this.skeleton.templet = templet;
            this.owner.addChild(this.skeleton);
            this.skeleton.pos( this.pageWidth / 2 -200, this.pageHeight / 2 - 20);
            this.skeleton.scale(0.3, 0.3);
            this.skeleton.on(Event.STOPPED, this, this.play);
            this.play();
        });
    }

    private play(): void {
        if (++this.index >= this.skeleton.getAnimNum()) {
            this.index = 0
        }
        this.skeleton.play(this.index, false, true)
    }
}