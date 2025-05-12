import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import PrimitiveMesh = Laya.PrimitiveMesh;
import CameraClearFlags = Laya.CameraClearFlags;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class CameraLookAt extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Sprite3D)
	private directionLight: Laya.Sprite3D;

	private index: number = 0;
	private box: Laya.Sprite3D;
	private capsule: Laya.Sprite3D;
	private cylinder: Laya.Sprite3D;
	private _translate = new Vector3(0, 0.7, 5);
	private _rotation: Vector3 = new Vector3(-15, 0, 0);
	private _rotation2: Vector3 = new Vector3(-3.14 / 3, 0, 0);
	private _rotation3: Vector3 = new Vector3(0, 45, 0);
	private _position: Vector3 = new Vector3(1.5, 0.0, 2);
	private _position2: Vector3 = new Vector3(-1.5, 0.0, 2);
	private _position3: Vector3 = new Vector3(0.0, 0.0, 2);
	private _up: Vector3 = new Vector3(0, 1, 0);

	constructor() {
		super();
	}

	onAwake(): void {
		super.base(this.camera);

		Laya.loader.load("resources/res/threeDimen/texture/layabox.png").then(() => {
			this.onPreLoadFinish();
		});
	}

	private onPreLoadFinish(): void {

		//创建相机，构造函数的三个参数为相机横纵比，近距裁剪，远距裁剪
		this.camera.transform.position = (this._translate);
		this.camera.transform.rotate(this._rotation, true, false);

		//相机设置清楚标记,使用固定颜色
		this.camera.clearFlag = CameraClearFlags.SolidColor;
		//设置摄像机视野范围（角度）
		this.camera.fieldOfView = 60;

		//设置平行光颜色
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		this.directionLight.transform.rotate(this._rotation2);

		var sprite: Sprite3D = new Sprite3D;
		this.scene.addChild(sprite);

		//正方体
		this.box = new Laya.Sprite3D();
		sprite.addChild(this.box);
		let boxMesh: Laya.Mesh = PrimitiveMesh.createBox(0.5, 0.5, 0.5);
		let boxMeshFilter: Laya.MeshFilter = this.box.addComponent(Laya.MeshFilter);
		let boxMeshRender: Laya.MeshRenderer = this.box.addComponent(Laya.MeshRenderer);
		boxMeshFilter.sharedMesh = boxMesh;
		this.box.transform.position = this._position;
		this.box.transform.rotate(this._rotation3, false, false);

		//胶囊体
		this.capsule = new Laya.Sprite3D();
		let capsuleMesh: Laya.Mesh = PrimitiveMesh.createCapsule(0.25, 1, 10, 20);
		let capsuleMeshFilter: Laya.MeshFilter = this.capsule.addComponent(Laya.MeshFilter);
		let capsuleMeshRender: Laya.MeshRenderer = this.capsule.addComponent(Laya.MeshRenderer);
		capsuleMeshFilter.sharedMesh = capsuleMesh;
		this.capsule.transform.position = this._position2;
		sprite.addChild(this.capsule);

		//圆柱
		this.cylinder = new Laya.Sprite3D();
		let cylinderMesh: Laya.Mesh = PrimitiveMesh.createCylinder(0.25, 1, 20);
		let cylinderMeshFilter: Laya.MeshFilter = this.cylinder.addComponent(Laya.MeshFilter);
		let cylinderMeshRender: Laya.MeshRenderer = this.cylinder.addComponent(Laya.MeshRenderer);
		cylinderMeshFilter.sharedMesh = cylinderMesh;
		this.cylinder.transform.position = this._position3;
		sprite.addChild(this.cylinder);

		//创建linnPhong材质
		var materialBill: BlinnPhongMaterial = new BlinnPhongMaterial;
		this.box.getComponent(Laya.MeshRenderer).sharedMaterial = materialBill;
		this.capsule.getComponent(Laya.MeshRenderer).sharedMaterial = materialBill;
		this.cylinder.getComponent(Laya.MeshRenderer).sharedMaterial = materialBill;

		//为材质加载纹理
		var tex = Loader.getTexture2D("resources/res/threeDimen/texture/layabox.png");
		//设置反照率贴图
		materialBill.albedoTexture = tex;

		super.addBottomButton(["切换注视", "切换注视", "切换注视"], this, [this.setLookAt, this.setLookAt, this.setLookAt]);
		this.camera.transform.lookAt(this.cylinder.transform.position, this._up);
	}

	setLookAt(index: number = 0) {
		this.index++;
		if (this.index % 3 === 1) {
			//摄像机捕捉模型目标
			this.camera.transform.lookAt(this.box.transform.position, this._up);
		}
		else if (this.index % 3 === 2) {
			//摄像机捕捉模型目标
			this.camera.transform.lookAt(this.cylinder.transform.position, this._up);
		}
		else {
			//摄像机捕捉模型目标
			this.camera.transform.lookAt(this.capsule.transform.position, this._up);
		}
	}

}