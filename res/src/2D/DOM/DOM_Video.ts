import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Sprite = Laya.Sprite;
import SpriteUtils = Laya.SpriteUtils;
import Render = Laya.Render;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class DOM_Video extends BaseScript {

	private video : any;
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		// 创建Video元素
		var videoElement: any = Browser.createElement("video");
		Browser.document.body.appendChild(videoElement);
		this.video = videoElement;

		// 设置Video元素地样式和属性
		videoElement.style.zInddex = Render.canvas.style.zIndex + 1;
		videoElement.src = Laya.URL.postFormatURL(Laya.URL.formatURL("resources/res/av/mov_bbb.mp4")); // 处理预览和发布的资源地址
		videoElement.controls = true;
		// 阻止IOS视频全屏
		videoElement.setAttribute("webkit-playsinline", true);
		videoElement.setAttribute("playsinline", true);

		// 设置画布上的对齐参照物
		var reference: Sprite = new Sprite();
		this.owner.addChild(reference);
		reference.pos((this.pageWidth - 600)/2, (this.pageHeight - 400)/2);
		reference.size(600, 400);
		reference.graphics.drawRect(0, 0, reference.width, reference.height, "#000000");

		// 每次尺寸变更时，都会调用Utils.fitDOMElementInArea设置Video的位置，对齐的位置和refence重合
		if( Index.curPage )
			SpriteUtils.fitDOMElementInArea(videoElement, reference, Index.pagePos.x, Index.pagePos.y, reference.width, reference.height);
		else
			SpriteUtils.fitDOMElementInArea(videoElement, reference, 0, 0, reference.width, reference.height);
	}

	onDestroy(): void {
		Browser.removeElement(this.video);
	}
}