import { BaseScript } from "../../BaseScript";

import Handler = Laya.Handler;
import Rectangle = Laya.Rectangle;
import TiledMap = Laya.TiledMap;

const { regClass, property } = Laya;

@regClass()
export class TiledMap_AnimationTile extends BaseScript {


    constructor() {
        super();
    }

    private tiledMap: TiledMap;

    onAwake(): void {

        super.base();
		
		this.createMap();
	}

	private createMap(): void {
		this.tiledMap = new TiledMap();
		this.tiledMap.createMap("resources/res/tiledMap/orthogonal-test-movelayer.json", new Rectangle(0, 0, this.pageWidth, this.pageHeight), Handler.create(this, this.onLoaded));

	}

	private onLoaded(): void {
		this.tiledMap.mapSprite().removeSelf();
        let map = this.tiledMap.mapSprite();
		this.box2D.addChild(map);
	}

	dispose(): void {
		if (this.tiledMap) {
			this.tiledMap.mapSprite().removeChildren();
			this.tiledMap.destroy();
		}
	}
}