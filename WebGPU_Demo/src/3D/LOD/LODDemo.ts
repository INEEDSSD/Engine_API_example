import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class LODDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;
    @property(Laya.VSlider)
    private hSlider: Laya.VSlider;
    @property(Number)
    private speed: number;

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

    sliderChange(value: number): void {
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

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.hSlider.changeHandler = Laya.Handler.create(this, this.sliderChange, null, false);
    }

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate(): void {
        if (this.changePos) {
            // 线性插值相机位置
            Laya.Vector3.lerp(this.camera.transform.position, this.targetPos, this.lerpFactor, this.pos);
            this.camera.transform.position = this.pos;
            this.changePos = false;
        }
    }
}