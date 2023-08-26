import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;

const { regClass, property } = Laya;

@regClass()
export class Sprite3DClone extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 0.5, 1);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);
        
        Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then( (res)=>{

            var layaMonkey:Laya.Sprite3D = this.scene.addChild(res.create()) as Laya.Sprite3D;
            //克隆sprite3d
            Laya.Sprite3D.instantiate(layaMonkey, this.scene, false, new Laya.Vector3(0.6, 0, 0));
            //克隆sprite3d
            this.scene.addChild(Laya.Sprite3D.instantiate(layaMonkey, null, false, new Laya.Vector3(-0.6, 0, 0)));

		} );
    }
}