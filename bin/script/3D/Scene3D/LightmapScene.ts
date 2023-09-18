import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Lightmap = Laya.Lightmap;

const { regClass, property } = Laya;

@regClass()
export class LightmapScene extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private lightMaps: Lightmap[];
	
    constructor() {
        super();
    }

    //请进入场景查看光照贴图的设置 resources\res\threeDimen\LightmapScene\Scene.ls
    //使用光照贴图，前提是在场景中先创建灯光设置，烘焙出光照贴图
    onAwake(): void {

        super.base(this.camera);

        this.lightMaps = this.scene.lightmaps;
        super.addBottomButton( ["取消光照贴图","显示光照贴图","加载光照贴图"] , this, [this.setLightmapOff, this.setLightmapOn, this.loadLightmap]);
                
    }

	setLightmapOff() {
                
        this.scene.lightmaps = null;
	}

	setLightmapOn() {

        this.scene.lightmaps = this.lightMaps;
		// Laya.loader.load("resources/res/threeDimen/LightmapScene/Scene/diffuse0.png").then((res)=> {
		// 	this.lightMaps[0].lightmapColor = res;
		// });        
	}   

	loadLightmap() {

        this.scene.lightmaps = null;
        let newLightmap: Lightmap = new Lightmap();        
		Laya.loader.load("resources/res/threeDimen/LightmapScene/Scene/diffuse0.png").then((res)=> {
			newLightmap.lightmapColor = res;
            newLightmap.lightmapDirection = null;
		});    
        let newLightmaps: Lightmap[] = [];
        newLightmaps.push(newLightmap);
        this.scene.lightmaps = newLightmaps;
	}       
}