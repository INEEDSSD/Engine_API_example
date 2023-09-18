import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import ProgressBar = Laya.ProgressBar;

const { regClass, property } = Laya;

@regClass()
export class SceneLoad1 extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.ProgressBar)
    private loadingBar: ProgressBar;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
        
        Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", null, Laya.Handler.create(this, this.onLoading, null, false)).then((res)=> {

            this.loadingBar.visible = false;

            // lh/ls需要使用create()
			let scene = res.create();
			//scene.scene3D 可以获得Scene3D资源
			let scene3D = scene.scene3D;
            this.scene.addChildAt(scene3D, 0);
            
        });
        // 侦听加载失败
        Laya.loader.on(Laya.Event.ERROR, this, this.onError);

	}

    /**
   * 当报错时打印错误
   * @param err 报错信息
   */
    onError(err: string): void {
        console.log("加载失败: " + err);
    }

    /**
     * 加载时侦听
     */
    onLoading(progress: number): void {
        //接近完成加载时，让显示进度比实际进度慢一点，这是为打开场景时的自动加载预留，尤其是要打开的场景资源多，并没有完全放到预加载中，还需要再自动加载一部分时。
        if (progress > 0.92) this.loadingBar.value = 0.95;
        else
        {
            this.loadingBar.value = progress;
            console.log("加载进度: " + progress, this.loadingBar.value);
        }
    }

}