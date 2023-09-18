import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import SkyRenderer = Laya.SkyRenderer;
import Vector3 = Laya.Vector3;
import SkyBoxMaterial = Laya.SkyBoxMaterial;
import CameraClearFlags = Laya.CameraClearFlags;
import SkyBox = Laya.SkyBox;
import Color = Laya.Color;
import Viewport = Laya.Viewport;

const { regClass, property } = Laya;

@regClass()
export class MultiCamera extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 0.5, 1.5);
		//设置相机清除颜色
		this.camera.clearColor = new Color(0.3, 0.3, 0.3, 1.0);
		//设置裁剪空间的视口
		this.camera.normalizedViewport = new Viewport(0, 0, 0.5, 1.0);

		//创建右边相机
		var camera2: Camera = (<Camera>this.scene.addChild(new Camera(0, 0.1, 100)));
		camera2.transform.position = new Vector3(0, 0.5, 1.5);
		camera2.transform.rotationEuler = new Vector3(-15, 0, 0);		
		camera2.normalizedViewport = new Viewport(0.5, 0.0, 0.5, 1.0);

		//设置相机清除标志，使用天空
		camera2.clearFlag = CameraClearFlags.Sky;
		camera2.renderTarget = Index.rt;

		//加载右边摄像机的天空盒
		Laya.loader.load("resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat").then((mat: SkyBoxMaterial)=>{
			var skyRenderer: SkyRenderer = camera2.skyRenderer;
			skyRenderer.mesh = SkyBox.instance;
			skyRenderer.material = mat;
		});
		
		//加载3D lh资源，使用res.create()
		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res)=>{
			this.scene.addChild(res.create());
		});

	}
 
}