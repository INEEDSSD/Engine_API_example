import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Loader_ClearTextureRes extends BaseScript {

	private spBg: Sprite;
	private aniFly: Animation;
	private btn: Sprite;
	private txt: Text;
	private isDestroyed: boolean = false;
	private PathBg: string = "resources/res/bg2.png";
	private PathFly: string = "resources/res/fighter/fighter.atlas";

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.init();
	}

	/**
	 * 初始化场景
	 */
	private init(): void {
		//创建背景
		this.spBg = Sprite.fromImage(this.PathBg);
		this.box2D.addChild(this.spBg);

		//创建动画
		this.aniFly = new Animation();
		this.aniFly.loadAtlas(this.PathFly);
		this.aniFly.play();
		this.aniFly.pos(250, 100);
		this.box2D.addChild(this.aniFly);

		//创建按钮
		this.btn = new Sprite().size(205, 55);
		this.btn.graphics.drawRect(0, 0, this.btn.width, this.btn.height, "#057AFB");
		this.txt = new Text();
		this.txt.text = "销毁";
		this.txt.pos(75, 15);
		this.txt.fontSize = 25;
		this.txt.color = "#FF0000";
		this.btn.addChild(this.txt);
		this.btn.pos(20, 160);
		this.btn.mouseEnabled = true;
		this.btn.name = "btnBg";
		this.owner.addChild(this.btn);

		//添加侦听
		this.btn.on(Event.MOUSE_UP, this, this.onMouseUp1);
	}

	/**
	 * 鼠标事件响应函数
	 */
	onMouseUp1(evt: Event): void {
		if (this.isDestroyed) {
			//通过设置 visible=true ，来触发渲染，然后引擎会自动恢复资源
			this.spBg.visible = true;
			this.aniFly.visible = true;

			this.isDestroyed = false;
			this.txt.text = "销毁";
		} else {
			//通过设置 visible=false ，来停止渲染对象
			this.spBg.visible = false;
			this.aniFly.visible = false;

			//销毁 Texture 使用的图片资源
			Laya.loader.clearTextureRes(this.PathBg);
			Laya.loader.clearTextureRes(this.PathFly);

			this.isDestroyed = true;
			this.txt.text = "恢复";
		}
	}
}