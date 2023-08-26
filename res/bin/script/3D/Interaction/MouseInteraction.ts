import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Event = Laya.Event;
import Mesh = Laya.Mesh;
import Text = Laya.Text;
import Quaternion = Laya.Quaternion;
import HitResult = Laya.HitResult;
import Vector2 = Laya.Vector2;
import Ray = Laya.Ray;
import MeshFilter = Laya.MeshFilter;
import MeshColliderShape = Laya.MeshColliderShape;
import PhysicsCollider = Laya.PhysicsCollider;
import Loader = Laya.Loader;
import Label = Laya.Label;

const { regClass, property } = Laya;

@regClass()
export class MouseInteraction extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    private _ray: Ray;
	private _outHitResult: HitResult = new HitResult();
	private point: Vector2 = new Vector2();
	private text: Text = new Text();
	private tmpVector: Vector3 = new Vector3(0, 0, 0);
	private infoText: Label;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 0.7, 5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

		//批量预加载资源
		Laya.loader.load(["resources/res/threeDimen/staticModel/grid/plane.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"]).then(()=>{
			this.onComplete();
		})

	}

	private onComplete(): void {
		//加载地面
		var grid: Sprite3D = (<Sprite3D>this.scene.addChild(Loader.createNodes("resources/res/threeDimen/staticModel/grid/plane.lh")));
		//指定精灵的图层
		grid.layer = 10;
		//加载静态小猴子
		var staticLayaMonkey: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(Loader.getRes("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm"))));
		//设置材质
		staticLayaMonkey.meshRenderer.material = Loader.getRes("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat");
		//设置位置
		staticLayaMonkey.transform.position = new Vector3(0, 0, 0.5);
		//设置缩放
		staticLayaMonkey.transform.localScale = new Vector3(0.3, 0.3, 0.3);
		//设置旋转
		staticLayaMonkey.transform.rotation = new Quaternion(0.7071068, 0, 0, -0.7071067);

		//克隆sprite3d
		this.tmpVector.setValue(0.0, 0, 0.5);
		var layaMonkey_clone1: MeshSprite3D = (<MeshSprite3D>Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector));
		var layaMonkey_clone2: MeshSprite3D = (<MeshSprite3D>Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector));
		var layaMonkey_clone3: MeshSprite3D = (<MeshSprite3D>Sprite3D.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector));
		//设置精灵名字
		staticLayaMonkey.name = "大熊";
		layaMonkey_clone1.name = "二熊";
		layaMonkey_clone2.name = "三熊";
		layaMonkey_clone3.name = "小熊";

		//平移
		this.tmpVector.setValue(1.5, 0, 0.0);
		layaMonkey_clone1.transform.translate(this.tmpVector);
		this.tmpVector.setValue(-1.5, 0, 0.0);
		layaMonkey_clone2.transform.translate(this.tmpVector);
		this.tmpVector.setValue(2.5, 0, 0.0);
		layaMonkey_clone3.transform.translate(this.tmpVector);
		//旋转
		this.tmpVector.setValue(0, 60, 0);
		layaMonkey_clone2.transform.rotate(this.tmpVector, false, false);
		//缩放
		this.tmpVector.setValue(0.1, 0.1, 0.1);
		var scale: Vector3 = new Vector3(0.1, 0.1, 0.1);
		layaMonkey_clone3.transform.localScale = this.tmpVector;

		//给模型添加碰撞组件
		var meshCollider: PhysicsCollider = staticLayaMonkey.addComponent(PhysicsCollider);
		//创建网格碰撞器
		var meshShape: MeshColliderShape = new MeshColliderShape();
		//获取模型的mesh
		meshShape.mesh = (<Mesh>staticLayaMonkey.meshFilter.sharedMesh);
		//设置模型的碰撞形状
		meshCollider.colliderShape = meshShape;

		var meshCollider1: PhysicsCollider = layaMonkey_clone1.addComponent(PhysicsCollider);
		var meshShape1: MeshColliderShape = new MeshColliderShape();
		meshShape1.mesh = (<Mesh>layaMonkey_clone1.getComponent(MeshFilter).sharedMesh);
		meshCollider1.colliderShape = meshShape1;

		var meshCollider2: PhysicsCollider = layaMonkey_clone2.addComponent(PhysicsCollider);
		var meshShape2: MeshColliderShape = new MeshColliderShape();
		meshShape2.mesh = (<Mesh>layaMonkey_clone2.getComponent(MeshFilter).sharedMesh);
		meshCollider2.colliderShape = meshShape2;

		var meshCollider3: PhysicsCollider = layaMonkey_clone3.addComponent(PhysicsCollider);
		var meshShape3: MeshColliderShape = new MeshColliderShape();
		meshShape3.mesh = (<Mesh>layaMonkey_clone3.getComponent(MeshFilter).sharedMesh);
		meshCollider3.colliderShape = meshShape3;

		//设置文本显示框位置
		this.text.y = 50;

		//射线初始化（必须初始化）
		this._ray = new Ray(new Vector3(0, 0, 0), new Vector3(0, 0, 0));
		//添加鼠标事件
		this.addMouseEvent();

		//显示文本显示框
		this.text.name = "text";
		this.text.overflow = Text.HIDDEN;
		this.text.color = "#FFFFFF";
		this.text.font = "Impact";
		this.text.fontSize = 20;
		this.text.x = this.pageWidth / 2 - 60;
		this.owner.addChild(this.text);

		staticLayaMonkey.addComponent(SceneScript);
		layaMonkey_clone1.addComponent(SceneScript);
		layaMonkey_clone2.addComponent(SceneScript);
		layaMonkey_clone3.addComponent(SceneScript);

		//设置操作提示框
		this.infoText = new Laya.Label();
		this.infoText.x = this.pageWidth / 2;
		this.infoText.y = 10;
		this.infoText.width = this.pageWidth;
		this.infoText.anchorX = 0.5;
		this.infoText.align = "center";
		this.infoText.text = "点击每个对象";
		this.infoText.overflow = Laya.Text.HIDDEN;
		this.infoText.color = "#FFFFFF";
		this.infoText.font = "Impact";
		this.infoText.fontSize = 25;
		this.owner.addChild(this.infoText);		

	}

	private addMouseEvent(): void {
		//鼠标事件监听
		this.owner.on(Event.MOUSE_DOWN, this, this.onStageMouseDown);
	}

	onStageMouseDown(e:Event): void {

		this.point.x = e.target.mouseX;
		this.point.y = e.target.mouseY;

		if( Index.curPage )
        {
            this.point.x = this.point.x * Index.screenWidth / Index.pageWidth;
            this.point.y = this.point.y * Index.screenHeight / Index.pageHeight;
        }
        else
        {
        }

		let point1 = new Laya.Point(this.point.x,this.point.y);
		console.log(e.target.mouseX,e.target.mouseY);
		// point1 = Index.curPage.localToGlobal(point1);
		this.point.x = point1.x;
		this.point.y = point1.y;


		//产生射线
		this.camera.viewportPointToRay(this.point, this._ray);
		//拿到射线碰撞的物体
		this.scene.physicsSimulation.rayCast(this._ray, this._outHitResult);
		//如果碰撞到物体
		if (this._outHitResult.succeeded) {
			//删除碰撞到的物体
			this.text.text = "碰撞到了" + this._outHitResult.collider.owner.name;
			console.log("碰撞到物体！！");
		}
	}
}


class SceneScript extends Laya.Script {
	private meshSprite: MeshSprite3D;
	private text: Laya.Text;
	private _albedoColor: Laya.Color = new Laya.Color(0.0, 0.0, 0.0, 1.0);

	constructor() {
		super();
	}

	onAwake(): void {
		this.meshSprite = (<MeshSprite3D>this.owner);
		this.text = (<Laya.Text>this.owner.getChildByName("text"));
	}

	/**
	 * 覆写组件更新方法（相当于帧循环）
	 */
	onUpdate(): void {
	}

	//物体必须拥有碰撞组件（Collider）
	//当被鼠标点击
	onMouseDown(): void {
		this.text.text = "碰撞到了" + this.owner.name;
		//从父容器销毁我自己
		//box.removeSelf();
	}

	//当产生碰撞
	onCollisionEnter(collision: Laya.Collision): void {
		((<BlinnPhongMaterial>this.meshSprite.meshRenderer.sharedMaterial)).albedoColor = this._albedoColor;
		// box.removeSelf();
	}
}
