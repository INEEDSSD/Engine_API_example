import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class FogScene extends BaseScript {

    @property({ type: Laya.Camera })
    private camera: Laya.Camera;
    @property({ type: Laya.Scene3D })
    private scene: Laya.Scene3D;
    @property({ type: Laya.VSlider })
    private slider: Laya.VSlider;
    @property(Number)
    private speed: number;
    @property({ type: Laya.Button })
    private fogEnableBTN: Laya.Button;


    private pos: Laya.Vector3 = new Laya.Vector3(0, 0, 0);
    private targetPos: Laya.Vector3 = new Laya.Vector3(20.3, 19.0, 20.6);
    private direction: Laya.Vector3 = new Laya.Vector3(1, 1, 1);
    private dirFactor: Laya.Vector3 = new Laya.Vector3(1, 1, 1);
    private lastValue: number = 0;
    private lerpFactor: number = 0.1; // 插值因子，值越小，移动越平滑
    private changePos: boolean = false;
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.slider.changeHandler = Laya.Handler.create(this, this.sliderChanged, null, false);
        this.fogEnableBTN.on(Laya.Event.CLICK, this, this.fogEnable);
    }

    fogEnable(): void {
        if (this.scene.enableFog) {
            this.fogEnableBTN.label = "开启雾效";
        } else {
            this.fogEnableBTN.label = "关闭雾效";
        }
        this.scene.enableFog = !this.scene.enableFog;
    }

    sliderChanged(value: number): void {
        this.changePos = true;

        this.camera.transform.getForward(this.direction);
        if (value >= this.lastValue) {
            this.dirFactor.setValue(-1, -1, -1);
            Laya.Vector3.multiply(this.direction, this.dirFactor, this.direction);
            this.direction.x += this.speed;
            this.direction.y += this.speed;
            this.direction.z += this.speed;
        } else {
            this.dirFactor.setValue(1, 1, 1);
            Laya.Vector3.multiply(this.direction, this.dirFactor, this.direction);
            this.direction.x -= this.speed;
            this.direction.y -= this.speed;
            this.direction.z -= this.speed;
        }

        Laya.Vector3.add(this.camera.transform.position, this.direction, this.targetPos);

        this.lastValue = value;
    }

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate(): void {
        if (this.changePos) {
            // 线性插值相机位置
            Laya.Vector3.lerp(this.camera.transform.position, this.targetPos, this.lerpFactor, this.pos);
            this.camera.transform.position = this.pos;
            this.changePos = false;
        }
    }

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}