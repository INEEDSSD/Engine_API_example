import { BaseScript } from "../../BaseScript";

import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Loader_MultipleType extends BaseScript {

    private ROBOT_DATA_PATH: string = "resources/res/skeleton/robot/robot.bin";
	private ROBOT_TEXTURE_PATH: string = "resources/res/skeleton/robot/texture.png";

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		var assets: any[] = [];
		assets.push({ "url": this.ROBOT_DATA_PATH, "type": Loader.BUFFER });
		assets.push({ "url": this.ROBOT_TEXTURE_PATH, "type": Loader.IMAGE });

		Laya.loader.load(assets).then( ()=>{
            this.onAssetsLoaded();
        } );
	}

	private onAssetsLoaded(e: any = null): void {
		var robotData: any = Loader.getRes(this.ROBOT_DATA_PATH);
		var robotTexture: any = Loader.getRes(this.ROBOT_TEXTURE_PATH);
		// 使用资源
	}
 
}