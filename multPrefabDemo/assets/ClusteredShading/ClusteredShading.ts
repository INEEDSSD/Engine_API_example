import { LightDebug, LightManager } from "./LightManager";

const { regClass, property } = Laya;

@regClass()
export class ClusteredShading extends Laya.Script {

    declare owner: Laya.Sprite3D;

    @property({ type: LightManager })
    manager: LightManager;


    public get renderLightSprite(): boolean {
        return this.manager.lightDebugRoot.active;
    }
    public set renderLightSprite(value: boolean) {
        this.manager.lightDebugRoot.active = value;
    }

    public get lightCount(): number {
        return this.manager.lightCount;
    }
    public set lightCount(value: number) {
        this.manager.lightCount = value;
    }

    //第一次执行update之前执行，只会执行一次
    onStart(): void {

        let scene = this.owner.scene as Laya.Scene3D;

        scene.addChild(this.manager.lightDebugRoot);
        scene.addChild(this.manager.lightRoot);

        // this.manager.lightDebugRoot.active = false;

        console.log(this);
    }


    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate(): void {
        let delta = Laya.timer.delta;

        this.manager.update(delta);
    }

    onDestroy(): void {
        this.manager.destroy();
    }

}


Laya.addBeforeInitCallback(() => {
    // Laya.Config.useWebGL2 = false;
    // Laya.Config.fixedFrames = false;
    Laya.Config3D.maxLightCount = 1024;
    // Laya.Config3D.lightClusterCount = new Laya.Vector3(12, 12, 12);
});