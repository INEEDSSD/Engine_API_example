import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Texture2D = Laya.Texture2D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import MeshRenderer = Laya.MeshRenderer;
import UnlitMaterial = Laya.UnlitMaterial;
import Matrix4x4 = Laya.Matrix4x4;
import Browser = Laya.Browser;

const { regClass, property } = Laya;

@regClass()
export class GPUCompression_ETC2 extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private mat:UnlitMaterial;
    private text:Laya.Label;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1.5, 4);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        let meshSprite = new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5));
        meshSprite.transform.position = new Vector3(0.0, 1.0, 2.5);
        meshSprite.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
        this.mat = new UnlitMaterial();
        this.scene.addChild(meshSprite);
        meshSprite.getComponent(MeshRenderer).sharedMaterial = this.mat;

        this.text = new Laya.Label();
        if(!Browser.onAndroid){
            console.log("只有安卓支持ETC");
            //设置文本显示框位置
            this.text.text = "PC不支持ETC纹理，只有安卓支持";
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
            return;
        }
        else
        {
            Laya.loader.load("resources/res/threeDimen/texture/ETC2Test.ktx").then((texture: Texture2D)=> {
                this.mat.albedoTexture = texture;
                //修改材质贴图的平铺和偏移
            });
        }


	}
 
}