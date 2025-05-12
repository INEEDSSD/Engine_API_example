import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

const { regClass, property } = Laya;

@regClass()
export class Render_LineRender extends BaseScript {
    declare owner: Laya.Sprite;

    protected _line2Drender: Laya.Line2DRender;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Laya.loader.load("resources/res/apes/monkey2.png").then(() => {
            let image = Laya.loader.getRes("resources/res/apes/monkey2.png");
            this.createLineRender(image);
        });
    }

    createLineRender(tex: Laya.Texture): void {
        var ape: Laya.Sprite = new Laya.Sprite();
        let line2Drender = this._line2Drender = ape.addComponent(Laya.Line2DRender);
        // line2Drender.color = new Color(1, 0.5, 0.5, 1);
        line2Drender.lineWidth = 10;
        // line2Drender.texture = texture;
        line2Drender.tillOffset = new Laya.Vector4(0, 0, 0.01, 1);
        line2Drender.color = new Laya.Color(1, 0, 0, 1);
        // line2Drender.enableDashedMode = true;

        if (Index.curPage) {
            var last = new Laya.Vector2(Math.random() * this.pageWidth, Math.random() * this.pageHeight);
            var sumWidth = this.pageWidth;
            var sumHeight = this.pageHeight;
        } else {
            var last = new Laya.Vector2(Math.random() * Laya.Browser.clientWidth, Math.random() * Laya.Browser.clientHeight);
            var sumWidth = Laya.Browser.clientWidth;
            var sumHeight = Laya.Browser.clientHeight;
        }
        
        for (let i = 0; i < 20; i++) {
            let x = Math.random() * sumWidth;
            let y = Math.random() * sumHeight;
            line2Drender.addPoint(last.x, last.y, x, y);
            last.setValue(x, y);
        }
        line2Drender.addPoint(20, 20, 100, 100);
        line2Drender.addPoint(100, 100, 300, 200);
        ape.graphics.drawTexture(tex, 0, 0);
        this.box2D.addChild(ape);
    }

}