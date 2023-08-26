import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class PostProcessAO extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private postProcess:Laya.PostProcess = null;

    constructor() {
        super();        
    }

    onAwake(): void {

        super.base(this.camera);

        let postProcess = new Laya.PostProcess();
		postProcess  = this.camera.postProcess;
		this.postProcess = postProcess;

        super.addBottomButton( ["关闭AO","开启AO"] , this, [this.setPostProcess, this.setPostProcess] );
	}



	private setPostProcess(): void {

		var enableHDR = !!this.camera.postProcess;
		if (enableHDR) {
			this.camera.postProcess = null;
		}
		else {
			this.camera.postProcess = this.postProcess;
		}
	}
}