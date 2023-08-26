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
import CylinderColliderShape = Laya.CylinderColliderShape;
import Texture2D = Laya.Texture2D;
import Rigidbody3D = Laya.Rigidbody3D;
import ConeColliderShape = Laya.ConeColliderShape;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;
import Physics3DUtils = Laya.Physics3DUtils;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_CollisionFiflter extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private plane: MeshSprite3D;
	private kinematicSphere: Sprite3D;

	private translateW: Vector3 = new Vector3(0, 0, -0.2);
	private translateS: Vector3 = new Vector3(0, 0, 0.2);
	private translateA: Vector3 = new Vector3(-0.2, 0, 0);
	private translateD: Vector3 = new Vector3(0.2, 0, 0);
	private translateQ: Vector3 = new Vector3(-0.01, 0, 0);
	private translateE: Vector3 = new Vector3(0.01, 0, 0);

	private _albedoColor: Color = new Color(1.0, 0.0, 0.0, 1.0);

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
	

		//创建平面
		this.plane = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(20, 20, 10, 10))));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		//加载纹理
		Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex:Laya.Texture2D)=> {
			planeMat.albedoTexture = tex;
		});
		//设置材质
		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		this.plane.meshRenderer.material = planeMat;
		//为平面设置盒型碰撞器
		var staticCollider: PhysicsCollider = (<PhysicsCollider>this.plane.addComponent(PhysicsCollider));
		var boxShape: BoxColliderShape = new BoxColliderShape(20, 0, 20);
		staticCollider.colliderShape = boxShape;

		this.addKinematicSphere();
		for (var i: number = 0; i < 20; i++) {
			this.addBox();
			this.addCapsule();
			this.addCone();
			this.addCylinder();
			this.addSphere();
		}
	}

	addKinematicSphere(): void {
		//创建BlinnPhong材质
		var mat2: BlinnPhongMaterial = new BlinnPhongMaterial();
		//加载纹理		
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((tex:Laya.Texture2D)=> {
			mat2.albedoTexture = tex;
		});
		mat2.albedoColor = this._albedoColor;
		//创建一个球
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
		//设置刚体的碰撞形状
		rigidBody.colliderShape = sphereShape;
		//设置刚体的质量
		rigidBody.mass = 60;
		//设置当前刚体为运动学物体,仅可通过transform属性移动物体,而非其他力相关属性。
		rigidBody.isKinematic = true;
		//设置可以与其发生碰撞的碰撞组
		rigidBody.canCollideWith = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER1 | Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER3 | Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER5;//只与自定义组135碰撞(如果多组采用位操作）

		this.kinematicSphere = sphere;
		//开启定时重复执行
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
		//随机生成盒子的位置
		var sX: number = Math.random() * 0.75 + 0.25;
		var sY: number = Math.random() * 0.75 + 0.25;
		var sZ: number = Math.random() * 0.75 + 0.25;
		//创建盒型MeshSprite3D
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(sX, sY, sZ))));
		//设置材质
		box.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res)=>{
			(box.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});
		var transform: Transform3D = box.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 16 - 8, sY / 2, Math.random() * 16 - 8);
		transform.position = pos;
		//设置欧拉旋转角
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(0, Math.random() * 360, 0);
		transform.rotationEuler = rotationEuler;
		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		//创建盒型碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(sX, sY, sZ);
		//设置刚体的碰撞形状
		rigidBody.colliderShape = boxShape;
		//设置刚体的质量
		rigidBody.mass = 10;
		//设置刚体所属的碰撞组
		rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER1;//自定义组1
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
		pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
		transform.position = pos;
		//设置欧拉旋转角
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		var rigidBody: Rigidbody3D = capsule.addComponent(Rigidbody3D);
		var sphereShape: CapsuleColliderShape = new CapsuleColliderShape(raidius, height);
		rigidBody.colliderShape = sphereShape;
		rigidBody.mass = 10;
		rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER2;//自定义组2,会跳过碰撞

	}

	addCone(): void {
		var raidius: number = Math.random() * 0.2 + 0.2;
		var height: number = Math.random() * 0.5 + 0.8;
		//创建圆锥MeshSprite3D
		var cone: MeshSprite3D = new MeshSprite3D(PrimitiveMesh.createCone(raidius, height));
		this.scene.addChild(cone);
		//设置材质
		cone.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/steel2.jpg").then((res)=>{
			(cone.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		//设置位置
		var transform: Transform3D = cone.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		transform.position = pos;

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = cone.addComponent(Rigidbody3D);
		//创建球型碰撞器
		var coneShape: ConeColliderShape = new ConeColliderShape(raidius, height);
		//设置刚体碰撞器的形状
		rigidBody.colliderShape = coneShape;
		//设置刚体碰撞器的质量
		rigidBody.mass = 10;
		rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER3;//自定义组3
	}

	addCylinder(): void {
		var raidius: number = Math.random() * 0.2 + 0.2;
		var height: number = Math.random() * 0.5 + 0.8;
		//创建圆锥MeshSprite3D
		var cylinder: MeshSprite3D = new MeshSprite3D(PrimitiveMesh.createCylinder(raidius, height));
		this.scene.addChild(cylinder);
		//设置材质
		cylinder.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/steel.jpg").then((res)=>{
			(cylinder.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});
		var transform: Transform3D = cylinder.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		transform.position = pos;
		//设置欧拉旋转角
		var rotationEuler: Vector3 = transform.rotationEuler;
		rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		transform.rotationEuler = rotationEuler;

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = cylinder.addComponent(Rigidbody3D);
		//创建球型碰撞器
		var cylinderShape: CylinderColliderShape = new CylinderColliderShape(raidius, height);
		//设置刚体碰撞器的形状
		rigidBody.colliderShape = cylinderShape;
		//设置刚体碰撞器的质量
		rigidBody.mass = 10;
		rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER4;//自定义组4
	}

	addSphere(): void {
		//随机生成半径大小
		var radius: number = Math.random() * 0.2 + 0.2;
		//创建球型MeshSprite3D
		var sphere: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(radius))));
		//设置材质
		sphere.meshRenderer.material = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res)=>{
			(sphere.meshRenderer.material as BlinnPhongMaterial).albedoTexture = res as Texture2D;
		});	
		var pos: Vector3 = sphere.transform.position;
		pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
		sphere.transform.position = pos;

		//添加刚体碰撞器
		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		//创建球型碰撞器
		var sphereShape: SphereColliderShape = new SphereColliderShape(radius);
		//设置刚体碰撞器的形状
		rigidBody.colliderShape = sphereShape;
		//设置刚体的质量
		rigidBody.mass = 10;
		rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER5;//自定义组5
	}
 
}