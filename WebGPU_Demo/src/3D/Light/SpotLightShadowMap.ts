import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import MeshRenderer = Laya.MeshRenderer;
import ShadowMode = Laya.ShadowMode;
import Node = Laya.Node;

const { regClass, property } = Laya;

@regClass()
export class SpotLightShadowMap extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onStart(): void {
        super.base(this.camera);

        //聚光灯
        var spotLight: Laya.Sprite3D = this.scene.addChild(new Laya.Sprite3D()) as Laya.Sprite3D;
        var spotLightCom: Laya.SpotLightCom = spotLight.addComponent(Laya.SpotLightCom);
        spotLightCom.color = new Laya.Color(1, 1, 0);
        spotLight.transform.position = new Laya.Vector3(-0.13, 7.86, 0.23);
        spotLight.transform.rotationEuler = new Laya.Vector3(-90, 180, 0);
        spotLightCom.range = 10;
        spotLightCom.spotAngle = 53;

        this.receaveRealShadow(this.scene);
    }

    receaveRealShadow(scene3d: Scene3D): void {
        var childLength: number = scene3d.numChildren;
        for (var i: number = 0; i < childLength; i++) {
            var childSprite: Node = scene3d.getChildAt(i);
            let childSpriteCom: Laya.SpotLightCom = childSprite.getComponent(Laya.SpotLightCom);
            if (childSpriteCom) {
                childSpriteCom.shadowMode = ShadowMode.Hard;
                // Set shadow max distance from camera.
                childSpriteCom.shadowDistance = 3;
                // Set shadow resolution.
                childSpriteCom.shadowResolution = 512;
                // set shadow Bias
                childSpriteCom.shadowDepthBias = 1.0;
            }
            else {
                console.log(childSprite.name);
                if (childSprite.getComponent(MeshRenderer)) {
                    childSprite.getComponent(MeshRenderer).receiveShadow = true;
                    childSprite.getComponent(MeshRenderer).castShadow = true;
                }

            }
        }
    }
}