import { Main } from "./Main";

const { regClass, property } = Laya;

/**
 * customShader3D预制体挂在的脚本，每帧更新uniform:"u_InColor"的值，测试uniform提交
 * 
 */
@regClass()
export class materialUpdateData extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    // 颜色渐变相关变量
    private startTime: number = 0;
    private currentColor: Laya.Color = new Laya.Color(1, 0, 0, 1); // 当前颜色
    private targetColor: Laya.Color = new Laya.Color(0, 1, 0, 1);  // 目标颜色
    private transitionDuration: number = 2000; // 渐变持续时间（毫秒）
    private colorChangeInterval: number = 3000; // 颜色切换间隔（毫秒）
    private lastColorChangeTime: number = 0;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        // 初始化时间和颜色
        this.startTime = Laya.timer.currTimer;
        this.lastColorChangeTime = this.startTime;
        this.generateNewTargetColor();
    }

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate(): void {
        if (Main.customShader3DChangeColor) {
            let currentTime = Laya.timer.currTimer;
            
            // 检查是否需要生成新的目标颜色
            if (currentTime - this.lastColorChangeTime >= this.colorChangeInterval) {
                this.currentColor = this.targetColor.clone();
                this.generateNewTargetColor();
                this.startTime = currentTime;
                this.lastColorChangeTime = currentTime;
            }

            // 计算渐变进度
            let elapsedTime = currentTime - this.startTime;
            let progress = Math.min(elapsedTime / this.transitionDuration, 1.0);
            
            // 使用缓动函数让渐变更平滑（可选）
            progress = this.easeInOutQuad(progress);

            // 插值计算当前应该显示的颜色
            let interpolatedColor = this.lerpColor(this.currentColor, this.targetColor, progress);

            // 更新材质颜色
            let meshrender: Laya.MeshRenderer = this.owner.getComponent(Laya.MeshRenderer);
            let mat: Laya.Material = meshrender.sharedMaterial;
            mat.setShaderData("u_InColor", Laya.ShaderDataType.Color, interpolatedColor);
        }
    }

    /**
     * 生成新的随机目标颜色
     */
    private generateNewTargetColor(): void {
        this.targetColor = new Laya.Color(Math.random(), Math.random(), Math.random(), 1);
    }

    /**
     * 颜色线性插值
     * @param colorA 起始颜色
     * @param colorB 目标颜色  
     * @param t 插值参数 (0-1)
     * @returns 插值后的颜色
     */
    private lerpColor(colorA: Laya.Color, colorB: Laya.Color, t: number): Laya.Color {
        return new Laya.Color(
            colorA.r + (colorB.r - colorA.r) * t,
            colorA.g + (colorB.g - colorA.g) * t,
            colorA.b + (colorB.b - colorA.b) * t,
            colorA.a + (colorB.a - colorA.a) * t
        );
    }

    /**
     * 缓动函数 - 平滑的进入和退出
     * @param t 输入参数 (0-1)
     * @returns 缓动后的值 (0-1)
     */
    private easeInOutQuad(t: number): number {
        return t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
    }

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}