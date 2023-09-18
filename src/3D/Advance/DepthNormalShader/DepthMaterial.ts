import DepthVS from "../DepthNormalShader/DepthTextureTest.vs";
import DepthFS from "../DepthNormalShader/DepthTextureTest.fs";

export class DepthMaterial extends Laya.Material{
    /**
     * init
     */
    static init(){

        var shader:Laya.Shader3D = Laya.Shader3D.add("DepthShader");
        var subShader:Laya.SubShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap);
        shader.addSubShader(subShader);
        subShader.addShaderPass(DepthVS,DepthFS,"Forward");
    }

    /**
     * constuctor
     */
    constructor(){
        super();
        this.setShaderName("DepthShader");
        this.renderModeSet();
    }

     /**
      * render mode set
      */
     renderModeSet(){
        this.alphaTest = false;//深度测试关闭
        this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;//渲染顺序放在后面
        this.depthWrite = true;
        this.cull = Laya.RenderState.CULL_BACK;
        this.blend = Laya.RenderState.BLEND_DISABLE;
        this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
}