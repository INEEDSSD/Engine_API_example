const { regClass, property, runInEditor, MeshFilter, MeshRenderer, Mesh, Vector3, Sprite3D, Quaternion } = Laya;
type Sprite3D = Laya.Sprite3D;
type Vector3 = Laya.Vector3;

@regClass()
// @runInEditor
export class plantanything extends Laya.Script {
    declare owner: Sprite3D;
    //declare owner : Laya.Sprite;
    trangles: Vector3[][] = [];

    @property({ type: Laya.Prefab, caption: '预制体' })
    object: Laya.Prefab

    _count = 10
    @property({ type: "int", min: 0, max: 999999, caption: '数量' })
    set count(v: number) {
        this._count = v;
        this.testGen();
    }
    get count(): number {
        return this._count;
    }

    _down = 0;
    @property({ type: Number, caption: "下沉" })
    set down(v: number) {
        this._down = v;
        let c = this.owner.getChildByName('__xx_xx__') as Sprite3D;
        if (c) {
            c.transform.position = new Vector3(0, -v, 0)
        }
    }
    get down() {
        return this._down;
    }

    @property({ type: Boolean, caption: "随机" })
    randGen = false;


    testGen() {
        if (!this.owner) {
            console.log('没有设置预制体');
            return;
        }
        let c = this.owner.getChildByName('__xx_xx__') as Sprite3D;
        if (c) {
            c.destroy();
        }

        c = new Sprite3D();
        c.transform.position = new Vector3(0, -this._down, 0)
        c.name = '__xx_xx__';
        this.owner.addChild(c);

        let tris = this.trangles;
        let vpos = new Vector3();
        for (let n = 0; n < this.count; n++) {
            let trid = (Math.random() * this.trangles.length) | 0;
            let vt = tris[trid];
            let v0 = vt[0];
            let v1 = vt[1];
            let v2 = vt[2];
            let n = this.object.create() as Sprite3D;
            v0.vadd(v1, vpos);
            vpos.vadd(v2, vpos);
            vpos.scale(1 / 3, vpos)
            n.transform.position = vpos;
            if (this.randGen) {
                let q = new Quaternion();
                Quaternion.createFromYawPitchRoll(-180 + Math.random() * 360, 0, 0, q);
                n.transform.rotation = q;

                let sx = 1 - Math.random() * 0.5
                let sy = 1 - Math.random() * 0.5
                let sz = 1 - Math.random() * 0.5
                n.transform.localScale = new Vector3(sx, sy, sz);
            }
            c.addChild(n);
        }
        /*
        for(let i=0; i<tris.length; i++){
            let vt = tris[i];
            let v0 = vt[0];
            let v1 = vt[1];
            let v2 = vt[2];
            let n = this.object.create() as Sprite3D;
            v0.vadd(v1,vpos);
            vpos.vadd(v2,vpos);
            vpos.scale(1/3,vpos)
            n.transform.position = vpos;
            c.addChild(n);
        }
        */
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        //获取三角形信息
        let owner = this.owner;
        let render = owner.getComponent(MeshRenderer);
        let mesh = render.getMesh();
        let ibData = mesh._indexBuffer.getData();
        let vbData = new Float32Array(mesh._vertexBuffer._buffer.buffer);
        let vertexStride = mesh._vertexBuffer.vertexDeclaration.vertexStride;
        let floatStride = vertexStride / 4;
        //console.log(`vt:${mesh.vertexCount} it:${mesh.indexCount}`)
        //mesh._bufferState
        let matw = owner.transform.worldMatrix;
        let tris = this.trangles;
        tris.length = 0;
        for (let i = 0; i < mesh.indexCount; i += 3) {
            let v0 = ibData[i];
            let v1 = ibData[i + 1];
            let v2 = ibData[i + 2];
            let vt0 = new Vector3(
                vbData[v0 * floatStride],
                vbData[v0 * floatStride + 1],
                vbData[v0 * floatStride + 2]);
            let vt1 = new Vector3(
                vbData[v1 * floatStride],
                vbData[v1 * floatStride + 1],
                vbData[v1 * floatStride + 2]);
            let vt2 = new Vector3(
                vbData[v2 * floatStride],
                vbData[v2 * floatStride + 1],
                vbData[v2 * floatStride + 2]);

            tris.push([vt0, vt1, vt2]);
        }
        //let triangles  
        if (Laya.LayaEnv.isPlaying) {
            this.testGen();
        }

    }

    //组件被启用后执行，例如节点被添加到舞台后
    //onEnable(): void {}

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}