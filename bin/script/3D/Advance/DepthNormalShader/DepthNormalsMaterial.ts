import DepthNormalVS from "../DepthNormalShader/DepthNormalsTextureTest.vs";
import DepthNormalFS from "../DepthNormalShader/DepthNormalsTextureTest.fs";


export class DepthNormalsMaterial extends Laya.Material{
    static init(){
        var shader:Laya.Shader3D = Laya.Shader3D.add("DepthNormalShader",false,false);
        var subShader:Laya.SubShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap);
        shader.addSubShader(subShader);
        subShader.addShaderPass(DepthNormalVS,DepthNormalFS,"Forward");
    }

    constructor(){
        super();
        this.setShaderName("DepthNormalShader");
        this.renderModeSet();
    }

     //渲染模式
     renderModeSet(){
        this.alphaTest = false;//深度测试关闭
        this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;//渲染顺序放在后面
        this.depthWrite = true;
        this.cull = Laya.RenderState.CULL_BACK;
        this.blend = Laya.RenderState.BLEND_DISABLE;
        this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
}