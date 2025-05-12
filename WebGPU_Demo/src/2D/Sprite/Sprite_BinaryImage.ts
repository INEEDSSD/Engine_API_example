import { BaseScript } from "../../BaseScript";
import Sprite = Laya.Sprite;
import Byte = Laya.Byte;
import Texture = Laya.Texture;
import Texture2D = Laya.Texture2D;
import TextureFormat = Laya.TextureFormat;
const { regClass } = Laya;

/**
 * Sprite_BinaryImage类用于处理二进制图片并以不同方式展示。
 */
@regClass()
export class Sprite_BinaryImage extends BaseScript {
	/**
	 * 展示图片的Sprite对象，用于展示处理后的图片数据。
	 */
	private sp: Sprite = new Sprite();
	/**
	 * 存储二进制图片数据的 Blob 对象，用于后续处理和展示。
	 */
	private imgBlob: Blob;
	/**
	* FileReader对象，用于读取文件数据。
	*/
	private fileReader: FileReader = new FileReader();

	onAwake(): void {
		// 加载二进制图片文件
		Laya.loader.fetch("resources/res/test.bin", "arraybuffer").then((arrayBuffer: ArrayBuffer) => {
			// 创建一个Byte对象，传入加载得到的ArrayBuffer作为初始数据
			let byte: Byte = new Byte(arrayBuffer);
			// 从第四个字节开始将加载的二进制数据写入Byte对象，因为原始的图片数据是在图片的前面写入了四个字节的加密数据
			byte.writeArrayBuffer(arrayBuffer, 4);
			// 创建一个Blob对象，将处理后的有效图片数据byte.buffer作为参数，指定类型为'image/png'
			this.imgBlob = new Blob([byte.buffer], { type: "image/png" });
			this.showApe1();
		});
		// 添加一个用于显示二进制图片的节点
		this.owner.addChild(this.sp);
		// 调用父类的addBottomButton方法，添加底部按钮，根据按钮事件执行对应的方法
		super.addBottomButton(["转为直接加载模式", "转为Base64模式"], this, [this.showApe2, this.showApe1]);
	}
	showApe1() {
		// 调用readAsDataURL方法将imgBlob中的二进制数据转换为字符串数据
		this.fileReader.readAsDataURL(this.imgBlob);
		this.fileReader.onload = (e) => {
			// 清除sp上绘制的纹理
			this.sp.graphics.clear();
			// 将转换后的数据（base64字符串格式）加载到sp1这个Sprite对象中，用于展示图片
			this.sp.loadImage(e.target.result as string);
			// 设置sp的x坐标为10，用于在界面上定位图片的位置
			this.sp.x = 10;
			// console.log(e.target.result);
			console.log("当前模式(Base64模式)：基于FileReader对象的readAsDataURL方法将Blob二进制数据转换为base64字符串纹理格式，然后直接设置给sp节点");
		};
	}
	showApe2() {
		// 创建一个选项对象，用于在加载图片时传递二进制数据
		const option: any = {};
		option.blob = this.imgBlob;
		// 指定类型为'image'，传入选项对象，用于加载由imgBlob指定的图片资源，注意第一个参数如果没有，随便写一个字符串即可，例如空格，但不能为空字符串
		Laya.loader.fetch("没有就随便写，不要传空字符串", "image", null, option).then((res) => {
			// 清除sp上的纹理
			this.sp.texture = null;
			// 创建一个Texture2D对象，用于处理二维纹理数据，设置其宽度、高度、格式等参数
			var t2d: Texture2D = new Texture2D(res.width, res.height, TextureFormat.R8G8B8A8, false, false, true);
			// 将加载得到的图片数据（res）设置到Texture2D对象中
			t2d.setImageData(res, true, false);
			// 创建一个Texture对象，将Texture2D对象作为参数传入
			var texture: Texture = new Texture(t2d);
			// 使用图形绘制API来绘制纹理，指定纹理位置为(290, 0)
			this.sp.graphics.drawTexture(texture, 290, 0);
			console.log("当前模式（直接加载模式）：直接将二进制数据作为图片数据加载，然后设置到Texture2D对象中，再以2D纹理设置通过绘图API绘制到sp节点上");
		});
	}
}