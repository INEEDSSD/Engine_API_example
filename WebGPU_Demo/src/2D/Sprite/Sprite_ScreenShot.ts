Laya.addBeforeInitCallback(function () {    //这个方法会在引擎初始化前调用
    //对引擎Config进行自定义的修改,canvas的屏幕截图需要开启绘制缓冲区
    // Laya.Config.preserveDrawingBuffer = true;
});

import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Image = Laya.Image;
import Texture = Laya.Texture;
import Button = Laya.Button;
import Event = Laya.Event;
import RenderTexture2D = Laya.RenderTexture2D;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class Sprite_ScreenShot extends BaseScript {

    private resArr: Array<string> = ["resources/res/apes/monkey3.png", "resources/image/img_btn_bg.png"];
    private nameArr: Array<string> = ["画布截屏显示", "舞台截屏绘制", "单图转base64显示", "清空所有新图"];
    private _canvas: HTMLCanvasElement;
    private aimSp: Sprite;
    private drawImage: Image;
    private drawSp: Sprite;
    private monkeyTexture: Texture;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base();
        //需要在 Laya.addBeforeInitCallback 中提前调用 Laya.Config.preserveDrawingBuffer =true;
        Laya.loader.load(this.resArr).then(() => {
            this.onLoaded();
        });

    }

    private createButton(skin: string, name: string, cb: Function, index: number): Button {
        var btn: Button = new Button(skin, name);
        this.owner.addChild(btn);
        btn.on(Event.CLICK, this, cb);
        btn.size(200, 30);
        btn.labelSize = 16;
        btn.sizeGrid = "21,83,22,76";
        btn.stateNum = 1;
        btn.labelColors = "#ffffff";
        btn.name = name;
        btn.right = 10;
        btn.top = 20 + index * (btn.height + 10);
        return btn;
    }

    private onLoaded() {
        for (let index = 0; index < this.nameArr.length; index++) {
            this.createButton(this.resArr[1], this.nameArr[index], this._onclick, index);
        }
        this._canvas = window.document.getElementById("layaCanvas") as HTMLCanvasElement;


        this.aimSp = new Sprite();
        this.aimSp.size(this.pageWidth / 2, this.pageHeight / 2);
        this.owner.addChild(this.aimSp);
        this.aimSp.graphics.drawRect(0, 0, this.aimSp.width, this.aimSp.height, "#333333");

        this.monkeyTexture = Laya.loader.getRes(this.resArr[0]);
        this.aimSp.graphics.drawTexture(this.monkeyTexture, 0, 0, this.monkeyTexture.width, this.monkeyTexture.height);

        this.drawImage = new Image();
        this.owner.addChild(this.drawImage);
        this.drawImage.bottom = this.drawImage.right = 0;

        this.drawSp = new Sprite();
        this.owner.addChild(this.drawSp);
        this.drawSp.size(this.pageWidth / 2, this.pageHeight / 2);
        this.drawSp.y = this.pageHeight / 2;
        this.drawSp.graphics.drawRect(0, 0, this.drawSp.width, this.drawSp.height, "#ff0000");
    }

    private _onclick(e: Event) {
        switch (e.target.name) {
            case this.nameArr[0]://将画布截屏为图片
                // 获取canvas画布的base64编码
                var base64Url: string = this._canvas.toDataURL("image/png", 1);
                //将base64编码的图片设置为Image的皮肤
                this.drawImage.skin = base64Url;
                this.drawImage.size(this.pageWidth / 2, this.pageHeight / 2);
                // console.log(base64Url);
                break;
            case this.nameArr[1]://将舞台截屏为图片
                // 不推荐使用这种方法，drawToTexture方法已废弃
                // var text: Texture = Laya.stage.drawToTexture(Browser.clientWidth * Laya.stage.clientScaleX, Browser.clientHeight * Laya.stage.clientScaleY, 0, 0) as Texture;
                // this.drawSp.graphics.drawTexture(text, 0, 0, this.drawSp.width, this.drawSp.height);

                // 将舞台对象绘制到RenderTexture2D上
                let rt2d: RenderTexture2D = Laya.stage.drawToRenderTexture2D(Browser.clientWidth * Laya.stage.clientScaleX, Browser.clientHeight * Laya.stage.clientScaleY, 0, 0);
                // 将RenderTexture2D转换为Texture对象
                let tex = new Texture(rt2d, Texture.INV_UV);
                // 将Texture对象通过graphics绘制到Sprite上
                this.drawSp.graphics.drawTexture(tex, 0, 0, this.drawSp.width, this.drawSp.height);
                break;
            case this.nameArr[2]://将单图另存绘制
                const monkeImg = new Sprite();
                monkeImg.texture = this.monkeyTexture;
                let rt2d2 = monkeImg.drawToRenderTexture2D(monkeImg.width, monkeImg.height, 0, 0, null, true, true);
                // uint8ArrayToArrayBuffer只能用于webGL下，如果需要在webGPU下使用，需要用uint8ArrayToArrayBufferAsync
                let base64Str = Laya.Utils.uint8ArrayToArrayBuffer(rt2d2);
                this.drawImage.skin = base64Str;
                this.drawImage.width = monkeImg.width;
                this.drawImage.height = monkeImg.height;
                // console.log(base64Str);
                //-----以下是将导出的base64字符串应用于网页中的示例，常见于试玩广告-----//
                // // 创建原生 img 元素
                // let img = document.createElement('img');
                // //@ts-ignore
                // img.src = base64Str;
                // img.style.position = 'absolute';
                // img.style.left = '10px';
                // img.style.top = '10px';
                // document.body.appendChild(img);
                //---------------------------------------over-----------------------//
                break;
            case this.nameArr[3]://清理绘制
                this.drawImage.skin = null;
                this.drawImage.texture = null;
                this.drawSp.graphics.clear();
                this.drawSp.graphics.drawRect(0, 0, this.drawSp.width, this.drawSp.height, "#ff0000");
                break;
        }
    }
}