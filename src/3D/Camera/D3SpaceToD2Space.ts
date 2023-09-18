import { BaseScript } from "../../BaseScript";
import Index from "../../Index";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;

const { regClass, property } = Laya;

@regClass()
export class D3SpaceToD2Space extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
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
        
        Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then( (res)=>{
			this.onComplete(res);
		});
    }

    private onComplete(res: any): void {
        
        this.layaMonkey3D = res.create();
        this.scene.addChild(this.layaMonkey3D);
        this.layaMonkey2D = this.owner.addChild(new Laya.Image("resources/res/threeDimen/monkey.png")) as Laya.Image;
        this.layaMonkey2D.anchorX = 0.5;
        this.layaMonkey2D.scale(0.5,0.5);
        Laya.timer.frameLoop(1, this, this.animate);
    }

    private animate(): void {

        this._position.x = Math.sin(this.scaleDelta += 0.01);
        this.layaMonkey3D.transform.position = this._position;
        //转换坐标
        this.camera.viewport.project(this.layaMonkey3D.transform.position, this.camera.projectionViewMatrix, this._outPos);

        let x = 0;
        let y = 0;

        //赋值给2D        
        if( Index.curPage && !Laya.Browser.PLATFORM_PC)
        {
            x = this._outPos.x / this.clientScaleX;
            y = this._outPos.y / this.clientScaleY;
        }
        else if( Index.curPage )
        {
            x = this._outPos.x * Index.pageWidth * Index.scaleWidth / Laya.Browser.clientWidth;
            y = this._outPos.y * Index.pageHeight * Index.scaleHeight / Laya.Browser.clientHeight;
        }
        else
        {
            x = this._outPos.x / this.clientScaleX;
            y = this._outPos.y / this.clientScaleY;
        }
        this.layaMonkey2D.pos(x, y);
    }
 
}