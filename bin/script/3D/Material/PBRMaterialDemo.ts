import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import PrimitiveMesh = Laya.PrimitiveMesh;
import PBRStandardMaterial = Laya.PBRStandardMaterial;
import Transform3D = Laya.Transform3D;
import Color = Laya.Color;

const { regClass, property } = Laya;

@regClass()
export class PBRMaterialDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
	
    private static _tempPos: Vector3 = new Vector3();
	
    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		var sphereMesh: Mesh = PrimitiveMesh.createSphere(0.25, 32, 32);
		const row: number = 6;
		this.addSpheresSpecialMetallic(sphereMesh, new Vector3(0, 1.5, 0), this.scene, row, new Color(186 / 255, 110 / 255, 64 / 255, 1.0), 1.0);
		this.addSpheresSmoothnessMetallic(sphereMesh, new Vector3(0, 0, 0), this.scene, 3, row, new Color(1.0, 1.0, 1.0, 1.0));
		this.addSpheresSpecialMetallic(sphereMesh, new Vector3(0, -1.5, 0), this.scene, row, new Color(0.0, 0.0, 0.0, 1.0), 0.0);
	
	}

	/**
	 * Add one with smoothness and metallic sphere.
	 */
	addPBRSphere(sphereMesh: Mesh, position: Vector3, scene: Scene3D, color: Color, smoothness: number, metallic: number): PBRStandardMaterial {
		var mat: PBRStandardMaterial = new PBRStandardMaterial();
		mat.albedoColor = color;
		mat.smoothness = smoothness;
		mat.metallic = metallic;

		var meshSprite: MeshSprite3D = new MeshSprite3D(sphereMesh);
		meshSprite.meshRenderer.sharedMaterial = mat;
		var transform: Transform3D = meshSprite.transform;
		transform.localPosition = position;
		scene.addChild(meshSprite);
		return mat;
	}


	/**
	 * Add some different smoothness and metallic sphere.
	 */
	addSpheresSmoothnessMetallic(sphereMesh: Mesh, offset: Vector3, scene: Scene3D, row: number, col: number, color: Color): void {
		const width: number = col * 0.5;
		const height: number = row * 0.5;
		for (var i: number = 0, n: number = col; i < n; i++) {//diffenent smoothness
			for (var j: number = 0, m: number = row; j < m; j++) {//diffenent metallic
				var smoothness: number = i / (n - 1);
				var metallic: number = 1.0 - j / (m - 1);

				var pos: Vector3 = PBRMaterialDemo._tempPos;
				pos.setValue(-width / 2 + i * width / (n - 1), height / 2 - j * height / (m - 1), 3.0);
				Vector3.add(offset, pos, pos);

				this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic);
			}
		}
	}

	/**
	 * Add some different smoothness with special metallic sphere.
	 */
	addSpheresSpecialMetallic(sphereMesh: Mesh, offset: Vector3, scene: Scene3D, col: number, color: Color, metallic: number = 0): void {
		const width: number = col * 0.5;
		for (var i: number = 0, n: number = col; i < n; i++) {//diffenent smoothness
			var smoothness: number = i / (n - 1);
			// var metallic: number = metallic;

			var pos: Vector3 = PBRMaterialDemo._tempPos;
			pos.setValue(-width / 2 + i * width / (n - 1), 0, 3.0);
			Vector3.add(offset, pos, pos);

			this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic);
		}
	}
 
}