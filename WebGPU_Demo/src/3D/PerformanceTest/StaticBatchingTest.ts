import { BaseScript } from "../../BaseScript";

import Camera = Laya.Camera;

const { regClass, property } = Laya;

@regClass()
export class StaticBatchingTest extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;

    constructor() {
        super();
    }

    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake(): void {
        super.base(this.camera);
    }

}