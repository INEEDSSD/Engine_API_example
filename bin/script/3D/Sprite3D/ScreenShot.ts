/*Laya.LayaEnv.beforeInit = function(config: Laya.IStageConfig) {
    //这个方法会在Laya.init前调用
    console.log("before init");
    //这里可以对config以及Laya.Config、Laya.Config3D进行自定义的修改
    Laya.Config.preserveDrawingBuffer =true;    
}*/

import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Camera = Laya.Camera;
const { regClass, property } = Laya;

@regClass()
export class ScreenShot extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }


    onAwake(): void {

		//需要在 Laya.LayaEnv.beforeInit 中提前调用 Laya.Config.preserveDrawingBuffer =true;
        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 2, 3);
		this.camera.transform.rotate(new Vector3(-30, 0, 0), true, false);


		//添加自定义模型
		var box: Laya.MeshSprite3D = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(1, 1, 1))) as Laya.MeshSprite3D;
		box.transform.rotate(new Laya.Vector3(0, 45, 0), false, false);
		var material: Laya.BlinnPhongMaterial = new Laya.BlinnPhongMaterial();
		Laya.Texture2D.load("resources/res/threeDimen/layabox.png", Laya.Handler.create(null, function (tex: Laya.Texture2D) {
			material.albedoTexture = tex;
		}));
		box.meshRenderer.material = material;
		this.loadUI();
	}
	
	private loadUI() {
		Laya.loader.load(["resources/image/img_btn_bg.png"], Laya.Handler.create(this, ()=> {
			var screenshotBtn = new Laya.Button("resources/image/img_btn_bg.png", "截图");
			this.owner.addChild(screenshotBtn);
			screenshotBtn.size(100, 30);
			screenshotBtn.labelBold = true;
			screenshotBtn.labelSize = 15;
			screenshotBtn.sizeGrid = "4,4,4,4";
			screenshotBtn.pos(this.pageWidth / 2 - screenshotBtn.width /2 , this.pageHeight - 100);
			screenshotBtn.on(Laya.Event.CLICK, this, this.onAddClick);
		}))
	}

	onAddClick() {
		//渲染到纹理的相机
		var renderTargetCamera: Laya.Camera = this.scene.addChild(new Laya.Camera(0, 0.1, 100)) as Laya.Camera;
		renderTargetCamera.transform.position = new Vector3(0, 2, 3);
		renderTargetCamera.transform.rotate(new Laya.Vector3(-30, 0, 0), true, false);

		//渲染顺序
		renderTargetCamera.renderingOrder = -1;
		var renderTexture: any = new Laya.RenderTexture(512, 512, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false , 4);
		Laya.Camera.drawRenderTextureByScene(renderTargetCamera, this.scene, renderTexture);
		
		//截图绘制
		var rtex = new Laya.Texture(renderTargetCamera.renderTarget, Laya.Texture.DEF_UV);

		var rtex = new Laya.Texture(Laya.Texture2D.blackTexture);
		console.log(rtex.width,rtex.height)
		var sp = new Laya.Sprite();
		// sp.zOrder=99;
		this.owner.addChild(sp);
		sp.graphics.drawTexture(rtex);

		//@ts-ignore
		var htmlCanvas: Laya.HTMLCanvas = sp.drawToCanvas(720, 1280, 0, 0);
		var base64: string = htmlCanvas.toBase64("image/png",1);
		console.log(base64);
		var img = new window.Image;
		img.src = base64;
		document.body.appendChild(img);
	}
 
}