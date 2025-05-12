import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class bluePrintDemo extends BaseScript {
    @property(Laya.Camera)
    private camera: Laya.Camera;
    @property(Laya.Scene3D)
    private scene: Laya.Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;
    @property(Laya.Button)
    private btn: Laya.Button;
    @property(Laya.Button)
    private btnShader: Laya.Button;

    private monkeyPath: string = "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh";
    private testBPMatPath: string = "resources/res/bluePrint/bpMat.lmat";
    private testBPShaderPath: string = "resources/res/bluePrint/testBP.bps";
    private testBPShaderName: string = "testBP";
    private monkey: Laya.Sprite3D;
    private sphere: Laya.Sprite3D;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base(this.camera);
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.sphere = this.scene.getChildByName("Sphere") as Laya.Sprite3D;
        Laya.loader.load([this.monkeyPath, this.testBPMatPath]).then(() => {
            if (this.monkey) return;
            this.monkey = (Laya.loader.getRes(this.monkeyPath) as Laya.PrefabImpl).create() as Laya.Sprite3D;
            this.scene.addChild(this.monkey);
            this.monkey.transform.position = new Laya.Vector3(0.5, 0.5, 3);
            this.btn.on(Laya.Event.CLICK, this, this.onBtnClick);

            this.btnShader.on(Laya.Event.CLICK, this, this.onBtnShaderClick);
        });
    }

    onBtnClick(): void {
        let mat: Laya.Material = Laya.loader.getRes(this.testBPMatPath) as Laya.Material;
        mat.setShaderData("metaParam", Laya.ShaderDataType.Float, 1.0);
        let spMeshrender = this.sphere.getComponent(Laya.MeshRenderer);
        spMeshrender.sharedMaterial = mat;
    }

    onBtnShaderClick(): void {
        Laya.loader.load(this.testBPShaderPath).then(() => {
            let meshrender: Laya.SkinnedMeshRenderer = this.monkey.getChildAt(0).getChildAt(1).getComponent(Laya.SkinnedMeshRenderer);
            let mat = new Laya.BlinnPhongMaterial();
            mat.setShaderName(this.testBPShaderName);
            mat.setShaderData("metaParam", Laya.ShaderDataType.Float, 0.1);
            meshrender.sharedMaterial = mat;
        });
    }

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}