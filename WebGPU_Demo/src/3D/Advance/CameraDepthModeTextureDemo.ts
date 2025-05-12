import { BaseScript } from "../../BaseScript";
import { DepthMaterial } from "./DepthNormalShader/DepthMaterial";
import { DepthNormalsMaterial } from "./DepthNormalShader/DepthNormalsMaterial";

import Scene3D = Laya.Scene3D;
import Vector3 = Laya.Vector3;


const { regClass, property } = Laya;

@regClass()
export class CameraDepthModeTextureDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private depthPlane: Laya.Sprite3D;
    private depthNormalPlane: Laya.Sprite3D;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base(this.camera);
        DepthMaterial.init();
        DepthNormalsMaterial.init();

        this.scene.ambientColor = new Laya.Color(0.858, 0.858, 0.858);

        this.depthNormalPlane = this.scene.getChildByName("depthNormalPlane") as Laya.Sprite3D;
        this.depthPlane = this.scene.getChildByName("depthNormalPlane1") as Laya.Sprite3D;
        this.depthPlane.transform.position = new Vector3(-11.12226, 11.76791, 11.90175);
        this.depthNormalPlane.transform.position = new Vector3(-6.32228, 11.76791, 11.90175);


        var camera = this.camera;
        camera.transform.position = new Vector3(-13.6097, 8.84349, 3.01193);
        camera.depthTextureMode |= Laya.DepthTextureMode.Depth;
        this.depthPlane.getComponent(Laya.MeshRenderer).sharedMaterial = new DepthMaterial();

        camera.depthTextureMode |= Laya.DepthTextureMode.DepthNormals;
        this.depthNormalPlane.getComponent(Laya.MeshRenderer).sharedMaterial = new DepthNormalsMaterial();
    }
}