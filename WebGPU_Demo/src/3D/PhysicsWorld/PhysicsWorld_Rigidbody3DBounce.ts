import { BaseScript } from "../../BaseScript";
const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_Rigidbody3DBounce extends BaseScript {
    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    constructor() {
        super();
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
    }
}