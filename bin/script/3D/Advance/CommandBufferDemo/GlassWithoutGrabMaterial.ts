import GlassShaderVS from "./GlassShader.vs";
import GlassShaderFS from "./GlassShader.fs";

export class GlassWithoutGrabMaterial extends Laya.Material {
    /** tintTexure */
    static TINTTEXTURE: number;
    /** normalTexture" */
    static NORMALTEXTURE: number;
    /** TilingOffset */
    static TILINGOFFSET: number;
    /** tintAmount */
    static ALBEDOCOLOR: number;

    static init() {
        var attributeMap: any = {
            'a_Position': [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
            'a_Normal': [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
            'a_Texcoord0': [Laya.VertexMesh.MESH_TEXTURECOORDINATE0, Laya.ShaderDataType.Vector2],
            'a_Tangent0': [Laya.VertexMesh.MESH_TANGENT0, Laya.ShaderDataType.Vector4],
        };

        var uniformMap: any = {
            "u_tintTexure": Laya.ShaderDataType.Texture2D,
            "u_screenTexture": Laya.ShaderDataType.Texture2D,
            "u_normalTexture": Laya.ShaderDataType.Texture2D,
            "u_TilingOffset": Laya.ShaderDataType.Vector4,
            "u_tintAmount": Laya.ShaderDataType.Color,
        }
        var shader: Laya.Shader3D = Laya.Shader3D.add("GlassShader", false);
        var subShader: Laya.SubShader = new Laya.SubShader(attributeMap, uniformMap);
        shader.addSubShader(subShader);
        subShader.addShaderPass(GlassShaderVS, GlassShaderFS);

        GlassWithoutGrabMaterial.TINTTEXTURE = Laya.Shader3D.propertyNameToID("u_tintTexure");
        GlassWithoutGrabMaterial.NORMALTEXTURE = Laya.Shader3D.propertyNameToID("u_normalTexture");
        GlassWithoutGrabMaterial.TILINGOFFSET = Laya.Shader3D.propertyNameToID("u_TilingOffset");
        GlassWithoutGrabMaterial.ALBEDOCOLOR = Laya.Shader3D.propertyNameToID("u_tintAmount");
    }

    /**
     * @param texture 
     */
    constructor(texture: Laya.BaseTexture) {
        super();
        this.setShaderName("GlassShader");
        this.renderModeSet();
        this._shaderValues.setVector(GlassWithoutGrabMaterial.TILINGOFFSET, new Laya.Vector4(1, 1, 0, 0));
        this._shaderValues.setTexture(GlassWithoutGrabMaterial.TINTTEXTURE, texture);
    }

    /**
     * RenderMode
     */
    renderModeSet() {
        this.alphaTest = false;//深度测试关闭
        this.renderQueue = Laya.Material.RENDERQUEUE_TRANSPARENT;//渲染顺序放在后面
        this.depthWrite = true;
        this.cull = Laya.RenderState.CULL_BACK;
        this.blend = Laya.RenderState.BLEND_DISABLE;
        this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }



}