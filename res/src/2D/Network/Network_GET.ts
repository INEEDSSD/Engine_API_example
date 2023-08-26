import { BaseScript } from "../../BaseScript";

import Event = Laya.Event;
import Text = Laya.Text;
import HttpRequest = Laya.HttpRequest;

const { regClass, property } = Laya;

@regClass()
export class Network_GET extends BaseScript {
	private hr: HttpRequest;
	private logger: Text;

	private text: Laya.Label = new Laya.Label();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.connect();
		this.showLogger();

		//设置文本显示框位置
		this.text.text = "请查看源码和调试信息，了解如何使用";
		//显示文本显示框
		this.text.color = "#FFFFFF";
		this.text.font = "Impact";
		this.text.fontSize = 25;
		this.text.width = 800;
		this.text.anchorX = 0.5;
		this.text.align = "center"; 
		this.text.x = this.pageWidth / 2;
		this.text.y = 50;
		this.owner.addChild(this.text);		
	}

	private connect(): void {
		this.hr = new HttpRequest();
		this.hr.once(Event.PROGRESS, this, this.onHttpRequestProgress);
		this.hr.once(Event.COMPLETE, this, this.onHttpRequestComplete);
		this.hr.once(Event.ERROR, this, this.onHttpRequestError);
		this.hr.send('https://xkxz.zhonghao.huo.inner.layabox.com/', null, 'get', 'text');
	}

	private showLogger(): void {
		this.logger = new Text();

		this.logger.fontSize = 30;
		this.logger.color = "#FFFFFF";
		this.logger.align = 'center';
		this.logger.valign = 'middle';

		this.logger.size(this.pageWidth, this.pageHeight);
		this.logger.text = "等待响应...\n";
		this.box2D.addChild(this.logger);		
	}

	private onHttpRequestError(e: any = null): void {
		console.log(e);
	}

	private onHttpRequestProgress(e: any = null): void {
		console.log(e)
	}

	private onHttpRequestComplete(e: any = null): void {
		this.logger.text += "收到数据：" + this.hr.data;
	}
}