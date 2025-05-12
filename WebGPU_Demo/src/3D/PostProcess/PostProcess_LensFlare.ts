import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class PostProcess_LensFlare extends BaseScript {
    @property(Laya.Camera)
    camera: Laya.Camera;
    @property(Laya.Scene3D)
    scene: Laya.Scene3D;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.camera.transform.rotationEuler = new Laya.Vector3(38.03, 157.15, 0);
        this.camera.transform.position = new Laya.Vector3(4.92, -0.74, -3.6);
        Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then(() => {
            //添加人物
            var dude: Laya.Sprite3D = this.scene.addChild(Laya.Loader.createNodes("resources/res/threeDimen/skinModel/dude/dude.lh"));
            dude.transform.rotate(new Laya.Vector3(0, 3.14, 0));
        });
    }

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}