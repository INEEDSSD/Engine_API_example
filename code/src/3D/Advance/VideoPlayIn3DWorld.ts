import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import VideoTexture = Laya.VideoTexture;
import MeshSprite3D = Laya.MeshSprite3D;
import UnlitMaterial = Laya.UnlitMaterial;
import Camera = Laya.Camera;
import MeshRenderer = Laya.MeshRenderer;
import RenderTexture = Laya.RenderTexture;
import Script = Laya.Script;
import RenderTargetFormat = Laya.RenderTargetFormat;
import Matrix4x4 = Laya.Matrix4x4;
import Vector3 = Laya.Vector3;
import Color = Laya.Color;
import Vector4 = Laya.Vector4;

const { regClass, property } = Laya;

@regClass()
export class VideoPlayIn3DWorld extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private videoPlane: MeshSprite3D;
    private isoneVideo:boolean = false;
    private index: number = 0;
    private videoTexture = new VideoTexture();

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        var mirrorFloor: ChinarMirrorPlane = this.camera.addComponent(ChinarMirrorPlane) as ChinarMirrorPlane;
        mirrorFloor.onlyMainCamera =  this.camera;
        mirrorFloor.mirrorPlane =  this.scene.getChildByName("reflectionPlan") as MeshSprite3D;   

        //增加视频
        this.videoPlane = this.scene.getChildByName("moveclip") as MeshSprite3D;
        this.createVideo("resources/res/av/mov_bbb.mp4");
        super.addBottomButton( ["切换ogg","切换webm","切换mp4"] , this, [this.setType, this.setType, this.setType] );

    }

    onDestroy(): void {
        this.videoTexture.pause();
        this.videoTexture.destroy();        
    }

    private createVideo(url: string): void {
        
        if(!this.isoneVideo){
            this.videoTexture.source = url;
            this.videoTexture.play();
            this.videoTexture.loop = true;
    
            let mat = new UnlitMaterial();
            mat.albedoTexture = this.videoTexture;
            this.videoPlane.getComponent(MeshRenderer).sharedMaterial = mat;
            this.isoneVideo = true;
        }        
    }

    //支持三种类型的视频文件
	setType() {
        this.isoneVideo = false;
		this.index++;
		if (this.index % 3 === 1) {
			this.createVideo("resources/res/av/mov_bbb.ogg");
		}
		else if (this.index % 3 === 2) {
			this.createVideo("resources/res/av/mov_bbb.webm");
		}
		else {
			this.createVideo("resources/res/av/mov_bbb.mp4");
		}
	}
}


export class ChinarMirrorPlane extends Script {

    //这里的mesh必须是-5-5的plane板，修改了mesh的话需要修改这里
    public static oriPa: Vector3 = new Vector3(5, 0, -5);
    public static oriPb: Vector3 = new Vector3(-5, 0, -5);
    public static oriPc: Vector3 = new Vector3(5, 0, 5);

    public _mirrorPlane: MeshSprite3D;
    public mainCamera: Camera;
    private mirrorCamera: Camera = new Camera(); // 镜像摄像机

    private renderTexture: RenderTexture = RenderTexture.createFromPool(1024, 1024, RenderTargetFormat.R8G8B8, RenderTargetFormat.DEPTH_16, false, 1);

    public estimateViewFrustum: boolean = true;
    public setNearClipPlane: boolean = true;
    public nearClipDistanceOffset: number = -0.01;

    private vn: Vector3 = new Vector3(); // 屏幕的法线
    private l: number; //到屏幕左边缘的距离
    private r: number; //到屏幕右边缘的距离
    private b: number; //到屏幕下边缘的距离
    private t: number; //到屏幕上边缘的距离
    private d: number; //从镜像摄像机到屏幕的距离
    private n: number; //镜像摄像机的近剪切面的距离
    private f: number; //镜像摄像机的远剪切面的距离
    private pa: Vector3 = new Vector3(); //世界坐标系的左下角
    private pb: Vector3 = new Vector3(); //世界坐标系的右下角
    private pc: Vector3 = new Vector3(); //世界坐标系的左上角
    private pe: Vector3 = new Vector3(); //镜像观察角度的世界坐标位置
    private va: Vector3 = new Vector3(); //从镜像摄像机到左下角
    private vb: Vector3 = new Vector3(); //从镜像摄像机到右下角
    private vc: Vector3 = new Vector3(); //从镜像摄像机到左上角
    private vr: Vector3 = new Vector3(); //屏幕的右侧旋转轴
    private vu: Vector3 = new Vector3(); //屏幕的上侧旋转轴
    private p: Matrix4x4 = new Matrix4x4();
    private rm: Matrix4x4 = new Matrix4x4();
    private tm: Matrix4x4 = new Matrix4x4();

    private static tempMat: Matrix4x4 = new Matrix4x4();
    private static tempV3 = new Vector3();

    set mirrorPlane(value: MeshSprite3D) {
        this._mirrorPlane = value;
        var material: UnlitMaterial = new UnlitMaterial();
        let value1:MeshSprite3D = value as MeshSprite3D;
        value1.getComponent(MeshRenderer).sharedMaterial = material;
        material.albedoTexture = this.renderTexture;
        material.tilingOffset = new Vector4(-1, 1, 0, 0);
    }

    set onlyMainCamera(value: Camera) {
        (value.scene as Scene3D).addChild(this.mirrorCamera);
        this.mainCamera = value;
    }

    constructor() {
        super();
    }

    onStart(): void {
        //this.mirrorCamera = this.owner as Camera;'
        this.mirrorCamera.renderTarget = this.renderTexture;
        this.mirrorCamera.clearColor = new Color(0.0, 0.0, 0.0, 1.0);

    }

    onUpdate(): void {
        if (this.mirrorCamera == null || this._mirrorPlane == null || this.mainCamera == null) {
            return;
        }
        this._mirrorPlane.transform.worldMatrix.invert(ChinarMirrorPlane.tempMat);
        Vector3.transformV3ToV3(this.mainCamera.transform.position, ChinarMirrorPlane.tempMat, ChinarMirrorPlane.tempV3);
        ChinarMirrorPlane.tempV3.y = -ChinarMirrorPlane.tempV3.y;
        Vector3.transformV3ToV3(ChinarMirrorPlane.tempV3, this._mirrorPlane.transform.worldMatrix, ChinarMirrorPlane.tempV3);
        this.mirrorCamera.transform.position = ChinarMirrorPlane.tempV3;

        // todo: plane 四个角的点坐标
        Vector3.transformV3ToV3(ChinarMirrorPlane.oriPa, this._mirrorPlane.transform.worldMatrix, this.pa); // 世界坐标系的左下角
        Vector3.transformV3ToV3(ChinarMirrorPlane.oriPb, this._mirrorPlane.transform.worldMatrix, this.pb); // 世界坐标系的右下角
        Vector3.transformV3ToV3(ChinarMirrorPlane.oriPc, this._mirrorPlane.transform.worldMatrix, this.pc); // 世界坐标系的左上角

        this.pe = this.mirrorCamera.transform.position; //镜像观察角度的世界坐标位置
        this.n = this.mirrorCamera.nearPlane; // 镜像摄像机的近剪切面的距离
        this.f = this.mirrorCamera.farPlane; // 镜像摄像机的远剪切面的距离

        Vector3.subtract(this.pa, this.pe, this.va); // 从镜像摄像机到左下角
        Vector3.subtract(this.pb, this.pe, this.vb); // 从镜像摄像机到右下角
        Vector3.subtract(this.pc, this.pe, this.vc); // 从镜像摄像机到左上角
        Vector3.subtract(this.pb, this.pa, this.vr); // 屏幕的右侧旋转轴
        Vector3.subtract(this.pc, this.pa, this.vu); // 屏幕的上侧旋转轴

        // 如果看向镜子的背面
        Vector3.cross(this.va, this.vc, ChinarMirrorPlane.tempV3);
        if (Vector3.dot(ChinarMirrorPlane.tempV3, this.vb) < 0.0) {
            Vector3.scale(this.vu, -1, this.vu);
            this.pc.cloneTo(this.pa);
            Vector3.add(this.pa, this.vr, this.pb);
            Vector3.add(this.pa, this.vu, this.pc);
            Vector3.subtract(this.pa, this.pe, this.va);
            Vector3.subtract(this.pb, this.pe, this.vb);
            Vector3.subtract(this.pc, this.pe, this.vc);
        }

        Vector3.normalize(this.vr, this.vr);
        Vector3.normalize(this.vu, this.vu);
        Vector3.cross(this.vr, this.vu, ChinarMirrorPlane.tempV3);
        Vector3.normalize(ChinarMirrorPlane.tempV3, this.vn);
        this.d = Vector3.dot(this.va, this.vn);
        if (this.setNearClipPlane) {
            this.n = this.d + this.nearClipDistanceOffset;
            this.mirrorCamera.nearPlane = this.n;
        }

        this.l = Vector3.dot(this.vr, this.va) * this.n / this.d;
        this.r = Vector3.dot(this.vr, this.vb) * this.n / this.d;
        this.b = Vector3.dot(this.vu, this.va) * this.n / this.d;
        this.t = Vector3.dot(this.vu, this.vc) * this.n / this.d;

        // 投影矩阵
        this.p.elements[0] = 2.0 * this.n / (this.r - this.l);
        this.p.elements[4] = 0;
        this.p.elements[8] = (this.r + this.l) / (this.r - this.l);
        this.p.elements[12] = 0.0;

        this.p.elements[1] = 0.0;
        this.p.elements[5] = 2.0 * this.n / (this.t - this.b);
        this.p.elements[9] = (this.t + this.b) / (this.t - this.b);
        this.p.elements[13] = 0.0;

        this.p.elements[2] = 0;
        this.p.elements[6] = 0;
        this.p.elements[10] = (this.f + this.n) / (this.n - this.f);
        this.p.elements[14] = (2.0 * this.f * this.n / (this.n - this.f)) / 2;

        this.p.elements[3] = 0;
        this.p.elements[7] = 0;
        this.p.elements[11] = -1;
        this.p.elements[15] = 0;

        this.p.elements[0] *= -1;
        this.p.elements[5] *= -1;
        this.p.elements[14] *= -1;

        // 旋转 & 平移 矩阵
        this.rm.elements[0] = this.vr.x;
        this.rm.elements[4] = this.vr.y;
        this.rm.elements[8] = this.vr.z;
        this.rm.elements[12] = this.pe.x;

        this.rm.elements[1] = this.vu.x;
        this.rm.elements[5] = this.vu.y;
        this.rm.elements[9] = this.vu.z;
        this.rm.elements[13] = this.pe.z;

        this.rm.elements[2] = this.vn.x;
        this.rm.elements[6] = this.vn.y;
        this.rm.elements[10] = this.vn.z;
        this.rm.elements[14] = this.pe.y;

        this.rm.elements[3] = 0;
        this.rm.elements[7] = 0;
        this.rm.elements[11] = 0;
        this.rm.elements[15] = 1;

        this.mirrorCamera.projectionMatrix = this.p;
        this.rm.invert(ChinarMirrorPlane.tempMat);
        this.mirrorCamera.transform.worldMatrix = ChinarMirrorPlane.tempMat;
        if (!this.estimateViewFrustum) return;

    }
}