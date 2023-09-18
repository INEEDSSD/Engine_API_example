import { BaseScript } from "../../BaseScript";

import Texture = Laya.Texture;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class Loader_SingleType extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		// 加载一张png类型资源
		Laya.loader.load("resources/res/apes/monkey0.png").then( (texture)=>{
            this.onAssetLoaded1(texture);
        } );
		// 加载多张png类型资源
		Laya.loader.load(
			["resources/res/apes/monkey0.png", "resources/res/apes/monkey1.png", "resources/res/apes/monkey2.png"]).then( ()=>{
				this.onAssetLoaded2();
			} );
	}

	private onAssetLoaded1(texture: Texture): void {
		// 使用texture
	}

	private onAssetLoaded2(): void {
		var pic1: Texture = Loader.getRes("resources/res/apes/monkey0.png");
		var pic2: Texture = Loader.getRes("resources/res/apes/monkey1.png");
		var pic3: Texture = Loader.getRes("resources/res/apes/monkey2.png");
		// 使用资源
	}
}