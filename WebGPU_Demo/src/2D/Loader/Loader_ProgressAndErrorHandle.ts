import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Loader_ProgressAndErrorHandle extends BaseScript {


	constructor() {
		super();
	}

	onAwake(): void {
		// loader的加载失败没有onError事件派发，loader失败返回的是null，全局的处理，可以接管Loader.warnFailed方法
		Laya.Loader.warnFailed = this.loaderError;

		super.base();
		// 无加载失败重试
		Laya.loader.retryNum = 0;

		var urls: any[] = ["do not exist", "resources/res/fighter/fighter.png", "resources/res/legend/map.jpg"];
		Laya.loader.load(urls, Loader.IMAGE, this.onLoading).then(() => {
			this.onAssetLoaded();
		});
	}

	private onAssetLoaded(): void {
		// 使用texture
		console.log("加载结束");
	}

	// 加载进度侦听器
	private onLoading(progress: number): void {
		console.log("加载进度: " + progress);
	}


	/**
	 * 全局接管loader失败的方法
	 * @param url 
	 * @param err 
	 * @param initiatorUrl 
	 */
	loaderError(url: string, err?: any, initiatorUrl?: string) {
		console.error("[自定义接管 Loader Failed] ==>");
		console.error("资源加载失败地址：", url);
		console.error("资源加载失败代码：", err);
		console.error("资源加载失败替代url：", initiatorUrl);
		console.error("[自定义接管 Loader Failed] ===");
	}


}