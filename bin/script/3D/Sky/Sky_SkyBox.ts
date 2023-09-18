import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import SkyRenderer = Laya.SkyRenderer;
import Vector3 = Laya.Vector3;
import DirectionLight = Laya.DirectionLight;
import SkyBoxMaterial = Laya.SkyBoxMaterial;
import CameraClearFlags = Laya.CameraClearFlags;
import Color = Laya.Color;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class Sky_SkyBox extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private mat: SkyBoxMaterial;
    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 0.7, 5);
		this.camera.transform.rotate(new Vector3(10, 0, 0), true, false);

		//设置相机的清除标识为天空盒(这个参数必须设置为CLEARFLAG_SKY，否则无法使用天空盒)
		this.camera.clearFlag = CameraClearFlags.Sky;

		super.addBottomButton( ["立方体天空盒","程序化天空盒"] , this, [this.changeSkybox, this.changeSkyProcedural] );
	}

	changeSkyProcedural(){

		//程序化天空盒
		Laya.loader.load("resources/res/threeDimen/skyBox/SkyProcedural/Skybox.lmat").then((mat: SkyBoxMaterial)=> {
			//获取相机的天空渲染器
			var skyRenderer: SkyRenderer = this.camera.skyRenderer;
			//设置天空盒材质
			skyRenderer.material = mat;
		});		
	}

	changeSkybox(){
		
		//立方体天空盒
		Laya.loader.load("resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat").then((mat: SkyBoxMaterial)=> {
			//获取相机的天空渲染器
			var skyRenderer: SkyRenderer = this.camera.skyRenderer;
			//设置天空盒材质
			skyRenderer.material = mat;
		});
	}	

	onDestroy(): void {
	}
}