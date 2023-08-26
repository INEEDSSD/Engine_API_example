import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Sprite = Laya.Sprite;
import Rectangle = Laya.Rectangle;
import Point = Laya.Point;
import Handler = Laya.Handler;
import MapLayer = Laya.MapLayer;
import TiledMap = Laya.TiledMap;

const { regClass, property } = Laya;

@regClass()
export class TiledMap_IsometricWorld extends BaseScript {

	private tiledMap: TiledMap;
	private layer: MapLayer;
	private sprite: Sprite;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.createMap();

		this.box2D.on("click", this, this.onStageClick);
	}

	private createMap(): void {
		this.tiledMap = new TiledMap();
		this.tiledMap.createMap("resources/res/tiledMap/isometric_grass_and_water.json", new Rectangle(0, 0, Index.pageWidth, Index.pageHeight), Handler.create(this, this.mapLoaded), null, new Point(1600, 800));
	}

	private onStageClick(e: any = null): void {
		var p: Point = new Point(0, 0);
		if (this.layer) {
			this.layer.getTilePositionByScreenPos(e.target.mouseX, e.target.mouseY, p);
			this.layer.getScreenPositionByTilePos(Math.floor(p.x), Math.floor(p.y), p);
			this.sprite.pos(p.x, p.y);
		}
	}

	private mapLoaded(e: any = null): void {
		this.layer = this.tiledMap.getLayerByIndex(0);

		var radiusX: number = 32;
		var radiusY: number = Math.tan(180 / Math.PI * 30) * radiusX;
		var color: string = "#FF7F50";

		this.sprite = new Sprite();
		this.sprite.graphics.drawLine(0, 0, -radiusX, radiusY, color);
		this.sprite.graphics.drawLine(0, 0, radiusX, radiusY, color);
		this.sprite.graphics.drawLine(-radiusX, radiusY, 0, radiusY * 2, color);
		this.sprite.graphics.drawLine(radiusX, radiusY, 0, radiusY * 2, color);
		this.box2D.addChild(this.sprite);
		this.sprite.zOrder = 99999;
		this.tiledMap.mapSprite().removeSelf();
        let map = this.tiledMap.mapSprite();
        map.x -= (1600-this.pageWidth)/2;
		this.box2D.addChild(map);
	}

	onDestroy(): void {
		this.box2D.off("click", this, this.onStageClick);
		if (this.tiledMap) {
			this.tiledMap.mapSprite().removeChildren();
			this.tiledMap.destroy();
		}
	}
}