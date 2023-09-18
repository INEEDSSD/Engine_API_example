import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
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

	private scene1: Scene3D;
	private ray: Ray;
	private text: Text = new Text();
	
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
		//预加载资源
		Laya.loader.load("resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls").then((res)=>{
			this.onComplete(res);
		});
	}

	
	private onComplete(res:any): void {
		this.scene1 = res.create();
		this.scene.addChild(this.scene1);

		//选择渲染目标为纹理
		var stageWidth: number = this.pageWidth;
		var stageHeight: number = this.pageHeight;

		if( Index.curPage )
        {
			stageWidth = Index.pageWidth;
			stageHeight = Index.pageHeight;
		}
		this.camera2.renderTarget = RenderTexture.createFromPool(stageWidth, stageHeight, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.DEPTH_16, false, 1, false, true);
		//渲染顺序
		this.camera2.renderingOrder = -1;

		this.text.width = 200;
		this.text.align = "center";
		this.text.x = ( this.pageWidth - this.text.width) / 2;
		this.text.y = 50;
		this.text.overflow = Text.HIDDEN;
		this.text.color = "#FFFFFF";
		this.text.fontSize = 20;
		this.text.text = "选中的颜色：";
		this.owner.addChild(this.text);
	}

	onMouseDown(e:Event) {
		var posX: number = e.target.mouseX;
		var posY: number = e.target.mouseY;
		var out = new Uint8Array(4);
		this.camera2.renderTarget.getData(posX, posY, 1, 1, out);
		this.text.text =  out[0] + " " + out[1] + " " + out[2] + " " + out[3];
	}
}