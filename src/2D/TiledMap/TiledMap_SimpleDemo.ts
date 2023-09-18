import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Rectangle = Laya.Rectangle;
import Handler = Laya.Handler;
import TiledMap = Laya.TiledMap;

const { regClass, property } = Laya;

@regClass()
export class TiledMap_SimpleDemo extends BaseScript {

    private tiledMap: TiledMap;
	private mLastMouseX: number = 0;
	private mLastMouseY: number = 0;

	private mX: number = 0;
	private mY: number = 0;

    constructor() {
        super();
    }
	
    onAwake(): void {

        super.base();
		this.createMap();

		this.box2D.on(Event.MOUSE_DOWN, this, this.mouseDown);
		this.box2D.on(Event.MOUSE_UP, this, this.mouseUp);
	}

	//创建地图
	private createMap(): void {
		//创建地图对象
		this.tiledMap = new TiledMap();

		this.mX = this.mY = 0;
		//创建地图，适当的时候调用destroy销毁地图
		this.tiledMap.createMap("resources/res/tiledMap/desert.json", new Rectangle(0, 0, this.pageWidth, this.pageHeight), new Handler(this, this.completeHandler));
	}

	private onLoaded(): void {
		this.tiledMap.mapSprite().removeSelf();
		this.box2D.addChild(this.tiledMap.mapSprite());
	}

	/**
	 * 地图加载完成的回调
	 */
	private completeHandler(e: any = null): void {
		this.box2D.on(Event.RESIZE, this, this.resize);
		this.resize();
		this.onLoaded();
	}

	//鼠标按下拖动地图
	private mouseDown(e: any = null): void {
		this.mLastMouseX = e.target.mouseX;
		this.mLastMouseY = e.target.mouseY;
		this.box2D.on(Event.MOUSE_MOVE, this, this.mouseMove);
	}

	private mouseMove(e: any = null): void {
		//移动地图视口
		this.tiledMap.moveViewPort(this.mX - (e.target.mouseX - this.mLastMouseX), this.mY - (e.target.mouseY - this.mLastMouseY));
	}

	private mouseUp(e: any = null): void {
		this.mX = this.mX - (e.target.mouseX - this.mLastMouseX);
		this.mY = this.mY - (e.target.mouseY - this.mLastMouseY);
		this.box2D.off(Event.MOUSE_MOVE, this, this.mouseMove);
	}

	// 窗口大小改变，把地图的视口区域重设下
	private resize(e: any = null): void {
		//改变地图视口大小
		this.tiledMap.changeViewPort(this.mX, this.mY, this.pageWidth, this.pageHeight);
	}

	dispose(): void {
		this.box2D.off(Event.MOUSE_DOWN, this, this.mouseDown);
		this.box2D.off(Event.MOUSE_UP, this, this.mouseUp);
		this.box2D.off(Event.RESIZE, this, this.resize);
		this.box2D.off(Event.MOUSE_MOVE, this, this.mouseMove);
		if (this.tiledMap) {
			this.tiledMap.destroy();
		}
	}

}