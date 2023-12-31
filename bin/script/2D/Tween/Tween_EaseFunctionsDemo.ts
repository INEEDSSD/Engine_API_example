import { BaseScript } from "../../BaseScript";

import Label = Laya.Label;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import Input = Laya.Input;
import List = Laya.List;
import Handler = Laya.Handler;
import Tween = Laya.Tween;
import Box = Laya.Box;
import Text = Laya.Text;
import Ease = Laya.Ease;

const { regClass, property } = Laya;

@regClass()
export class Tween_EaseFunctionsDemo extends BaseScript {

	private character: Sprite;
	private duration: number = 2000;
	private tween: Tween;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.setup();
	}

	private setup(): void {
		this.createCharacter();
		this.createEaseFunctionList();
		this.createDurationCrontroller();
	}

	private createCharacter(): void {
		this.character = new Sprite();
		this.character.loadImage("resources/res/cartoonCharacters/1.png");
		this.character.pos(100, 50);
		this.box2D.addChild(this.character);
	}

	private createEaseFunctionList(): void {
		var easeFunctionsList: List = new List();

		easeFunctionsList.itemRender = ListItemRender;
		easeFunctionsList.pos(5, 5);

		easeFunctionsList.repeatX = 1;
		easeFunctionsList.repeatY = 20;

		easeFunctionsList.vScrollBarSkin = '';

		easeFunctionsList.selectEnable = true;
		easeFunctionsList.selectHandler = new Handler(this, this.onEaseFunctionChange, [easeFunctionsList]);
		easeFunctionsList.renderHandler = new Handler(this, this.renderList);
		this.box2D.addChild(easeFunctionsList);

		var data: any[] = [];
		data.push('backIn', 'backOut', 'backInOut');
		data.push('bounceIn', 'bounceOut', 'bounceInOut');
		data.push('circIn', 'circOut', 'circInOut');
		data.push('cubicIn', 'cubicOut', 'cubicInOut');
		data.push('elasticIn', 'elasticOut', 'elasticInOut');
		data.push('expoIn', 'expoOut', 'expoInOut');
		data.push('linearIn', 'linearOut', 'linearInOut');
		data.push('linearNone');
		data.push('QuadIn', 'QuadOut', 'QuadInOut');
		data.push('quartIn', 'quartOut', 'quartInOut');
		data.push('quintIn', 'quintOut', 'quintInOut');
		data.push('sineIn', 'sineOut', 'sineInOut');
		data.push('strongIn', 'strongOut', 'strongInOut');

		easeFunctionsList.array = data;
	}

	private renderList(item: ListItemRender, e: any = null): void {
		item.setLabel(item.dataSource);
	}

	private onEaseFunctionChange(list: List, e: any = null): void {
		this.character.pos(100, 50);

		this.tween && this.tween.clear();
		//@ts-ignore
		this.tween = Tween.to(this.character, { "x": 350, "y": 250 }, this.duration, Laya.Ease[list.selectedItem] );
	}

	private createDurationCrontroller(): void {
		var durationInput: Input = this.createInputWidthLabel("Duration:", '2000', 400, 10);
		durationInput.on(Event.INPUT, this,  (): void => {
			this.duration = parseInt(durationInput.text);
		});
	}

	private createInputWidthLabel(label: string, prompt: string, x: number, y: number): Input {
		var text: Text = new Text();
		text.text = label;
		text.color = "white";
		this.box2D.addChild(text);
		text.pos(x, y);

		var input: Input = new Input();
		input.size(50, 20);
		input.text = prompt;
		input.align = 'center';
		this.box2D.addChild(input);
		input.color = "#FFFFFF";
		input.borderColor = "#FFFFFF";
		input.pos(text.x + text.width + 10, text.y - 3);

		return input
	}

	onDestroy(): void {
		if (this.tween) {
			this.tween.clear();
		}
	}
}



class ListItemRender extends Box {
	private label: Label;

	constructor() {
		super();
		this.size(100, 20);

		this.label = new Label();
		this.label.fontSize = 12;
		this.label.color = "#FFFFFF";
		this.addChild(this.label);
	}

	setLabel(value: string): void {
		this.label.text = value;
	}
}