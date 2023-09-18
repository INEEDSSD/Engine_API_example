import { BaseScript } from "../../BaseScript";

import Animation = Laya.Animation;
import Rectangle = Laya.Rectangle;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Animation_Altas extends BaseScript {

    private AniConfPath: string = "resources/res/fighter/fighter.json";
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
        //加载图集json文件
		Laya.loader.load(this.AniConfPath, Loader.ATLAS).then( ()=>{
            this.createAnimation();
        } );
	}

    //通过Animation来创建动画
	private createAnimation(_e: any = null): void {
		var ani: Animation = new Animation();
		ani.loadAtlas(this.AniConfPath);			// 加载图集动画
		ani.interval = 30;					// 设置播放间隔（单位：毫秒）
		ani.index = 1;						// 当前播放索引
		ani.play();							// 播放图集动画

		// 获取动画的边界信息
		var bounds: Rectangle = ani.getGraphicBounds();
		ani.pivot(bounds.width / 2, bounds.height / 2);
		ani.pos(this.pageWidth / 2, this.pageHeight / 2);
		this.owner.addChild(ani);
	}
}