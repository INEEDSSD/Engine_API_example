import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Texture2D = Laya.Texture2D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import CameraClearFlags = Laya.CameraClearFlags;
import EffectMaterial = Laya.EffectMaterial;
import Color = Laya.Color;

const { regClass, property } = Laya;

@regClass()
export class EffectMaterialDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private rotation: Vector3 = new Vector3(0, 0.01, 0);
	
    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(0, 0, 2));
		this.camera.transform.rotate(new Vector3(0, 0, 0), true, false);
		this.camera.clearFlag = CameraClearFlags.Sky;

		var earth: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere())));
		earth.transform.position = new Vector3(0, 0, 0);
		//创建EffectMaterial材质
		var material: EffectMaterial = new EffectMaterial();
		Laya.loader.load("resources/res/threeDimen/texture/earth.png", Laya.Loader.TEXTURE2D).then((texture: Texture2D)=>{
			//设置纹理
			material.texture = texture;
			//设置材质颜色
			material.color = new Color(1, 1, 1, 1);
		});
		
		earth.meshRenderer.material = material;

		Laya.timer.frameLoop(1, this, ()=> {
			earth.transform.rotate(this.rotation, false);
		});
	
	}

 
}