const { regClass, property } = Laya;

@regClass()
export class zIndexDemo_2D extends Laya.Script {

    private UNIT_WIDTH: number = 300;
    private UNIT_HEIGHT: number = 300;
    private minSpacing: number = 2;  // 最小间距

    // 三个精灵使用的图片 - 使用更好看的图标
    private spriteURLs: string[] = [
        "resources/images/icon1_smiley.png",
        "resources/images/icon2_star.png",
        "resources/images/icon3_square.png",
    ];

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        Laya.stage.bgColor = "#232628";
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Laya.loader.load(this.spriteURLs, Laya.Handler.create(this, this.onUIAssetsLoaded));
    }

    private onUIAssetsLoaded(e: any = null): void {
        // let scene = Laya.stage.addChild(new Scene);

        // let scene3d = scene.addChild(new Scene3D);

        // let camera = scene3d.addChild(new Camera);

        // 计算每行和每列可以放置的unit数量
        const totalWidth = this.UNIT_WIDTH + this.minSpacing;
        const totalHeight = this.UNIT_HEIGHT + this.minSpacing;
        const cols = Math.floor(Laya.stage.width / totalWidth);
        const rows = Math.floor(Laya.stage.height / totalHeight);

        // 计算起始位置，使整体居中
        const startX = (Laya.stage.width - (cols * totalWidth - this.minSpacing)) / 2;
        const startY = (Laya.stage.height - (rows * totalHeight - this.minSpacing)) / 2;

        // 创建网格布局
        for (let row = 0; row < rows; row++) {
            for (let col = 0; col < cols; col++) {
                let unit = this.createUnit();
                let x = startX + col * totalWidth;
                let y = startY + row * totalHeight;
                unit.pos(x, y);
            }
        }
    }

    private createUnit(): Laya.Sprite {
        // 创建一个容器来包含三个精灵
        let unit = new Laya.Sprite();
        unit.size(this.UNIT_WIDTH, this.UNIT_HEIGHT);

        // 创建三个同心精灵
        for (let i = 0; i < 3; i++) {
            let sprite = new Laya.Sprite();
            sprite.loadImage(this.spriteURLs[i]);

            sprite.zIndex = i;
            sprite.size(this.UNIT_WIDTH, this.UNIT_HEIGHT);
            // 将精灵居中放置
            sprite.pos(
                (this.UNIT_WIDTH - sprite.width) / 2,
                (this.UNIT_HEIGHT - sprite.height) / 2
            );

            unit.addChild(sprite);
        }

        this.owner.addChild(unit);
        return unit;
    }

}