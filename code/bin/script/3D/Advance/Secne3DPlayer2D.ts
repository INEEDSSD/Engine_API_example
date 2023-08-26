import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class Secne3DPlayer2D extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private layaMonkey3D:Laya.Sprite3D;
    private layaMonkey2D:Laya.Image;
    private _position:Laya.Vector3 = new Laya.Vector3();
    private _outPos:Laya.Vector4 = new Laya.Vector4();
    private scaleDelta:number = 0;
    private clientScaleX = 0;
    private clientScaleY = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.clientScaleY = Laya.stage.clientScaleX;
        this.clientScaleX = Laya.stage.clientScaleY;

        this.camera.transform.position = new Laya.Vector3(0, 0.75, 1.2);
        this.camera.transform.rotationEuler = new Laya.Vector3( -30, 0, 0);
        
        
        Laya.loader.load("resources/res/threeDimen/staticModel/grid/plane.lh").then( (res)=>{
			this.onComplete(res);
		} )
    }

    public onComplete(res: any): void {
        
        //加载三维地面
        var grid = this.scene.addChild(res.create()) as Laya.Sprite3D;
        this.layaMonkey2D = this.owner.addChild(new Laya.Image("resources/res/threeDimen/monkey.png")) as Laya.Image;
        this.layaMonkey2D.anchorX = 0.5;
        this.layaMonkey2D.scale(0.5,0.5);
        Laya.timer.frameLoop(1, this, this.animate);
    }

    private animate(): void {
        this._position.x = Math.sin(this.scaleDelta += 0.01);
        //转换坐标
        this.camera.viewport.project(this._position, this.camera.projectionViewMatrix, this._outPos);

        let x = 0;
        let y = 0;

        // console.log(this._outPos.x,this._outPos.y);
        //赋值给2D        
        if( Index.curPage && Laya.Browser.onPC)
        {
            x = this._outPos.x * Index.pageWidth / Laya.Browser.clientWidth;
            y = this._outPos.y * Index.pageHeight / Laya.Browser.clientHeight;
        }
        else
        {
            x = this._outPos.x / this.clientScaleX;
            y = this._outPos.y / this.clientScaleY;
        }

        // console.log(x, y);
        // console.log(this.clientScaleX,this.clientScaleY);
        this.layaMonkey2D.pos(x, y);
    }
 
}