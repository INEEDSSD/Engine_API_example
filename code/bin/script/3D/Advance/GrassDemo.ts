import { BaseScript } from "../../BaseScript";
import { GrassRenderManager } from "./grassDemo/GrassRenderManager";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;


const { regClass, property } = Laya;

@regClass()
export class GrassDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;
 
    constructor() {
        super();
    }

	grassManager:GrassRenderManager;
    onAwake(): void {
        super.base(this.camera);
		this.initScene();
		//渲染草
		this.grassManager = new GrassRenderManager(this.camera);
		var grasssize = this.grassManager.grassCellsize;

		for (let x = -100; x < 100; x+=grasssize) {
			for (let z = -100; z < 100; z+=grasssize) {
				this.grassManager.addGrassCell(new Vector3(x,0,z));
			}
		}

		this.grassManager.enable = true;

		Laya.timer.loop(1,this,this.update,[this.camera]);
	}
	update(camera:Camera){
		this.grassManager.update(camera);
	}

	initScene(){

		//设置相机的清除标识为天空盒(这个参数必须设置为CLEARFLAG_SKY，否则无法使用天空盒)
		this.camera.clearColor = new Laya.Color(0.5, 1.0, 0.5);
		this.camera.transform.position = new Vector3( -45.56605299366802, 7.79715240971953,9.329663960933718);

		//设置平行光的方向
		var mat: Laya.Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
        this.directionLight.transform.worldMatrix = mat;
    }

	
}