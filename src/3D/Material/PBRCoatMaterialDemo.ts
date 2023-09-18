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
export class PBRCoatMaterialDemo extends BaseScript {

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
		this.addSpheresSmoothnessMetallic(sphereMesh, new Vector3(0, 1.5, 0), this.scene, 2, 6, new Color(186 / 255, 110 / 255, 64 / 255, 1.0), 1.0);
		var label = new Laya.Label();
		//label.text = "第一行为默认PBR, 第二行为带有Coat效果PBR,光滑度为0, 从左至右金属度依次递增";
		// label.fontSize = 30;
		// label.color = "#DC143C";
		// label.pos(Laya.stage.width / 2 - 550, Laya.stage.height - 50);
		// Laya.stage.addChild(label);
	}

	/**
	 * Add one with smoothness and metallic sphere.
	 */
	addPBRSphere(sphereMesh: Mesh, position: Vector3, scene: Scene3D, color: Color, smoothness: number, metallic: number, coat : number, coatR : number, state : boolean): PBRStandardMaterial {
		var mat: PBRStandardMaterial = new PBRStandardMaterial();
		mat.albedoColor = color;
		mat.smoothness = smoothness;
		mat.metallic = metallic;
		mat.clearCoatEnable = state;
		if(state)
		{
			mat.clearCoat = coat;
			mat.clearCoatRoughness = coatR;
		}
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
				var smoothness: number = 0.0;
				var metallic: number = 1.0;
				if(j == 1) 
				{
					var state = true;
					var coat = i / (m - 1) * (1 / col);
					var coatR = 0.0;
				}
				else
				{
					var state = false;
					var coat = 0.0;
					var coatR = 0.0;
				} 

				var pos: Vector3 = PBRCoatMaterialDemo._tempPos;
				pos.setValue(-width / 2 + i * width / (n - 1), height / 2 - j * height / (m - 1), 3.0);
				Vector3.add(offset, pos, pos);
				this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic, coat, coatR, state);
			}
		}
	}
 
}