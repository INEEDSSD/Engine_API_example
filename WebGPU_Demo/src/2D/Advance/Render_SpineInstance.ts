import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Spine_instance extends BaseScript {

    @property(Laya.Prefab)
    spinePrefab: Laya.Prefab;

    constructor() {
        super();
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        let stageWidth = Math.round(Laya.stage.width / 30);
        for (let i = 0; i < 3000; i++) {
            let item = this.owner.addChild(this.spinePrefab.create()) as Laya.Sprite;
            item.x = 100 + i * 3;
            item.y = 700;
            let x = i % stageWidth;
            let y = Math.floor(i / stageWidth);
            item.pos(50 + x * 40, 120 + y * 40);
            item.scale(0.2, 0.2);
            let r = item.addComponent(RandomWalk);
            r.maxX = Laya.stage.width;
            r.maxY = Laya.stage.height + 1600;
        }
    }

}




export class RandomWalk extends Laya.Script {
    maxX: number = 0;
    maxY: number = 0;
    static ID: number = 0;
    loopID: number = 0;

    curStepX: number = 0;
    curStepY: number = 0;
    constructor() {
        super();
        this.loopID = (RandomWalk.ID++ % 120);
    }


    onUpdate(): void {
        let owner = this.owner as Laya.Sprite;
        if (Laya.Stat.loopCount % 120 == this.loopID) {
            let stepX = Math.random() < 0.5 ? -1 : 1;
            let stepY = Math.random() < 0.5 ? -1 : 1;
            stepX *= 1;
            stepY *= 1;
            this.curStepX = stepX;
            this.curStepY = stepY;
            //const newPosition = this.currentPosition + step;
        }

        let x = owner.x + this.curStepX;
        let y = owner.y + this.curStepY;
        if (x >= 0 && x <= this.maxX && y >= 0 && y <= this.maxY) {
            owner.pos(x, y);
            owner.zOrder = y;
        }

    }
}