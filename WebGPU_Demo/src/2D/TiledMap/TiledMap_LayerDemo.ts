import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class TiledMap_LayerDemo extends BaseScript {
    declare owner: Laya.Sprite;

    private collectCellData: Map<string, Laya.TileSetCellData> = new Map();

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
        Laya.stage.bgColor = "#232628";
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        let res: string[] = [
            "resources/res/tilemapResource/TilesetVillageAbandoned.png",
            "resources/res/tilemapResource/TilesetTowers.png",
        ];
        Laya.loader.load(res).then(() => {
            let bg: Laya.Sprite = new Laya.Sprite();
            this.owner.addChild(bg);
            this.createTileMapLayer(bg);
        });
    }

    /**
     * 创建瓦块地图层级
     * @param bg 
     */
    createTileMapLayer(bg: Laya.Sprite): void {
        let layer = bg.addComponent(Laya.TileMapLayer);
        let tileset = this.createTileSet();
        layer.tileSet = tileset;

        {//测试渲染批次和changeCellData

            for (var x = 0; x <= 5; x++) {
                for (var y = 0; y <= 5; y++) {
                    layer.setCellData(x, y, this.collectCellData.get("paota2"), false);
                }
            }

            for (var x = 5; x <= 10; x++) {
                for (var y = 0; y <= 5; y++) {
                    layer.setCellData(x, y, this.collectCellData.get("paota3"), false);
                }
            }
        }

        {//测试 不同CellData
            layer.setCellData(5, 5, this.collectCellData.get("paota1"), false);
            layer.setCellData(5, 6, this.collectCellData.get("paota1_1"), false);
        }

        {//测试动画
            layer.setCellData(7, 5, this.collectCellData.get("Ani_chengbao"), false);
            layer.setCellData(7, 6, this.collectCellData.get("Ani_shuijin"), false);
        }

        {//测试第二个setGroup
            layer.setCellData(10, 5, this.collectCellData.get("pofangzi"), false);
            layer.setCellData(10, 8, this.collectCellData.get("pofangzi2"), false);
            layer.setCellData(10, 10, this.collectCellData.get("shu1"), false);
            layer.setCellData(10, 12, this.collectCellData.get("liangtin"), false);
        }
    }

    /**
     * 创建瓦块地图设置
     * @returns 
     */
    private createTileSet() {
        // 瓦块配置
        let tileSet = new Laya.TileSet();
        // 正方形瓦块地图
        tileSet.tileShape = Laya.TileShape.TILE_SHAPE_SQUARE;
        // 瓦块地图大小
        tileSet.tileSize = new Laya.Vector2(64, 64);

        let textuer1 = Laya.Loader.getTexture2D("resources/res/tilemapResource/TilesetTowers.png");
        let texture2 = Laya.Loader.getTexture2D("resources/res/tilemapResource/TilesetVillageAbandoned.png");

        // 根据图集配置两个分组
        let group0 = this.createTileSetGroup("resource1", 0, textuer1, new Laya.Vector2(32, 32));
        let group1 = this.createTileSetGroup("resource2", 1, texture2, new Laya.Vector2(16, 16));

        tileSet.addTileSetCellGroup(group0);
        tileSet.addTileSetCellGroup(group1);

        
        this.collectCellDataToMap(group0, new Laya.Vector2(0, 0), new Laya.Vector2(1, 1), 0, "paota1");
        let cellData = this.collectCellDataToMap(group0, new Laya.Vector2(0, 0), new Laya.Vector2(1, 1), 1, "paota1_1");
        cellData.texture_origin = new Laya.Vector2(10, 0);
        cellData.colorModulate = new Laya.Color(1.0, 0.0, 0.0, 1.0);
        this.collectCellDataToMap(group0, new Laya.Vector2(0, 1), new Laya.Vector2(1, 1), 0, "paota2ori");
        cellData = this.collectCellDataToMap(group0, new Laya.Vector2(0, 1), new Laya.Vector2(1, 1), 1, "paota2");
        this.collectCellDataToMap(group0, new Laya.Vector2(0, 2), new Laya.Vector2(1, 1), 0, "paota3");

        {
            let cellData = this.collectCellDataToMap(group0, new Laya.Vector2(6, 2), new Laya.Vector2(1, 1), 1, "Ani_chengbao");
            let alternative = cellData.cellowner;
            alternative.animationMode = Laya.TileAnimationMode.DEFAULT;
            alternative.animation_columns = 0;
            alternative.animation_separation = new Laya.Vector2(0, 0);
            alternative.animation_speed = 1;
            alternative.animationFrams = [1, 1, 1];
        }

        {
            let cellData = this.collectCellDataToMap(group0, new Laya.Vector2(9, 2), new Laya.Vector2(1, 1), 1, "Ani_shuijin");
            let alternative = cellData.cellowner;
            alternative.animationMode = Laya.TileAnimationMode.DEFAULT;
            alternative.animation_columns = 0;
            alternative.animation_separation = new Laya.Vector2(0, 0);
            alternative.animation_speed = 1;
            alternative.animationFrams = [1, 1, 1];
        }

        {
            let cellData = this.collectCellDataToMap(group1, new Laya.Vector2(0, 0), new Laya.Vector2(4, 3), 0, "pofangzi");
            cellData = this.collectCellDataToMap(group1, new Laya.Vector2(0, 0), new Laya.Vector2(4, 3), 1, "pofangzi2");
            cellData.colorModulate = new Laya.Color(1, 0, 0, 1);
        }
        {
            let cellData = this.collectCellDataToMap(group1, new Laya.Vector2(0, 6), new Laya.Vector2(4, 3), 0, "shu1");
            cellData.cellowner.animation_columns = 1;
            cellData.cellowner.animationFrams = [1, 1];
        }

        {
            let cellData = this.collectCellDataToMap(group1, new Laya.Vector2(17, 0), new Laya.Vector2(3, 3), 0, "liangtin");
        }

        return tileSet;
    }

    /**
     * 创建瓦块地图配置分组
     * @param name 分组名
     * @param id 分组id
     * @param texture 分组使用的图集
     * @param textureRegion 图集对应瓦块区域
     * @returns 
     */
    private createTileSetGroup(name: string, id: number, texture: Laya.Texture2D, textureRegion: Laya.Vector2) {
        let setgroup = new Laya.TileSetCellGroup();
        setgroup.id = id;
        setgroup.name = name;
        setgroup.atlas = texture;
        setgroup.textureRegionSize = textureRegion;
        return setgroup;
    }

    private collectCellDataToMap(tileSetGroup: Laya.TileSetCellGroup, groupLocalPos: Laya.Vector2, cellSize: Laya.Vector2, cellDataIndex: number, cellDataKey: string) {
        let alternative = tileSetGroup.addAlternaltive(groupLocalPos.x, groupLocalPos.y, cellSize);
        let cellData = alternative.addCellData(cellDataIndex);
        this.collectCellData.set(cellDataKey, cellData);
        return cellData;
    }
}