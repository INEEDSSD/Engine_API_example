import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import SkyRenderer = Laya.SkyRenderer;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Quaternion = Laya.Quaternion;
import PrimitiveMesh = Laya.PrimitiveMesh;
import SkyBox = Laya.SkyBox;
import ProgressBar = Laya.ProgressBar;

const { regClass, property } = Laya;

@regClass()
export class LoadResourceDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.ProgressBar)
    private loadingBar: ProgressBar;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        let resArr : Array<any>= [

            //加载不同类型的3D资源
            { url: "resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat", type: Laya.Loader.MATERIAL },
            { url: "resources/res/threeDimen/texture/earth.png", type: Laya.Loader.TEXTURE2D },
            { url: "resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm", type: Laya.Loader.MESH },
            { url: "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh", type: Laya.Loader.HIERARCHY }

        ]; 

        Laya.loader.load(resArr, null, Laya.Handler.create(this, this.onLoading, null, false)).then(( res:any[] )=> {

            this.loadingBar.visible = false;
            this.onComplete(res);
            
        });
        // 侦听加载失败
        Laya.loader.on(Laya.Event.ERROR, this, this.onError);
	}

	//加载资源
	onComplete(res:any[]) {

        //res[1] 获取材质
        //获取相机的天空渲染器
        var skyRenderer: SkyRenderer = this.camera.skyRenderer;
        //创建天空盒的mesh
        skyRenderer.mesh = SkyBox.instance;
        //设置天空盒材质
        skyRenderer.material = res[0];

        //res[1] 获取纹理
        var earth1: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(1))));
        earth1.transform.position = new Laya.Vector3(0, 1, 0);
        var earthMat: BlinnPhongMaterial = new BlinnPhongMaterial();
        earthMat.albedoTexture = res[1];
        earthMat.albedoIntensity = 1;
        earth1.meshRenderer.material = earthMat;

        //res[2] 获取Mesh，创建MeshSprite3D
        var layaMonkey: MeshSprite3D = (<MeshSprite3D>this.scene.addChild(new MeshSprite3D(res[2])));
        var layaMonkeyTrans = layaMonkey.transform;
        var layaMonkeyScale: Vector3 = layaMonkeyTrans.localScale;
        layaMonkeyScale.setValue(0.5, 0.5, 0.5);
        layaMonkeyTrans.localScale = layaMonkeyScale;
        layaMonkey.transform.rotation = new Quaternion(0.7071068, 0, 0, -0.7071067);
        layaMonkey.transform.translate(new Vector3(-2, 0, 0));

        //res[3].create() 获取精灵，lh/ls需要使用create()
        var layaMonkey2: Sprite3D = (<Sprite3D>this.scene.addChild(res[3].create()));
        var layaMonkey2Trans = layaMonkey2.transform;
        var layaMonkey2Scale: Vector3 = layaMonkey2Trans.localScale;
        layaMonkey2Scale.setValue(5, 5, 5);
        layaMonkey2Trans.localScale = layaMonkey2Scale;
        layaMonkey2Trans.translate(new Vector3(2, 0, 0));
	}


    /**
   * 当报错时打印错误
   */
    onError(err: string): void {
        console.log("加载失败: " + err);
    }

    /**
     * 加载时侦听
     */
    onLoading(progress: number): void {
        //接近完成加载时，让显示进度比实际进度慢一点，这是为打开场景时的自动加载预留，尤其是要打开的场景资源多，并没有完全放到预加载中，还需要再自动加载一部分时。
        if (progress > 0.92) this.loadingBar.value = 0.95;
        else
        {
            this.loadingBar.value = progress;
            console.log("加载进度: " + progress, this.loadingBar.value);
        }
    }
}