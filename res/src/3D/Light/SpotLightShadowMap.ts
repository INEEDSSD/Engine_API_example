import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshRenderer = Laya.MeshRenderer;
import ShadowMode = Laya.ShadowMode;
import SpotLight = Laya.SpotLight;
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
        var spotLight:Laya.SpotLight = this.scene.addChild(new Laya.SpotLight()) as Laya.SpotLight;
        spotLight.color = new Laya.Color(1, 1, 0);
        spotLight.transform.position = new Laya.Vector3(-0.13, 7.86, 0.23);
        spotLight.transform.rotationEuler = new Laya.Vector3(-90, 180, 0);
        spotLight.range = 10;
        spotLight.spotAngle = 53;

        this.receaveRealShadow(this.scene);
    }

    receaveRealShadow(scene3d: Scene3D): void {

        var childLength: number = scene3d.numChildren;
        for (var i: number = 0; i < childLength; i++) {
            var childSprite: Node = scene3d.getChildAt(i);
            if (childSprite instanceof SpotLight) {
                childSprite.shadowMode = ShadowMode.Hard;
                // Set shadow max distance from camera.
                childSprite.shadowDistance = 3;
                // Set shadow resolution.
                childSprite.shadowResolution = 512;
                // set shadow Bias
                childSprite.shadowDepthBias = 1.0;
            }
            else {
                console.log(childSprite.name);
                if( childSprite.getComponent(MeshRenderer) )
                {
                    childSprite.getComponent(MeshRenderer).receiveShadow = true;
                    childSprite.getComponent(MeshRenderer).castShadow = true;
                }
                
            }
        }
    }
}