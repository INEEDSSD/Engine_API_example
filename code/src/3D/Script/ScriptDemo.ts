import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class ScriptDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		//添加自定义模型
		var box = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(1, 1, 1), "MOs")) as Laya.MeshSprite3D;
		//设置模型的旋转
		box.transform.rotate(new Laya.Vector3(0, 45, 0), false, false);
		//创建材质
		var material = new Laya.BlinnPhongMaterial();
		box.meshRenderer.material = material;
		//加载模型的材质贴图
		Laya.loader.load("resources/res/threeDimen/layabox.png").then((text)=> {
			
			//给box添加自定义脚本组件
			box.addComponent(BoxControlScript);
			
			//给模型添加材质
			material.albedoTexture = text;

		});
        	//4秒后删除自定义组件
		Laya.timer.once(4000, this, this.onLoop, [box]);
	}

	private onLoop(box:Laya.MeshSprite3D):void {
		console.log("移除组件");
		// 获取到组件
		var boxContro = box.getComponent(BoxControlScript);
		// 移除组件
		boxContro.destroy();
		//如不想移除组件，可设置为不启用能达到同样效果（组件_update方法将不会被更新）
		//boxContro.enabled = false;
	}
}

class BoxControlScript extends Laya.Script3D {

	private box:Laya.MeshSprite3D;
	private _rotation = new Laya.Vector3(0, 0.5, 0);
	
	constructor() {
		super();
	}
	
	/**
	 * 覆写3D对象组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
	 */
	public onAwake():void {
		//得到3D对象
		this.box = this.owner as  Laya.MeshSprite3D;
	}
	
	public onStart():void {
	}
	
	/**
	 * 覆写组件更新方法（相当于帧循环）
	 */
	public onUpdate():void {
		//所属脚本对象旋转更新
		this.box.transform.rotate(this._rotation, false, false)
	}
	
	public onDisable() {
		console.log("组件设置为不可用");
	}
}