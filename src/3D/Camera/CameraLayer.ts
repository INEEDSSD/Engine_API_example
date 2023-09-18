import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Material = Laya.Material;
import SkyRenderer = Laya.SkyRenderer;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Animator = Laya.Animator;
import Mesh = Laya.Mesh;
import Texture2D = Laya.Texture2D;
import Quaternion = Laya.Quaternion;
import AnimationClip = Laya.AnimationClip;
import AnimatorState = Laya.AnimatorState;
import PrimitiveMesh = Laya.PrimitiveMesh;
import SkyBoxMaterial = Laya.SkyBoxMaterial;
import CameraClearFlags = Laya.CameraClearFlags;
import SkyBox = Laya.SkyBox;
import Vector4 = Laya.Vector4;

import Handler = Laya.Handler;
import Loader = Laya.Loader;
import Button = Laya.Button;
import Event = Laya.Event;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class CameraLayer extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private layerIndex: number = 0;
	private _translate: Vector3 = new Vector3(0, 1.7, 3);
	private _rotation3: Quaternion = new Quaternion(0.7071068, 0, 0, -0.7071067);
	private _rotation4: Vector3 = new Vector3(0, 60, 0);
	private _position: Vector3 = new Vector3(0.0, 0, 0.5);

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		super.setCameraDirectionLight(this.camera, this.directionLight as Laya.DirectionLight);

		//移除所有图层
		this.camera.removeAllLayers();
		//添加显示图层(为相机添加一个蒙版)
		this.camera.addLayer(5);

		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/staticModel/grid/plane.lh",
			"resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm",
			"resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat"];
		Laya.loader.load(resource).then((res:any[])=>{
			this.onComplete(res);
		});
	}

	private onComplete(res:any[]): void {

		//添加地面
		var grid: Sprite3D = this.scene.addChild(res[0].create());
		//地面接收阴影
		((<MeshSprite3D>grid.getChildAt(0))).meshRenderer.receiveShadow = true;
		//设置该精灵的蒙版为5(所属图层)
		((<MeshSprite3D>grid.getChildAt(0))).layer = 5;

		//添加静态猴子
		var staticLayaMonkey: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(res[1])));
		//设置静态猴子的材质
		staticLayaMonkey.meshRenderer.material = res[2];
		//设置静态猴子的蒙版为1(所属图层)
		staticLayaMonkey.layer = 1;
		staticLayaMonkey.transform.position = new Vector3(0, 0, 0.5);
		staticLayaMonkey.transform.localScale = new Vector3(0.3, 0.3, 0.3);
		staticLayaMonkey.transform.rotation = this._rotation3;
		//产生阴影
		staticLayaMonkey.meshRenderer.castShadow = true;

		//克隆sprite3d
		var layaMonkey_clone1: Sprite3D = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position);
		var layaMonkey_clone2: Sprite3D = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position);
		var layaMonkey_clone3: Sprite3D = Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this._position);

		//设置蒙版(所属图层)
		layaMonkey_clone1.layer = 2;
		layaMonkey_clone2.layer = 3;
		layaMonkey_clone3.layer = 0;
		//平移
		this._translate.setValue(1.5, 0, 0.0);
		layaMonkey_clone1.transform.translate(this._translate);
		this._translate.setValue(-1.5, 0, 0.0);
		layaMonkey_clone2.transform.translate(this._translate);
		this._translate.setValue(2.5, 0, 0.0);
		layaMonkey_clone3.transform.translate(this._translate);
		//旋转
		layaMonkey_clone2.transform.rotate(this._rotation4, false, false);
		//缩放
		layaMonkey_clone3.transform.localScale = new Vector3(0.1, 0.1, 0.1);

		super.addBottomButton( ["切换图层","切换图层","切换图层"] , this, [this.setLayer, this.setLayer, this.setLayer] );
	}

	setLayer (): void {
		this.camera.removeAllLayers();
		this.layerIndex++;
		this.camera.addLayer(this.layerIndex % 3);
		this.camera.addLayer(5);
	}
}