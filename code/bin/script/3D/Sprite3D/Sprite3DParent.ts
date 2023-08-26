import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Handler = Laya.Handler;
import Button = Laya.Button;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class Sprite3DParent extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

	private layaMonkeyParent:Sprite3D;
	private layaMonkeySon:Sprite3D;

	private changeActionButton:Button;
	private changeActionButton1:Button;
	private changeActionButton2:Button;
	private changeActionButton3:Button;
	private changeActionButton4:Button;
	private changeActionButton5:Button;

    constructor() {
        super();
    }
    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 0.75, 1);
		this.camera.transform.rotate(new Vector3(-30, 0, 0), true, false);


		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey2.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"];
		Laya.loader.load(resource).then( (res:any[])=>{

			//添加父级猴子
			this.layaMonkeyParent = this.scene.addChild(res[1].create()) as Sprite3D;
			//加载第二只猴子，作为子猴子
			this.layaMonkeySon = (<Sprite3D>res[0].create());
			this.layaMonkeySon.transform.localPosition = (new Vector3(0.2, 0, 0));
			//缩放
			var scale: Vector3 = new Vector3(0.5, 0.5, 0.5);
			this.layaMonkeySon.transform.localScale = scale;

			this.layaMonkeyParent.addChild(this.layaMonkeySon);

			this.loadUI();

		} );
	}

	private loadUI(): void {
		Laya.loader.load(["resources/image/img_btn_bg.png"], Handler.create(this, ()=> {
			this.changeActionButton = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "移动父级猴子"));
			this.changeActionButton.size(120, 30);
			this.changeActionButton.labelSize = 10;
			this.changeActionButton.sizeGrid = "21,83,22,76";
			this.changeActionButton.stateNum = 1;
			this.changeActionButton.labelColors = "#ffffff";
			this.changeActionButton.pos(this.pageWidth - 170, 120);
			this.changeActionButton.on(Event.CLICK, this, this.stypeFun0);

			this.changeActionButton1 = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "放大父级猴子"));
			this.changeActionButton1.size(120, 30);
			this.changeActionButton1.labelSize = 10;
			this.changeActionButton1.sizeGrid = "21,83,22,76";
			this.changeActionButton1.stateNum = 1;
			this.changeActionButton1.labelColors = "#ffffff";
			this.changeActionButton1.pos(this.pageWidth - 170, 160);
			this.changeActionButton1.on(Event.CLICK, this, this.stypeFun1);

			this.changeActionButton2 = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "旋转父级猴子"));
			this.changeActionButton2.size(120, 30);
			this.changeActionButton2.labelSize = 10;
			this.changeActionButton2.sizeGrid = "21,83,22,76";
			this.changeActionButton2.stateNum = 1;
			this.changeActionButton2.labelColors = "#ffffff";
			this.changeActionButton2.pos(this.pageWidth - 170, 200);
			this.changeActionButton2.on(Event.CLICK, this, this.stypeFun2);

			this.changeActionButton3 = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "移动子级猴子"));
			this.changeActionButton3.size(120, 30);
			this.changeActionButton3.labelSize = 10;
			this.changeActionButton3.sizeGrid = "21,83,22,76";
			this.changeActionButton3.stateNum = 1;
			this.changeActionButton3.labelColors = "#ffffff";
			this.changeActionButton3.pos(this.pageWidth - 170, 250);
			this.changeActionButton3.on(Event.CLICK, this, this.stypeFun3);

			this.changeActionButton4 = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "放大子级猴子"));
			this.changeActionButton4.size(120, 30);
			this.changeActionButton4.labelSize = 10;
			this.changeActionButton4.sizeGrid = "21,83,22,76";
			this.changeActionButton4.stateNum = 1;
			this.changeActionButton4.labelColors = "#ffffff";
			this.changeActionButton4.pos(this.pageWidth - 170, 290);
			this.changeActionButton4.on(Event.CLICK, this, this.stypeFun4);

			this.changeActionButton5 = this.owner.addChild(new Button("resources/image/img_btn_bg.png", "旋转子级猴子"));
			this.changeActionButton5.size(120, 30);
			this.changeActionButton5.labelSize = 10;
			this.changeActionButton5.sizeGrid = "21,83,22,76";
			this.changeActionButton5.stateNum = 1;
			this.changeActionButton5.labelColors = "#ffffff";
			this.changeActionButton5.pos(this.pageWidth - 170, 330);
			this.changeActionButton5.on(Event.CLICK, this, this.stypeFun5);
		}));
	}

	
	private stypeFun0() {
		this.layaMonkeyParent.transform.translate(new Vector3(-0.1, 0, 0));
	}

	private stypeFun1() {
		var scale: Vector3 = new Vector3(1.2, 1.2, 1.2);
		this.layaMonkeyParent.transform.localScale = scale;
	}

	private stypeFun2() {
		this.layaMonkeyParent.transform.rotate(new Vector3(-15, 0, 0), true, false);
	}

	private stypeFun3() {
		this.layaMonkeySon.transform.translate(new Vector3(-0.1, 0, 0));
	}

	private stypeFun4() {
		var scale: Vector3 = new Vector3(1, 1, 1);
		this.layaMonkeySon.transform.localScale = scale;
	}

	private stypeFun5() {
		this.layaMonkeySon.transform.rotate(new Vector3(-15, 0, 0), true, false);
	}
 
}