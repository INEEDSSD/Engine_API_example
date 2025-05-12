import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;

const { regClass, property } = Laya;

@regClass()
export class MeshLoad extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Sprite3D)
	private directionLight: Laya.Sprite3D;

	private sprite3D: Sprite3D;
	private lineSprite3D: Sprite3D;
	private rotation: Vector3 = new Vector3(0, 0.01, 0);
	private curStateIndex: number = 0;

	constructor() {
		super();
	}

	onAwake(): void {
		super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 0.8, 3.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);

		//创建精灵
		this.sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));
		this.lineSprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));

		Laya.loader.load("resources/gltf/morphstress/MorphStressTest.gltf", Laya.Loader.HIERARCHY).then(res => {
			this.sprite3D = res.create();
			var ani = this.sprite3D.getComponent(Laya.Animator);
			ani.speed = 0.0;
			this.scene.addChild(this.sprite3D);
			this.initSlider();
		});
	}

	initSlider(): void {
		var skins: any[] = [];
		skins.push("resources/image/hslider.png", "resources/image/hslider$bar.png");
		Laya.loader.load(skins, Laya.Handler.create(this, this.onLoadComplete));
	}

	private onLoadComplete(e: any = null): void {
		this.placeHSlider();
		this.placeHSlider1();
	}

	private placeHSlider(): void {
		var hs: Laya.HSlider = new Laya.HSlider();
		var label = new Laya.Label("target 20");
		label.fontSize = 15;
		label.pos(this.pageWidth - 350, 170);
		hs.skin = "resources/image/hslider.png";
		hs.width = 300;
		hs.pos(this.pageWidth - 350, 190);
		hs.min = 0;
		hs.max = 1;
		hs.value = 0.1;
		hs.tick = 0.01;

		hs.changeHandler = new Laya.Handler(this, this.onChange);
		this.box2D.addChild(hs);
		this.box2D.addChild(label);
	}

	private placeHSlider1(): void {
		var hs1: Laya.HSlider = new Laya.HSlider();
		var label1 = new Laya.Label("target 26");
		label1.fontSize = 15;
		label1.pos(this.pageWidth - 350, 210);
		hs1.skin = "resources/image/hslider.png";
		hs1.width = 300;
		hs1.pos(this.pageWidth - 350, 230);
		hs1.min = 0;
		hs1.max = 1;
		hs1.value = 0.1;
		hs1.tick = 0.01;

		hs1.changeHandler = new Laya.Handler(this, this.onChange1);
		this.box2D.addChild(hs1);
		this.box2D.addChild(label1);
	}

	private onChange(value: number): void {
		var skin = this.sprite3D.getChildAt(0);
		var skinRender: Laya.MeshRenderer = skin.getComponent(Laya.MeshRenderer);
		skinRender.setMorphChannelWeight("Key 1", value)
	}

	private onChange1(value: number): void {
		var skin = this.sprite3D.getChildAt(0);
		var skinRender: Laya.MeshRenderer = skin.getComponent(Laya.MeshRenderer);
		skinRender.setMorphChannelWeight("Key 4", value)
	}

}