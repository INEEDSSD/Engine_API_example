import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class PostProcessBloom extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
        
    }

    onAwake(): void {
        super.base(this.camera);
        
	}

}