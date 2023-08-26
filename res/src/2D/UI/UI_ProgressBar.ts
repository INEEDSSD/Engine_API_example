import { BaseScript } from "../../BaseScript";

import ProgressBar = Laya.ProgressBar;
import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class UI_ProgressBar extends BaseScript {

    private progressBar: ProgressBar;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		Laya.loader.load(["resources/res/ui/progressBar.png", "resources/res/ui/progressBar$bar.png"]).then( ()=>{
            this.onLoadComplete();
        } );
	}

	private onLoadComplete(e: any = null): void {
		this.progressBar = new ProgressBar("resources/res/ui/progressBar.png");

		this.progressBar.width = 400;

		this.progressBar.x = (this.pageWidth - this.progressBar.width) / 2;
		this.progressBar.y = this.pageHeight / 2;

		this.progressBar.sizeGrid = "5,5,5,5";
		this.progressBar.changeHandler = new Handler(this, this.onChange);
		this.box2D.addChild(this.progressBar);

		Laya.timer.loop(100, this, this.changeValue);
	}

	private changeValue(): void {

		if (this.progressBar.value >= 1)
			this.progressBar.value = 0;
		this.progressBar.value += 0.05;
	}

	private onChange(value: number): void {
		console.log("进度：" + Math.floor(value * 100) + "%");
	}

 
}