import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Material = Laya.Material;
import SkyRenderer = Laya.SkyRenderer;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import PrimitiveMesh = Laya.PrimitiveMesh;
import CameraClearFlags = Laya.CameraClearFlags;
import SkyBox = Laya.SkyBox;
import Loader = Laya.Loader;
const { regClass, property } = Laya;

@regClass()
export class CameraDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private _translate: Vector3 = new Vector3(0, 0.7, 5);
	private _rotation: Vector3 = new Vector3(-15, 0, 0);
	private _rotation2: Vector3 = new Vector3(-3.14 / 3, 0, 0);
	private _rotation3: Vector3 = new Vector3(0, 45, 0);

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/texture/layabox.png", "resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat"];
		Laya.loader.load(resource).then((res:any[])=>{
			this.onPreLoadFinish(res);
		});
	}

	private onPreLoadFinish(res:any[]): void {

		//创建相机，构造函数的三个参数为相机横纵比，近距裁剪，远距裁剪
		this.camera.transform.translate(this._translate);
		this.camera.transform.rotate(this._rotation, true, false);
		this.camera.useOcclusionCulling = false;
		//相机设置清楚标记,使用固定颜色
		this.camera.clearFlag = CameraClearFlags.SolidColor;
		//设置摄像机视野范围（角度）
		this.camera.fieldOfView = 60;
		this.scene.addChild(this.camera);

		//设置平行光颜色
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		this.directionLight.transform.rotate(this._rotation2);

		//正方体
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5))));
		box.transform.position = new Vector3(0.0, 2.7, 5);
		box.transform.rotate(this._rotation3, false, false);

		//创建linnPhong材质
		var materialBill: BlinnPhongMaterial = new BlinnPhongMaterial;
		box.meshRenderer.material = materialBill;
		//设置反照率贴图
		materialBill.albedoTexture = res[0];;

		super.addBottomButton( ["切换背景","切换背景"] , this, [this.setSkybox, this.setSolidColor] );
	}


	setSolidColor() {

		//设置相机的清除标识为为固定颜色
		this.camera.clearFlag = CameraClearFlags.SolidColor;
	}

	setSkybox(): void {

		//设置相机的清除标识为天空盒
		this.camera.clearFlag = CameraClearFlags.Sky;
		//使用加载天空盒材质
		var skyboxMaterial: Material = (<Material>Loader.getRes("resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat"));
		//获取相机的天空渲染器
		var skyRenderer: SkyRenderer = this.camera.skyRenderer;
		//设置相机的天空渲染器的mesh
		skyRenderer.mesh = SkyBox.instance;
		//设置相机的天空渲染器的material
		skyRenderer.material = skyboxMaterial;
	}
 
}