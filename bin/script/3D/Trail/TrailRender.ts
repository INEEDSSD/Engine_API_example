import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import CameraClearFlags = Laya.CameraClearFlags;
import Color = Laya.Color;
import Sprite3D = Laya.Sprite3D;
import TrailRenderer = Laya.TrailRenderer;

const { regClass, property } = Laya;

@regClass()
export class TrailRender extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;

    private directionLight: Laya.DirectionLight;

    private trail: Sprite3D;
    private trailRenderer: TrailRenderer;
	private index: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 4, 5);
		this.camera.transform.rotate(new Vector3(-45, 0, 0), true, false);
        this.camera.clearFlag = CameraClearFlags.SolidColor;

		//设置平行光颜色
		this.directionLight = (this.scene.getChildByName("Direction Light") as DirectionLight);
		this.directionLight.color = new Color(1, 1, 1, 1);
		this.directionLight.transform.rotate(new Vector3(-Math.PI / 3, 0, 0));

		Laya.loader.load("resources/res/threeDimen/staticModel/grid/plane.lh").then( (res)=> {
			this.scene.addChild(res.create());
		});

		Laya.loader.load("resources/res/threeDimen/trail/Cube.lh").then( (res)=> {
			this.trail = this.scene.addChild(res.create());
            this.trailRenderer = this.trail.getChildAt(0).getChildAt(0).getComponent(TrailRenderer);
		});

        super.addBottomButton( ["修改时间","修改时间"] , this, [this.change, this.change]);
	}

	change(): void {
		this.index++;
		if (this.index % 2 === 1) {
			//修改时间
            this.trailRenderer.time = 10;
                
		} else {
			//修改时间
            this.trailRenderer.time = 1;
		}
	}    
 
}