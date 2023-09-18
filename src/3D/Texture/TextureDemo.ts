import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Matrix4x4 = Laya.Matrix4x4;
import Texture2D = Laya.Texture2D;

const { regClass, property } = Laya;

@regClass()
export class TextureDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private sprite3D: Sprite3D;
	private index: number = 0;
	private texture: Texture2D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1.5, 4);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);


		this.sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));

		//正方体
		var box = this.sprite3D.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(0.5, 0.5, 0.5))) as Laya.MeshSprite3D;
		box.transform.position = new Laya.Vector3(0.0, 1.0, 2.5);
		box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
		
		var mater = new Laya.BlinnPhongMaterial();
		box.meshRenderer.material = mater;
		
		//只能用Laya.Texture2D.load这种加载中的方式更改贴图属性
		Laya.Texture2D.load("resources/res/threeDimen/texture/layabox.png", Laya.Handler.create(null, (texture:Laya.Texture2D)=> {

			this.texture = texture;
			//在U方向上使用WARPMODE_CLAMP
			texture.wrapModeU = Laya.WrapMode.Clamp;
			//在V方向使用WARPMODE_REPEAT
			texture.wrapModeV = Laya.WrapMode.Repeat;
			//设置过滤方式
			texture.filterMode = Laya.FilterMode.Bilinear;
			//设置各向异性等级
			texture.anisoLevel = 2;
			//设置漫反射贴图
			mater.albedoTexture = texture;
			//修改材质贴图的平铺和偏移
			mater.tilingOffset = new Laya.Vector4(2, 2, 0, 0);

		}));
		
		super.addBottomButton( ["更改WrapMode","更改WrapMode","更改WrapMode"] , this, [this.setValue, this.setValue, this.setValue] );
	}

	setValue() {
		
		this.index++;
		if (this.index % 3 === 1) {
			this.texture.wrapModeU = Laya.WrapMode.Repeat;
			this.texture.wrapModeV = Laya.WrapMode.Clamp;
		}
		else if (this.index % 3 === 2) {
			this.texture.wrapModeU = Laya.WrapMode.Repeat;
			this.texture.wrapModeV = Laya.WrapMode.Repeat;
		}
		else {
			this.texture.wrapModeU = Laya.WrapMode.Mirrored;
			this.texture.wrapModeV = Laya.WrapMode.Mirrored;
		}
	}
}