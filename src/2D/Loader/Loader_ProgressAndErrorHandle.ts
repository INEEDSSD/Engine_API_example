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

        super.base();
		// 无加载失败重试
		Laya.loader.retryNum = 0;

		var urls: any[] = ["do not exist", "resources/res/fighter/fighter.png", "resources/res/legend/map.jpg"];
		Laya.loader.load(urls, Loader.IMAGE, this.onLoading).then( ()=>{
            this.onAssetLoaded();
        } );

		// 侦听加载失败
		Laya.loader.on(Event.ERROR, this, this.onError);
	}

	private onAssetLoaded(): void {
		// 使用texture
		console.log("加载结束");
	}

	// 加载进度侦听器
	private onLoading(progress: number): void {
		console.log("加载进度: " + progress);
	}

	private onError(err: string): void {
		console.log("加载失败: " + err);
	}

 
}