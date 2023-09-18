import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import Quaternion = Laya.Quaternion;
import PrimitiveMesh = Laya.PrimitiveMesh;
import Color = Laya.Color;
import PixelLineSprite3D = Laya.PixelLineSprite3D;

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

		this.camera.transform.position = new Vector3(0, 0.8, 1.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);

		//创建精灵
		this.sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));
		this.lineSprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));

		Laya.loader.load("resources/gltf/monster.glb", Laya.Loader.HIERARCHY).then(res => {
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
		var skin = this.sprite3D.getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0);
		var skinRender : Laya.SkinnedMeshRenderer = skin.getComponent(Laya.SkinnedMeshRenderer);
		skinRender.setMorphChannelWeight("target_20", value)
	}

	private onChange1(value: number): void {
		var skin = this.sprite3D.getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0);
		var skinRender : Laya.SkinnedMeshRenderer = skin.getComponent(Laya.SkinnedMeshRenderer);
		skinRender.setMorphChannelWeight("target_26", value)
	}
 
}

// export class Tool {
// 	private static transVertex0: Vector3 = new Vector3();
// 	private static transVertex1: Vector3 = new Vector3();
// 	private static transVertex2: Vector3 = new Vector3();
// 	private static corners: Vector3[] = [];
// 	static linearModel(sprite3D: Sprite3D, lineSprite3D: PixelLineSprite3D, color: Color): void {
// 		if (sprite3D instanceof MeshSprite3D) {
// 			var meshSprite3D: MeshSprite3D = <MeshSprite3D>sprite3D;
// 			var mesh: Mesh = meshSprite3D.meshFilter.sharedMesh;
// 			var positions: Array<Vector3> = [];
// 			mesh.getPositions(positions);
// 			var indices = mesh.getSubMesh(0).getIndices();

// 			for (var i: number = 0; i < indices.length; i += 3) {
// 				var vertex0: Vector3 = positions[indices[i]];
// 				var vertex1: Vector3 = positions[indices[i + 1]];
// 				var vertex2: Vector3 = positions[indices[i + 2]];
// 				Vector3.transformCoordinate(vertex0, meshSprite3D.transform.worldMatrix, this.transVertex0);
// 				Vector3.transformCoordinate(vertex1, meshSprite3D.transform.worldMatrix, this.transVertex1);
// 				Vector3.transformCoordinate(vertex2, meshSprite3D.transform.worldMatrix, this.transVertex2);
// 				lineSprite3D.addLine(this.transVertex0, this.transVertex1, color, color);
// 				lineSprite3D.addLine(this.transVertex1, this.transVertex2, color, color);
// 				lineSprite3D.addLine(this.transVertex2, this.transVertex0, color, color);
// 			}
// 		}

// 		for (var i: number = 0, n: number = sprite3D.numChildren; i < n; i++)
// 			Tool.linearModel((<Sprite3D>sprite3D.getChildAt(i)), lineSprite3D, color);
// 	}

// 	static DrawBoundingBox(sprite3D: Sprite3D, sprite: Sprite3D, color: Color): void {
// 		(<MeshSprite3D>sprite3D).meshRenderer.bounds.getCorners(Tool.corners);

// 		var rotate: Vector3 = new Vector3(0, 0, 90);
// 		Tool.DrawTwelveLines(Tool.corners[0], Tool.corners[1], rotate, sprite);
// 		rotate.setValue(0, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[1], Tool.corners[2], rotate, sprite);
// 		rotate.setValue(0, 0, 90);
// 		Tool.DrawTwelveLines(Tool.corners[2], Tool.corners[3], rotate, sprite);
// 		rotate.setValue(0, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[3], Tool.corners[0], rotate, sprite);

// 		rotate.setValue(0, 0, 90);
// 		Tool.DrawTwelveLines(Tool.corners[4], Tool.corners[5], rotate, sprite);
// 		rotate.setValue(0, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[5], Tool.corners[6], rotate, sprite);
// 		rotate.setValue(0, 0, 90);
// 		Tool.DrawTwelveLines(Tool.corners[6], Tool.corners[7], rotate, sprite);
// 		rotate.setValue(0, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[7], Tool.corners[4], rotate, sprite);

// 		rotate.setValue(90, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[0], Tool.corners[4], rotate, sprite);
// 		rotate.setValue(90, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[1], Tool.corners[5], rotate, sprite);

// 		rotate.setValue(90, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[2], Tool.corners[6], rotate, sprite);
// 		rotate.setValue(90, 0, 0);
// 		Tool.DrawTwelveLines(Tool.corners[3], Tool.corners[7], rotate, sprite);
// 	}

// 	private static DrawTwelveLines(start: Vector3, end: Vector3, rotate: Vector3, sprite3D: Sprite3D): void {
// 		var length: number = Vector3.distance(start, end);
// 		var cylinder: MeshSprite3D = (<MeshSprite3D>sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCylinder(0.004, length, 3))));
// 		cylinder.transform.rotate(rotate, true, false);
// 		var cylPos: Vector3 = cylinder.transform.position;
// 		var x: number = start.x + end.x;
// 		var y: number = start.y + end.y;
// 		var z: number = start.z + end.z;
// 		cylPos.setValue(x / 2, y / 2, z / 2);
// 		cylinder.transform.position = cylPos;
// 	}

// 	constructor() {
// 	}

// }