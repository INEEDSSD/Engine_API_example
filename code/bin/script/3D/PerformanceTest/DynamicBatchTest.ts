import { BaseScript } from "../../BaseScript";

import Matrix4x4 = Laya.Matrix4x4;
import PrimitiveMesh = Laya.PrimitiveMesh;
import Scene3D = Laya.Scene3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Mesh = Laya.Mesh;
import Texture2D = Laya.Texture2D;

const { regClass, property } = Laya;

@regClass()
export class DynamicBatchTest extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 6.2, 10.5);
		this.camera.transform.rotationEuler = new Vector3(-40, 0, 0);

        Laya.loader.load("resources/res/threeDimen/layabox.png").then((tex:Texture2D)=>{
			var radius: Vector3 = new Vector3(0, 0, 1);
			var radMatrix: Matrix4x4 = new Matrix4x4();
			var circleCount: number = 50;

			var boxMesh: Mesh = PrimitiveMesh.createBox(0.02, 0.02, 0.02);
			var boxMat: BlinnPhongMaterial = new BlinnPhongMaterial();
			boxMat.albedoTexture = tex;
			for (var i: number = 0; i < circleCount; i++) {
				radius.z = 1.0 + i * 0.15;
				radius.y = i * 0.03;
				var oneCircleCount: number = 100 + i * 15;
				for (var j: number = 0; j < oneCircleCount; j++) {
					var boxSprite: MeshSprite3D = new MeshSprite3D(boxMesh);
					boxSprite.meshRenderer.sharedMaterial = boxMat;
					var localPos: Vector3 = boxSprite.transform.localPosition;
					var rad: number = ((Math.PI * 2) / oneCircleCount) * j;
					Matrix4x4.createRotationY(rad, radMatrix);
					Vector3.transformCoordinate(radius, radMatrix, localPos);
					boxSprite.transform.localPosition = localPos;
					this.scene.addChild(boxSprite);
				}
			}
		});
	}
 
}