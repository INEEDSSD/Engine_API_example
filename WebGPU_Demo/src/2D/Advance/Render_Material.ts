import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Render_Material extends BaseScript {

    constructor() {
        super();
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
        let res: string = "resources/res/apes/monkey3.png";
        Laya.loader.load(res).then(() => {
            this.set2DCustomMaterial();
        });
    }


    set2DCustomMaterial(): void {
        // 自定义shader与全局2D uniform变量使用
        let customShaderSp = new Laya.Sprite();
        customShaderSp.loadImage("resources/res/apes/monkey3.png");
        this.owner.addChild(customShaderSp);
        this.loadCustom2DShader(customShaderSp);

        // 自定义2d材质使用
        Laya.loader.load("resources/res/2DRender/customMaterial_1.lmat").then((mat: Laya.Material) => {
            let customMaterialSp = new Laya.Sprite();
            customMaterialSp.pos(100, 0);
            this.owner.addChild(customMaterialSp);
            customMaterialSp.loadImage("resources/res/apes/monkey3.png");
            customMaterialSp.graphics.material = mat;
        });
    }

    loadCustom2DShader(sp: Laya.Sprite): void {
        Laya.loader.load("resources/res/2DRender/custom2DShader_0.shader").then(() => {
            let mat = new Laya.Material();
            mat.setShaderName("custom2DShader_0");
            // 设置2D全局uniform变量
            Laya.Graphics.add2DGlobalUniformData(Laya.Shader3D.propertyNameToID("u_GlobalColor"), "u_GlobalColor", Laya.ShaderDataType.Color);
            (this.owner.scene as Laya.Scene).sceneShaderData.setColor(Laya.Shader3D.propertyNameToID("u_GlobalColor"), new Laya.Color(0.0, 1.0, 0.0, 1.0));
            sp.graphics.material = mat;
        });
    }
}