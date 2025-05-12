const { regClass, property } = Laya;
import { BaseScript } from "../../BaseScript";

@regClass()
export class Shader_preCompile extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;
    @property(Laya.Label)
    private showIsPreCompile: Laya.Label;
    @property(Laya.Button)
    private reloadScene: Laya.Button;

    /**是否开启预编译 */
    private _openPreCom: boolean = false;

    private shaderNames: string[] = [
        "BLINNPHONG",
        "BLINNPHONG",
        "BLINNPHONG",
        "SkyProcedural"
    ];
    private defines: string[][] = [
        [
            "FOG",
            "BONE",
            "TANGENT",
            "UV",
            "UV1",
            "RECEIVESHADOW",
            "DIRECTIONLIGHT",
            "GI_IBL",
            "IBL_RGBD",
            "DIFFUSEMAP",
            "NORMALMAP"
        ],
        [
            "FOG",
            "TANGENT",
            "UV",
            "UV1",
            "RECEIVESHADOW",
            "DIRECTIONLIGHT",
            "GI_IBL",
            "IBL_RGBD",
            "DIFFUSEMAP"
        ],
        [
            "FOG",
            "TANGENT",
            "UV",
            "RECEIVESHADOW",
            "DIRECTIONLIGHT",
            "GI_IBL",
            "IBL_RGBD",
            "DIFFUSEMAP"
        ],
        [
            "SUN_SIMPLE"
        ]
    ];
    private nodeCommonMap: string[][] = [
        [
            "Sprite3D"
        ],
        [
            "Sprite3D"
        ],
        [
            "Sprite3D"
        ],
        [
            "Sprite3D",
            "SkyRenderer"
        ]
    ];

    constructor() {
        super();
    }


    onEnable(): void {
        super.base(this.camera);
        //开启Shader3D的debugMode
        Laya.Shader3D.debugMode = true;
        this.preCompileShader();
        this.loadSceneAndOpen(null);


        // this.reloadScene.on(Laya.Event.CLICK, this, () => {
        //     this.scene.removeChildren(2, this.scene.numChildren - 1);
        //     let curTime = Date.now();
        //     if (this._openPreCom) {
        //         this.preCompileShader();
        //         this.showIsPreCompile.text = "已经开启Shader预编译, 打开场景总耗时: ";
        //     } else {
        //         this.showIsPreCompile.text = "未开启Shader预编译, 打开场景总耗时: ";
        //     }
        //     this.loadSceneAndOpen(() => {
        //         let temp = Date.now();
        //         temp = temp - curTime;
        //         let cost = temp + "ms";
        //         this.showIsPreCompile.text += cost;
        //         this._openPreCom = !this._openPreCom;
        //     })
        // });
    }


    preCompileShader(): void {
        for (let i = 0; i < this.shaderNames.length; i++) {
            Laya.Shader3D.compileShaderByDefineNames(this.shaderNames[i], 0, 0, this.defines[i], this.nodeCommonMap[i]);
        }
    }

    loadSceneAndOpen(callback: Function): void {
        Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeScene.ls").then((res) => {
            // lh/ls需要使用create()
            let scene = res.create();
            //scene.scene3D 可以获得Scene3D资源
            let scene3D = scene.scene3D;
            this.scene.addChild(scene3D);
            callback && callback();
        });
    }
}