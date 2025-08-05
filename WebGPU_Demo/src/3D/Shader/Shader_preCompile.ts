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

    private shaderVariantCollection: Record<string, Laya.IShaderVariant[]> = {};

    constructor() {
        super();
    }



    onEnable(): void {
        super.base(this.camera);
        //开启Shader3D的debugMode
        Laya.Shader3D.debugMode = true;
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
        //@ts-ignore
        let items: Record<string, Laya.IShaderVariant[]> = Laya.ShaderVariantCollection.active.items;

        for (let key in items) {
            let item = items[key];
            this.shaderVariantCollection[key] = [];
            for (let i = 0; i < item.length; i++) {
                let variant = item[i] as Laya.IShaderVariant;
                let shaderVariant = {
                    is2D: variant.is2D,
                    subShaderIndex: variant.subShaderIndex,
                    passIndex: variant.passIndex,
                    defines: variant.defines,
                    nodeCommonMap: variant.nodeCommonMap,
                    additionMap: variant.additionMap,
                    attributeLocations: variant.attributeLocations,
                }
                this.shaderVariantCollection[key].push(shaderVariant);
            }
        }

        let shaderVariantCollection = new Laya.ShaderVariantCollection(this.shaderVariantCollection);
        shaderVariantCollection.compileAll();
    }

    loadSceneAndOpen(callback: Function): void {
        Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeScene.lh").then((res: Laya.Prefab) => {
            // lh/ls需要使用create()
            let scene = res.create();
            this.scene.addChild(scene);
            callback && callback();
            Laya.timer.once(5000, this, () => {
                this.preCompileShader();
            });
        });
    }
}