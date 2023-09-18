import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Loader = Laya.Loader;


const { regClass, property } = Laya;

@regClass()
export class UI3D extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;


    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
        
        //数组加载方式
        var Resource:any[] = [
            //可以直接加载已经在IDE里制作好的lh
            { url: "resources/res/threeDimen/fbx/Danding.lh", type: Loader.HIERARCHY },
            { url: "resources/res/ui/prefab/ui3d.lh", type: Loader.HIERARCHY },
            { url: "resources/res/ui/prefab/ui3dpage.lh", type: Loader.HIERARCHY }
        ];

        Laya.loader.load(Resource).then((res:any[])=> {
	
			var dude:Laya.Sprite3D = this.scene.addChild(res[0].create()) as Laya.Sprite3D;
			dude.transform.position = new Laya.Vector3(0, 0, 0);	
            
            //创建血条
            let sprite3D = new Sprite3D();
            dude.addChild(sprite3D);
            let ui3dComponent: Laya.UI3D = sprite3D.addComponent(Laya.UI3D);
            ui3dComponent.prefab = res[1];
            ui3dComponent.renderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
            ui3dComponent.resolutionRate = 256;
            ui3dComponent.billboard = true;
            ui3dComponent.enableHit = false;
            sprite3D.transform.localPositionY = 2.7;
 
            //创建左边的3D UI
            let sprite3DUI = new Sprite3D();
            dude.addChild(sprite3DUI);
            let ui3dComponent_ui: Laya.UI3D = sprite3DUI.addComponent(Laya.UI3D);
            ui3dComponent_ui.prefab = res[2];
            ui3dComponent_ui.renderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
            ui3dComponent_ui.resolutionRate = 256;
            ui3dComponent_ui.scale = new Laya.Vector2(2,2);
            ui3dComponent_ui.billboard = true;
            ui3dComponent_ui.enableHit = true;
            sprite3DUI.transform.position = new Laya.Vector3(-2,1.5,0);
            // sprite3DUI.transform.localRotationEuler = new Laya.Vector3(0,45,0);          
		});

	}
}

class UIScript extends Laya.Script {

	
	constructor() {
		super();
	}
	
	public onStart():void {
        let tab :Laya.Tab = this.owner.getChildByName("Tab") as Laya.Tab;
        tab.selectHandler = new Laya.Handler(this, (index: number) => {
            
        });
	}
	
}