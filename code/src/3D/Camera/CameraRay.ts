import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Texture2D = Laya.Texture2D;
import Event = Laya.Event;
import Rigidbody3D = Laya.Rigidbody3D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import BoxColliderShape = Laya.BoxColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Vector4 = Laya.Vector4;
import Vector2 = Laya.Vector2;
import HitResult = Laya.HitResult;
import Ray = Laya.Ray;

const { regClass, property } = Laya;

@regClass()
export class CameraRay extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private _ray: Ray;
	private outs: HitResult[] = [];
	private point: Vector2 = new Vector2();

	private _forward: Vector3 = new Vector3(-1.0, -1.0, -1.0);
	private _tilingOffset: Vector4 = new Vector4(10, 10, 0, 0);

	private tmpVector: Vector3 = new Vector3(0, 0, 0);
	private tmpVector2: Vector3 = new Vector3(0, 0, 0);

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		super.setCameraDirectionLight(this.camera, this.scene.getChildByName("Direction Light") as DirectionLight);

		//平面
		var plane: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createPlane(10, 10, 10, 10))));
		var planeMat: BlinnPhongMaterial = new BlinnPhongMaterial();
		Laya.loader.load("resources/res/threeDimen/Physics/grass.png").then((tex: Texture2D) => {
			planeMat.albedoTexture = tex;
		});
		//设置纹理平铺和偏移
		planeMat.tilingOffset = this._tilingOffset;
		//设置材质
		plane.meshRenderer.material = planeMat;

		//平面添加物理碰撞体组件
		var planeStaticCollider: PhysicsCollider = plane.addComponent(PhysicsCollider);
		//创建盒子形状碰撞器
		var planeShape: BoxColliderShape = new BoxColliderShape(10, 0, 10);
		//物理碰撞体设置形状
		planeStaticCollider.colliderShape = planeShape;
		//物理碰撞体设置摩擦力
		planeStaticCollider.friction = 2;
		//物理碰撞体设置弹力
		planeStaticCollider.restitution = 0.3;
		//射线初始化（必须初始化）
		this._ray = new Ray(new Vector3(0, 0, 0), new Vector3(0, 0, 0));

		this.owner.on( Event.MOUSE_DOWN, this, this.onMouseDown );
	}

	addBoxXYZ(x: number, y: number, z: number): void {

		//随机生成坐标值
		var sX: number = Math.random() * 0.5;
		var sY: number = Math.random() * 0.5;
		var sZ: number = Math.random() * 0.5;
		//创建盒型MeshSprite3D
		var box: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(sX, sY, sZ))));
		this.tmpVector.setValue(x, y, z);
		box.transform.position = this.tmpVector;
		//设置欧拉角
		this.tmpVector2.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
		box.transform.rotationEuler = this.tmpVector2;
		//创建刚体碰撞器
		var rigidBody: Rigidbody3D = box.addComponent(Rigidbody3D);
		//创建盒子形状碰撞器
		var boxShape: BoxColliderShape = new BoxColliderShape(sX, sY, sZ);
		//设置盒子的碰撞形状
		rigidBody.colliderShape = boxShape;
		//设置刚体的质量
		rigidBody.mass = 10;
	}

	onMouseDown(e:Laya.Event): void {

		if( Index.curPage )
		{
			this.point.x = e.target.mouseX * Index.screenWidth / Index.pageWidth;
			this.point.y = e.target.mouseY * Index.screenHeight / Index.pageHeight;
		}
		else
		{
			this.point.x = e.target.mouseX ;
			this.point.y = e.target.mouseY ;			
		}

		console.log(e.target.mouseX,e.target.mouseY);
		//产生射线
		this.camera.viewportPointToRay(this.point, this._ray);
		//拿到射线碰撞的物体
		this.scene.physicsSimulation.rayCastAll(this._ray, this.outs);

		//如果碰撞到物体
		if (this.outs.length != 0) {

			for (var i: number = 0; i < this.outs.length; i++) {
				//在射线击中的位置添加一个立方体
				this.addBoxXYZ(this.outs[i].point.x, this.outs[i].point.y, this.outs[i].point.z);
			}
		}
	}
}