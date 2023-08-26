/*Laya.LayaEnv.beforeInit = function(config: Laya.IStageConfig) {
    //这个方法会在Laya.init前调用
    console.log("before init");
    //这里可以对config以及Laya.Config、Laya.Config3D进行自定义的修改
    Laya.Config.isAlpha =true;       
}*/

import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Camera = Laya.Camera;
import Vector3 = Laya.Vector3;
import SpriteUtils = Laya.SpriteUtils;


const { regClass, property } = Laya;

@regClass()
export class Laya3DCombineHtml extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.DirectionLightCom)
    private directionLight: Laya.DirectionLightCom;

    private div:any;

    constructor() {
        super();
    }

    onAwake(): void {
		
        //需要在 Laya.LayaEnv.beforeInit 中提前调用 Laya.Config.isAlpha =true;
        super.base(this.camera);

        this.div = document.createElement('div');
		this.div.innerHTML = '<h1 style=\'color: red;\'>此内容来源于HTML网页, 可直接在html代码中书写 - h1标签</h1>';
        this.div.style = "position:absolute;z-order:99";
		document.body.appendChild(this.div);

        if( Index.curPage )
            SpriteUtils.fitDOMElementInArea(this.div, this.box2D, Index.pagePos.x, Index.pagePos.y, this.pageWidth, this.pageHeight);

		this.camera.transform.position = (new Vector3(0, 0.5, 1));
		this.camera.transform.rotationEuler = (new Vector3(-15, 0, 0));

		this.directionLight.color = new Laya.Color(1, 1, 1, 1);

		Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then(res=>{
            this.scene.addChild(res.create());
        });
	}

    onDestroy(): void {
        document.body.removeChild(this.div as Node);
    }

}