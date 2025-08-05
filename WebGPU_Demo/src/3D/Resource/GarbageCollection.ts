import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Handler = Laya.Handler;
import Resource = Laya.Resource;
import Camera = Laya.Camera;

const { regClass, property } = Laya;

@regClass()
export class GarbageCollection extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;

	private prefab: Laya.Sprite3D;

	constructor() {
		super();
	}

	onAwake(): void {
		super.base(this.camera);
		//可以使用Laya.Sprite3D.load
		Laya.Sprite3D.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeScene.lh", Handler.create(this, (prefab: Laya.Sprite3D) => {
			this.prefab = this.scene.addChildAt(prefab, 0);
			super.addBottomButton(["释放显存", "加载场景"], this, [this.garbageCollection, this.loadScene]);
		}));
	}

	loadScene(): void {
		//也可以使用Laya.loader的方式加载，加载后根节点是Scene2D
		Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeScene.lh").then((res) => {
			let prefab = res.create();
			this.prefab = this.scene.addChildAt(prefab, 0);
		});
	}

	garbageCollection(): void {
		//prefab不为空表示场景已加载完成
		if (this.prefab) {
			this.prefab.destroy();//销毁场景
			this.prefab = null;
			Resource.destroyUnusedResources();//销毁无用资源(没有被场景树引用,并且没有加资源锁的)
		}

	}

}