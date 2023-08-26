import { BaseScript } from "../../BaseScript";
import { CustomInstanceMaterial } from "./DrawCustomInstanceDemo/CustomInstanceMaterial";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Quaternion = Laya.Quaternion;
import Vector4 = Laya.Vector4;

const { regClass, property } = Laya;

@regClass()
export class CommandBuffer_DrawCustomInstance extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

    mat:CustomInstanceMaterial;
    instanceCMD: Laya.DrawMeshInstancedCMD;
    materialBlock:Laya.MaterialInstancePropertyBlock;
    matrixs:Laya.Matrix4x4[] = [];
    matrixs1:Laya.Matrix4x4[] = [];
    colors:Vector4[] = [];
    colors1:Vector4[] = [];

    currentColor:Vector4[] = [];
    currentMatrix:Laya.Matrix4x4[] = [];
    
    constructor() {
        super();
    }

    onAwake(): void {
        super.base(this.camera);
		//材质初始化
        CustomInstanceMaterial.init();
        var scene: Scene3D = this.scene;

		var camera: Camera = this.camera;
		camera.transform.position = new Vector3(14.85,17.08,35.89);
		camera.transform.rotation = new Quaternion(0,0,0,1);
		
        camera.clearColor = new Laya.Color(0.8, 0.4, 0.2, 1.0);
        this.mat = new CustomInstanceMaterial();
        //camera.enableHDR = true;
		//方向光的颜色
		this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(1, 1, 1, 0);
		//设置平行光的方向
		let mat: Laya.Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;
     
        //创建CommandBuffer命令流
        this.createCommandBuffer(camera);
        //初始化动作
        Laya.timer.frameLoop(1,this,this.changetwoon);
	}

    createCommandBuffer(camera:Camera){
        //创建渲染命令流
        let buf:Laya.CommandBuffer = new Laya.CommandBuffer();
        //初始化数矩阵数组和颜色数组
        this.createMatrixArray();
        //创建材质instance属性块
        this.materialBlock= new Laya.MaterialInstancePropertyBlock();
        //设置属性
        this.materialBlock.setVectorArray("a_InstanceColor",this.colors1, Laya.InstanceLocation.CUSTOME0);
        //创建渲染命令  渲染900个小球
        this.instanceCMD = buf.drawMeshInstance(Laya.PrimitiveMesh.createSphere(0.5),0,this.matrixs1, this.mat, 0,this.materialBlock,900);
        camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent,buf);
        return;
    }

    createMatrixArray():void{ 
        for (let i = 0; i < 30; i++)
        {
            for (let j = 0; j < 30; j++)
            {
                let ind = j * 30 + i;
                if (ind > 1023) break;
                this.matrixs[ind] = new Laya.Matrix4x4();
                this.matrixs1[ind] = new Laya.Matrix4x4();
                this.currentMatrix[ind] = new Laya.Matrix4x4();
                Laya.Matrix4x4.createTranslate(new Vector3(i, j, 0),  this.matrixs[ind]);
                Laya.Matrix4x4.createTranslate(new Vector3(ind%10+10,Math.floor(ind/100)+10,Math.floor(ind/10)%10-5),this.matrixs1[ind]);
                this.colors[ind] = new Vector4(1 - i / 30.0, 1 - j / 30.0, 1.0, 1.0);
                this.colors1[ind] = new Vector4(1 - i / 30.0, 1 - j / 30.0, 0.0, 1.0);
                this.currentColor[ind] = new Vector4();
            }
        }
        return null;
    }
 

    changePositionColor(sourceColor:Vector4[],sourceMatrix:Laya.Matrix4x4[],destColor:Vector4[],destMatrix:Laya.Matrix4x4[],lerp:number){
        //根据lerp插值颜色和矩阵
        var lep = lerp;
        var invert = 1-lerp;
        for (let i = 0; i < 30; i++)
        {
            for (let j = 0; j < 30; j++)
            {
                let ind = j * 30 + i;
                this.currentColor[ind].setValue(sourceColor[ind].x*lep+destColor[ind].x*invert,sourceColor[ind].y*lep+destColor[ind].y*invert,sourceColor[ind].z*lep+destColor[ind].z*invert,1.0) 
                var mat = this.currentMatrix[ind].elements;
                var sourcemat = sourceMatrix[ind].elements;
                var destmat = destMatrix[ind].elements;
                mat[12] = sourcemat[12]*lep+destmat[12]*invert;
                mat[13] = sourcemat[13]*lep+destmat[13]*invert;
                mat[14] = sourcemat[14]*lep+destmat[14]*invert;
            }
        }
    }


    private timer = 0;
    private delta = 0.01;
    changetwoon(){
        //修改渲染属性
        this.timer+=this.delta;
        if(this.timer<0||this.timer>1){
            this.timer = Math.round(this.timer);            
            return;
        }
        
        this.changePositionColor(this.colors,this.matrixs,this.colors1,this.matrixs1,this.timer);
        //改变900小球的矩阵
        this.instanceCMD.setWorldMatrix(this.currentMatrix);
        //改变900小球的颜色
        this.materialBlock.setVectorArray("a_InstanceColor",this.currentColor,Laya.InstanceLocation.CUSTOME0);
    }

}