import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Color = Laya.Color;
import ConfigurableConstraint = Laya.ConfigurableConstraint;
import SphereColliderShape = Laya.SphereColliderShape;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Rigidbody3D = Laya.Rigidbody3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_ConfigurableJoint extends BaseScript {

	@property(Laya.Camera)
	private camera: Laya.Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Sprite3D)
	private directionLight: Laya.Sprite3D;

	constructor() {
		super();
	}

	/**
	 * 注意，只有在onStart方法中才能生效
	 */
	onStart(): void {
		super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 6, 15);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		//方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;

		//平面
		var plane: Laya.Sprite3D = this.createMeshSprite3D(PrimitiveMesh.createPlane(40, 40, 40, 40), null);
		this.scene.addChild(plane);
		plane.transform.position = new Vector3(0, -2.0, 0);
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/grass.png").then((tex: Laya.Texture2D) => {
			planeMat.albedoTexture = tex;
		});
		//设置纹理平铺和偏移
		var tilingOffset: Vector4 = planeMat.tilingOffset;
		tilingOffset.setValue(5, 5, 0, 0);
		planeMat.tilingOffset = tilingOffset;
		//设置材质
		plane.getComponent(Laya.MeshRenderer).sharedMaterial = planeMat;

		this.springTest();
		this.bounceTest();
		this.alongZAixs();
		this.freeRotate();
		this.rotateAngularX();
		this.rotateAngularPoint();
	}

	springTest(): void {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(7, 3, 0), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);
		boxARigid.isKinematic = true;

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(10, 0, 0), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);
		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, -3, 0);
		configurableJoint.connectAnchor = new Vector3(0, 0, 0);

		configurableJoint.distanceLimit = 3;

		configurableJoint.XMotion = Laya.D6Axis.eLIMITED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.angularXMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularYMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.distanceSpring = 100;

		boxBRigid.applyImpulse(new Vector3(100, 0, 0));
	}

	bounceTest(): void {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(7, 3, 3), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(7, 0, 3), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);

		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, -3, 0);
		configurableJoint.connectAnchor = new Vector3(0, 0, 0);

		configurableJoint.distanceLimit = 2;
		configurableJoint.XMotion = Laya.D6Axis.eLIMITED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.angularXMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularYMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.distanceBounciness = 0.5;

		boxBRigid.applyImpulse(new Vector3(100, 0, 0));

	}

	rotateAngularX(): void {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(-2, 3, 0), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(-2, 1, 0), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);

		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, -3, 0);
		configurableJoint.connectAnchor = new Vector3(0, 0, 0);

		configurableJoint.angularXMinLimit = -180;
		configurableJoint.angularXMaxLimit = 180;
		configurableJoint.XMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.angularXMotion = Laya.D6Axis.eFREE;
		configurableJoint.angularYMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularZMotion = Laya.D6Axis.eLOCKED;

		boxBRigid.angularVelocity = new Vector3(5, 0, 0);

	}

	freeRotate() {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(-6, 3, 0), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(-6, 1, 0), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);

		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, -1, 0);
		configurableJoint.connectAnchor = new Vector3(0, 1, 0);

		configurableJoint.XMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLOCKED;

		configurableJoint.angularXMotion = Laya.D6Axis.eFREE;
		configurableJoint.angularYMotion = Laya.D6Axis.eFREE;
		configurableJoint.angularZMotion = Laya.D6Axis.eFREE;

		boxBRigid.angularVelocity = new Vector3(2, 2, 2);
		boxBRigid.angularVelocity = new Vector3(20, 2, 10);
	}

	rotateAngularPoint(): void {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(0, 10, 0), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(6, 10, 0), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);

		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, 0, 0);
		configurableJoint.connectAnchor = new Vector3(-6, 0, 0);

		configurableJoint.AngleZLimit = 180;

		configurableJoint.XMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularXMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularYMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularZMotion = Laya.D6Axis.eLIMITED;

	}

	alongZAixs(): void {
		var boxA: Laya.Sprite3D = this.addRigidBodySphere(new Vector3(2, 3, 0), 1);
		var boxARigid: Rigidbody3D = boxA.getComponent(Rigidbody3D);

		var boxB: Laya.Sprite3D = this.addRigidBodyBox(new Vector3(2, 0, 0), 1);
		(<BlinnPhongMaterial>boxB.getComponent(Laya.MeshRenderer).sharedMaterial).albedoColor = new Color(1, 0, 0, 1);
		var boxBRigid: Rigidbody3D = boxB.getComponent(Rigidbody3D);

		var configurableJoint: ConfigurableConstraint = boxA.addComponent(ConfigurableConstraint);
		configurableJoint.ownBody = boxARigid;
		configurableJoint.connectedBody = boxBRigid;
		configurableJoint.anchor = new Vector3(0, 0, 0);
		configurableJoint.connectAnchor = new Vector3(0, 3, 0);

		configurableJoint.distanceLimit = 4;

		configurableJoint.XMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.YMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.ZMotion = Laya.D6Axis.eLIMITED;

		configurableJoint.angularXMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularYMotion = Laya.D6Axis.eLOCKED;
		configurableJoint.angularZMotion = Laya.D6Axis.eLOCKED;

		boxBRigid.linearVelocity = new Vector3(0.0, 0.0, 4);

	}

	addRigidBodyBox(pos: Vector3, scale: number): Laya.Sprite3D {
		//创建盒型MeshSprite3D
		var box: Laya.Sprite3D = this.createMeshSprite3D(PrimitiveMesh.createBox(scale, scale, scale), null);
		this.scene.addChild(box);
		box.transform.position = pos;
		//box.addComponent(TriggerCollisionScript);

		var mat: BlinnPhongMaterial = new BlinnPhongMaterial();
		box.getComponent(Laya.MeshRenderer).sharedMaterial = mat;

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		//创建盒子形状碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(scale, scale, scale);
		//设置盒子的碰撞形状
		rigidBody.colliderShape = boxShape;
		//设置刚体的质量
		rigidBody.mass = 1;
		//物理碰撞体设置摩擦力
		rigidBody.friction = 0.5;
		//物理碰撞体设置弹力
		rigidBody.restitution = 10.0;
		return box;
	}

	addRigidBodySphere(pos: Vector3, scale: number): Laya.Sprite3D {
		//创建盒型MeshSprite3D
		var sphere: Laya.Sprite3D = this.createMeshSprite3D(PrimitiveMesh.createSphere(0.2), null);
		this.scene.addChild(sphere);
		sphere.transform.position = pos;

		var mat: BlinnPhongMaterial = new BlinnPhongMaterial();
		mat.albedoColor = new Color(0, 1, 0, 1);
		sphere.getComponent(Laya.MeshRenderer).sharedMaterial = mat;

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = sphere.addComponent(Rigidbody3D);
		//创建盒子形状碰撞器
		var boxShape: SphereColliderShape = new SphereColliderShape(0.2);
		//设置盒子的碰撞形状
		rigidBody.colliderShape = boxShape;
		//设置刚体的质量
		rigidBody.mass = 1;
		//物理碰撞体设置摩擦力
		rigidBody.friction = 0.5;
		//物理碰撞体设置弹力
		rigidBody.restitution = 0.0;
		rigidBody.isKinematic = true;
		return sphere;
	}

}