const { regClass, property } = Laya;
import Index from "../../../Index";
import Camera = Laya.Camera;
import Scene3D = Laya.Scene3D;
import Ray = Laya.Ray
import HitResult = Laya.HitResult
import Vector2 = Laya.Vector2
import Vector3 = Laya.Vector3
import Event = Laya.Event
import Handler = Laya.Handler

@regClass()
export class CameraClick extends Laya.Script {
    private point: Vector2 = new Vector2();
    private _ray: Ray = new Ray(new Vector3(), new Vector3());
    private _outHitResult: HitResult = new HitResult();
    private _camera: Camera;
    private _scene: Scene3D;
    clickHandler: Handler;
    constructor() {
        super();
    }

    onAwake(): void {
        this._camera = this.owner as Camera;
        this._scene = this._camera.scene;
        Laya.stage.on(Event.MOUSE_DOWN, this, this.onMouseDown);
    }

    onMouseDown(event: Event): void {
        if (Index.curPage) {
            this.point.x = event.target.mouseX * Index.screenWidth / Index.pageWidth / Laya.stage.width * this._camera.viewport.width / Laya.stage.clientScaleX;
            this.point.y = event.target.mouseY * Index.screenHeight / Index.pageHeight / Laya.stage.height * this._camera.viewport.height / Laya.stage.clientScaleY;
        } else {
            this.point.x = event.stageX;
            this.point.y = event.stageY;
        }
        //产生射线
        this._camera.viewportPointToRay(this.point, this._ray);
        //拿到射线碰撞的物体
        this._scene.physicsSimulation.rayCast(this._ray, this._outHitResult);
        //如果碰撞到物体
        if (!this._outHitResult.succeeded) {
            //删除碰撞到的物体
            // console.log(this._outHitResult.point)
            return;
        }
        if (this.clickHandler) {
            this.clickHandler.runWith(this._outHitResult.point);
        }

    }
}