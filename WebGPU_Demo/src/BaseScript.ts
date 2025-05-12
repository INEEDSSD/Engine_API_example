import { CameraMoveScript } from "./3D/common/CameraMoveScript";
import Index from "./Index";
import Stat = Laya.Stat;
import Button = Laya.Button;
import Event = Laya.Event;
import Camera = Laya.Camera;
import Vector3 = Laya.Vector3;

const { regClass, property } = Laya;

@regClass()
export class BaseScript extends Laya.Script {

    public box2D: Laya.Box;

    public pageWidth: number;
    public pageHeight: number;

    private _button: Button;
    private _buttonType: number;

    constructor() {
        super();



        this.pageWidth = Math.floor(Laya.stage.designHeight * Laya.Browser.clientWidth / Laya.Browser.clientHeight);
        this.pageHeight = Laya.stage.designHeight;
        if (Index.curPage) {
            this.pageWidth = Index.pageWidth;
            this.pageHeight = Index.pageHeight;
        }
        // console.log("Browser.clientWidth:"+Laya.Browser.clientWidth + "  Laya.stage.designWidth:"+Laya.stage.designWidth);
        // console.log("Browser.clientHeight:"+Laya.Browser.clientHeight + "  Laya.stage.designHeight:"+Laya.stage.designHeight);
        // console.log(">>", "[screenWidth:" + this.pageWidth + "] [screenHeight:" + this.pageHeight + "]");
    }

    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    base(camera: Laya.Camera = null, moveCamera: boolean = true, spec: boolean = false): void {


        this.box2D = this.owner as Laya.Panel;
        this.box2D.bgColor = "#232628";
        if (Index && Index.curPage && camera) {
            if (moveCamera) {
                camera.addComponent(CameraMoveScript);
            }

            if (!spec) {
                //把3D摄像机视图画到256宽高的纹理上
                camera.msaa = true;
                camera.renderTarget = Index.rt;
            }

        }
        else if (camera) {
            if (moveCamera) {
                camera.addComponent(CameraMoveScript);
            }
        }

    }

    /**
     * @zh 使用MeshFilter与MeshRender组件创建MeshSprite3D
     * @param mesh 使用的mesh
     * @param mat 使用的材质
     * @returns 3D精灵
     * @en create MeshSprite3D by using MeshFilter and MeshRender component.
     * @param mesh mesh
     * @param mat material 
     * @returns Laya.Sprite3D
     */
    createMeshSprite3D(mesh: Laya.Mesh, mat: Laya.Material): Laya.Sprite3D {
        let sp3d = new Laya.Sprite3D();
        let meshfilter: Laya.MeshFilter = sp3d.addComponent(Laya.MeshFilter);
        let meshrender: Laya.MeshRenderer = sp3d.addComponent(Laya.MeshRenderer);
        mesh && (meshfilter.sharedMesh = mesh);
        mat && (meshrender.sharedMaterial = mat);
        return sp3d;
    }

    public setCameraDirectionLight(camera: Camera, directionLight: Laya.Sprite3D, fieldOfView: number = 60): void {

        camera.transform.position = new Vector3(0, 2, 3);
        camera.transform.rotationEuler = new Vector3(-30, 0, 0);
        camera.useOcclusionCulling = false;
        //设置摄像机视野范围（角度）
        camera.fieldOfView = fieldOfView;

        //设置平行光颜色
        directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);

    }

    public addBottomButton(buttonNames: string[], caller: any, func: Function[]): void {

        this._buttonType = 0;
        this._button = (<Button>this.owner.addChild(new Button("resources/image/img_btn_bg.png", buttonNames[0])));
        this._button.size(150, 40);
        this._button.labelSize = 16;
        this._button.sizeGrid = "21,83,22,76";
        this._button.stateNum = 1;
        this._button.labelColors = "#ffffff";
        this._button.pos(this.pageWidth / 2 - this._button.width / 2, this.pageHeight - 50);
        this._button.on(Event.CLICK, this, () => {
            this._buttonType++;

            // 按钮2次切换
            if (buttonNames.length == 2) {
                this._buttonType %= 2;
                switch (this._buttonType) {
                    case 0:
                        this._button.label = buttonNames[0];
                        func[1].apply(caller);
                        break;
                    case 1:
                        this._button.label = buttonNames[1];
                        func[0].apply(caller);
                        break;
                }
            }

            // 按钮3次切换
            else if (buttonNames.length == 3) {
                this._buttonType %= 3;
                switch (this._buttonType) {
                    case 0:
                        this._button.label = buttonNames[0];
                        func[2].apply(caller);
                        break;
                    case 1:
                        this._button.label = buttonNames[1];
                        func[0].apply(caller);
                        break;
                    case 2:
                        this._button.label = buttonNames[2];
                        func[1].apply(caller);
                        break;
                }
            }

        });

        this._button.on(Event.MOUSE_OVER, null, () => {
            Laya.Mouse.cursor = "pointer";
        });
        this._button.on(Event.MOUSE_OUT, null, () => {
            Laya.Mouse.cursor = "default";
        });
    }


}