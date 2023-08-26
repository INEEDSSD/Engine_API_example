import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Loader = Laya.Loader;


const { regClass, property } = Laya;

@regClass()
export class LoadFbxRosource extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
        
        this.camera.transform.position = new Vector3(0.5, 1.2, 4);

        //数组加载方式
        var Resource:any[] = [
            //可以直接加载已经在IDE里制作好的lh，其中材质已经创建好
            { url: "resources/res/threeDimen/fbx/Danding.lh", type: Loader.HIERARCHY },
            //可以直接加载FBX文件，并配置材质使用的shader和纹理贴图
            { url: "resources/res/threeDimen/fbx/Stand.FBX", type: Loader.HIERARCHY },
            { url: "resources/res/threeDimen/fbx/Material.lmat", type: Loader.MATERIAL },
            { url: "resources/res/threeDimen/fbx/LayaMonkey.lmat", type: Loader.MATERIAL }
        ];

        Laya.loader.load(Resource).then( (res:any[] )=>{
            this.onFBXComplete(res);

            //单独加载方式，必须加入Loader.HIERARCHY类型
            Laya.loader.load("resources/res/threeDimen/fbx/LayaMonkey.FBX",Loader.HIERARCHY).then( fbx =>{
                var LayaMonkey: Sprite3D = fbx.create();
                this.scene.addChild(LayaMonkey);
                LayaMonkey.transform.position = new Vector3(2.5, 0, 0);
                LayaMonkey.transform.setWorldLossyScale(new Vector3(0.6, 0.6, 0.6));
                LayaMonkey.getChildAt(0).getComponent(Laya.MeshRenderer).material = res[3];
            });            
        });

    }

    onFBXComplete(res:any[]): void {

        // 需要使用create()
        let Danding: Sprite3D = res[0].create();
        this.scene.addChild(Danding);
        Danding.transform.position = new Vector3(-2, 0, 0);

        var Stand: Sprite3D = res[1].create();
        this.scene.addChild(Stand);
        Stand.transform.position = new Vector3(0, 0, 0);
        Stand.getChildAt(0).getComponent(Laya.MeshRenderer).material = res[2];
        
    }
 
}