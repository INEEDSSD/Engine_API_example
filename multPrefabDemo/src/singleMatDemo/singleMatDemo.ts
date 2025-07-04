const { regClass, property } = Laya;

@regClass()
export class singleMatDemo extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    public text: string = "";
    mat1: Laya.BlinnPhongMaterial;
    mat2: Laya.PBRStandardMaterial;
    mat3: Laya.UnlitMaterial;

    @property({ type: Laya.Sprite3D })
    sprite3D: Laya.Sprite3D;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.mat1 = new Laya.BlinnPhongMaterial();
        this.mat2 = new Laya.PBRStandardMaterial();
        this.mat2.albedoColor = new Laya.Color(1, 0, 0, 1);
        this.mat3 = new Laya.UnlitMaterial();
        //漫反射贴图
        Laya.Texture2D.load("resources/images/layabox.png", Laya.Handler.create(this, (texture: Laya.Texture2D) => {
            //在U方向上使用WRAPMODE_CLAMP
            texture.wrapModeU = Laya.WrapMode.Clamp;
            //在V方向使用WRAPMODE_REPEAT
            texture.wrapModeV = Laya.WrapMode.Repeat;
            //设置过滤方式
            texture.filterMode = Laya.FilterMode.Bilinear;
            //设置各向异性等级
            texture.anisoLevel = 2;

            this.mat1.albedoTexture = texture;
            //修改材质贴图的平铺和偏移
            var tilingOffset: Laya.Vector4 = this.mat1.tilingOffset;
            tilingOffset.setValue(3, 3, 0.0, 0.0);
            this.mat1.tilingOffset = tilingOffset;

            this.createMoreBox();
        }));

    }

    createMoreBox() {
        let xLine = 10;
        let yLine = 10;
        let zLine = 10;
        let oriVec3 = new Laya.Vector3(-5, -10, -20);
        let mtls = [this.mat1, this.mat2, this.mat3]
        let mid = 0;
        for (let x = 0; x < xLine; x++) {
            for (let y = 0; y < yLine; y++) {
                for (let z = 0; z < zLine; z++) {
                    var box: Laya.MeshSprite3D = (<Laya.MeshSprite3D>this.sprite3D.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(0.5, 0.5, 0.5))));
                    box.transform.position = new Laya.Vector3(x + oriVec3.x, y + oriVec3.y, z + oriVec3.z);
                    box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
                    box.meshRenderer.sharedMaterial = this.mat1;//mtls[(mid++)%3]
                }
            }
        }

    }
}