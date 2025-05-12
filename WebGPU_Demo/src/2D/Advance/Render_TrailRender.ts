import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Render_TrailRender extends BaseScript {
    declare owner: Laya.Sprite;

    @property(Laya.Sprite)
    point: Laya.Sprite;

    constructor() {
        super();
    }

    protected rotateSprite: Laya.Sprite;
    protected trail2Drender: Laya.Trail2DRender;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Laya.loader.load("resources/res/apes/monkey2.png").then((res: Laya.Texture) => {
            this.showApe(res);
        });
    }

    showApe(img: Laya.Texture): void {
        var ape: Laya.Sprite = new Laya.Sprite();
        this.rotateSprite = ape;
        ape.texture = img;
        var ape2 = new Laya.Sprite();
        this.box2D.addChild(ape);
        ape.addChild(ape2);
        ape2.texture = img;
        ape.pos(300, 300);
        ape2.pos(100, 100);

        this.trail2Drender = ape2.addComponent(Laya.Trail2DRender) as Laya.Trail2DRender;

        this.trail2Drender.widthMultiplier = 50;
        this.trail2Drender.time = 0.5;
        this.trail2Drender.minVertexDistance = 1;
        this.trail2Drender.texture = img.bitmap;
        this.trail2Drender.color = Laya.Color.WHITE;
        Laya.timer.frameLoop(1, this, () => {
            this.rotateSprite.rotation += 1;
            this.point.rotation -= 1;
        })
    }
}