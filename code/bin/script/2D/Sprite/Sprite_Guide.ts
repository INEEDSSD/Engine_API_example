import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Sprite = Laya.Sprite;

const { regClass, property } = Laya;

@regClass()
export class Sprite_Guide extends BaseScript {

    private guideSteps:any[] = 
	[
		{ x: 151, y: 575, radius:150, tip:"resources/res/guide/help6.png", tipx:200, tipy:250 },
		{ x: 883, y: 620, radius:100, tip:"resources/res/guide/help4.png", tipx:730, tipy:380 },
		{ x: 1128, y: 583, radius:110, tip:"resources/res/guide/help3.png", tipx:900, tipy:300 }
	];
	private gameContainer: Sprite;
	private guideContainer: Sprite;
	private maskArea: Sprite;
	private interactionArea: Sprite;
	private hitArea: Laya.HitArea;
	private tipContainer: Sprite;
	private guideStep = 0;
    private scaleX = Index.pageWidth/1285;
    private scaleY = Index.pageHeight/727;
    private box: Laya.Box = new Laya.Box();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

		this.createPage();
        if( Index.curPage )
            this.box.scale( this.scaleX, this.scaleY );
	}

	createPage() {
		this.owner.addChild(this.box);

		// 绘制底图
		this.gameContainer = new Sprite();
		this.box.addChild(this.gameContainer);
		this.gameContainer.loadImage("resources/res/guide/crazy_snowball.png");
		this.gameContainer.on(Laya.Event.CLICK, this, this.nextStep);

		// 引导所在容器
		this.guideContainer = new Sprite();
		this.box.addChild(this.guideContainer);
		this.guideContainer.cacheAs = "bitmap";

		// 绘制遮罩区，含透明度，可见游戏背景
		this.maskArea = new Sprite();
		this.guideContainer.addChild(this.maskArea);
		this.maskArea.alpha = 0.5;
		this.maskArea.graphics.drawRect(0, 0, 1285, 727, "#000");

		// 绘制一个圆形区域，利用叠加模式，从遮罩区域抠出可交互区
		this.interactionArea = new Sprite();
		this.guideContainer.addChild(this.interactionArea);
		// 设置叠加模式
		this.interactionArea.blendMode = "destination-out";

		// 设置点击区域
		this.hitArea = new Laya.HitArea();
		this.hitArea.hit.drawRect(0, 0, 1285, 727, "#000");
		this.guideContainer.hitArea = this.hitArea;
		this.guideContainer.mouseEnabled = true;

		this.tipContainer = new Sprite();
		this.box.addChild(this.tipContainer);

		this.nextStep();
	}

	nextStep() {
		
		if (this.guideStep === this.guideSteps.length) {
			this.box.removeChild(this.guideContainer);
			this.box.removeChild(this.tipContainer);
			return;
		}
		let step = this.guideSteps[this.guideStep++];

		this.hitArea.unHit.clear();
		this.hitArea.unHit.drawCircle(step.x, step.y, step.radius, "#000000");

		this.interactionArea.graphics.clear();
		this.interactionArea.graphics.drawCircle(step.x, step.y, step.radius, "#000000");

		this.tipContainer.graphics.clear();
		this.tipContainer.loadImage(step.tip);
		this.tipContainer.pos(step.tipx, step.tipy);
	}
}