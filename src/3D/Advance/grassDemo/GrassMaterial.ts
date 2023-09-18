import UnityGrassVS from "./shader/GrassShaderVS.vs";
import UnityGrassFS from "./shader/GrassShaderFS.fs";

export class GrassMaterial extends Laya.Material {
    static hasInited: boolean = false;
    /**@internal */
    static WINDAINTENSITY: number;
    /**@internal */
    static WINDAFREQUECY: number;
    /**@internal */
    static WINDATILING: number;
    /**@internal */
    static WINDAWRAP: number;
    /**@internal */
    static WINDBINTENSITY: number;
    /**@internal */
    static WINDBFREQUECY: number;
    /**@internal */
    static WINDBTILING: number;
    /**@internal */
    static WINDBWRAP: number;
    /**@internal */
    static WINDCINTENSITY: number;
    /**@internal */
    static WINDCFREQUECY: number;
    /**@internal */
    static WINDCTILING: number;
    /**@internal */
    static WINDCWRAP: number;
    //grass hight width
    static GRASSHEIGHT: number;
    static GRASSWIDTH: number;
    //grass Bound 必须和草系统里面的UV相同才能得到很好的效果
    static GRASSBOUND: number;
    //地面颜色
    static GROUNDCOLOR: number;
    static ALBEDOTEXTURE: number;

    static __init__(): void {

        GrassMaterial.WINDAINTENSITY= Laya.Shader3D.propertyNameToID("u_WindAIntensity");
        GrassMaterial.WINDAFREQUECY= Laya.Shader3D.propertyNameToID("u_WindAFrequency");
        GrassMaterial.WINDATILING= Laya.Shader3D.propertyNameToID("u_WindATiling");
        GrassMaterial.WINDAWRAP= Laya.Shader3D.propertyNameToID("u_WindAWrap");
        GrassMaterial.WINDBINTENSITY= Laya.Shader3D.propertyNameToID("u_WindBIntensity");
        GrassMaterial.WINDBFREQUECY= Laya.Shader3D.propertyNameToID("u_WindBFrequency");
        GrassMaterial.WINDBTILING= Laya.Shader3D.propertyNameToID("u_WindBTiling");
        GrassMaterial.WINDBWRAP= Laya.Shader3D.propertyNameToID("u_WindBWrap");
        GrassMaterial.WINDCINTENSITY= Laya.Shader3D.propertyNameToID("u_WindCIntensity");
        GrassMaterial.WINDCFREQUECY= Laya.Shader3D.propertyNameToID("u_WindCFrequency");
        GrassMaterial.WINDCTILING= Laya.Shader3D.propertyNameToID("u_WindCTiling");
        GrassMaterial.WINDCWRAP= Laya.Shader3D.propertyNameToID("u_WindCWrap");
        //grass hight width
        GrassMaterial.GRASSHEIGHT= Laya.Shader3D.propertyNameToID("u_grassHeight");
        GrassMaterial.GRASSWIDTH= Laya.Shader3D.propertyNameToID("u_grassWidth");
        //grass Bound 必须和草系统里面的UV相同才能得到很好的效果
        GrassMaterial.GRASSBOUND= Laya.Shader3D.propertyNameToID("u_BoundSize");
        //地面颜色
        GrassMaterial.GROUNDCOLOR= Laya.Shader3D.propertyNameToID("u_GroundColor");
        GrassMaterial.ALBEDOTEXTURE= Laya.Shader3D.propertyNameToID("u_albedoTexture");

        var attributeMap: any = {
            'a_Position': [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
            'a_Normal': [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
            'a_privotPosition': [Laya.VertexMesh.MESH_CUSTOME0, Laya.ShaderDataType.Vector3]
        };
        var uniformMap:any = {
            "u_WindAIntensity":Laya.ShaderDataType.Float,
            "u_WindAFrequency":Laya.ShaderDataType.Float,
            "u_WindATiling":Laya.ShaderDataType.Vector2,
            "u_WindAWrap":Laya.ShaderDataType.Vector2,

            "u_WindBIntensity":Laya.ShaderDataType.Float,
            "u_WindBFrequency":Laya.ShaderDataType.Float,
            "u_WindBTiling":Laya.ShaderDataType.Vector2,
            "u_WindBWrap":Laya.ShaderDataType.Vector2,

            "u_WindCIntensity":Laya.ShaderDataType.Float,
            "u_WindCFrequency":Laya.ShaderDataType.Float,
            "u_WindCTiling":Laya.ShaderDataType.Vector2,
            "u_WindCWrap":Laya.ShaderDataType.Vector2,
            //grass
            "u_grassHeight":Laya.ShaderDataType.Float,
            "u_grassWidth":Laya.ShaderDataType.Float,
            "u_BoundSize":Laya.ShaderDataType.Vector4,
            "u_GroundColor":Laya.ShaderDataType.Vector3,
            "u_albedoTexture":Laya.ShaderDataType.Texture2D
        }
        var shader: Laya.Shader3D = Laya.Shader3D.add("GrassShader", false, false);
        var subShader: Laya.SubShader = new Laya.SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        var pass: Laya.ShaderPass = subShader.addShaderPass(UnityGrassVS, UnityGrassFS, "Forward");
        pass.renderState.cull = Laya.RenderState.CULL_BACK;
    }

    constructor() {
        if (!GrassMaterial.hasInited) {
            GrassMaterial.__init__();
            GrassMaterial.hasInited = true;
        }
        super();
        this.setShaderName("GrassShader");
        // todo  渲染队列选择
        this.alphaTest = false;
        this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;
        this.depthWrite = true;
        this.cull = Laya.RenderState.CULL_BACK;
        this.blend = Laya.RenderState.BLEND_DISABLE;
        this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
        this.setWindA(1.77, 4, new Laya.Vector2(0.1, 0.1), new Laya.Vector2(0.5, 0.5));
        this.setWindB(0.25, 7.7, new Laya.Vector2(0.37, 3), new Laya.Vector2(0.5, 0.5));
        this.setWindC(0.125, 11.7, new Laya.Vector2(0.77, 3), new Laya.Vector2(0.5, 0.5));
        this.grassHight = 1.0;
        this.grassWidth = 1.0;
        this.grassGroundColor = new Laya.Vector3(0.25, 0.49, 0.23);
        this.grassBoundSize = new Laya.Vector4(-105, -105, 210, 210);
        Laya.loader.load("resources/res/InstancedIndirectGrassVertexColor.jpg", {srgb: true, type: Laya.Loader.TEXTURE2D}).then((res : Laya.Texture2D)=>{
            this.albedoTexture = res;
            console.log(res);
        } )
    }

    setWindA(windIntensity: number, windFrequency: number, windTiling: Laya.Vector2, windWrap:Laya. Vector2) {
        this._shaderValues.setNumber(GrassMaterial.WINDAINTENSITY, windIntensity);
        this._shaderValues.setNumber(GrassMaterial.WINDAFREQUECY, windFrequency);
        this._shaderValues.setVector2(GrassMaterial.WINDATILING, windTiling);
        this._shaderValues.setVector2(GrassMaterial.WINDAWRAP, windWrap);
    }

    setWindB(windIntensity: number, windFrequency: number, windTiling: Laya.Vector2, windWrap: Laya.Vector2) {
        this._shaderValues.setNumber(GrassMaterial.WINDBINTENSITY, windIntensity);
        this._shaderValues.setNumber(GrassMaterial.WINDBFREQUECY, windFrequency);
        this._shaderValues.setVector2(GrassMaterial.WINDBTILING, windTiling);
        this._shaderValues.setVector2(GrassMaterial.WINDBWRAP, windWrap);
    }

    setWindC(windIntensity: number, windFrequency: number, windTiling: Laya.Vector2, windWrap: Laya.Vector2) {
        this._shaderValues.setNumber(GrassMaterial.WINDCINTENSITY, windIntensity);
        this._shaderValues.setNumber(GrassMaterial.WINDCFREQUECY, windFrequency);
        this._shaderValues.setVector2(GrassMaterial.WINDCTILING, windTiling);
        this._shaderValues.setVector2(GrassMaterial.WINDCWRAP, windWrap);
    }

    set grassHight(value: number) {
        this._shaderValues.setNumber(GrassMaterial.GRASSHEIGHT, value);
    }

    set grassWidth(value: number) {
        this._shaderValues.setNumber(GrassMaterial.GRASSWIDTH, value);
    }

    set grassGroundColor(value: Laya.Vector3) {
        this._shaderValues.setVector3(GrassMaterial.GROUNDCOLOR, value);
    }

    set grassBoundSize(value: Laya.Vector4) {
        this._shaderValues.setVector(GrassMaterial.GRASSBOUND, value);
    }

    set albedoTexture(value: Laya.BaseTexture) {
        this._shaderValues.setTexture(GrassMaterial.ALBEDOTEXTURE, value);
    }

}