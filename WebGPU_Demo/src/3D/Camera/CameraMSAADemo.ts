import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Mesh = Laya.Mesh;
import PrimitiveMesh = Laya.PrimitiveMesh;
import Matrix4x4 = Laya.Matrix4x4;

const { regClass, property } = Laya;

@regClass()
export class CameraMSAADemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    private renderTarget1: Laya.RenderTexture;
    private renderTarget2: Laya.RenderTexture;

    constructor() {
        super();
    }

    onAwake(): void {
        super.base(this.camera, true, true);

        this.camera.transform.position = (new Vector3(0, 1, 3));
        this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光的颜色
        this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.5, 0.5, 0.5, 1);
        //设置平行光的方向
        var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
        mat.setForward(new Vector3(-1.0, -1.0, -1.0));
        this.directionLight.transform.worldMatrix = mat;
        this.addObjectInScene(this.scene);
        this.setMsaaOn();
        super.addBottomButton(["关闭MSAA", "开启MSAA"], this, [this.setMsaaOff, this.setMsaaOn]);

    }

    setMsaaOn(): void {
        //开启MSAA
        this.camera.msaa = true;
        if (Index.curPage) {
            this.renderTarget2 = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTH_32, false, 4);
            this.camera.renderTarget = this.renderTarget2;
            Index.curPage.texture = new Laya.Texture(this.camera.renderTarget);
        }

    }

    setMsaaOff(): void {
        //关闭MSAA
        this.camera.msaa = false;
        if (Index.curPage) {
            this.renderTarget1 = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTH_32, false, 1);
            this.camera.renderTarget = this.renderTarget1;
            Index.curPage.texture = new Laya.Texture(this.camera.renderTarget);
        }
    }

    createMeshSprite3D(mesh: Laya.Mesh, mat: Laya.Material): Laya.Sprite3D {
        let sp3d: Laya.Sprite3D = new Laya.Sprite3D();
        let meshFiler = sp3d.addComponent(Laya.MeshFilter);
        let meshrender = sp3d.addComponent(Laya.MeshRenderer);
        mesh && (meshFiler.sharedMesh = mesh);
        mat && (meshrender.sharedMaterial = mat);
        return sp3d;
    }

    addObjectInScene(scene: Scene3D) {
        let sprite: Sprite3D = new Sprite3D();
        scene.addChild(sprite);

        let planeMesh: Mesh = PrimitiveMesh.createPlane(10, 10, 1, 1);
        let plane: Laya.Sprite3D = this.createMeshSprite3D(planeMesh, null);
        scene.addChild(plane);

        let cubeMesh: Mesh = PrimitiveMesh.createBox();
        let sphere: Mesh = PrimitiveMesh.createSphere(0.3);
        let cube0: Laya.Sprite3D = this.createMeshSprite3D(cubeMesh, new BlinnPhongMaterial());
        let cube1: Laya.Sprite3D = this.createMeshSprite3D(cubeMesh, null);
        let cube2: Laya.Sprite3D = this.createMeshSprite3D(cubeMesh, null);
        let cube3: Laya.Sprite3D = this.createMeshSprite3D(cubeMesh, null);
        let sphere0: Laya.Sprite3D = this.createMeshSprite3D(sphere, null);
        let sphere1: Laya.Sprite3D = this.createMeshSprite3D(sphere, null);
        let sphere2: Laya.Sprite3D = this.createMeshSprite3D(sphere, null);
        let sphere3: Laya.Sprite3D = this.createMeshSprite3D(sphere, null);

        sprite.addChild(cube0);
        sprite.addChild(cube1);
        sprite.addChild(cube2);
        sprite.addChild(cube3);
        sprite.addChild(sphere0);
        sprite.addChild(sphere1);
        sprite.addChild(sphere2);
        sprite.addChild(sphere3);

        cube1.transform.position = new Vector3(-1, 0, 0);
        cube2.transform.position = new Vector3(-1, 0, 1);
        cube3.transform.position = new Vector3(-1, 1, 0);

        sphere0.transform.position = new Vector3(-3, 0, 0);
        sphere1.transform.position = new Vector3(2, 0, 0);
        sphere2.transform.position = new Vector3(2, 0.5, 0);
        sphere3.transform.position = new Vector3(-1, 0, 2);
    }

    onDestroy(): void {
        this.renderTarget1 && this.renderTarget1.destroy();
        this.renderTarget2 && this.renderTarget2.destroy();
    }

}