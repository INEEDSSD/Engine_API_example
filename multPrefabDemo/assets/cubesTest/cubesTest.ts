const { regClass, property } = Laya;

@regClass()
export class cubesTest extends Laya.Script {

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        function createMeshSprite(mesh: Laya.Mesh, color: Laya.Color) {
            let sp3 = new Laya.Sprite3D();
            let mf = sp3.addComponent(Laya.MeshFilter);
            mf.sharedMesh = mesh;
            let r = sp3.addComponent(Laya.MeshRenderer)
            let mtl = new Laya.BlinnPhongMaterial();
            r.material = mtl;
            mtl.albedoColor = color;
            return sp3;
        }
        // 创建立方体
        for (let i = 0; i < 3000; i++) {
            this.owner.addChild(createMeshSprite(Laya.PrimitiveMesh.createSphere(0.1), new Laya.Color(1, 0, 0, 1)));
        }
    }



}