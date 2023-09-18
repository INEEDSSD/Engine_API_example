import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

import Sprite = Laya.Sprite;
import Byte = Laya.Byte;
import Texture = Laya.Texture;
import Texture2D = Laya.Texture2D;
import TextureFormat = Laya.TextureFormat;

@regClass()
export class Sprite_BinaryImage extends BaseScript {

	private sp1:Sprite = new Sprite();
	private sp2:Sprite = new Sprite();
	private sp3:Sprite = new Sprite();
	private imgBlob:Blob;
	private imageArrayBuffer:ArrayBuffer;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();		

		//test.bin为二进制图片，图片加密数据是在图片的前面写入了四个字节的数据
        Laya.loader.fetch("resources/res/test.bin","arraybuffer").then((res)=>{

			//获得res的ArrayBuffer数据
            let arraybuffer: ArrayBuffer = res;
			//Byte数组接收arraybuffer
            let byte:Byte = new Byte(arraybuffer);
			//从第四个字节开始读取数据
            byte.writeArrayBuffer(arraybuffer,4);
			//获得最终的ArrayBuffer
			this.imageArrayBuffer = byte.buffer;
			//实例化一个Blob对象blob，用来创建一个img标签
            this.imgBlob = new Blob([this.imageArrayBuffer], { type: "image/png" });
            this.showApe1();      
			
        });		
        
		super.addBottomButton( ["切换方式","切换方式","切换方式"] , this, [this.showApe2, this.showApe3,this.showApe1] );
    }

    showApe1() {

		let reader = new FileReader();

		//转换为Base64图片格式
		reader.readAsDataURL(this.imgBlob);
		reader.onload = (e)=> {     

			//加载Base64图片数据
			this.sp1.loadImage(e.target.result as string);     
			this.sp1.x = 10;    
			this.owner.addChild(this.sp1);
			
			this.sp2.removeSelf();
			this.sp3.removeSelf();
		}		
	}

    showApe2() {

		//创建一个url对象；
		var url:string = Laya.Browser.window.URL.createObjectURL(this.imgBlob);
		console.log(url);
		//加载URL获得HTMLImageElement
        Laya.loader.fetch(url,"image" ).then((res)=>{

			//创建Texture2D
			var t2d: Texture2D = new Texture2D(res.width, res.height, TextureFormat.R8G8B8A8, false, false, true);
			t2d.setImageData(res, true, false);

			//创建Texture
			var texture: Texture = new Texture(t2d);

			//使用Sprite对象的绘制纹理方式
			this.sp2.graphics.drawTexture(texture, 150, 0);
			this.owner.addChild(this.sp2);
			
			this.sp1.removeSelf();
			this.sp3.removeSelf();
		});
	}	

    showApe3() {

		//创建Option
		let option:any = {};
		option.blob = this.imgBlob;
		//通过传递blob对象获得HTMLImageElement
        Laya.loader.fetch("" ,"image", null, option).then((res)=>{

			//创建Texture2D
			var t2d: Texture2D = new Texture2D(res.width, res.height, TextureFormat.R8G8B8A8, false, false, true);
			t2d.setImageData(res, true, false);

			//创建Texture
			var texture: Texture = new Texture(t2d);

			//使用Sprite对象的绘制纹理方式
			this.sp3.graphics.drawTexture(texture, 290, 0);
			this.owner.addChild(this.sp3);
			
			this.sp1.removeSelf();
			this.sp2.removeSelf();
		});
	}	
}