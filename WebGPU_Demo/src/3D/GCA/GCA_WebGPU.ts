import { CameraMoveScript } from "../common/CameraMoveScript";

const { regClass, property } = Laya;
@regClass()
export class GCA_WebGPU extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    @property(Laya.Camera)
    cam: Laya.Camera;

    private _resCount: number = 10;

    @property({ type: Number, tips: "little的res个数" })
    littleResCount: number = 8;

    @property({ type: Number, tips: "little的ins个数" })
    littleInstanceCount: number = 4;

    @property({ type: Number, tips: "some的res个数" })
    someResCount: number = 1;

    @property({ type: Number, tips: "some的ins数量" })
    someInstanceCount: number = 4;

    @property({ type: Number, tips: "quait的res个数" })
    quaitResCount: number = 1;

    @property({ type: Number, tips: "quait的ins数量" })
    quaitInstanceCount: number = 4;

    @property({ type: Number, tips: "large的res个数" })
    largeResCount: number;

    @property({ type: Number, tips: "large的ins个数" })
    largeInstanceCount: number;


    @property({ type: Boolean, tips: "是否动态添加删除实例, 默认false" })
    isDynamicChange: boolean = false;

    @property({ type: Number, tips: "每帧变化的实例个数, 默认200" })
    preFrameChangeCount: number = 200;

    @property({ type: Number, tips: "实例之间的间距, 默认4" })
    insSpacing: number = 4;

    @property({ type: Laya.Label, tips: "提示信息" })
    tipLable: Laya.Label;

    /**
     * 颜色map
     */
    colorMap = new Map<number, Laya.Color>();

    /**
     * 存放res的实例map
     */
    resMap = new Map<number, Array<any>>();

    beginChange: boolean = false;


    meshs: Laya.Mesh[] = [];

    materials: Laya.Material[] = [];

    private xMaxLine = 100;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {

        this.tipLable.text = "当前RenderEngine为 " + (Laya.WebGPURenderEngine && Laya.LayaGL.renderEngine instanceof Laya.WebGPURenderEngine ? "WebGPU" : "WebGL");


        this.cam.addComponent(CameraMoveScript);
        this.createMesh();
        this._resCount = this.littleResCount + this.someResCount + this.quaitResCount + this.largeResCount;
        this.createAllMaterial(this._resCount);
        let createInsByType = (resCount: number, insCounts: number, startIndex: number) => {
            for (let i = 0; i < resCount; i++) {
                let posIndex = startIndex + i;
                let y = (posIndex / this.xMaxLine) | 0;
                let x = posIndex % this.xMaxLine;
                for (let j = 0; j < insCounts; j++) {
                    let pos = new Laya.Vector3(x * this.insSpacing, y * this.insSpacing, j * this.insSpacing);
                    let ins = this.createInstance(posIndex, pos);
                }
            }
        }

        let index = 0;
        createInsByType(this.littleResCount, this.littleInstanceCount, index);
        index += this.littleResCount;
        createInsByType(this.someResCount, this.someInstanceCount, index);
        index += this.someResCount;
        createInsByType(this.quaitResCount, this.quaitInstanceCount, index);
        index += this.quaitResCount;
        createInsByType(this.largeResCount, this.largeInstanceCount, index);
        index += this.largeResCount;


    }


    createMesh() {
        let cubeMesh: Laya.Mesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        let sphere: Laya.Mesh = Laya.PrimitiveMesh.createSphere(0.5);
        let cylinder: Laya.Mesh = Laya.PrimitiveMesh.createCylinder(0.5, 1);
        let cone: Laya.Mesh = Laya.PrimitiveMesh.createCone(0.5, 1);
        this.meshs.push(cubeMesh);
        this.meshs.push(sphere);
        this.meshs.push(cylinder);
        this.meshs.push(cone);
    }

    createAllMaterial(total: number): void {
        let _createOneMaterial = (index: number, total: number): void => {
            // 计算组索引 (0-49，因为200/4=50组)
            let groupIndex = Math.floor(index / 4);
            // 计算组内索引 (0-3)
            let inGroupIndex = index % 4;

            // 基础颜色值 (0-1)
            let baseColor = groupIndex / (total / 4);  // 将组索引映射到0-1范围

            // 组内颜色微调 (0-0.1)
            let colorVariation = inGroupIndex * 0.025;  // 每组内4个草的颜色微调

            // 使用不同的渐变函数来生成RGB颜色
            // 使用正弦函数来创建平滑的颜色过渡，但保持组内颜色相近
            var r = Math.sin(baseColor * Math.PI * 2 + 0) * 0.5 + 0.5 + colorVariation;  // 红色分量
            var g = Math.sin(baseColor * Math.PI * 2 + Math.PI * 2 / 3) * 0.5 + 0.5 + colorVariation;  // 绿色分量
            var b = Math.sin(baseColor * Math.PI * 2 + Math.PI * 4 / 3) * 0.5 + 0.5 + colorVariation;  // 蓝色分量

            // 确保颜色值在0-1范围内
            r = Math.min(Math.max(r, 0), 1);
            g = Math.min(Math.max(g, 0), 1);
            b = Math.min(Math.max(b, 0), 1);
            let mat = new Laya.UnlitMaterial();
            mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
            mat.albedoColor = new Laya.Color(r, g, b, 1);
            this.materials.push(mat);
        }
        for (let i = 0; i < Math.ceil(total / this.meshs.length); i++) {
            _createOneMaterial(i, total);
        }
    }

    createInstance(resId: number, pos: Laya.Vector3) {
        let sp: Laya.Sprite3D = new Laya.Sprite3D();
        let meshrender: Laya.MeshRenderer = sp.addComponent(Laya.MeshRenderer);
        let meshfilter: Laya.MeshFilter = sp.addComponent(Laya.MeshFilter);
        meshfilter.sharedMesh = this.meshs[resId % this.meshs.length];
        meshrender.material = this.materials[Math.floor(resId / 4) % this.materials.length];
        sp.name = "Instance_" + resId;
        sp.transform.localPosition = pos;
        this.owner.addChild(sp);
        return sp;
    }



}