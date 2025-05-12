import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class VolumeGIDemo extends BaseScript {

    @property({ type: Laya.Camera })
    private camera: Laya.Camera;
    @property({ type: Laya.Scene3D })
    private scene: Laya.Scene3D;
    @property({ type: Laya.Sprite3D })
    private volumeGISp: Laya.Sprite3D;
    @property({ type: Laya.Sprite3D })
    private normalSp: Laya.Sprite3D;

    private showVolumeGI: boolean = true;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
        // super.addBottomButton(["切换无VolumeGI示例", "切换开启VolumeGI示例"], this, [this.changeGI, this.changeGI]);
    }

    changeGI(): void {
        if (this.showVolumeGI) {
            this.normalSp.active = true;
            this.volumeGISp.active = false;
        } else {
            this.normalSp.active = false;
            this.volumeGISp.active = true;
        }
        this.showVolumeGI = !this.showVolumeGI;
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