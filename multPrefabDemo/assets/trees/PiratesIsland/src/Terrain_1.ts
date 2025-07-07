import Texture2DArray = Laya.Texture2DArray;
const { regClass, property, runInEditor } = Laya;

@regClass() @runInEditor
export class Terrain extends Laya.Script {
    declare owner: Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    @property(Texture2DArray)
    public splat: Texture2DArray;

    @property(Texture2DArray)
    public diffuse: Texture2DArray;

    @property(Texture2DArray)
    public normal: Texture2DArray;

    onAwake(): void {
        const mat = this.owner.getComponent(Laya.MeshRenderer).sharedMaterial;
        mat.setTexture("u_SplatArr", this.splat);
        mat.setTexture("u_DiffuseArr", this.diffuse);
        mat.setTexture("u_NormalArr", this.normal);
    }


}