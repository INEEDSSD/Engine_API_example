import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class ReflectionProbe extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    
    constructor() {
        super();
    }
	
    onAwake(): void {
		
        super.base(this.camera);
		
	}
}