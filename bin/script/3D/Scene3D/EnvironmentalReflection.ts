import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import SkyRenderer = Laya.SkyRenderer;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import AmbientMode = Laya.AmbientMode;
import SkyBoxMaterial = Laya.SkyBoxMaterial;
import CameraClearFlags = Laya.CameraClearFlags;
import SkyBox = Laya.SkyBox;
import PBRStandardMaterial = Laya.PBRStandardMaterial;

const { regClass, property } = Laya;

@regClass()
export class EnvironmentalReflection extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private teapot: MeshSprite3D = null;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		//设置场景的反射模式(全局有效)
		this.scene.ambientMode = AmbientMode.SphericalHarmonics;
		this.scene.reflectionIntensity = 1;

		//初始化照相机
		this.camera.transform.translate(new Vector3(0, 2, 3));
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);
		//设置相机的清除标识为天空盒
		this.camera.clearFlag = CameraClearFlags.Sky;

		//天空盒
		Laya.loader.load("resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat").then((res: SkyBoxMaterial)=> {
			//获取相机的天空盒渲染体
			var skyRenderer: SkyRenderer = this.scene.skyRenderer;
			//设置天空盒mesh
			skyRenderer.mesh = SkyBox.instance;
			//设置天空盒材质
			skyRenderer.material = res;
			//设置曝光强度
			res.exposure = 0.6 + 1;
		});

		//加载Mesh
		Laya.loader.load("resources/res/threeDimen/staticModel/teapot/teapot-Teapot001.lm").then((res)=> {

			this.teapot = <MeshSprite3D>this.scene.addChild(new MeshSprite3D(res));
			this.teapot.transform.position = new Vector3(0, 1.75, 2);
            this.teapot.transform.setWorldLossyScale(new Vector3(5, 5, 5));
			this.teapot.transform.rotate(new Vector3(-90, 0, 0), false, false);
			//实例PBR材质
			var pbrMat: PBRStandardMaterial = new PBRStandardMaterial();
			//设置材质的金属度，尽量高点，反射效果更明显
			pbrMat.metallic = 1;
			this.teapot.meshRenderer.material = pbrMat;
			
		});		

		this.loadEnvironmentalReflection();

		//super.addBottomButton( ["取消环境反射","加载环境反射"] , this, [this.removeEnvironmentalReflection, this.loadEnvironmentalReflection]);

	}
 
	removeEnvironmentalReflection() {
                
       this.scene.sceneReflectionProb.iblTex = null;
	}

	loadEnvironmentalReflection() {

		//加载在场景中预先用天空盒烘焙出来的天空盒cubemap
		Laya.loader.load("resources/scene/3D/Scene3D/EnvironmentalReflection/EnvironmentalReflection.ktx").then((res)=> {		
			this.scene.sceneReflectionProb.iblTex = res;			
		});     
	}  
}