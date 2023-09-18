import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Matrix4x4 = Laya.Matrix4x4;

import Handler = Laya.Handler;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class TextureGPUCompression extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;


    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 2, 5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);


		//此场景中resources\res\CompressTexture\Assets\layabox.jpg 在3.0IDE中已经配置了Android和iOS的纹理压缩，
		//在发布后时会自动生成不同平台的纹理压缩文件，用手机访问示例时会自动识别机型下载相应的压缩文件
		Scene3D.load("resources/res/CompressTexture/scene.ls", Handler.create(this, (scene: Scene3D)=> {
			(<Scene3D>this.scene.addChild(scene));
		}));
	}

 
}