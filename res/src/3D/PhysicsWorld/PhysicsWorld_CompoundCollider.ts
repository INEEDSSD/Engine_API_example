import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import SphereColliderShape = Laya.SphereColliderShape;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import CompoundColliderShape = Laya.CompoundColliderShape;
import Rigidbody3D = Laya.Rigidbody3D;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_CompoundCollider extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

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

		var plane: MeshSprite3D = <MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(20, 20, 20, 10)));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex:Laya.Texture2D)=> {
			planeMat.albedoTexture = tex;
		});
		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		plane.meshRenderer.material = planeMat;
		plane.meshRenderer.receiveShadow = true;
		var staticCollider: PhysicsCollider = <PhysicsCollider>plane.addComponent(PhysicsCollider);
		var planeShape: BoxColliderShape = new BoxColliderShape(13, 0, 13);
		staticCollider.colliderShape = planeShape;
		staticCollider.friction = 2;

		this.randomAddPhysicsSprite();

	}

	randomAddPhysicsSprite(): void {
		Laya.timer.loop(1000, this, ()=> {
			var random: number = Math.floor(Math.random() * 2) % 2;
			switch (random) {
				case 0:
					this.addTable();
					break;
				case 1:
					this.addObject();
					break;
				default:
					break;
			}
		});
	}

	addTable(): void {
		var mat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex:Laya.Texture2D)=> {
			mat.albedoTexture = tex;
		});
		mat.shininess = 1;

		Laya.loader.load("resources/res/threeDimen/Physics/table.lm").then((res)=> {
			var table: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(res)));
			table.meshRenderer.material = mat;
			var transform: Transform3D = table.transform;
			var pos: Vector3 = transform.position;
			pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
			transform.position = pos;
			var rotationEuler: Vector3 = transform.rotationEuler;
			rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
			transform.rotationEuler = rotationEuler;
			var scale: Vector3 = transform.getWorldLossyScale();
			scale.setValue(3, 3, 3);
			transform.setWorldLossyScale(scale);


			var rigidBody: Rigidbody3D = (<Rigidbody3D>table.addComponent(Rigidbody3D));
			rigidBody.mass = 10;
			rigidBody.friction = 1;

			var compoundShape: CompoundColliderShape = new CompoundColliderShape();

			var boxShape: BoxColliderShape = new BoxColliderShape(0.5, 0.4, 0.045);
			var localOffset: Vector3 = boxShape.localOffset;
			localOffset.setValue(0, 0, 0.125);
			boxShape.localOffset = localOffset;
			compoundShape.addChildShape(boxShape);

			var boxShape1: BoxColliderShape = new BoxColliderShape(0.1, 0.1, 0.3);
			boxShape1.localOffset = new Vector3(-0.2, -0.148, -0.048);
			compoundShape.addChildShape(boxShape1);

			var boxShape2: BoxColliderShape = new BoxColliderShape(0.1, 0.1, 0.3);
			var localOffset2: Vector3 = boxShape2.localOffset;
			localOffset2.setValue(0.2, -0.148, -0.048);
			boxShape2.localOffset = localOffset2;
			compoundShape.addChildShape(boxShape2);

			var boxShape3: BoxColliderShape = new BoxColliderShape(0.1, 0.1, 0.3);
			var localOffset3: Vector3 = boxShape3.localOffset;
			localOffset3.setValue(-0.2, 0.153, -0.048);
			boxShape3.localOffset = localOffset3;
			compoundShape.addChildShape(boxShape3);

			var boxShape4: BoxColliderShape = new BoxColliderShape(0.1, 0.1, 0.3);
			var localOffset4: Vector3 = boxShape4.localOffset;
			localOffset4.setValue(0.2, 0.153, -0.048);
			boxShape4.localOffset = localOffset3;
			compoundShape.addChildShape(boxShape4);

			rigidBody.colliderShape = compoundShape;
		});
	}

	addObject(): void {
		var mat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((tex:Laya.Texture2D)=> {
			mat.albedoTexture = tex;
		});
		Laya.loader.load("resources/res/threeDimen/Physics/object.lm").then((res)=> {

			var object: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(res)));
			var transform: Transform3D = object.transform;
			var pos: Vector3 = transform.position;
			pos.setValue(Math.random() * 4 - 2, 5, Math.random() * 4 - 2);
			transform.position = pos;
			var rotationEuler: Vector3 = transform.rotationEuler;
			rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
			transform.rotationEuler = rotationEuler;
			var scale: Vector3 = transform.getWorldLossyScale();
			scale.setValue(0.01, 0.01, 0.01);
			transform.setWorldLossyScale(scale);
			object.meshRenderer.material = mat;

			var rigidBody: Rigidbody3D = (<Rigidbody3D>object.addComponent(Rigidbody3D));
			rigidBody.mass = 3;
			rigidBody.friction = 0.3;

			var compoundShape: CompoundColliderShape = new CompoundColliderShape();

			var boxShape: BoxColliderShape = new BoxColliderShape(40, 40, 40);
			var boxLocalOffset: Vector3 = boxShape.localOffset;
			boxLocalOffset.setValue(0, 0, -20);
			boxShape.localOffset = boxLocalOffset;
			compoundShape.addChildShape(boxShape);

			var sphereShape: SphereColliderShape = new SphereColliderShape(25);
			var sphereLocalOffset: Vector3 = sphereShape.localOffset;
			sphereLocalOffset.setValue(0, 0, 24);
			sphereShape.localOffset = sphereLocalOffset;
			compoundShape.addChildShape(sphereShape);

			rigidBody.colliderShape = compoundShape;
		});

	}
 
}