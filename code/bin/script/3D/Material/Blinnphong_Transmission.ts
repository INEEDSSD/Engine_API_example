import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshRenderer = Laya.MeshRenderer;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Color = Laya.Color;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Blinnphong_Transmission extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private rabbitMaterial:BlinnPhongMaterial;
	private monkeyMaterial:BlinnPhongMaterial;
	private resource = [
		"resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/monkeyThinkness.png",
		"resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/rabbitthickness.jpg"
	];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = (new Vector3(9.48667, -0.10189, 6.16654));
		this.camera.transform.rotate(new Vector3(-4.645, -17.161, 0), true, false);

		//加载场景
		Laya.loader.load("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/TransmissionScene.ls").then((res)=> {
			let scene = (<Scene3D>this.scene.addChild(res.create()));
			this.rabbitMaterial = scene.getChildByName("rabbit").getComponent(MeshRenderer).sharedMaterial as Laya.BlinnPhongMaterial;
			this.monkeyMaterial = scene.getChildByName("monkey").getComponent(MeshRenderer).sharedMaterial as Laya.BlinnPhongMaterial;
			this.loadThinkNessTexture();
		});

	}
	loadThinkNessTexture(){

		Laya.loader.load(this.resource).then( ()=>{
			this.onPreLoadFinish();
		} );
	}

	onPreLoadFinish(){

		this.monkeyMaterial.thinknessTexture = Loader.getRes("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/monkeyThinkness.png");
		this.rabbitMaterial.thinknessTexture = Loader.getRes("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/rabbitthickness.jpg");
		this.rabbitMaterial.enableTransmission = true;
		this.rabbitMaterial.transmissionRata = 0.0;
		this.rabbitMaterial.backDiffuse = 4.88;
		this.rabbitMaterial.transmissionColor = new Color(1.0,1.0,1.0,1.0);
		this.rabbitMaterial.backScale = 1.0;

		this.monkeyMaterial.enableTransmission = true;
		this.monkeyMaterial.transmissionRata = 0.0;
		this.monkeyMaterial.backDiffuse = 1.0;
		this.monkeyMaterial.transmissionColor = new Color(0.2,1.0,0.0,1.0);
		this.monkeyMaterial.backScale = 1.0;
	}
 
}