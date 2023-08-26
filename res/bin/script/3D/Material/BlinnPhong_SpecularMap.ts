import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Texture2D = Laya.Texture2D;
import SkinnedMeshRenderer = Laya.SkinnedMeshRenderer;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class BlinnPhong_SpecularMap extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    private rotation:Laya.Vector3 = new Laya.Vector3(0, 0.01, 0);
    private specularMapUrl:Array<string> = [
        "resources/res/threeDimen/skinModel/dude/Assets/dude/headS.png", 
        "resources/res/threeDimen/skinModel/dude/Assets/dude/jacketS.png", 
        "resources/res/threeDimen/skinModel/dude/Assets/dude/pantsS.png", 
        "resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyS.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyS.png"
    ];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 3, 5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(0.0, -0.8, -1.0));
		this.directionLight.transform.worldMatrix = mat;
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);

		Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then((res)=> {
	
			var dude1:Laya.Sprite3D = this.scene.addChild(res.create()) as Laya.Sprite3D;
			dude1.transform.position = new Laya.Vector3(-1.5, 0, 0);
			
			var dude2:Laya.Sprite3D = Laya.Sprite3D.instantiate(dude1, this.scene, false, new Laya.Vector3(1.5, 0, 0));
			var skinnedMeshSprite3d:Laya.SkinnedMeshSprite3D = dude2.getChildAt(0).getChildAt(0) as Laya.SkinnedMeshSprite3D;
			
			//高光贴图
			for (var i:number = 0; i < skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials.length; i++) {
				var material:Laya.BlinnPhongMaterial = skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials[i] as Laya.BlinnPhongMaterial;
				Laya.loader.load(this.specularMapUrl[i]).then((texture: Texture2D)=> {
					material.specularTexture = texture;
				});
			}
			
			Laya.timer.frameLoop(1, this, ()=> {
				dude1.transform.rotate(this.rotation);
				dude2.transform.rotate(this.rotation);
			});

			//可修改材质的高光强度等
			this.addSlider(300, 0.01, 1, 0.07, 0.01, (value: number)=> {
				
				for (var i:number = 0; i < skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials.length; i++) {
					var material:Laya.BlinnPhongMaterial = skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials[i] as Laya.BlinnPhongMaterial;
					material.shininess = value;
				}				
			});			
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

		let text = new Laya.Label("高光亮度");
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