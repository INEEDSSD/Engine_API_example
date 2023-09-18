import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Interaction_FixInteractiveRegion extends BaseScript {

	private logger: Text;
    
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.setup();
	}

	private setup(): void {
		this.buildWorld();
		this.createLogger();
	}

	private buildWorld(): void {
		this.createCoralRect();
		this.createDeepSkyblueRect();
		this.createDarkOrchidRect();

		// 设置舞台
		this.box2D.on(Event.MOUSE_DOWN, this, this.onDown);
	}

	private createCoralRect(): void {
		var coralRect: Sprite = new Sprite();
		coralRect.graphics.drawRect(0, 0, this.pageWidth, this.pageHeight / 2, "#FF7F50");

		//设置名称
		coralRect.name = "珊瑚色容器";
		coralRect.size(this.pageWidth, this.pageHeight / 2);
		this.box2D.addChild(coralRect);

		coralRect.on(Event.MOUSE_DOWN, this, this.onDown);
	}

	private createDeepSkyblueRect(): void {
		var deepSkyblueRect: Sprite = new Sprite();
		deepSkyblueRect.graphics.drawRect(0, 0, 100, 100, "#00BFFF");
		//设置名称
		deepSkyblueRect.name = "天蓝色矩形";
		//设置宽高（要接收鼠标事件必须设置宽高，否则不会被命中）  
		deepSkyblueRect.size(100, 100);
		deepSkyblueRect.pos(10, 10);
		this.box2D.addChild(deepSkyblueRect);

		deepSkyblueRect.on(Event.MOUSE_DOWN, this, this.onDown);
	}

	private createDarkOrchidRect(): void {
		var darkOrchidRect: Sprite = new Sprite();
		darkOrchidRect.name = "暗紫色矩形容器";
		darkOrchidRect.graphics.drawRect(-100, -100, 200, 200, "#9932CC");

		darkOrchidRect.pos(this.pageWidth / 2, this.pageHeight / 2);
		this.box2D.addChild(darkOrchidRect);

		// 为true时，碰撞区域会被修正为实际显示边界
		// mouseThrough命名真是具有强烈的误导性
		darkOrchidRect.mouseThrough = true;
		darkOrchidRect.on(Event.MOUSE_DOWN, this, this.onDown);
	}

	private createLogger(): void {
		this.logger = new Text();
		this.logger.size(this.pageWidth, this.pageHeight);
		this.logger.align = 'right';
		this.logger.fontSize = 20;
		this.logger.color = "#FFFFFF";
		this.box2D.addChild(this.logger);
	}

	/**侦听处理方法*/
	private onDown(e: Event = null): void {
		this.logger.text += "点击 - " + e.target.name + "\n";
	}

	onDestroy(): void {
		this.box2D.off(Event.MOUSE_DOWN, this, this.onDown);
	}
}