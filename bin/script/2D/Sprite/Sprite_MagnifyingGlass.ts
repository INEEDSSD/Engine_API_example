import { BaseScript } from "../../BaseScript";


import Sprite = Laya.Sprite;

const { regClass, property } = Laya;

@regClass()
export class Sprite_MagnifyingGlass extends BaseScript {

    private maskSp:Sprite;
    private bg2:Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
        Laya.loader.load("resources/res/bg2.png").then(()=>{
            this.setup();
        });
    }

    setup():void
    {
        var bg:Sprite = new Sprite();
        bg.loadImage("resources/res/bg2.png");
        this.owner.addChild(bg);

        this.bg2 = new Sprite();
        this.bg2.loadImage("resources/res/bg2.png");
        this.owner.addChild(this.bg2);
        this.bg2.scale(3, 3);
        
        //创建mask
        this.maskSp = new Sprite();
        this.maskSp.loadImage("resources/res/mask.png");
        this.maskSp.pivot(50, 50);

        //设置mask
        this.bg2.mask = this.maskSp;

        Laya.stage.on("mousemove", this, this.onMouseMove);
    }

    onMouseMove(e: Laya.Event):void
    {
        
        this.bg2.x = -e.target.mouseX * 2;
        this.bg2.y = -e.target.mouseY * 2;

        this.maskSp.x = e.target.mouseX;
        this.maskSp.y = e.target.mouseY;
    }

    onDestroy(): void {
        
		Laya.stage.off("mousemove", this, this.onMouseMove);
	}

}