import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Rigidbody3D = Laya.Rigidbody3D;
import Transform3D = Laya.Transform3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import FixedConstraint = Laya.FixedConstraint;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_ConstraintFixedJoint extends BaseScript {

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

        this.camera.transform.position = new Vector3(0, 6, 9.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

        //设置平行光的方向
        var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
        mat.setForward(new Vector3(-1.0, -1.0, -1.0));
        this.directionLight.transform.worldMatrix = mat;

		this.addbox();

	}

	addbox() {
		//创建盒型MeshSprite3D
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(1, 1, 1))));
		//设置材质
		var transform: Transform3D = box.transform;
		var pos: Vector3 = transform.position;
		pos.setValue(0, 5, 0);
		transform.position = pos;
		box.meshRenderer.sharedMaterial = new BlinnPhongMaterial();

		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		//创建盒子形状碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(1, 1, 1);
		//设置盒子的碰撞形状
		rigidBody.colliderShape = boxShape;

		//设置刚体的质量
		rigidBody.mass = 10;
		rigidBody.isKinematic = true;

		//创建盒型MeshSprite3D
		var box2: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(1, 1, 1))));
		//设置材质
		var transform2: Transform3D = box2.transform;
		var pos2: Vector3 = transform2.position;
		pos2.setValue(0, 3, 0);
		transform2.position = pos2;
		box2.meshRenderer.sharedMaterial = new BlinnPhongMaterial();
		//创建刚体碰撞器
		var rigidBody2: Rigidbody3D = box2.addComponent(Rigidbody3D);
		//创建盒子形状碰撞器
		var boxShape2: BoxColliderShape = new BoxColliderShape(1, 1, 1);
		//设置盒子的碰撞形状
		rigidBody2.colliderShape = boxShape2;
		//设置刚体的质量
		rigidBody2.mass = 10;

		//漫反射贴图
		Laya.loader.load("resources/res/threeDimen/texture/layabox.png").then((tex:Laya.Texture2D)=> {
			var blinnMat:BlinnPhongMaterial = new BlinnPhongMaterial();
			blinnMat.albedoTexture = tex;
			box.meshRenderer.material = blinnMat;
			box2.meshRenderer.material = blinnMat;
		});
		

		var fixedConstraint: FixedConstraint = box.addComponent(FixedConstraint);
		fixedConstraint.anchor = new Vector3(0, 0, 0);
		fixedConstraint.connectAnchor = new Vector3(0, 2, 0);
		box.addComponent(FixedEventTest);
		fixedConstraint.setConnectRigidBody(rigidBody, rigidBody2);
	}
}

export class FixedEventTest extends Laya.Script {
	private fixedConstraint: FixedConstraint;

	onStart() {
		this.fixedConstraint = this.owner.getComponent(FixedConstraint);
		this.fixedConstraint.breakForce = 1000;
	}

	onUpdate() {
		if (this.fixedConstraint) {
			var mass = this.fixedConstraint.connectedBody.mass;
			this.fixedConstraint.connectedBody.mass = mass + 1;
		}

	}

	onJointBreak() {
		console.log("duanle");
	}
}