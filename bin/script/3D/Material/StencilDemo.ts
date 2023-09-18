import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Material = Laya.Material;
import MeshRenderer = Laya.MeshRenderer;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import RenderTargetFormat = Laya.RenderTargetFormat;
import Loader = Laya.Loader;
import Color = Laya.Color;
import UnlitMaterial = Laya.UnlitMaterial;
import Button = Laya.Button;
import RenderState = Laya.RenderState;

const { regClass, property } = Laya;

@regClass()
export class StencilDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private sphere: MeshSprite3D;
	private stencilMat:Material;
	private index: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.depthTextureFormat = RenderTargetFormat.DEPTHSTENCIL_24_8;

		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/texture/earth.png"];
		Laya.loader.load(resource).then(()=>{
			this.onPreLoadFinish();
		});

	}

	onPreLoadFinish() {
        
		//获取球型精灵
		this.sphere = (<MeshSprite3D>this.scene.getChildByName("Sphere"));
        let sphereClone:MeshSprite3D = this.sphere.clone() as MeshSprite3D;
        this.scene.addChild(sphereClone) 
        let matW = this.sphere.getComponent(MeshRenderer).sharedMaterial;

        //打开材质模板写入
        matW.stencilRef = 2;
        matW.stencilWrite = true;
        matW.stencilTest = RenderState.STENCILTEST_ALWAYS;
        matW.renderQueue = Material.RENDERQUEUE_OPAQUE;

		Vector3.scale(sphereClone.transform.localScale,1.5,sphereClone.transform.localScale) ;
        sphereClone.transform.localScale = sphereClone.transform.localScale;

		//大球
        let mat:UnlitMaterial = new UnlitMaterial();
        mat.albedoColor = new Color(0.8,0.5,0.1);
		mat.albedoTexture = Loader.getTexture2D("resources/res/threeDimen/texture/earth.png");
        sphereClone.getComponent(MeshRenderer).sharedMaterial = mat;
        mat.stencilRef = 0;
        mat.stencilWrite = false;
        mat.stencilTest = RenderState.STENCILTEST_GEQUAL;
        mat.renderQueue = Material.RENDERQUEUE_OPAQUE+1;
        this.stencilMat = mat;
        super.addBottomButton( ["Stencil关闭","Stencil开启"] , this, [this.setStencilTest, this.setStencilTest] );
	}


	setStencilTest(): void {
		this.index++;
		if (this.index % 2 === 1) {
            this.stencilMat.stencilTest = RenderState.STENCILTEST_OFF;
		} else {
            this.stencilMat.stencilTest = RenderState.STENCILTEST_GEQUAL;
		}
	}
 
}