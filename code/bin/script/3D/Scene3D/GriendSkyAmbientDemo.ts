import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Sprite3D = Laya.Sprite3D;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Camera = Laya.Camera;
import PrimitiveMesh = Laya.PrimitiveMesh;
import Button = Laya.Button;
import AmbientMode = Laya.AmbientMode;
import Color = Laya.Color;
import PBRStandardMaterial = Laya.PBRStandardMaterial;

const { regClass, property } = Laya;

@regClass()
export class GriendSkyAmbientDemo extends BaseScript {

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

		//初始化照相机
		this.camera.transform.position = (new Vector3(0, 2, 3));
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //场景预先烘焙好环境反射
        this.scene.ambientIntensity = 0.5;

        this.sprite3D = this.scene.addChild(new Sprite3D()) as Sprite3D;

        var mat: PBRStandardMaterial = new PBRStandardMaterial();
        //正方体
        var box = this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5))) as MeshSprite3D;
        box.transform.position = new Vector3(2.0, 0.25, 0.6);
        box.transform.rotate(new Vector3(0, 45, 0), false, false);
        box.meshRenderer.material = mat;
        //球体
        var sphere = this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createSphere(0.25, 20, 20))) as MeshSprite3D;
        sphere.transform.position = new Vector3(1.0, 0.25, 0.6);
        sphere.meshRenderer.material = mat;
        //圆柱体
        var cylinder = this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCylinder(0.25, 1, 20))) as MeshSprite3D;
        cylinder.transform.position = new Vector3(0, 0.5, 0.6);
        cylinder.meshRenderer.material = mat;
        //胶囊体
        var capsule = this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCapsule(0.25, 1, 10, 20))) as MeshSprite3D;
        capsule.transform.position = new Vector3(-1.0, 0.5, 0.6);
        capsule.meshRenderer.material = mat;
        
        //圆锥体
        var cone = this.sprite3D.addChild(new MeshSprite3D(PrimitiveMesh.createCone(0.25, 0.75))) as MeshSprite3D;
        cone.transform.position = new Vector3(-2.0, 0.375, 0.6);
        cone.meshRenderer.material = mat;

        super.addBottomButton( ["固定颜色","球谐光照"] , this, [this.setSolidColor, this.setSphericalHarmonics]);
                
    }

	setSphericalHarmonics() {

        //使用球谐光照，前提是在场景中先设置好天空盒，在ReflectionProbe中烘焙
        this.scene.ambientMode = AmbientMode.SphericalHarmonics;
	}

	setSolidColor() {

        //使用固定颜色
        this.scene.ambientMode = AmbientMode.SolidColor;
        this.scene.ambientColor = new Color(0.56, 0.89, 1);
        
	}    
 
}