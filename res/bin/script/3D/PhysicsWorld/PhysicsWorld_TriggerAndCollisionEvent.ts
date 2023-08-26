import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Sprite3D = Laya.Sprite3D;
import DirectionLight = Laya.DirectionLight;
import Color = Laya.Color;
import InputManager = Laya.InputManager;
import SphereColliderShape = Laya.SphereColliderShape;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import CapsuleColliderShape = Laya.CapsuleColliderShape;
import Texture2D = Laya.Texture2D;
import Rigidbody3D = Laya.Rigidbody3D;
import Collision = Laya.Collision;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;
import PhysicsComponent = Laya.PhysicsComponent;
import MeshRenderer = Laya.MeshRenderer;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_TriggerAndCollisionEvent extends BaseScript {

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

		//创建地面
		this.plane = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(20, 20, 10, 10))));
		//创建BlinnPhong材质
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		//加载纹理
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res)=>{
			(planeMat as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		//设置材质
		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		this.plane.meshRenderer.material = planeMat;

		//创建物理碰撞
		var staticCollider: PhysicsCollider = (<PhysicsCollider>this.plane.addComponent(PhysicsCollider));
		//创建盒型碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(20, 0, 20);
		//为物理碰撞设置碰撞形状
		staticCollider.colliderShape = boxShape;
		//创建运动学物体
		this.addKinematicSphere();
		for (var i: number = 0; i < 30; i++) {
			this.addBoxAndTrigger();
			this.addCapsuleCollision();
		}
	}

	addKinematicSphere(): void {
		//创建BlinnPhong材质
		var mat2: BlinnPhongMaterial = new BlinnPhongMaterial();
		//加载纹理
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res)=>{
			(mat2 as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		//设置材质反照率颜色
		mat2.albedoColor = new Color(1.0, 0.0, 0.0, 1.0);

		//创建球型MeshSprite3D
		var radius: number = 0.8;
		var sphere: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius))));
		sphere.meshRenderer.material = mat2;
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(0, 0.8, 0);
		sphere.transform.position = pos;

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		//创建球形碰撞器
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		//设置刚体碰撞器的碰撞形状为球形
		rigidBody.colliderShape = sphereShape;
		//设置刚体的质量
		rigidBody.mass = 60;
		//设置刚体为运动学，如果为true仅可通过transform属性移动物体,而非其他力相关属性。
		rigidBody.isKinematic = true;

		this.kinematicSphere = sphere;
		//开始始终循环，定时重复执行(基于帧率)，第一个参数为间隔帧数。
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

	addBoxAndTrigger(): void {
		//创建BlinnPhong材质
		var mat1: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res)=>{
			(mat1 as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		//设置反照率颜色
		mat1.albedoColor = new Color(1.0, 1.0, 1.0, 1.0);

		//随机生成坐标
		var sX: number = Math.random() * 0.75 + 0.25;
		var sY: number = Math.random() * 0.75 + 0.25;
		var sZ: number = Math.random() * 0.75 + 0.25;
		//创建盒型MeshSprite3D
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(sX, sY, sZ))));
		//设置材质
		box.meshRenderer.material = mat1;

		var transform: Transform3D = box.transform;
		//设置位置
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 16 - 8, sY / 2, Math.random() * 16 - 8);
		transform.position = pos;
		//设置欧拉角
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(0, Math.random() * 360, 0);
		transform.rotationEuler = rotationEuler;

		//创建物理碰撞器
		var staticCollider: PhysicsCollider = box.addComponent(PhysicsCollider);//StaticCollider可与非Kinematic类型RigidBody3D产生碰撞
		//创建盒型碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(sX, sY, sZ);
		staticCollider.colliderShape = boxShape;
		//标记为触发器,取消物理反馈
		staticCollider.isTrigger = true;
		//添加触发器组件脚本
		var script: TriggerCollisionScript = box.addComponent(TriggerCollisionScript);
		script.kinematicSprite = this.kinematicSphere;
	}

	addCapsuleCollision(): void {
		var mat3: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res)=>{
			(mat3 as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	

		var raidius: number = Math.random() * 0.2 + 0.2;
		var height: number = Math.random() * 0.5 + 0.8;
		var capsule: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createCapsule(raidius, height))));
		capsule.meshRenderer.material = mat3;

		var transform: Transform3D = capsule.transform;
		//设置位置
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
		transform.position = pos;
		//设置欧拉角
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		var rigidBody: Rigidbody3D = capsule.addComponent(Rigidbody3D);//Rigidbody3D可与StaticCollider和RigidBody3D产生碰撞
		var sphereShape: CapsuleColliderShape = new CapsuleColliderShape(raidius, height);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
		var script: TriggerCollisionScript = capsule.addComponent(TriggerCollisionScript);
		script.kinematicSprite = this.kinematicSphere;

	}

	addSphere(): void {
		var mat2: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res)=>{
			(mat2 as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	

		var radius: number = Math.random() * 0.2 + 0.2;
		var sphere: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius))));
		sphere.meshRenderer.material = mat2;
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		sphere.transform.position = pos;

		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
	}
}

class TriggerCollisionScript extends Laya.Script {
	kinematicSprite: Sprite3D;

	constructor() {
		super();


	}

	//开始触发时执行
	onTriggerEnter(other: PhysicsComponent): void {
		((<BlinnPhongMaterial>((<MeshRenderer>((<MeshSprite3D>this.owner)).meshRenderer)).sharedMaterial)).albedoColor = new Color(0.0, 1.0, 0.0, 1.0);
	}

	//持续触发时执行
	onTriggerStay(other: PhysicsComponent): void {
	}

	//结束触发时执行
	onTriggerExit(other: PhysicsComponent): void {
		((<BlinnPhongMaterial>((<MeshRenderer>((<MeshSprite3D>this.owner)).meshRenderer)).sharedMaterial)).albedoColor = new Color(1.0, 1.0, 1.0, 1.0);
	}

	//开始碰撞时执行
	onCollisionEnter(collision: Collision): void {
		if (collision.other.owner === this.kinematicSprite)
			((<BlinnPhongMaterial>((<MeshRenderer>((<MeshSprite3D>this.owner)).meshRenderer)).sharedMaterial)).albedoColor = new Color(0.0, 0.0, 0.0, 1.0);
	}

	//持续碰撞时执行
	onCollisionStay(collision: Collision): void {
	}

	//结束碰撞时执行
	onCollisionExit(collision: Collision): void {
	}

}
