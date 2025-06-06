import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Vector3 = Laya.Vector3;
import Text = Laya.Text;
import RenderTargetFormat = Laya.RenderTargetFormat;
import RenderTexture = Laya.RenderTexture;
import Ray = Laya.Ray;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class PickPixel extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Camera)
	private camera2: Laya.Camera;

	private scene1: Laya.Scene;
	private ray: Ray;
	private text: Text = new Text();
	private _sp: Laya.Sprite;

	constructor() {
		super();
	}

	/**
	 * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
	 */
	onAwake(): void {
		super.base(this.camera);
		//射线初始化（必须初始化）
		this.ray = new Ray(new Vector3(0, 0, 0), new Vector3(0, 0, 0));
		this._sp = new Laya.Sprite();
		this.owner.addChild(this._sp);
		this._sp.zOrder = 10;
		//预加载资源
		Laya.loader.load("resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls").then((res: Laya.PrefabImpl) => {
			this.onComplete(res);
		});
	}


	private onComplete(res: any): void {
		this.scene1 = res.create();
		this.scene.addChild(this.scene1.scene3D);

		//选择渲染目标为纹理
		var stageWidth: number = this.pageWidth;
		var stageHeight: number = this.pageHeight;

		if (Index.curPage) {
			stageWidth = Index.pageWidth;
			stageHeight = Index.pageHeight;
		}
		this.camera2.clearFlag = Laya.CameraClearFlags.Sky;
		if (this.owner.destroyed) {
			//兼容保护，防止直接切换下一个时候出现报错
			return;
		}
		this.camera2.renderTarget = RenderTexture.createFromPool(stageWidth, stageHeight, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.DEPTH_16, false, 1, false, true);
		//渲染顺序
		this.camera2.renderingOrder = -1;

		this.text.width = 200;
		this.text.align = "center";
		this.text.x = (this.pageWidth - this.text.width) / 2;
		this.text.y = 50;
		this.text.overflow = Text.HIDDEN;
		this.text.color = "#FFFFFF";
		this.text.fontSize = 20;
		this.text.text = "选中的颜色：";
		this.owner.addChild(this.text);
	}

	onMouseDown(e: Event) {
		this._sp.graphics.clear();
		// this._sp.x = e.target.mouseX;
		// this._sp.y = e.target.mouseY;
		var posX: number = e.target.mouseX;
		var posY: number = e.target.mouseY;
		//选择渲染目标为纹理
		var stageWidth: number = this.pageWidth;
		var stageHeight: number = this.pageHeight;

		if (Index.curPage) {
			stageWidth = Index.pageWidth;
			stageHeight = Index.pageHeight;
		}
		var out = new Uint8Array(stageWidth * stageHeight * 4);
		this.camera2.renderTarget.getDataAsync(0, 0, stageWidth, stageHeight, out).then((out: any) => {
			this.text.text = out[0] + " " + out[1] + " " + out[2] + " " + out[3];
			let r = out[0].toString(16);
			let g = out[1].toString(16);
			let b = out[2].toString(16);
			let color = `#${r}${g}${b}`
			console.log("拾取到像素为", color);
			this._sp.alpha = out[3] / 255;
			this._sp.graphics.drawRect(0, 0, 100, 100, color, "#ffffff");

			// let tex2D: Laya.Texture2D = new Laya.Texture2D(stageWidth, stageHeight, Laya.TextureFormat.R8G8B8A8, false, true, true);
			// tex2D.setPixelsData(out as ArrayBufferView, false, false);

			// let tex: Laya.Texture = new Laya.Texture(tex2D);

			// // 如果需要缩放sp的话开启下面的注释
			// this._sp.scaleX = 0.5;
			// this._sp.scaleY = 0.5;

			// // 绘制到鼠标点击区域的话开启下面的注释
			// this._sp.x = posX;
			// this._sp.y = posY;


			// this._sp.graphics.drawTexture(tex);
		});
	}
}