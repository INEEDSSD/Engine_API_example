import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Texture2D = Laya.Texture2D;
import PrimitiveMesh = Laya.PrimitiveMesh;
import FilterMode = Laya.FilterMode;
import HalfFloatUtils = Laya.HalfFloatUtils;
import TextureFormat = Laya.TextureFormat;
import Matrix4x4 = Laya.Matrix4x4;


const { regClass, property } = Laya;

@regClass()
export class HalfFloatTexture extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private sprite3D: Sprite3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 1.5, 4);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);


        this.sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));

        //正方体
        var box: MeshSprite3D = (<MeshSprite3D>this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5))));
        box.transform.position = new Vector3(0.0, 1.0, 2.5);
        box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
        var material: BlinnPhongMaterial = new BlinnPhongMaterial();
        material.albedoTexture = this.createHalfFloatTexture();
        box.meshRenderer.sharedMaterial = material;
    }

    //创建半浮点数纹理
    createHalfFloatTexture(): Texture2D {
        var texture: Texture2D = new Texture2D(64, 64, TextureFormat.R16G16B16A16, true, true);
        var pixelData: Uint16Array = new Uint16Array(64 * 64 * 4);
        var pixelIndex: number;
        var step: number = 1.0 / 64;
        for (var x: number = 0, n = 64; x < n; x++) {
            for (var y: number = 0, m = 64; y < m; y++) {
                pixelIndex = (x + y * 64) * 4;
                pixelData[pixelIndex] = HalfFloatUtils.roundToFloat16Bits(1.0);
                pixelData[pixelIndex + 1] = HalfFloatUtils.roundToFloat16Bits(x * step);
                pixelData[pixelIndex + 2] = HalfFloatUtils.roundToFloat16Bits(y * step);
                pixelData[pixelIndex + 3] = HalfFloatUtils.roundToFloat16Bits(1.0);
            }
        }
        texture.setPixelsData(pixelData, false, false);
        texture.filterMode = FilterMode.Bilinear;
        return texture;
    }

 
}