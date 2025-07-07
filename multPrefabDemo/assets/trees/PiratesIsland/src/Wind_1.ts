import Shader3D = Laya.Shader3D;
const { regClass, property } = Laya;

Laya.addAfterInitCallback(() => {
    const globalUniformMap = (Laya.Scene3D as any).sceneUniformMap;
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindDirection"), "WindDirection", Laya.ShaderDataType.Vector3);
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindStrenghtFloat"), "WindStrenghtFloat", Laya.ShaderDataType.Float);
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindSpeedFloat"), "WindSpeedFloat", Laya.ShaderDataType.Float);
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindTurbulenceFloat"), "WindTurbulenceFloat", Laya.ShaderDataType.Float);
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("LeavesWiggleFloat"), "LeavesWiggleFloat", Laya.ShaderDataType.Float);
    globalUniformMap.addShaderUniform(Shader3D.propertyNameToID("GrassWiggleFloat"), "GrassWiggleFloat", Laya.ShaderDataType.Float);
})

@regClass()
export class Wind extends Laya.Script {
    declare owner: Laya.Sprite3D;

    @property({ type: "boolean" })
    public Wind = true;
    @property({ type: Number, range: [0, 1], step: 0.01, fractionDigits: 2 })
    public WindStrenght = 0.1;
    @property({ type: Number, range: [0, 10], step: 0.01, fractionDigits: 2 })
    public WindSpeed = 2;
    @property({ type: Number, range: [0, 1], step: 0.01, fractionDigits: 2 })
    public WindTurbulence = 0.5;
    @property({ type: "boolean" })
    public Wiggle = true;
    @property({ type: Number, range: [0, 1], step: 0.01, fractionDigits: 2 })
    public LeavesWiggle = 0.2;
    @property({ type: Number, range: [0, 1], step: 0.01, fractionDigits: 2 })
    public GrassWiggle = 0.1;

    private windDir = new Laya.Vector3();

    public onAwake(): void {
        // const sceneUniformMap = (Laya.Scene3D as any).sceneUniformMap;
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindDirection"), "WindDirection");
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindStrenghtFloat"), "WindStrenghtFloat");
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindSpeedFloat"), "WindSpeedFloat");
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("WindTurbulenceFloat"), "WindTurbulenceFloat");
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("LeavesWiggleFloat"), "LeavesWiggleFloat");
        // sceneUniformMap.addShaderUniform(Shader3D.propertyNameToID("GrassWiggleFloat"), "GrassWiggleFloat");

        Laya.Shader3D._configDefineValues.add(Laya.Shader3D.getDefineByName("WIND_ON"));
        Laya.Shader3D._configDefineValues.add(Laya.Shader3D.getDefineByName("WIGGLE_ON"));

        let qua = new Laya.Quaternion();
        this.owner.transform.rotation.invert(qua);
        Laya.Vector3.transformQuat(Laya.Vector3.ForwardRH, qua, this.windDir);
    }

    public onUpdate(): void {
        if (this.Wind) {
            (this.owner.scene as any)._shaderValues.addDefine(Laya.Shader3D.getDefineByName("WIND_ON"));
        } else {
            (this.owner.scene as any)._shaderValues.removeDefine(Laya.Shader3D.getDefineByName("WIND_ON"));
        }

        if (this.Wiggle) {
            (this.owner.scene as any)._shaderValues.addDefine(Laya.Shader3D.getDefineByName("WIGGLE_ON"));
        } else {
            (this.owner.scene as any)._shaderValues.removeDefine(Laya.Shader3D.getDefineByName("WIGGLE_ON"));
        }

        this.owner.scene.setGlobalShaderValue("WindDirection", Laya.ShaderDataType.Vector3, this.windDir);
        this.owner.scene.setGlobalShaderValue("WindStrenghtFloat", Laya.ShaderDataType.Float, this.WindStrenght);
        this.owner.scene.setGlobalShaderValue("WindSpeedFloat", Laya.ShaderDataType.Float, this.WindSpeed);
        this.owner.scene.setGlobalShaderValue("WindTurbulenceFloat", Laya.ShaderDataType.Float, this.WindTurbulence);
        this.owner.scene.setGlobalShaderValue("LeavesWiggleFloat", Laya.ShaderDataType.Float, this.LeavesWiggle);
        this.owner.scene.setGlobalShaderValue("GrassWiggleFloat", Laya.ShaderDataType.Float, this.GrassWiggle);
    }
}