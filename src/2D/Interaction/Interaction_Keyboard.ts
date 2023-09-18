import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Text = Laya.Text;

const { regClass, property } = Laya;

@regClass()
export class Interaction_Keyboard extends BaseScript {

	private logger: Text;
	private keyDownList: any[];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}

	private setup(): void {
		this.listenKeyboard();
		this.createLogger();

		Laya.timer.frameLoop(1, this, this.keyboardInspector);
	}

	private listenKeyboard(): void {
		this.keyDownList = [];

		//添加键盘按下事件,一直按着某按键则会不断触发
		Laya.stage.on(Event.KEY_DOWN, this, this.onKeyDown);
		//添加键盘抬起事件
		Laya.stage.on(Event.KEY_UP, this, this.onKeyUp);
	}

	/**键盘按下处理*/
	onKeyDown(e: any = null): void {
		this.keyDownList[e["keyCode"]] = true;
	}

	/**键盘抬起处理*/
	onKeyUp(e: any = null): void {
		delete this.keyDownList[e["keyCode"]];
	}

	private keyboardInspector(e: any = null): void {
		var numKeyDown: number = this.keyDownList.length;

		var newText: string = '[ ';
		for (var i: number = 0; i < numKeyDown; i++) {
			if (this.keyDownList[i]) {
				newText += i + " ";
			}
		}
		newText += ']';

		this.logger.changeText(newText);
	}

	/**添加提示文本*/
	private createLogger(): void {
		this.logger = new Text();

		this.logger.size(this.pageWidth, this.pageHeight);
		this.logger.fontSize = 30;
		this.logger.font = "SimHei";
		this.logger.wordWrap = true;
		this.logger.color = "#FFFFFF";
		this.logger.align = 'center';
		this.logger.valign = 'middle';

		this.box2D.addChild(this.logger);
	}

	onDestroy(): void {
		Laya.timer.clear(this, this.keyboardInspector);
        this.box2D.off(Event.KEY_DOWN, this, this.onKeyDown);
		this.box2D.off(Event.KEY_UP, this, this.onKeyUp);
	}
 
}