import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Render_2DCamera extends BaseScript {

    constructor() {
        super();
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
        let res: string[] = [
            "resources/res/cartoon2/background.jpg",
            "resources/res/apes/monkey2.png"
        ];
        Laya.loader.load(res).then(() => {
            this.setbgImageAnd2DCamera();
        });
    }

    setbgImageAnd2DCamera(): void {
        // 设置背景图
        let bg = new Laya.Sprite();
        bg.loadImage("resources/res/cartoon2/background.jpg");
        this.owner.addChild(bg);
        bg.pos(0, 0);
        bg.width = Laya.stage.width;
        bg.height = Laya.stage.height;

        // 创建actor
        let actor = new Laya.Sprite();
        actor.loadImage("resources/res/apes/monkey2.png");
        actor.pos(500, 500);
        // 创建area2D，Camera2D需要指定Area2D
        let area2d = new Laya.Area2D();
        this.owner.addChild(area2d);
        // 创建Camera2D
        let camera2d = new Laya.Camera2D();
        // camera跟随actor
        actor.addChild(camera2d);
        // 设置camera2D属性
        this.setCameraSmooth(camera2d);
        camera2d.isMain = true;
        // 增加actor的位移脚本
        actor.addComponent(actorMove);
        area2d.addChild(bg);
        area2d.addChild(actor);
    }


    setCameraSmooth(camera2d: Laya.Camera2D): void {
        camera2d.positionSmooth = true;
        camera2d.positionSpeed = 0.5;
    }

    setCameraDrag(camera2d: Laya.Camera2D): void {
        camera2d.dragHorizontalEnable = true;
        camera2d.dragVerticalEnable = true;
        camera2d.drag_Top = 0.5;
        camera2d.drag_Bottom = 0.5;
        camera2d.drag_Left = 0.5;
        camera2d.drag_Right = 0.5;
    }

    setCameraLimit(camera2d: Laya.Camera2D): void {
        camera2d.limit_Top = -1000;
        camera2d.limit_Bottom = -1000;
        camera2d.limit_Left = -1000;
        camera2d.limit_Right = -1000;
    }

}

export class actorMove extends Laya.Script {
    onKeyDown(evt: Laya.Event): void {
        let speed = 30;
        switch (evt.keyCode) {
            case 87://w
                (this.owner as Laya.Sprite).y -= speed;
                break;
            case 83://s
                (this.owner as Laya.Sprite).y += speed;
                break;
            case 65://a
                (this.owner as Laya.Sprite).x -= speed;
                break;
            case 68://d
                (this.owner as Laya.Sprite).x += speed;
                break;
            case 32:
                (this.owner as Laya.Sprite).rotation += Math.PI / 2 / 10;
        }
    }

}