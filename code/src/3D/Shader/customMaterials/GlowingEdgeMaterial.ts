import Material = Laya.Material;
import Vector3 = Laya.Vector3;
import BaseTexture = Laya.BaseTexture;
import Shader3D = Laya.Shader3D;



export class GlowingEdgeMaterial extends Material {
    public static DIFFUSETEXTURE: number;
    public static MARGINALCOLOR: number;
    public isInit:boolean = false;
    __init__() {
        GlowingEdgeMaterial.DIFFUSETEXTURE = Shader3D.propertyNameToID("u_texture");
        GlowingEdgeMaterial.MARGINALCOLOR = Shader3D.propertyNameToID("u_marginalColor");
    }
    constructor() {
        super();
        if(!this.isInit){
            this.__init__();
            this.isInit = true;
        }
        this.setShaderName("GlowingEdgeMaterial");
    }
    /**
     * 获取漫反射贴图。
     *  漫反射贴图。
     */
    public get diffuseTexture(): BaseTexture {
        return this.getTextureByIndex(GlowingEdgeMaterial.DIFFUSETEXTURE);
    }

    /**
     * 设置漫反射贴图。
     * 漫反射贴图。
     */
    public set diffuseTexture(value: BaseTexture) {
        this.setTextureByIndex(GlowingEdgeMaterial.DIFFUSETEXTURE, value);
    }

    /**
     * 设置边缘光照颜色。
     * 边缘光照颜色。
     */
    public set marginalColor(value: Vector3) {
        this.setVector3ByIndex(GlowingEdgeMaterial.MARGINALCOLOR, value);
    }
}
