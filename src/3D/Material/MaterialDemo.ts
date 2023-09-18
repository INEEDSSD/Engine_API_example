import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshRenderer = Laya.MeshRenderer;
import MeshSprite3D = Laya.MeshSprite3D;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Texture2D = Laya.Texture2D;
import PBRStandardMaterial = Laya.PBRStandardMaterial;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class MaterialDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private sphere: MeshSprite3D;
	private pbrStandardMaterial: PBRStandardMaterial;
	private pbrTexture: Texture2D;
	private billinMaterial: BlinnPhongMaterial;
	private index: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		Laya.loader.load("resources/res/threeDimen/texture/earth.png").then(()=>{
			this.onPreLoadFinish();
		});

	}

	onPreLoadFinish() {
		//获取球型精灵
		this.sphere = (<MeshSprite3D>this.scene.getChildByName("Sphere"));
		//获取球型精灵自带的BlinnPhong材质
		this.billinMaterial = (<BlinnPhongMaterial>this.sphere.getComponent(MeshRenderer).material);
		//创建一个新的PBRStandard材质
		this.pbrStandardMaterial = new PBRStandardMaterial();
		//获取新的纹理
		this.pbrTexture = Loader.getTexture2D("resources/res/threeDimen/texture/earth.png");
		//为PBRStandard材质设置漫反射贴图
		this.pbrStandardMaterial.albedoTexture = this.pbrTexture;

		super.addBottomButton( ["切换材质","切换材质"] , this, [this.change, this.change]);
	}

	change(): void {
		this.index++;
		if (this.index % 2 === 1) {
			//切换至PBRStandard材质
			this.sphere.getComponent(MeshRenderer).material = this.pbrStandardMaterial;
		} else {
			//切换至BlinnPhong材质
			this.sphere.getComponent(MeshRenderer).material = this.billinMaterial;
		}
	}
 
}