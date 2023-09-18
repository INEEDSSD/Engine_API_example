import { BaseScript } from "../../BaseScript";

import Tab = Laya.Tab;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Tab extends BaseScript {

    private skins: any[] = ["resources/res/ui/tab1.png", "resources/res/ui/tab2.png"];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(this.skins).then( ()=>{
            this.onLoadComplete();
        } );
	}

	private onLoadComplete(e: any = null): void {
		var tabA: Tab = this.createTab(this.skins[0]);
		tabA.pos(40, 120);
		tabA.labelColors = "#000000,#d3d3d3,#333333";

		var tabB: Tab = this.createTab(this.skins[1]);
		tabB.pos(40, 220);
		tabB.labelColors = "#FFFFFF,#8FB299,#FFFFFF";
	}

	private createTab(skin: string): Tab {
		var tab: Tab = new Tab();
		tab.skin = skin;

		tab.labelBold = true;
		tab.labelSize = 20;
		tab.labelStrokeColor = "#000000";

		tab.labels = "Tab Control 1,Tab Control 2,Tab Control 3";
		tab.labelPadding = "0,0,0,0";

		tab.selectedIndex = 1;

		this.onSelect(tab.selectedIndex);
		tab.selectHandler = new Handler(this, this.onSelect);

		this.box2D.addChild(tab);

		return tab;
	}

	private onSelect(index: number): void {
		console.log("当前选择的标签页索引为 " + index);
	}


 
}