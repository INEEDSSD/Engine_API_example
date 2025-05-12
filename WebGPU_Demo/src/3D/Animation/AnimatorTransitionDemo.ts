import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class AnimatorTransitionDemo extends BaseScript {
    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;
    @property(Laya.Button)
    private btnTransition: Laya.Button;
    @property(Laya.Button)
    private playRunBtn: Laya.Button;
    @property(Laya.Button)
    private playSkillBtn: Laya.Button;

    private isTransition: boolean = false;
    private animator: Laya.Animator;
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.animator = this.scene.getChildAt(2).getComponent(Laya.Animator);
        this.btnTransition.on(Laya.Event.CLICK, this, this.onBtnTransitionClick);
        this.playRunBtn.on(Laya.Event.CLICK, this, this.playRun);
        this.playSkillBtn.on(Laya.Event.CLICK, this, this.playSkill);
    }

    onBtnTransitionClick(): void {
        if (this.isTransition) {
            this.btnTransition.label = "动画融合：关"
        } else {
            this.btnTransition.label = "动画融合：开"
        }
        this.isTransition = !this.isTransition;
    }

    playRun(): void {
        if (this.isTransition) {
            this.animator.crossFade("Run", 0.5);
        } else {
            this.animator.play("Run");
        }
    }

    playSkill(): void {
        if (this.isTransition) {
            this.animator.crossFade("Skill1", 0.5);
        } else {
            this.animator.play("Skill1");
        }
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