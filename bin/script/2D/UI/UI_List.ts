import { BaseScript } from "../../BaseScript";

import List = Laya.List;
import Event = Laya.Event;


const { regClass, property } = Laya;

@regClass()
export class UI_List extends BaseScript {

	private _list: List;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		this.setup();
	}
	
	private setup(): void {
		var list: List = new List();

		list.itemRender = Item;
		list.repeatX = 1;
		list.repeatY = 4;

		list.x = (this.pageWidth - Item.WID) / 2;
		list.y = (this.pageHeight - Item.HEI * list.repeatY) / 2;

		// 设置List的垂直滚动
		list.scrollType = Laya.ScrollType.Vertical;
		// 设置List的垂直滚动皮肤，不设置或者""就没有滚动条皮肤
		list.vScrollBarSkin = "";
		// 是否开启橡皮筋效果
		list.elasticEnabled = true;
		// 设置橡皮筋回弹时间。单位为毫秒。
		list.scrollBar.elasticBackTime = 300;
		// 设置橡皮筋极限距离。
		list.scrollBar.elasticDistance = 50;
		list.selectEnable = true;
		list.selectHandler = new Laya.Handler(this, this.onSelect);

		list.renderHandler = new Laya.Handler(this, this.updateItem);
		this.box2D.addChild(list);

		// 设置数据项为对应图片的路径
		var data: any[] = [];
		for (var i: number = 0; i < 10; ++i) {
			data.push("resources/res/ui/listskins/1.jpg");
			data.push("resources/res/ui/listskins/2.jpg");
			data.push("resources/res/ui/listskins/3.jpg");
			data.push("resources/res/ui/listskins/4.jpg");
			data.push("resources/res/ui/listskins/5.jpg");
		}
		list.array = data;
		this._list = list;
	}

	private _itemHeight: number;
	private _oldY: number;
	private onMuseHandler(type: Event, index: number): void {
		console.log("type:" + type.type + "ddd--" + this._list.scrollBar.value + "---index:" + index);
		var curX: number, curY: number;
		if (type.type == "mousedown") {
			this._oldY = Laya.stage.mouseY;
			let itemBox = this._list.getCell(index);
			this._itemHeight = itemBox.height;
		} else if (type.type == "mouseout") {
			curY = Laya.stage.mouseY;
			var chazhiY: number = Math.abs(curY - this._oldY);
			var tempIndex: number = Math.ceil(chazhiY / this._itemHeight);
			console.log("----------tempIndex:" + tempIndex + "---_itemHeight:" + this._itemHeight + "---chazhiY:" + chazhiY);
			var newIndex: number;
			
		}
	}

	private updateItem(cell: Item, index: number): void {
		cell.setImg(cell.dataSource);
	}

	private onSelect(index: number): void {
		console.log("当前选择的索引：" + index);
	}
}



class Item extends Laya.Box {
	static WID: number = 373;
	static HEI: number = 85;

	private img: Laya.Image;
	constructor() {
		super();
		this.size(Item.WID, Item.HEI);
		this.img = new Laya.Image();
		this.addChild(this.img);
	}

	setImg(src: string): void {
		this.img.skin = src;
	}
}
