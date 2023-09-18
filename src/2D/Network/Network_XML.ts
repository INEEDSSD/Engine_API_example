import { BaseScript } from "../../BaseScript";


import Utils = Laya.Utils;
import XML = Laya.XML;

const { regClass, property } = Laya;

@regClass()
export class Network_XML extends BaseScript {


	private text: Laya.Label = new Laya.Label();
    constructor() {
        super();
    }

    onAwake(): void {

        super.base();
		
		this.setup();

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

	private setup(): void {
		var xmlValueContainsError: string = "<root><item>item a</item><item>item b</item>somethis...</root1>";
		var xmlValue: string = "<root><item>item a</item><item>item b</item>somethings...</root>";

		this.proessXML(xmlValueContainsError);
		console.log("\n");
		this.proessXML(xmlValue);
	}

	// 使用xml
	private proessXML(source: string): void {
		try {
			var xml: XML = new XML(source);
		}
		catch (e) {
			return;
		}

		this.printDirectChildren(xml);
	}

	// 打印直接子级
	private printDirectChildren(xml: XML): void {
		var nodes: any[] = xml.elements();
		for (var i: number = 0; i < nodes.length; i++) {
			var node: XML = nodes[i];

			console.log("节点名称: " + node.name);


			console.log("\n");
		}
	}

}