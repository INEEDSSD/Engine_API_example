import { PseudoRandom } from "./PseudoRandom";

const { regClass, property } = Laya;

class MovingText extends Laya.Text {
    vx: number;
    vy: number;
    rotationSpeed: number;
}

@regClass()
export class textDemo_2D extends Laya.Script {

    private padding: number = 100;
    private textAmount: number = 3000; // 文本数量
    private seed: number = 1; // 固定种子值

    private texts: any[] = [];
    private wrapBounds: Laya.Rectangle;
    private random: PseudoRandom;
    private textContainer: Laya.Text;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        this.random = new PseudoRandom(this.seed);
        Laya.stage.bgColor = "#000001";
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.wrapBounds = new Laya.Rectangle(-this.padding, -this.padding, Laya.stage.width + this.padding * 2, Laya.stage.height + this.padding * 2);

        this.initTexts();
        Laya.timer.frameLoop(1, this, this.animate);
    }

    private initTexts(): void {
        this.textContainer = this.createNewContainer();
        for (var i: number = 0; i < this.textAmount; i++) {
            var text: MovingText = this.newText();
            this.textContainer.addChild(text);
            this.texts.push(text);
        }
    }

    private createNewContainer(): Laya.Text {
        var container: Laya.Text = new Laya.Text();
        container.size(Laya.stage.width, Laya.stage.height);
        this.owner.addChild(container);
        return container;
    }

    private newText(): MovingText {
        var text: MovingText = new MovingText();

        // 使用种子随机数生成器生成较小的随机数
        var randomNum: number = this.random.int(1000); // 生成0-99之间的数字
        text.text = randomNum.toString();
        text.singleCharRender = true;
        text.fontSize = this.random.intRange(12, 28);
        text.color = this.getRandomColor();

        text.x = this.random.range(0, Laya.stage.width);
        text.y = this.random.range(0, Laya.stage.height);
        text.alpha = this.random.range(0.5, 1.0);

        // 随机速度
        text.vx = this.random.range(-2, 2);
        text.vy = this.random.range(-2, 2);
        text.rotationSpeed = this.random.range(-2.5, 2.5);

        return text;
    }

    private getRandomColor(): string {
        var r: number = this.random.intRange(0, 255);
        var g: number = this.random.intRange(0, 255);
        var b: number = this.random.intRange(0, 255);
        return `#${r.toString(16).padStart(2, '0')}${g.toString(16).padStart(2, '0')}${b.toString(16).padStart(2, '0')}`;
    }

    private animate(): void {
        var text: MovingText;
        var wb: Laya.Rectangle = this.wrapBounds;

        for (var i: number = 0; i < this.textAmount; i++) {
            text = this.texts[i];

            // 更新位置
            text.x += text.vx;
            text.y += text.vy;
            text.rotation += text.rotationSpeed;

            // 边界检查
            if (text.x < wb.x) {
                text.x = wb.x;
                text.vx = -text.vx;
            } else if (text.x > wb.x + wb.width) {
                text.x = wb.x + wb.width;
                text.vx = -text.vx;
            }
            if (text.y < wb.y) {
                text.y = wb.y;
                text.vy = -text.vy;
            } else if (text.y > wb.y + wb.height) {
                text.y = wb.y + wb.height;
                text.vy = -text.vy;
            }
        }
    }
}