import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Event = Laya.Event;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import HitResult = Laya.HitResult;
import Vector2 = Laya.Vector2;
import Rigidbody3D = Laya.Rigidbody3D;
import Ray = Laya.Ray;
import Mesh = Laya.Mesh;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_BuildingBlocks extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private ray: Ray = new Ray(new Vector3(0, 0, 0), new Vector3(0, 0, 0));
	private point: Vector2 = new Vector2();
	private _outHitResult: HitResult = new HitResult();
	private hasSelectedSprite: Sprite3D;
	private hasSelectedRigidBody: Rigidbody3D;
	private ZERO = new Vector3(0, 0, 0);
	private ONE = new Vector3(1, 1, 1);
	private posX: number;
	private posY: number;
	private delX: number;
	private delY: number;

	private mat: BlinnPhongMaterial;
	private mesh1: Mesh;
	private mesh2: Mesh;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		var resource:any[] = [

            "resources/res/threeDimen/Physics/wood.jpg",
            "resources/res/threeDimen/Physics/plywood.jpg",
        ];

        Laya.loader.load(resource).then( (res:any[] )=>{
            this.onComplete(res);
        });

	}

	onComplete(res:any[]):void{	
        this.camera.transform.position = new Vector3(4.5, 6, 4.5);
		this.camera.transform.rotate(new Vector3(-30, 45, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);

        //设置平行光的方向
        var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
        mat.setForward(new Vector3(-1.0, -1.0, 1.0));
        this.directionLight.transform.worldMatrix = mat;


		var plane: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(13, 13, 10, 10))));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		planeMat.albedoTexture = res[0];

		planeMat.tilingOffset = new Vector4(2, 2, 0, 0);
		plane.meshRenderer.material = planeMat;
		plane.meshRenderer.receiveShadow = true;

		this.mesh1 = PrimitiveMesh.createBox(2, 0.33, 0.5);
		this.mesh2 = PrimitiveMesh.createBox(0.5, 0.33, 2);
		this.mat = new BlinnPhongMaterial();

		//纹理资源
		this.mat.albedoTexture = res[1];

		var rigidBody: PhysicsCollider = (<PhysicsCollider>plane.addComponent(PhysicsCollider));
		var boxShape: BoxColliderShape = new BoxColliderShape(13, 0, 13);
		rigidBody.colliderShape = boxShape;
		this.addMouseEvent();

		this.addBox();
	}

	addBox(): void {

		for (var i: number = 0; i < 8; i++) {
			this.addVerticalBox(-0.65, 0.165 + i * 0.33 * 2, 0);
			this.addVerticalBox(0, 0.165 + i * 0.33 * 2, 0);
			this.addVerticalBox(0.65, 0.165 + i * 0.33 * 2, 0);

			this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, -0.65);
			this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, 0);
			this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, 0.65);
		}
	}

	addHorizontalBox(x: number, y: number, z: number): void {
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(this.mesh1)));
		box.meshRenderer.material = this.mat;
		box.meshRenderer.castShadow = true;
		box.meshRenderer.receiveShadow = true;
		box.transform.position = new Vector3(x, y, z);
		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = (<Rigidbody3D>box.addComponent(Rigidbody3D));
		rigidBody.mass = 10;
		rigidBody.friction = 0.4;
		rigidBody.restitution = 0.2;
		var boxShape: BoxColliderShape = new BoxColliderShape(2, 0.33, 0.5);
		rigidBody.colliderShape = boxShape;
	}

	addVerticalBox(x: number, y: number, z: number): void {
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(this.mesh2)));
		box.meshRenderer.material = this.mat;
		box.meshRenderer.castShadow = true;
		box.meshRenderer.receiveShadow = true;
		box.transform.position = new Vector3(x, y, z);
		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = (<Rigidbody3D>box.addComponent(Rigidbody3D));
		rigidBody.mass = 10;
		rigidBody.friction = 0.4;
		rigidBody.restitution = 0.2;
		var boxShape: BoxColliderShape = new BoxColliderShape(0.5, 0.33, 2);
		rigidBody.colliderShape = boxShape;
	}

	addMouseEvent(): void {
		this.owner.on(Event.MOUSE_DOWN, this, this.onMouseDown);
		this.owner.on(Event.MOUSE_UP, this, this.onMouseUp);
		this.owner.on(Event.MOUSE_OUT, this, this.onMouseOut);
	}

	onMouseDown(e:Event): void {
		this.posX = this.point.x = e.target.mouseX * Index.screenWidth / Index.pageWidth;
		this.posY = this.point.y = e.target.mouseY * Index.screenHeight / Index.pageHeight;

		this.camera.viewportPointToRay(this.point, this.ray);
		this.scene.physicsSimulation.rayCast(this.ray, this._outHitResult);
		if (this._outHitResult.succeeded) {
			var collider: Rigidbody3D = <Rigidbody3D>this._outHitResult.collider;
			this.hasSelectedSprite = <Sprite3D>collider.owner;
			this.hasSelectedRigidBody = collider;
			collider.angularFactor = this.ZERO;
			collider.angularVelocity = this.ZERO;
			collider.linearFactor = this.ZERO;
			collider.linearVelocity = this.ZERO;
		}
		this.owner.on(Event.MOUSE_MOVE, this, this.onMouseMove);
	}

	onMouseMove(e:Event): void {

		this.delX = e.target.mouseX * Index.screenWidth / Index.pageWidth - this.posX;
		this.delY = e.target.mouseY * Index.screenHeight / Index.pageHeight - this.posY;
		if (this.hasSelectedSprite) {
			this.hasSelectedRigidBody.linearVelocity = new Vector3(this.delX / 4, 0, this.delY / 4);
		}
		this.posX = e.target.mouseX * Index.screenWidth / Index.pageWidth;
		this.posY = e.target.mouseY * Index.screenHeight / Index.pageHeight;
	}

	onMouseUp(e:Event): void {
		this.owner.off(Event.MOUSE_MOVE, this, this.onMouseMove);
		if (this.hasSelectedSprite) {
			this.hasSelectedRigidBody.angularFactor = this.ONE;
			this.hasSelectedRigidBody.linearFactor = this.ONE;
			this.hasSelectedSprite = null;
		}
	}

	onMouseOut(e:Event): void {
		this.owner.off(Event.MOUSE_MOVE, this, this.onMouseMove);
		if (this.hasSelectedSprite) {
			this.hasSelectedRigidBody.angularFactor = this.ONE;
			this.hasSelectedRigidBody.linearFactor = this.ONE;
			this.hasSelectedSprite = null;
		}
	}
 
}