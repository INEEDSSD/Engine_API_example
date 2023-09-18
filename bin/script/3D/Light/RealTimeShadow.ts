import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import Transform3D = Laya.Transform3D;
import PBRStandardMaterial = Laya.PBRStandardMaterial;
import PrimitiveMesh = Laya.PrimitiveMesh;
import SkinnedMeshSprite3D = Laya.SkinnedMeshSprite3D;
import ShadowCascadesMode = Laya.ShadowCascadesMode;
import ShadowMode = Laya.ShadowMode;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class RealTimeShadow extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	/** Roation speed. */
	autoRotateSpeed: Vector3 = new Vector3(0, 0.05, 0);
	/** If roation. */
	rotation: boolean = true;
	rotationScript: RotationScript;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1.5, 2);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		//方向光的颜色
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.85, 0.85, 0.8, 1);

		Laya.loader.load([
			"resources/res/threeDimen/staticModel/grid/plane.lh",
			"resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
		]).then( ()=>{
            this.onComplete();
        });
	}

	private onComplete(): void {

		this.directionLight.transform.rotate(new Vector3(-Math.PI / 3, 0, 0));

		// Use soft shadow.
		this.directionLight.getComponent(Laya.DirectionLightCom).shadowMode = ShadowMode.SoftLow;
		// Set shadow max distance from camera.
		this.directionLight.getComponent(Laya.DirectionLightCom).shadowDistance = 50;
		// Set shadow cascade mode.
		this.directionLight.getComponent(Laya.DirectionLightCom).shadowCascadesMode = ShadowCascadesMode.FourCascades;
		// Set shadow normal bias.
		this.directionLight.getComponent(Laya.DirectionLightCom).shadowNormalBias = 1;
		// Add rotation script to light.
		this.rotationScript = this.directionLight.addComponent(RotationScript);

		// A plane receive shadow.
		var grid: Sprite3D = <Sprite3D>this.scene.addChild(Loader.getRes("resources/res/threeDimen/staticModel/grid/plane.lh").create());
		(<MeshSprite3D>grid.getChildAt(0)).meshRenderer.receiveShadow = true;

		// A monkey cast shadow.
		var layaMonkey: Sprite3D = <Sprite3D>this.scene.addChild(Loader.getRes("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").create());
		layaMonkey.transform.setWorldLossyScale(new Vector3(3.3, 3.3, 3.3));
		(<SkinnedMeshSprite3D>layaMonkey.getChildAt(0).getChildAt(1)).skinnedMeshRenderer.castShadow = true;

		// A sphere cast/receive shadow.
		var sphereSprite: MeshSprite3D = this.addPBRSphere(PrimitiveMesh.createSphere(0.1), new Vector3(0, 0.2, 0.5), this.scene);
		sphereSprite.meshRenderer.castShadow = true;
		// sphereSprite.meshRenderer.receiveShadow = true;

		super.addBottomButton( ["停止旋转","开始旋转"] , this, [this.Rotation, this.Rotation] );
	}

	/**
	 * Add one with smoothness and metallic sphere.
	 */
	addPBRSphere(sphereMesh: Mesh, position: Vector3, scene: Scene3D): MeshSprite3D {
		var mat: PBRStandardMaterial = new PBRStandardMaterial();
		mat.smoothness = 0.2;

		var meshSprite: MeshSprite3D = new MeshSprite3D(sphereMesh);
		meshSprite.meshRenderer.sharedMaterial = mat;
		var transform: Transform3D = meshSprite.transform;
		transform.localPosition = position;
		scene.addChild(meshSprite);
		return meshSprite;
	}

	Rotation(): void {

		if (this.rotationScript.rotation) {
			this.rotationScript.rotation = false;
		} else {
			this.rotationScript.rotation = true;
		}
	}
}

/**
 * Light rotation script.
 */
class RotationScript extends Laya.Script3D {
	/** Roation speed. */
	autoRotateSpeed: Vector3 = new Vector3(0, 0.05, 0);
	/** If roation. */
	rotation: boolean = true;

	onUpdate(): void {
		if (this.rotation)
			(<DirectionLight>this.owner).transform.rotate(this.autoRotateSpeed, false);
	}
}