import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import PrimitiveMesh = Laya.PrimitiveMesh;
import Color = Laya.Color;
import PixelLineSprite3D = Laya.PixelLineSprite3D;
import Mesh = Laya.Mesh;

const { regClass, property } = Laya;

@regClass()
export class CustomMesh extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    private sprite3D: Sprite3D;
	private lineSprite3D: Sprite3D;
	private curStateIndex: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 0.8, 1.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);

		this.sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));
		this.lineSprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));

		//正方体
		var box: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5))));
		box.transform.position = new Vector3(2.0, 0.25, 0);
		box.transform.rotate(new Vector3(0, 45, 0), false, false);
		//为正方体添加像素线渲染精灵
		var boxLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(100)));
		//设置像素线渲染精灵线模式
		Tool.linearModel(box, boxLineSprite3D, Color.GREEN);

		//球体
		var sphere: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(0.25, 20, 20))));
		sphere.transform.position = new Vector3(1.0, 0.25, 0);
		var sphereLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(3500)));
		Tool.linearModel(sphere, sphereLineSprite3D, Color.GREEN);

		//圆柱体
		var cylinder: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCylinder(0.25, 1, 20))));
		cylinder.transform.position = new Vector3(0, 0.5, 0);
		var cylinderLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(1000)));
		Tool.linearModel(cylinder, cylinderLineSprite3D, Color.GREEN);

		//胶囊体
		var capsule: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCapsule(0.25, 1, 10, 20))));
		capsule.transform.position = new Vector3(-1.0, 0.5, 0);
		var capsuleLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(3000)));
		Tool.linearModel(capsule, capsuleLineSprite3D, Color.GREEN);

		//圆锥体
		var cone: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCone(0.25, 0.75))));
		cone.transform.position = new Vector3(-2.0, 0.375, 0);
		var coneLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(500)));
		Tool.linearModel(cone, coneLineSprite3D, Color.GREEN);

		//平面
		var plane: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(6, 6, 10, 10))));
		var planeLineSprite3D: PixelLineSprite3D = (<PixelLineSprite3D>this.lineSprite3D.addChild(new PixelLineSprite3D(1000)));
		Tool.linearModel(plane, planeLineSprite3D, Color.GRAY);

		this.lineSprite3D.active = false;
		super.addBottomButton( ["网格模式","正常模式"] , this, [this.setMesh, this.setMesh]);
	}

	setMesh(): void {
		if (++this.curStateIndex % 2 == 1) {
			this.sprite3D.active = false;
			this.lineSprite3D.active = true;
		} else {
			this.sprite3D.active = true;
			this.lineSprite3D.active = false;
		}
	}
 
}

export class Tool {
	private static transVertex0: Vector3 = new Vector3();
	private static transVertex1: Vector3 = new Vector3();
	private static transVertex2: Vector3 = new Vector3();
	private static corners: Vector3[] = [];
	static linearModel(sprite3D: Sprite3D, lineSprite3D: PixelLineSprite3D, color: Color): void {
		if (sprite3D instanceof MeshSprite3D) {
			var meshSprite3D: MeshSprite3D = <MeshSprite3D>sprite3D;
			var mesh: Mesh = meshSprite3D.meshFilter.sharedMesh;
			var positions: Array<Vector3> = [];
			mesh.getPositions(positions);
			var indices = mesh.getSubMesh(0).getIndices();

			for (var i: number = 0; i < indices.length; i += 3) {
				var vertex0: Vector3 = positions[indices[i]];
				var vertex1: Vector3 = positions[indices[i + 1]];
				var vertex2: Vector3 = positions[indices[i + 2]];
				Vector3.transformCoordinate(vertex0, meshSprite3D.transform.worldMatrix, this.transVertex0);
				Vector3.transformCoordinate(vertex1, meshSprite3D.transform.worldMatrix, this.transVertex1);
				Vector3.transformCoordinate(vertex2, meshSprite3D.transform.worldMatrix, this.transVertex2);
				lineSprite3D.addLine(this.transVertex0, this.transVertex1, color, color);
				lineSprite3D.addLine(this.transVertex1, this.transVertex2, color, color);
				lineSprite3D.addLine(this.transVertex2, this.transVertex0, color, color);
			}
		}

		for (var i: number = 0, n: number = sprite3D.numChildren; i < n; i++)
			Tool.linearModel((<Sprite3D>sprite3D.getChildAt(i)), lineSprite3D, color);
	}

	static DrawBoundingBox(sprite3D: Sprite3D, sprite: Sprite3D, color: Color): void {
		(<MeshSprite3D>sprite3D).meshRenderer.bounds.getCorners(Tool.corners);

		var rotate: Vector3 = new Vector3(0, 0, 90);
		Tool.DrawTwelveLines(Tool.corners[0], Tool.corners[1], rotate, sprite);
		rotate.setValue(0, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[1], Tool.corners[2], rotate, sprite);
		rotate.setValue(0, 0, 90);
		Tool.DrawTwelveLines(Tool.corners[2], Tool.corners[3], rotate, sprite);
		rotate.setValue(0, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[3], Tool.corners[0], rotate, sprite);

		rotate.setValue(0, 0, 90);
		Tool.DrawTwelveLines(Tool.corners[4], Tool.corners[5], rotate, sprite);
		rotate.setValue(0, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[5], Tool.corners[6], rotate, sprite);
		rotate.setValue(0, 0, 90);
		Tool.DrawTwelveLines(Tool.corners[6], Tool.corners[7], rotate, sprite);
		rotate.setValue(0, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[7], Tool.corners[4], rotate, sprite);

		rotate.setValue(90, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[0], Tool.corners[4], rotate, sprite);
		rotate.setValue(90, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[1], Tool.corners[5], rotate, sprite);

		rotate.setValue(90, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[2], Tool.corners[6], rotate, sprite);
		rotate.setValue(90, 0, 0);
		Tool.DrawTwelveLines(Tool.corners[3], Tool.corners[7], rotate, sprite);
	}

	private static DrawTwelveLines(start: Vector3, end: Vector3, rotate: Vector3, sprite3D: Sprite3D): void {
		var length: number = Vector3.distance(start, end);
		var cylinder: MeshSprite3D = (<MeshSprite3D>sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCylinder(0.004, length, 3))));
		cylinder.transform.rotate(rotate, true, false);
		var cylPos: Vector3 = cylinder.transform.position;
		var x: number = start.x + end.x;
		var y: number = start.y + end.y;
		var z: number = start.z + end.z;
		cylPos.setValue(x / 2, y / 2, z / 2);
		cylinder.transform.position = cylPos;
	}

	constructor() {
	}

}


