import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import PrimitiveMesh = Laya.PrimitiveMesh;
import MeshFilter = Laya.MeshFilter;

const { regClass, property } = Laya;

@regClass()
export class ChangeMesh extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private sphere: MeshSprite3D;
	private index: number = 0;
	private sphereMesh: Mesh;
	private box: Mesh;
	private capsule: Mesh;
	private cylinder: Mesh;
	private cone: Mesh;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

		//获取球型精灵
		this.sphere = (<MeshSprite3D>this.scene.getChildByName("Sphere"));
		//获取精灵的mesh
		this.sphereMesh = this.sphere.getComponent(MeshFilter).sharedMesh;
		
		super.addBottomButton( ["切换mesh","切换mesh","切换mesh"] , this, [this.setMesh, this.setMesh, this.setMesh]);

	}

	setMesh(): void {
		this.index++;
		if (this.index % 3 === 1) {
			//切换mesh
			this.box = PrimitiveMesh.createBox(0.5, 0.5, 0.5);
			this.sphere.getComponent(MeshFilter).sharedMesh = this.box;
		} else if (this.index % 3 === 2) {
			//切换mesh
			this.capsule = PrimitiveMesh.createCapsule(0.25, 1, 10, 20);
			this.sphere.getComponent(MeshFilter).sharedMesh = this.capsule;
		} else {
			//切换mesh
			this.sphere.getComponent(MeshFilter).sharedMesh = this.sphereMesh;
		}
	}
 
}