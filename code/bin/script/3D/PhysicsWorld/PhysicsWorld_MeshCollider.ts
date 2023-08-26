import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import MeshColliderShape = Laya.MeshColliderShape;
import DirectionLight = Laya.DirectionLight;
import Mesh = Laya.Mesh;
import Loader = Laya.Loader;
import SphereColliderShape = Laya.SphereColliderShape;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import CapsuleColliderShape = Laya.CapsuleColliderShape;
import Color = Laya.Color;
import Texture2D = Laya.Texture2D;
import Rigidbody3D = Laya.Rigidbody3D;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Matrix4x4 = Laya.Matrix4x4;

import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_MeshCollider extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
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

		Laya.loader.load(["resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard-lizard_geo.lm", "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_diff.png", "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png"]).then(res=>{
			 this.complete()
		});
	}

	complete(): void {
		var mesh: Mesh = Loader.getRes("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard-lizard_geo.lm");
		var albedo = Loader.getTexture2D("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_diff.png");
		var normal = Loader.getTexture2D("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png");
		var mat: BlinnPhongMaterial = new BlinnPhongMaterial();
		mat.specularColor = new Color(0.5, 0.5, 0.5, 0.5);
		mat.albedoTexture = albedo;
		mat.normalTexture = normal;

		var lizard: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(mesh)));
		lizard.transform.localPosition = new Vector3(-2, 0, 0);
		lizard.transform.localScale = new Vector3(0.01, 0.01, 0.01);
		lizard.meshRenderer.material = mat;
		var lizardCollider: PhysicsCollider = lizard.addComponent(PhysicsCollider);
		var meshShape: MeshColliderShape = new MeshColliderShape();
		meshShape.mesh = mesh;
		lizardCollider.colliderShape = meshShape;
		lizardCollider.friction = 2;
		lizardCollider.restitution = 0.3;

		var lizard1: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(mesh)));
		var transform: Transform3D = lizard1.transform;
		var localPosition: Vector3 = transform.localPosition;
		var localRotationEuler: Vector3 = transform.localRotationEuler;
		var localScale: Vector3 = transform.localScale;
		localPosition.setValue(3, 0, 0);
		localRotationEuler.setValue(0, 80, 0);
		localScale.setValue(0.01, 0.01, 0.01);
		transform.localPosition = localPosition;
		transform.localRotationEuler = localRotationEuler;
		transform.localScale = localScale;

		lizard1.meshRenderer.material = mat;
		var lizardCollider1: PhysicsCollider = lizard1.addComponent(PhysicsCollider);
		var meshShape1: MeshColliderShape = new MeshColliderShape();
		meshShape1.mesh = mesh;
		lizardCollider1.colliderShape = meshShape1;
		lizardCollider1.friction = 2;
		lizardCollider1.restitution = 0.3;

		this.addBox();
		this.randomAddPhysicsSprite();
	}

	randomAddPhysicsSprite(): void {
		Laya.timer.loop(1000, this, ()=> {
			var random: number = Math.floor(Math.random() * 3) % 3;
			switch (random) {
				case 0:
					this.addBox();
					break;
				case 1:
					this.addSphere();
					break;
				case 2:
					this.addCapsule();
					break;
				default:
					break;
			}
		});
	}

	addBox(): void {
		var sX: number = Math.random() * 0.75 + 0.25;
		var sY: number = Math.random() * 0.75 + 0.25;
		var sZ: number = Math.random() * 0.75 + 0.25;
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(sX, sY, sZ))));
		box.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res)=>{
			(box.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});
		var transform: Transform3D = box.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		transform.position = pos;
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		var boxShape: BoxColliderShape = new BoxColliderShape(sX, sY, sZ);
		rigidBody.colliderShape = boxShape;
		rigidBody.mass = 10;
	}

	addSphere(): void {
		var radius: number = Math.random() * 0.2 + 0.2;
		var sphere: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius))));
		sphere.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res)=>{
			(sphere.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		sphere.transform.position = pos;

		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
	}

	addCapsule(): void {
		var raidius: number = Math.random() * 0.2 + 0.2;
		var height: number = Math.random() * 0.5 + 0.8;
		var capsule: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createCapsule(raidius, height))));
		capsule.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res)=>{
			(capsule.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		var transform: Transform3D = capsule.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		transform.position = pos;
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		var rigidBody: Rigidbody3D = capsule.addComponent(Rigidbody3D);
		var sphereShape: CapsuleColliderShape = new CapsuleColliderShape(raidius, height);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
	}

}