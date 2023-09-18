import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import SphereColliderShape = Laya.SphereColliderShape;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Texture2D = Laya.Texture2D;
import Rigidbody3D = Laya.Rigidbody3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_ContinueCollisionDetection extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private mat2: BlinnPhongMaterial;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 6, 9.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

        //设置平行光的方向
        var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
        mat.setForward(new Vector3(-1.0, -1.0, -1.0));
        this.directionLight.transform.worldMatrix = mat;

		var resource:any[] = [

            "resources/res/threeDimen/Physics/wood.jpg",
            "resources/res/threeDimen/Physics/plywood.jpg",
        ];

        Laya.loader.load(resource).then( (res:any[] )=>{
            this.onComplete(res);
        });

	}

	onComplete(res:any[]):void{
				
		//平面
		var plane = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(20, 20, 10, 10))));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		planeMat.albedoTexture = res[0];
		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		plane.meshRenderer.material = planeMat;

		var planeStaticCollider: PhysicsCollider = plane.addComponent(PhysicsCollider);
		var planeShape: BoxColliderShape = new BoxColliderShape(10, 0, 10);
		planeStaticCollider.colliderShape = planeShape;
		planeStaticCollider.friction = 2;
		planeStaticCollider.restitution = 0.3;
		Laya.timer.loop(200, this, ()=> {
			this.addSphere();
		});
	}

	addSphere(): void {
		
		var radius: number = Math.random() * 0.2 + 0.2;
		var sphere: MeshSprite3D = <MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius)));
		sphere.meshRenderer.material = new BlinnPhongMaterial();
		(sphere.meshRenderer.material as BlinnPhongMaterial).albedoTexture = Laya.Loader.getRes("resources/res/threeDimen/Physics/plywood.jpg") as Texture2D;
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		sphere.transform.position = pos;

		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
		rigidBody.ccdSweptSphereRadius = radius;
		rigidBody.ccdMotionThreshold = 0.0001;
	}

}