import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class UBO_instance_matBatchDemo extends BaseScript {
    declare owner: Laya.Scene;

    @property(Laya.Scene3D)
    public scene3D: Laya.Scene3D;

    @property(Laya.Camera)
    public cam: Laya.Camera;

    @property(Laya.Material)
    public batchMat: Laya.Material;

    @property(Laya.Sprite3D)
    public ownerSp3: Laya.Sprite3D;

    private _colorNums = 20;
    private _spriteNums = 200;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        super.base(this.cam);
        if (this.batchMat) {
            this._createColorBufferData();
            this._createMeshSpriteRender();
        }
    }


    private _createColorBufferData() {
        //随机给20个颜色值
        let colorBuffer = new Float32Array(20 * 4);
        for (var i = 0; i < this._colorNums; i++) {
            let offset = i * 4;
            colorBuffer[offset] = Math.random();
            colorBuffer[offset + 1] = Math.random();
            colorBuffer[offset + 2] = Math.random();
            colorBuffer[offset + 3] = 1;
        }
        this.batchMat.setBuffer("colormap", colorBuffer);

    }

    private _createMeshSpriteRender() {
        let mesh = Laya.PrimitiveMesh.createSphere(0.5);
        let ownerSprite = this.ownerSp3;
        let positionRanvge = 30;
        for (var i = 0; i < this._spriteNums; i++) {
            let sprite = ownerSprite.addChild(new Laya.Sprite3D());
            let filter = sprite.addComponent(Laya.MeshFilter);
            let render = sprite.addComponent(Laya.MeshRenderer);
            filter.sharedMesh = mesh;
            render.sharedMaterial = this.batchMat;
            sprite.transform.localPosition = this._getRandomPosition(positionRanvge);
            render.setNodeCustomData(Laya.ENodeCustomData.custom_0, Math.floor(Math.random() * this._colorNums));
        }
    }
    private _getRandomPosition(positionRanvge: number): Laya.Vector3 {
        let getRangeRandom = () => {
            return (Math.random() - 0.5) * positionRanvge;
        }
        return new Laya.Vector3(getRangeRandom(), 0.3, getRangeRandom());
    }
}