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

	private _scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		//可以使用Laya.Scene3D.load
		Scene3D.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", Handler.create(this, (scene:Scene3D)=> {
			this._scene = (<Scene3D>this.scene.addChildAt(scene, 0));
			super.addBottomButton( ["释放显存","加载场景"] , this, [this.garbageCollection, this.loadScene] );
		}));
	}
	
	loadScene(): void {

		//也可以使用Laya.loader的方式加载，加载后根节点是Scene2D
		Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls").then((res)=> {
			let scene = res.create();
			//scene.scene3D 可以获得Scene3D资源
			let scene3D = scene.scene3D;
			this._scene = (<Scene3D>this.scene.addChildAt(scene3D, 0));
		});
	}
	
	garbageCollection(): void {
		
		if (this._scene)//_scene不为空表示场景已加载完成
		{
			this._scene.destroy();//销毁场景
			this._scene = null;
			Resource.destroyUnusedResources();//销毁无用资源(没有被场景树引用,并且没有加资源锁的)
		}

	}
 
}