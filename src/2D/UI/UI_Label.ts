import { BaseScript } from "../../BaseScript";

import Label = Laya.Label;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_Label extends BaseScript {


    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		this.createLabel("#FFFFFF", null).pos(30, 50);
		this.createLabel("#00FFFF", null).pos(290, 50);
		this.createLabel("#FFFF00", "#FFFFFF").pos(30, 100);
		this.createLabel("#000000", "#FFFFFF").pos(290, 100);
		this.createLabel("#FFFFFF", "#00FFFF").pos(30, 150);
		this.createLabel("#0080FF", "#00FFFF").pos(290, 150);
	}

	private createLabel(color: string, strokeColor: string): Label {
		const STROKE_WIDTH: number = 4;

		var label: Label = new Label();
		label.font = "Microsoft YaHei";
		label.text = "SAMPLE DEMO";
		label.fontSize = 30;
		label.color = color;

		if (strokeColor) {
			label.stroke = STROKE_WIDTH;
			label.strokeColor = strokeColor;
		}

		this.box2D.addChild(label);

		return label;
	}
}