import { BaseScript } from "../../BaseScript";

import ComboBox = Laya.ComboBox;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_ComboBox extends BaseScript {
	private skin: string = "resources/res/ui/combobox.png";

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(this.skin).then( ()=>{
            this.onLoadComplete();
        } );
	}

	private onLoadComplete(e: any = null): void {
		var cb: ComboBox = this.createComboBox(this.skin);
		cb.autoSize = true;
		cb.pos((this.pageWidth - cb.width) / 2, 100);
		cb.autoSize = false;
	}

	private createComboBox(skin: string): ComboBox {
		var comboBox: ComboBox = new ComboBox(skin, "item0,item1,item2,item3,item4,item5");
		comboBox.labelSize = 30;
		comboBox.itemSize = 25;
		comboBox.selectHandler = new Handler(this, this.onSelect, [comboBox]);
		this.box2D.addChild(comboBox);

		return comboBox;
	}

	private onSelect(cb: ComboBox, e: any = null): void {
		console.log("选中了： " + cb.selectedLabel);
	}
}