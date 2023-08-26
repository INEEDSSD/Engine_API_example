import { BaseScript } from "../../BaseScript";


const { regClass, property } = Laya;

@regClass()
export class Network_ProtocolBuffer extends BaseScript {

	private ProtoBuf: any = (window as any).protobuf;

	private text: Laya.Label = new Laya.Label();
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		var resPath: string = "resources/res/protobuf/awesome.proto";
		this.ProtoBuf.load(resPath, this.onAssetsLoaded);

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

	private onAssetsLoaded(err: any, root: any): void {
		if (err)
			throw err;

		var AwesomeMessage: any = root.lookupType("awesomepackage.AwesomeMessage");

		console.log(AwesomeMessage);
		var payload: any = { awesomeField: "AwesomeString" };
		console.log(payload);
		var errMsg: any = AwesomeMessage.verify(payload);

		if (errMsg)
			throw Error(errMsg);

		var message: any = AwesomeMessage.create(payload);
		console.log(message);
		var buffer: any = AwesomeMessage.encode(message).finish();

		//var message:* = AwesomeMessage.decode(buffer);
		//var message:* = AwesomeMessage.decode(buffer);
		console.log(message);
		console.log(buffer);

	}
}