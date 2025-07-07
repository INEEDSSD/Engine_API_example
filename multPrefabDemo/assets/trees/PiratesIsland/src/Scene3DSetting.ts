import Scene3D = Laya.Scene3D;
import Sprite3D = Laya.Sprite3D;
import Vector4 = Laya.Vector4;
import Shader3D = Laya.Shader3D;
import ShaderDataType = Laya.ShaderDataType;
const { regClass, property, runInEditor } = Laya;
// Laya.addAfterInitCallback(() => {
//     PostProcessResources._init_();
// })
enum ColorSpace {
    Gamma,
    Linear,
}
@regClass() @runInEditor
export default class Scene3DSetting extends Laya.Script {

    declare owner: Scene3D;

    @property({ type: ColorSpace, onChange: "onChangeColorSpace" })
    public colorSpace = ColorSpace.Gamma;

    @property({ type: Boolean, onChange: "onChangeCustomSH" })
    public enableCustomSH = false;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHAr", hidden: "!data.enableCustomSH" })
    public SHAr: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHAg", hidden: "!data.enableCustomSH" })
    public SHAg: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHAb", hidden: "!data.enableCustomSH" })
    public SHAb: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHBr", hidden: "!data.enableCustomSH" })
    public SHBr: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHBg", hidden: "!data.enableCustomSH" })
    public SHBg: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHBb", hidden: "!data.enableCustomSH" })
    public SHBb: Vector4;
    @property({ type: Vector4, fractionDigits: 7, onChange: "onChangeSHC", hidden: "!data.enableCustomSH" })
    public SHC: Vector4;

    public onAwake(): void {
        let camera = this.owner.getChildByName("Controller")?.getChildByName("Controller Camera") as Laya.Camera;
        if (camera) {
            camera.opaquePass = true;
            camera.depthTextureMode = Laya.DepthTextureMode.Depth;

            // camera.postProcess = camera.postProcess || new Laya.PostProcess();
            // camera.postProcess.clearEffect();

            // let colorGrading = new ColorGrading();
            // colorGrading.postExposure = 0.8; 
            // colorGrading

            // camera.postProcess.addEffect();
        }
    }

    public onStart(): void {
        if (!Laya.LayaEnv.isPlaying) (this.owner as any)._shaderValues.addDefine(Laya.Shader3D.getDefineByName("EDITOR_ON"));
        this.onChangeColorSpace();
        this.onChangeCustomSH();

        this.SHAr = new Vector4(0.0000000, 0.0074358, 0.0000000, 0.0128160);
        this.SHAg = new Vector4(0.0000000, -0.1863429, 0.0000000, 0.2011922);
        this.SHAb = new Vector4(0.0000000, -0.0619662, 0.0000000, 0.2966696);
        this.SHBr = new Vector4(0.0000000, 0.0000000, -0.0002147, 0.0000000)
        this.SHBg = new Vector4(0.0000000, 0.0000000, -0.0649772, 0.0000000);
        this.SHBb = new Vector4(0.0000000, 0.0000000, -0.0441279, 0.0000000);
        this.SHC = new Vector4(-0.0002147, -0.0649772, -0.0441279, 1.0000000);
    }

    private onChangeColorSpace(): void {
        if (this.owner) {
            if (this.colorSpace == ColorSpace.Gamma) {
                (this.owner as any)._shaderValues.addDefine(Laya.Shader3D.getDefineByName("COLORSPACE_GAMMA"));
            } else {
                (this.owner as any)._shaderValues.removeDefine(Laya.Shader3D.getDefineByName("COLORSPACE_GAMMA"));
            }
        }
    }

    private onChangeCustomSH(): void {
        if (this.enableCustomSH) {
            (this.owner as any)._shaderValues.addDefine(Laya.Shader3D.getDefineByName("ENABLECUSTOMSH"));
            // const sceneUniformMap = Laya.Scene3D.sceneUniformMap as any;
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAr"), "u_SHAr");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAg"), "u_SHAg");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAb"), "u_SHAb");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBr"), "u_SHBr");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBg"), "u_SHBg");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBb"), "u_SHBb");
            // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHC"), "u_SHC");

            this.onChangeSHAr();
            this.onChangeSHAg();
            this.onChangeSHAb();
            this.onChangeSHBr();
            this.onChangeSHBg();
            this.onChangeSHBb();
            this.onChangeSHC();
        } else {
            (this.owner as any)._shaderValues.removeDefine(Laya.Shader3D.getDefineByName("ENABLECUSTOMSH"));
        }
    }

    private onChangeSHAr(): void {
        this.SHAr && this.owner.setGlobalShaderValue("u_SHAr", ShaderDataType.Vector4, this.SHAr);
    }

    private onChangeSHAg(): void {
        this.SHAg && this.owner.setGlobalShaderValue("u_SHAg", ShaderDataType.Vector4, this.SHAg);
    }

    private onChangeSHAb(): void {
        this.SHAb && this.owner.setGlobalShaderValue("u_SHAb", ShaderDataType.Vector4, this.SHAb);
    }

    private onChangeSHBr(): void {
        this.SHBr && this.owner.setGlobalShaderValue("u_SHBr", ShaderDataType.Vector4, this.SHBr);
    }

    private onChangeSHBg(): void {
        this.SHBg && this.owner.setGlobalShaderValue("u_SHBg", ShaderDataType.Vector4, this.SHBg);
    }

    private onChangeSHBb(): void {
        this.SHBb && this.owner.setGlobalShaderValue("u_SHBb", ShaderDataType.Vector4, this.SHBb);
    }

    private onChangeSHC(): void {
        this.SHC && this.owner.setGlobalShaderValue("u_SHC", ShaderDataType.Vector4, this.SHC);
    }
}
Laya.ClassUtils.regClass("Scene3DSetting", Scene3DSetting);
Laya.addAfterInitCallback(() => {
    console.log("add scene")
    const sceneUniformMap = Laya.Scene3D.sceneUniformMap;
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAr"), "u_SHAr", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAg"), "u_SHAg", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHAb"), "u_SHAb", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBr"), "u_SHBr", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBg"), "u_SHBg", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHBb"), "u_SHBb", ShaderDataType.Vector4);
    sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("u_SHC"), "u_SHC", ShaderDataType.Vector4);
});