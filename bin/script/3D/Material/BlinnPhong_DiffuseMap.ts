import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Mesh = Laya.Mesh;
import Texture2D = Laya.Texture2D;
import PrimitiveMesh = Laya.PrimitiveMesh;

const { regClass, property } = Laya;

@regClass()
export class BlinnPhong_DiffuseMap extends BaseScript {

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
		
		//创建一个SphereMesh
		var sphereMesh: Mesh = PrimitiveMesh.createSphere();

		var earth1: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(sphereMesh)));
		earth1.transform.position = new Vector3(-0.6, 0, 0);

		var earth2: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(sphereMesh)));
		earth2.transform.position = new Vector3(0.6, 0, 0);
		var material: BlinnPhongMaterial = new BlinnPhongMaterial();

		//漫反射贴图
		Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture: Texture2D)=>{
			material.albedoTexture = texture;
		});
		earth2.meshRenderer.material = material;

		Laya.timer.frameLoop(1, this, ()=> {
			earth1.transform.rotate(this.rotation, false);
			earth2.transform.rotate(this.rotation, false);
		});

		//可修改材质的反照率强度等
		this.addSlider(300, 0.01, 4, 1, 0.01, (value: number)=> {
			material.albedoIntensity = value;
		});
	}

    addSlider(width: number, min: number, max: number, value: number, tick: number, changeFunc: Function) {
        let slider: Laya.HSlider = <Laya.HSlider>this.owner.addChild(new Laya.HSlider("resources/res/ui/hslider.png"));
        slider.width = width;
        slider.min = min;
        slider.max = max;
        slider.value = value;
        slider.tick = tick;
		slider.anchorX = 0.5;
		slider.x = this.pageWidth / 2;
		slider.y = this.pageHeight - 50;
        slider.changeHandler = Laya.Handler.create(this, changeFunc, [], false);

		let text = new Laya.Label("反照率强度");
		//显示文本显示框
		text.color = "#FFFFFF";
		text.fontSize = 16;
		text.width = 100;
		text.anchorX = 0.5;
		text.align = "center"; 
		text.x = slider.width / 2;
		text.y = 20;
		slider.addChild(text);		
    }
 
}