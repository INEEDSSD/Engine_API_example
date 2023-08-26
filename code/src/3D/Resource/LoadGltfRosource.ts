import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Loader = Laya.Loader;


const { regClass, property } = Laya;

@regClass()
export class LoadGltfRosource extends BaseScript {

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
        var gltfResource:any[] = [

            { url: "resources/res/threeDimen/gltf/RiggedFigure/RiggedFigure.gltf", type: Loader.HIERARCHY },
            { url: "resources/res/threeDimen/gltf/Duck/Duck.lh", type: Loader.HIERARCHY }
        ];

        Laya.loader.load(gltfResource).then( (res:any[] )=>{
            this.onGLTFComplete(res);
        });

        //单独加载方式，必须加入Loader.HIERARCHY类型
        Laya.loader.load("resources/res/threeDimen/gltf/AnimatedCube/AnimatedCube.gltf",Loader.HIERARCHY).then( res=>{
            var cube: Sprite3D = res.create();
            this.scene.addChild(cube);
            cube.transform.position = new Vector3(2.5, 0.6, 0);
            cube.transform.setWorldLossyScale(new Vector3(0.6, 0.6, 0.6));
        });
    
    }

    onGLTFComplete(res:any[]): void {

        // 需要使用create()
        let riggedFigure: Sprite3D = res[0].create();
        this.scene.addChild(riggedFigure);
        riggedFigure.transform.position = new Vector3(-2, 0, 0);

        var duck: Sprite3D = res[1].create();
        this.scene.addChild(duck);
        duck.transform.position = new Vector3(0, 0, 0);
        
    }
 
}