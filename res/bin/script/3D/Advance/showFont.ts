import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Camera = Laya.Camera;
import Vector3 = Laya.Vector3;


const { regClass, property } = Laya;

@regClass()
export class showFont extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private cav: any;
    private plane: Laya.MeshSprite3D;
    private mat: Laya.UnlitMaterial;
    private texture2D: Laya.Texture2D;

    constructor() {
        super();
    }

    onAwake(): void {
		
        super.base(this.camera);
		var scene = this.scene;
        var camera = this.camera;
        camera.transform.position = (new Vector3(0, 0, 15));
        camera.transform.rotate(new Vector3(0, 0, 0), true, false);
        camera.clearColor = new Laya.Color(0.2, 0.2, 0.2, 1.0);        

        //设置一个面板用来渲染
        this.plane = new Laya.MeshSprite3D(Laya.PrimitiveMesh.createPlane(10, 10));
        this.plane.transform.rotate(new Vector3(-90, 0, 0), true, false);
        scene.addChild(this.plane);
        //材质
        this.mat = new Laya.UnlitMaterial();
        this.plane.meshRenderer.sharedMaterial = this.mat;

        //画布cavans
        this.cav = Laya.Browser.createElement("canvas");
        var cxt = this.cav.getContext("2d");
        this.cav.width = 256;
        this.cav.height = 256;
        cxt.fillStyle = 'rgb(' + '132' + ',' + '240' + ',109)';
        cxt.font = "bold 50px 宋体";
        cxt.textAlign = "center";//文本的对齐方式
        cxt.textBaseline = "center";//文本相对于起点的位置
        //设置文字,位置
        cxt.fillText("LayaAir", 100, 50, 200);//有填充cxt.font="bold 60px 宋体";

        cxt.strokeStyle = 'rgb(' + '200' + ',' + '125' + ',0)';
        cxt.font = "bold 40px 黑体";
        cxt.strokeText("runtime", 100, 100, 200);//只有边框

        //文字边框结合
        cxt.strokeStyle = 'rgb(' + '255' + ',' + '240' + ',109)';
        cxt.font = "bold 30px 黑体";
        cxt.fillText("LayaBox", 100, 150, 200);

        cxt.strokeStyle = "yellow";
        cxt.font = "bold 30px 黑体";
        cxt.strokeText("LayaBox", 100, 150, 200);//只有边框
        this.texture2D = new Laya.Texture2D(256, 256, Laya.TextureFormat.R8G8B8A8, false, true, true);
        this.texture2D.setImageData(this.cav, true, true);
        this.mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;

        //给材质贴图
        this.mat.albedoTexture = this.texture2D;
        (<Laya.BlinnPhongMaterial>this.plane.meshRenderer.sharedMaterial).cull = Laya.RenderState.CULL_NONE;
        var rotate:Vector3 = new Vector3(0,0,1);
        Laya.timer.frameLoop(1, this, ()=> {
            this.plane.transform.rotate(rotate, true, false);
        });
	}

}