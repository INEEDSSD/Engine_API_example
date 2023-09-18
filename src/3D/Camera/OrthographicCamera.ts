import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import CameraClearFlags = Laya.CameraClearFlags;

const { regClass, property } = Laya;

@regClass()
export class Orthographicthiscamera extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(0, 0.2, 0.7));
        //正交投影属性设置，开启
		this.camera.orthographic = true;
		//正交投影垂直矩阵尺寸
		this.camera.orthographicVerticalSize = 3;            
		this.camera.clearFlag = CameraClearFlags.SolidColor;

		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res)=>{

            let layaMonkey = res.create();
			this.scene.addChild(layaMonkey);
			layaMonkey.transform.position = new Vector3(0, 0, 0);            
		});

        super.addBottomButton( ["关闭正交投影","开启正交投影"] , this, [this.setOrthographic1, this.setOrthographic2] );
	}
 
    setOrthographic1(): void{

        //正交投影属性设置，关闭
        this.camera.orthographic = false;
    }

    setOrthographic2(): void{

        //正交投影属性设置，开启
        this.camera.orthographic = true;
		//正交投影垂直矩阵尺寸
		this.camera.orthographicVerticalSize = 3;        
    }    
}