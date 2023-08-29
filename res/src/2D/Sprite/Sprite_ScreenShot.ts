/*Laya.LayaEnv.beforeInit = function(config: Laya.IStageConfig) {
    //这个方法会在Laya.init前调用
    console.log("before init");
    //这里可以对config以及Laya.Config、Laya.Config3D进行自定义的修改
    Laya.Config.preserveDrawingBuffer =true;
    Laya.Config.isAlpha =true;       
}*/


import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Image = Laya.Image;
import Texture = Laya.Texture;
import Button = Laya.Button;
import Event = Laya.Event;
import RenderTexture2D = Laya.RenderTexture2D;
import RenderTargetFormat = Laya.RenderTargetFormat;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class Sprite_ScreenShot extends BaseScript {

    private btnArr:Array<string> = ["resources/image/img_btn_bg.png", "resources/image/img_btn_bg.png", "resources/image/img_btn_bg.png"];
    private nameArr:Array<string> = ["canvas截图","sprite截图","清理"];
    private _canvas:HTMLCanvasElement;
    private aimSp:Sprite;
    private drawImage:Image;
    private drawSp:Sprite;
	private monkeyTexture:Texture;

    constructor() {
        super();
    }

    onAwake(): void {

        //需要在 Laya.LayaEnv.beforeInit 中提前调用 Laya.Config.preserveDrawingBuffer =true;
        super.base();

        Laya.loader.load(this.btnArr.concat("resources/res/apes/monkey3.png")).then( ()=>{
            this.onLoaded();
        } );

    }

    private createButton(skin: string,name:string,cb:Function,index:number): Button {
        var btn: Button = new Button(skin,name);
        this.owner.addChild(btn);
        btn.on(Event.CLICK,this,cb);
        btn.size(120,30);
        btn.labelSize = 16;
        btn.sizeGrid = "21,83,22,76";
        btn.stateNum = 1;
        btn.labelColors = "#ffffff";        
        btn.name = name;
        btn.right = 10;
        btn.top = 100 + index * (btn.height + 10);
		return btn;
    }

    private onLoaded(){

        for (let index = 0; index < this.btnArr.length; index++) {
            this.createButton(this.btnArr[index],this.nameArr[index],this._onclick,index);
        }
        this._canvas = window.document.getElementById("layaCanvas") as HTMLCanvasElement;
        

        this.aimSp = new Sprite();
        this.aimSp.size(this.pageWidth/2,this.pageHeight/2);
        this.owner.addChild(this.aimSp);
        this.aimSp.graphics.drawRect(0,0,this.aimSp.width,this.aimSp.height,"#333333");

        this.monkeyTexture = Laya.loader.getRes("resources/res/apes/monkey3.png");
        this.aimSp.graphics.drawTexture(this.monkeyTexture,0,0,this.monkeyTexture.width,this.monkeyTexture.height);

        this.drawImage = new Image();
        this.drawImage.size(this.pageWidth/2,this.pageHeight/2);
        this.owner.addChild(this.drawImage);
        this.drawImage.bottom = this.drawImage.right = 0;

        this.drawSp = new Sprite();
        this.owner.addChild(this.drawSp);
        this.drawSp.size(this.pageWidth/2,this.pageHeight/2);
        this.drawSp.y = this.pageHeight/2;
        this.drawSp.graphics.drawRect(0,0,this.drawSp.width,this.drawSp.height,"#ff0000");
    }

    private _onclick(e:Event){
        switch (e.target.name) {
            case this.nameArr[0]:

                var base64Url:string = this._canvas.toDataURL("image/png",1);
                this.drawImage.skin = base64Url;
                console.log(base64Url);

                break;
            case this.nameArr[1]:

                var ddrt = new RenderTexture2D(Browser.clientWidth*Browser.pixelRatio, Browser.clientHeight*Browser.pixelRatio, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.None);
                Laya.stage.drawToTexture(Browser.clientWidth*Browser.pixelRatio, Browser.clientHeight*Browser.pixelRatio, 0, 0, ddrt);
                var text:Texture = new Texture(ddrt);
                this.drawSp.graphics.drawTexture(text,0,0,this.drawSp.width,this.drawSp.height);

                // var htmlCanvas: Laya.HTMLCanvas = this.drawSp.drawToCanvas(720, 1280, 0, 0);
                // var base64Url:string = htmlCanvas.toBase64("image/png",1);
                // console.log(base64Url);
                
                break;
            case this.nameArr[2]:
                this.drawImage.skin = null;
                this.drawSp.graphics.clear();
                this.drawSp.graphics.drawRect(0,0,this.drawSp.width,this.drawSp.height,"#ff0000");
                break;
        }
    }

}