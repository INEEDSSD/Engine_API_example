import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Sprite3D = Laya.Sprite3D;
import DirectionLight = Laya.DirectionLight;
import InputManager = Laya.InputManager;
import Color = Laya.Color;
import SphereColliderShape = Laya.SphereColliderShape;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import CapsuleColliderShape = Laya.CapsuleColliderShape;
import Rigidbody3D = Laya.Rigidbody3D;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;

import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_Kinematic extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private kinematicSphere: Sprite3D;
	private translateW: Vector3 = new Vector3(0, 0, -0.2);
	private translateS: Vector3 = new Vector3(0, 0, 0.2);
	private translateA: Vector3 = new Vector3(-0.2, 0, 0);
	private translateD: Vector3 = new Vector3(0.2, 0, 0);
	private translateQ: Vector3 = new Vector3(-0.01, 0, 0);
	private translateE: Vector3 = new Vector3(0.01, 0, 0);
	private plane: MeshSprite3D;

	private mat1: BlinnPhongMaterial;
	private mat3: BlinnPhongMaterial;

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

		this.mat1 = new BlinnPhongMaterial();
		this.mat3 = new BlinnPhongMaterial();
		//加载纹理资源
		Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((tex:Laya.Texture2D)=> {
			this.mat1.albedoTexture = tex;
		});

		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex:Laya.Texture2D)=> {
			this.mat3.albedoTexture = tex;
		});
		this.plane = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(20, 20, 10, 10))));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex:Laya.Texture2D)=> {
			planeMat.albedoTexture = tex;
		});
		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		this.plane.meshRenderer.material = planeMat;

		var rigidBody: PhysicsCollider = (<PhysicsCollider>this.plane.addComponent(PhysicsCollider));
		var boxShape: BoxColliderShape = new BoxColliderShape(20, 0, 20);
		rigidBody.colliderShape = boxShape;

		for (var i: number = 0; i < 60; i++) {
			this.addBox();
			this.addCapsule();
		}

		this.addKinematicSphere();
	}

	addKinematicSphere(): void {
		var mat2: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((tex:Laya.Texture2D)=> {
			mat2.albedoTexture = tex;
		});
		var albedoColor: Color = mat2.albedoColor;
		albedoColor.setValue(1.0, 0.0, 0.0, 1.0);
		mat2.albedoColor = albedoColor;

		var radius: number = 0.8;
		var sphere: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius))));
		sphere.meshRenderer.material = mat2;
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(0, 0.8, 0);
		sphere.transform.position = pos;
		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		//创建球型碰撞器
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		//设置刚体碰撞器的形状为球型
		rigidBody.colliderShape = sphereShape;
		//设置刚体为Kinematic，仅可通过transform属性移动物体
		rigidBody.isKinematic = true;
		//rigidBody.detectCollisions = false;

		this.kinematicSphere = sphere;
		Laya.timer.frameLoop(1, this, this.onKeyDown);
	}

	onKeyDown(): void {
		InputManager.hasKeyDown(87) && this.kinematicSphere.transform.translate(this.translateW);//W
		InputManager.hasKeyDown(83) && this.kinematicSphere.transform.translate(this.translateS);//S
		InputManager.hasKeyDown(65) && this.kinematicSphere.transform.translate(this.translateA);//A
		InputManager.hasKeyDown(68) && this.kinematicSphere.transform.translate(this.translateD);//D
		InputManager.hasKeyDown(81) && this.plane.transform.translate(this.translateQ);//Q
		InputManager.hasKeyDown(69) && this.plane.transform.translate(this.translateE);//E
	}

	addBox(): void {
		var sX: number = Math.random() * 0.75 + 0.25;
		var sY: number = Math.random() * 0.75 + 0.25;
		var sZ: number = Math.random() * 0.75 + 0.25;
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(sX, sY, sZ))));
		box.meshRenderer.material = this.mat1;
		var transform: Transform3D = box.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
		transform.position = pos;
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		var boxShape: BoxColliderShape = new BoxColliderShape(sX, sY, sZ);
		rigidBody.colliderShape = boxShape;
		rigidBody.mass = 10;
	}

	addCapsule(): void {
		var raidius: number = Math.random() * 0.2 + 0.2;
		var height: number = Math.random() * 0.5 + 0.8;
		var capsule: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createCapsule(raidius, height))));
		capsule.meshRenderer.material = this.mat3;
		var transform: Transform3D = capsule.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
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