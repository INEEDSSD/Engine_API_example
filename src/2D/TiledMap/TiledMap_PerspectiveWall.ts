import { BaseScript } from "../../BaseScript";

import Rectangle = Laya.Rectangle;
import Handler = Laya.Handler;
import TiledMap = Laya.TiledMap;

const { regClass, property } = Laya;

@regClass()
export class TiledMap_PerspectiveWall extends BaseScript {

	private tiledMap: TiledMap;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.createMap();
	}

	private createMap(): void {
		this.tiledMap = new TiledMap();
		this.tiledMap.createMap("resources/res/tiledMap/perspective_walls.json", new Rectangle(0, 0, this.pageWidth, this.pageHeight), Handler.create(this, this.onLoaded));
	}

	private onLoaded(): void {
		this.tiledMap.mapSprite().removeSelf();
		this.box2D.addChild(this.tiledMap.mapSprite());
	}

	onDestroy(): void {
		if (this.tiledMap) {
			this.tiledMap.mapSprite().removeChildren();
			this.tiledMap.destroy();
		}
	}
}