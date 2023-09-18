import { BaseScript } from "../../BaseScript";

import Byte = Laya.Byte;
import Event = Laya.Event;
import Socket = Laya.Socket;

const { regClass, property } = Laya;

@regClass()
export class NetWork_Socket extends BaseScript {

    private socket: Socket;
	private output: Byte;

	private text: Laya.Label = new Laya.Label();
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.connect();

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
		this.socket = new Socket();
		//socket.connect("echo.websocket.org", 80);
		this.socket.connectByUrl("wss://echo.websocket.org:80");

		this.output = this.socket.output;

		this.socket.on(Event.OPEN, this, this.onSocketOpen);
		this.socket.on(Event.CLOSE, this, this.onSocketClose);
		this.socket.on(Event.MESSAGE, this, this.onMessageReveived);
		this.socket.on(Event.ERROR, this, this.onConnectError);
	}

	private onSocketOpen(e: any = null): void {
		console.log("Connected");

		// 发送字符串
		this.socket.send("demonstrate <sendString>");

		// 使用output.writeByte发送
		var message: string = "demonstrate <output.writeByte>";
		for (var i: number = 0; i < message.length; ++i) {
			this.output.writeByte(message.charCodeAt(i));
		}
		this.socket.flush();
	}

	private onSocketClose(e: any = null): void {
		console.log("Socket closed");
	}

	private onMessageReveived(message: any = null): void {
		console.log("Message from server:");
		if (typeof (message) == 'string') {
			console.log(message);
		}
		else if (message instanceof ArrayBuffer) {
			console.log(new Byte(message).readUTFBytes());
		}
		this.socket.input.clear();
	}

	private onConnectError(e: Event = null): void {
		console.log("error");
	}
}