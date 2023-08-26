import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;

const { regClass, property } = Laya;

@regClass()
export class SkinnedMeshSprite3DDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1.6, 2);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		//预加载资源
		Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then((res)=>{

			//lh用create()创建
			var dude: Sprite3D = (<Sprite3D>this.scene.addChild(res.create()));
			//缩放
			var scale: Vector3 = new Vector3(0.5, 0.5, 0.5);
			dude.transform.localScale = scale;
			dude.transform.rotate(new Vector3(0, 3.14, 0));

		});
	}
 
}