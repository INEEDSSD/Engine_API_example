const { regClass, property } = Laya;
import { BaseScript } from "../../BaseScript";

@regClass()
export class PhysicsWorld_Rigidbody3DFriction extends BaseScript {
    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base(this.camera);
    }
}