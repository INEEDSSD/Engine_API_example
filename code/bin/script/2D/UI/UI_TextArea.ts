import { BaseScript } from "../../BaseScript";

import TextArea = Laya.TextArea;

const { regClass, property } = Laya;

@regClass()
export class UI_TextArea extends BaseScript {
	
	private skin: string = "resources/res/ui/textarea.png";

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

		let ta: TextArea = new TextArea("");
		ta.skin = this.skin;

		ta.font = "Arial";
		ta.fontSize = 18;
		ta.bold = true;

		ta.color = "#3d3d3d";

		ta.pos(100, 15);
		ta.size(375, 355);

		ta.padding = "70,8,8,8";

		this.owner.addChild(ta);
	}


 
}