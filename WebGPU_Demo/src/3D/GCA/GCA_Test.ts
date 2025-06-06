import { CameraMove } from "../Advance/navMesh/CameraMove";
import { GCA_Config, GCA_BaseFactory } from "./GCA_Config";
import { GCA_InsBatchAgent } from "./GCA_InsBatchAgent";
import { GCA_OneBatchInfo } from "./GCA_OneBatchInfo";
import { BatchElement, GCARenderGeometrtElement, GCARenderMask, GCAResData, IGCABVHCell, IGCAMaterialData, QXLodLevel } from "./HybridSystemTemp/HyBridUtil";
import { TestGCARender, testGCAShader } from "./HybridSystemTemp/TestUtil2";

var _tempVector3 = new Laya.Vector3();

export class MyhybridSystemUtil {
    meshArray: Laya.Mesh[] = [];
    meshBatchArray: GCARenderGeometrtElement[] = [];
    materialArray: IGCAMaterialData[] = [];
    preResData: GCAResData[] = [];
    private _createGCARenderGeometryElemenet(mesh: Laya.Mesh) {
        let element = new GCARenderGeometrtElement();
        element.bufferState = mesh._bufferState._deviceBufferState;
        element.indexFormat = mesh.getSubMesh(0).indexFormat;
        element.indexOffset = mesh.getSubMesh(0)._indexStart;
        element.indexCount = mesh.getSubMesh(0).indexCount;
        this.meshBatchArray.push(element);
        this.meshArray.push(mesh);

    }
    //创建mesh数据
    _createMesh() {
        //创建mesh
        let cubeMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        this._createGCARenderGeometryElemenet(cubeMesh);
        let sphere = Laya.PrimitiveMesh.createSphere(0.5);
        this._createGCARenderGeometryElemenet(sphere);
        let cylinder = Laya.PrimitiveMesh.createCylinder(0.5, 1);
        this._createGCARenderGeometryElemenet(cylinder);
        let cone = Laya.PrimitiveMesh.createCone(0.5, 1);
        this._createGCARenderGeometryElemenet(cone);

    }

    private createOneMaterial(index: number, total: number): Laya.Material {
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

        var material = new Laya.Material();
        //@ts-ignore
        material.albedoColor = new Laya.Vector4(r, g, b, 1.0);
        return material;
    }

    // 在调用处修改
    // 原来的代码：
    // createOneMaterial(i / 255 + 0.5, 0, 0);
    // 改为：
    // createOneMaterial(i, 200);  // 传入当前索引和总数

    //创建材质数据
    _createMaterial(resCount: number) {
        let createOneMaterial = (index: number, total: number): void => {

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
            let mat = new Laya.Material();
            mat.setShaderName("GCA_ColorShader");
            mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
            mat.setColor("u_color", new Laya.Color(r, g, b, 1));
            let materialData = new IGCAMaterialData();
            materialData.id = this.materialArray.length;
            materialData.shaderData = mat.shaderData;
            materialData.subShader = mat.shader.getSubShaderAt(0);
            materialData.cull = mat.cull;
            materialData.renderQueue = mat.renderQueue;
            this.materialArray.push(materialData);

        }

        for (let i = 0; i < (resCount / this.meshArray.length); i++) {
            createOneMaterial(i, resCount);
        }
    }

    //创建一个实例
    _createIns(resID: number, worldMatrix: Laya.Matrix4x4, enableCastShadow: boolean, enableReceiveShadeow: boolean,
        renderNormal: boolean, lightmapIndex: number, customData: any): IGCABVHCell {
        let ins = new IGCABVHCell();
        ins.resId = resID;
        ins.worldMatrix = worldMatrix.clone();
        //bounds
        let meshid = GCAResData.getResDataById(resID % this.meshArray.length).meshid;
        ins.bounds = new Laya.Bounds();
        this.meshArray[meshid].bounds._tranform(worldMatrix, ins.bounds);
        if (enableCastShadow)
            ins.renderMask |= GCARenderMask.CastShadow;
        if (enableReceiveShadeow)
            ins.renderMask |= GCARenderMask.ReceiveShadow;
        if (renderNormal)
            ins.renderMask |= GCARenderMask.Normal;
        ins.lightmapIndex = lightmapIndex;
        ins.customData = customData;//测试的时候  color1以及color2
        ins.hasLower = GCAResData.getResDataById(resID % this.materialArray.length).haslowerMat;
        return ins;
    }

    _updateInsPos(ins: IGCABVHCell, worldMatrix: Laya.Matrix4x4) {
        worldMatrix.cloneTo(ins.worldMatrix);
        let meshid = GCAResData.getResDataById(ins.resId % this.meshArray.length).meshid;
        this.meshArray[meshid].bounds._tranform(worldMatrix, ins.bounds);
    }

    _createOneRes(matArrays: IGCAMaterialData[], geometrys: GCARenderGeometrtElement[], meshid: number, lowerMat?: IGCAMaterialData, lowermesh?: GCARenderGeometrtElement) {
        let resData = new GCAResData();
        resData.materials = matArrays;
        resData.mesh = geometrys;
        resData.meshid = meshid;
        let batchElements = new BatchElement();
        batchElements.matIdx = 0;
        batchElements.subMeshIdx = 0;
        resData.batchElements.push(batchElements);
        if (lowerMat && lowermesh) {
            resData.haslowerMat = true;
            resData.lowermat = lowerMat;
            resData.lowerMeshGeometry = lowermesh;
        }
        GCA_InsBatchAgent.completeLoadRes(resData.id);
        return resData;
    }

    _creatResDatas() {
        //创建多个resData
        for (var i = 1; i < this.materialArray.length; i++) {
            for (var j = 0; j < this.meshArray.length; j++) {
                this._createOneRes([this.materialArray[i]], [this.meshBatchArray[j]], j, this.materialArray[0], this.meshBatchArray[j]);
            }
        }
    }

    _createInsInRange(min: Laya.Vector3, max: Laya.Vector3, count: number, resID: number, customData?: any) {
        let instances: any[] = [];

        for (let i = 0; i < count; i++) {
            // 在范围内随机生成位置
            let randomX = min.x + Math.random() * (max.x - min.x);
            let randomY = min.y + Math.random() * (max.y - min.y);
            let randomZ = min.z + Math.random() * (max.z - min.z);

            // 创建世界矩阵（只包含位置变换）
            let worldMatrix = new Laya.Matrix4x4();
            worldMatrix.setTranslationVector(new Laya.Vector3(randomX, randomY, randomZ));

            // 处理customData中的color值
            let finalCustomData: any;
            if (customData && customData.color1 && customData.color2) {
                // 如果customData有值，使用传入的值
                finalCustomData = {
                    color1: customData.color1,
                    color2: customData.color2
                };
            } else {
                // 如果没有，随机生成color值
                finalCustomData = {
                    color1: new Laya.Color(Math.random(), Math.random(), Math.random(), 1.0),
                    color2: new Laya.Color(Math.random(), Math.random(), Math.random(), 1.0)
                };
            }

            // 创建实例
            let instance = this._createIns(
                resID,                  // 资源ID
                worldMatrix,           // 世界矩阵
                true,                  // 启用投射阴影
                true,                  // 启用接收阴影
                true,                  // 正常渲染
                -1,                    // 光照贴图索引
                finalCustomData        // 自定义数据
            );

            instances.push(instance);
        }

        return instances;
    }


}



const { regClass, property } = Laya;

@regClass()
export class GCA_Test extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    private testSystem = new MyhybridSystemUtil();
    private testAgent: GCA_InsBatchAgent;
    private tempMatrix: Laya.Matrix4x4 = new Laya.Matrix4x4();

    // 动态减少测试相关变量
    private dynamicTestInstances: Array<Array<any>> = []; // 存储各个资源的实例数组
    private dynamicTestRunning: boolean = false;
    private lastReduceTime: number = 0;
    private reduceInterval: number = 100; // 减少间隔时间（毫秒）

    // LOD切换测试相关变量
    private lodTestInstances: Array<Array<any>> = []; // 存储LOD测试的实例数组
    private lodSwitchTimer: number = 0;
    private lodSwitchDelay: number = 10000; // 10秒延迟

    @property(Laya.Camera)
    cam: Laya.Camera;

    @property({ type: Number, tips: "以颜色为区分种类的res的种类个数, 默认10" })
    resCount: number = 10;

    @property({ type: Number, tips: "每个res生成的实例个数, 默认200" })
    resInstanceCount: number = 50;

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
    resMap = new Map<number, Array<IGCABVHCell>>();

    beginChange: boolean = false;


    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        if (Laya.LayaEnv.isPlaying) {

            (window as any)["openCS"] = true;

            this.tipLable.text = "当前openCS 为" + (window as any)["openCS"];
            this.tipLable.color = "#f54a45";
            this.tipLable.fontSize = 20;


            //点击屏幕 打开关闭compute shader
            Laya.stage.on(Laya.Event.CLICK, this, () => {
                (window as any)["openCS"] = !(window as any)["openCS"];
                this.tipLable.text = "当前openCS 为" + (window as any)["openCS"];
            });

            this.cam.addComponent(CameraMove);
            testGCAShader.initShader();
            this.testSystem._createMesh();
            this.testSystem._createMaterial(this.resCount);
            this.testSystem._creatResDatas();
            let sprite = this.owner.addChild(new Laya.Sprite3D());
            let baseRender = sprite.addComponent(TestGCARender);
            this.testAgent = baseRender._GCA_Agent;
            GCA_Config.init();
            GCA_Config.factory = new GCA_BaseFactory();
            {//set custom Data
                let customData = new Map();
                customData.set("color1", [0, Laya.ShaderDataType.Vector4])
                customData.set("color2", [1, Laya.ShaderDataType.Vector4])
                GCA_OneBatchInfo.setCustomCommandmap(customData);
            }
            this.initColorMap();
            this.createResInstance(this.resCount, this.resInstanceCount, false);

            Laya.timer.once(5000, this, () => {
                this.isDynamicChange && (this.beginChange = true);
            })




            // this.changeLodTest();
            //this.testAddIns(5,1);
            //this.testMultipleResIns()
            // this.testDynamicReduce(); // 启动动态减少测试
            // this.testLodLevelSwitch(); // 启动LOD级别切换测试



        }
    }

    onUpdate(): void {
        if (this.beginChange) {
            this.dynamicChange();
        }
    }


    /**
     * 根据res的种类个数, 生成颜色map
     */
    initColorMap() {
        for (let i = 0; i < this.resCount; i++) {
            this.colorMap.set(i, new Laya.Color(i / 255, 0, 0, 1));
            this.resMap.set(i, []);
        }
    }


    createResInstance(resCount: number, insCount: number, isOutReAdd: boolean) {
        for (let i = 0; i < resCount; i++) {
            for (let j = 0; j < insCount; j++) {
                let pos = new Laya.Vector3(i * this.insSpacing, isOutReAdd ? i * 2 : 0, j * this.insSpacing);
                Laya.Matrix4x4.createAffineTransformation(pos, Laya.Quaternion.DEFAULT, Laya.Vector3.ONE, this.tempMatrix);
                let ins = this.testSystem._createIns(
                    i,
                    this.tempMatrix,
                    true,
                    true,
                    true,
                    0,
                    {
                        color1: this.colorMap.get(i),
                        color2: new Laya.Color(1 - this.colorMap.get(i).r, 1 - this.colorMap.get(i).g, 1 - this.colorMap.get(i).b, 1),
                        customDataArray: new Float32Array([this.colorMap.get(i).r, this.colorMap.get(i).g, this.colorMap.get(i).b, this.colorMap.get(i).a, 1 - this.colorMap.get(i).r, 1 - this.colorMap.get(i).g, 1 - this.colorMap.get(i).b, 1])
                    }
                );
                this.testAgent.addIns(ins);
                this.resMap.get(i).push(ins);
            }
        }
    }

    dynamicChange() {
        // 动态减少
        let outArray = [];
        for (let i = 0; i < this.preFrameChangeCount; i++) {
            let array = this.resMap.get(Math.floor(Math.random() * this.resCount));
            if (!array || array.length == 0) {
                continue;
            }
            let index = Math.floor(Math.random() * (array.length - 1))
            let ins = array[index];
            array.splice(index, 1);
            this.testAgent.removeIns(ins);
            outArray.push(ins);


            // let array = this.resMap.get(this.resCount);
            // if (!array || array.length == 0) {
            //     continue;
            // }
            // let index = Math.floor((array.length - 1))
            // let ins = array[index];
            // array.splice(index, 1);
            // this.testAgent.removeIns(ins);
            // outArray.push(ins);
        }

        //动态增加到场景中
        for (let i = 0; i < this.preFrameChangeCount; i++) {
            let ins = outArray[i];
            if (!ins) {
                continue;
            }
            ins.worldMatrix.getTranslationVector(_tempVector3);
            _tempVector3.set(_tempVector3.x + i / this.preFrameChangeCount * this.insSpacing, (_tempVector3.y + i / this.preFrameChangeCount * this.insSpacing) * Math.sin(i / 40 * Math.PI * 2), _tempVector3.z + i / this.preFrameChangeCount * this.insSpacing);
            this.tempMatrix.setTranslationVector(_tempVector3);
            this.testSystem._updateInsPos(ins, this.tempMatrix);
            this.testAgent.addIns(ins);
            this.resMap.get(i % this.resCount).push(ins);
        }
    }



    // testAddIns(count: number, ycount: number) {
    //     for (var i = 0; i < count; i++) {
    //         let pos = new Laya.Vector3(i * 2, 0, 0);
    //         Laya.Matrix4x4.createAffineTransformation(pos, Laya.Quaternion.DEFAULT, Laya.Vector3.ONE, this.tempMatrix);
    //         let ins = this.testSystem._createIns(0, this.tempMatrix, true, true, true, 0, { color1: new Laya.Color(1, 0, 0, 1), color2: new Laya.Color(0, 1, 0, 1), customDataArray: new Float32Array([1, 0, 0, 1, 0, 1, 0, 1]) })
    //         this.testAgent.addIns(ins);
    //     }
    // }

    // changeLodTest() {
    //     // 测试创建十种不同资源的实例各十个
    //     this.testMultipleResIns();
    // }

    // /**
    //  * 测试创建十种不同的res实例各十个，整齐排列在场景中
    //  */
    // testMultipleResIns() {
    //     const resCount = 10; // 十种不同的资源
    //     const instancesPerRes = 50; // 每种资源创建十个实例
    //     const spacing = 3; // 实例之间的间距

    //     // 生成不同的颜色用于区分不同的资源类型
    //     const colors = [
    //         new Laya.Color(1, 0, 0, 1),   // 红色
    //         new Laya.Color(0, 1, 0, 1),   // 绿色
    //         new Laya.Color(0, 0, 1, 1),   // 蓝色
    //         new Laya.Color(1, 1, 0, 1),   // 黄色
    //         new Laya.Color(1, 0, 1, 1),   // 品红
    //         new Laya.Color(0, 1, 1, 1),   // 青色
    //         new Laya.Color(1, 0.5, 0, 1), // 橙色
    //         new Laya.Color(0.5, 0, 1, 1), // 紫色
    //         new Laya.Color(1, 0.75, 0.8, 1), // 粉色
    //         new Laya.Color(0.5, 0.5, 0.5, 1)  // 灰色
    //     ];

    //     for (let resId = 0; resId < resCount; resId++) {
    //         for (let instanceId = 0; instanceId < resId * 5; instanceId++) {
    //             // 计算位置：resId决定x轴位置，instanceId决定z轴位置
    //             let pos = new Laya.Vector3(resId * spacing, 0, instanceId * spacing);

    //             // 创建变换矩阵
    //             Laya.Matrix4x4.createAffineTransformation(pos, Laya.Quaternion.DEFAULT, Laya.Vector3.ONE, this.tempMatrix);

    //             // 为每种资源类型分配不同的颜色
    //             let color1 = colors[resId];
    //             let color2 = new Laya.Color(0, 0, 0, 1); // 互补色

    //             // 创建自定义数据数组，根据资源ID和实例ID生成不同的颜色值
    //             let customDataArray = new Float32Array([
    //                 color1.r, color1.g, color1.b, color1.a,
    //                 color2.r, color2.g, color2.b, color2.a
    //             ]);

    //             // 创建实例
    //             let ins = this.testSystem._createIns(
    //                 resId % 10, // 使用不同的资源ID (0-9)
    //                 this.tempMatrix,
    //                 true,
    //                 true,
    //                 true,
    //                 0,
    //                 {
    //                     color1: color1,
    //                     color2: color2,
    //                     customDataArray: customDataArray
    //                 }
    //             );

    //             // 添加到代理中
    //             this.testAgent.addIns(ins);
    //         }
    //     }

    //     console.log(`创建了${resCount}种不同资源，每种${instancesPerRes}个实例，总共${resCount * instancesPerRes}个实例`);
    // }

    // /**
    //  * 动态减少测试：生成五个资源各50个实例，然后每帧减少直到减少为1
    //  */
    // testDynamicReduce() {
    //     this.dynamicTestInstances = [[], [], [], [], []]; // 五个资源的实例数组
    //     this.dynamicTestRunning = true;
    //     this.lastReduceTime = Date.now();

    //     const resCount = 5; // 五种不同的资源
    //     const instancesPerRes = 50; // 每种资源创建50个实例
    //     const spacing = 4; // 实例之间的间距

    //     // 生成不同的颜色用于区分不同的资源类型
    //     const colors = [
    //         new Laya.Color(1, 0, 0, 1),   // 红色
    //         new Laya.Color(0, 1, 0, 1),   // 绿色
    //         new Laya.Color(0, 0, 1, 1),   // 蓝色
    //         new Laya.Color(1, 1, 0, 1),   // 黄色
    //         new Laya.Color(1, 0, 1, 1),   // 品红
    //     ];

    //     console.log("开始动态减少测试：创建5种资源，每种50个实例");

    //     for (let resId = 0; resId < resCount; resId++) {
    //         for (let instanceId = 0; instanceId < instancesPerRes; instanceId++) {
    //             // 计算位置：resId决定x轴位置，instanceId决定z轴位置
    //             let pos = new Laya.Vector3(resId * spacing, 0, instanceId * spacing);

    //             // 创建变换矩阵
    //             Laya.Matrix4x4.createAffineTransformation(pos, Laya.Quaternion.DEFAULT, Laya.Vector3.ONE, this.tempMatrix);

    //             // 为每种资源类型分配不同的颜色
    //             let color1 = colors[resId];
    //             let color2 = new Laya.Color(1 - color1.r, 1 - color1.g, 1 - color1.b, 1); // 互补色

    //             // 创建自定义数据数组
    //             let customDataArray = new Float32Array([
    //                 color1.r, color1.g, color1.b, color1.a,
    //                 color2.r, color2.g, color2.b, color2.a
    //             ]);

    //             // 创建实例
    //             let ins = this.testSystem._createIns(
    //                 resId, // 使用不同的资源ID (0-4)
    //                 this.tempMatrix,
    //                 true,
    //                 true,
    //                 true,
    //                 0,
    //                 {
    //                     color1: color1,
    //                     color2: color2,
    //                     customDataArray: customDataArray
    //                 }
    //             );

    //             // 添加到代理中
    //             this.testAgent.addIns(ins);

    //             // 存储到动态测试数组中
    //             this.dynamicTestInstances[resId].push(ins);
    //         }
    //     }

    //     console.log(`动态测试初始化完成：创建了${resCount}种资源，每种${instancesPerRes}个实例，总共${resCount * instancesPerRes}个实例`);

    //     // 启动每帧更新
    //     this.startFrameUpdate();
    // }

    // /**
    //  * 启动帧更新循环
    //  */
    // private startFrameUpdate() {
    //     const updateLoop = () => {
    //         if (this.dynamicTestRunning) {
    //             this.updateDynamicReduce();
    //         }
    //     };
    //     Laya.stage.timer.frameLoop(1, this, updateLoop);
    // }

    // /**
    //  * 每帧更新动态减少测试
    //  */
    // private updateDynamicReduce() {
    //     if (!this.dynamicTestRunning) return;

    //     const currentTime = Date.now();
    //     const elapsedTime = currentTime - this.lastReduceTime;

    //     if (elapsedTime >= this.reduceInterval) {
    //         this.lastReduceTime = currentTime;
    //         let allInstancesCount = 0;
    //         let hasReduced = false;

    //         // 遍历每种资源，减少实例数量
    //         for (let resId = 0; resId < this.dynamicTestInstances.length; resId++) {
    //             let instances = this.dynamicTestInstances[resId];
    //             allInstancesCount += instances.length;

    //             if (instances.length > 0) {
    //                 // 移除最后一个实例
    //                 let removedInstance = instances.pop();
    //                 this.testAgent.removeIns(removedInstance);
    //                 hasReduced = true;
    //             }
    //         }

    //         if (hasReduced) {
    //             console.log(`动态减少测试：当前总实例数 ${allInstancesCount - this.dynamicTestInstances.length}`);
    //         }

    //         // 检查是否所有资源都只剩1个实例
    //         let minInstances = Math.min(...this.dynamicTestInstances.map(instances => instances.length));
    //         if (minInstances <= 1) {
    //             console.log("动态减少测试完成：所有资源都减少到1个实例");
    //             this.dynamicTestRunning = false;
    //         }
    //     }
    // }

    // /**
    //  * LOD级别切换测试：创建十种资源各五个实例，十秒后切换到Lower级别
    //  */
    // testLodLevelSwitch() {
    //     this.lodTestInstances = [];
    //     const resCount = 10; // 十种不同的资源
    //     const instancesPerRes = 50; // 每种资源创建5个实例
    //     const spacing = 4; // 实例之间的间距

    //     // 生成不同的颜色用于区分不同的资源类型
    //     const colors = [
    //         new Laya.Color(1, 0, 0, 1),     // 红色
    //         new Laya.Color(0, 1, 0, 1),     // 绿色
    //         new Laya.Color(0, 0, 1, 1),     // 蓝色
    //         new Laya.Color(1, 1, 0, 1),     // 黄色
    //         new Laya.Color(1, 0, 1, 1),     // 品红
    //         new Laya.Color(0, 1, 1, 1),     // 青色
    //         new Laya.Color(1, 0.5, 0, 1),   // 橙色
    //         new Laya.Color(0.5, 0, 1, 1),   // 紫色
    //         new Laya.Color(1, 0.75, 0.8, 1), // 粉色
    //         new Laya.Color(0.5, 0.5, 0.5, 1)  // 灰色
    //     ];

    //     console.log("开始LOD级别切换测试：创建10种资源，每种5个实例，10秒后切换到Lower级别");

    //     for (let resId = 0; resId < resCount; resId++) {
    //         let resourceInstances: any[] = [];

    //         for (let instanceId = 0; instanceId < instancesPerRes; instanceId++) {
    //             // 计算位置：resId决定x轴位置，instanceId决定z轴位置
    //             let pos = new Laya.Vector3(resId * spacing, 0, instanceId * spacing);

    //             // 创建变换矩阵
    //             Laya.Matrix4x4.createAffineTransformation(pos, Laya.Quaternion.DEFAULT, Laya.Vector3.ONE, this.tempMatrix);

    //             // 为每种资源类型分配不同的颜色
    //             let color1 = colors[resId];
    //             let color2 = new Laya.Color(1 - color1.r, 1 - color1.g, 1 - color1.b, 1); // 互补色

    //             // 创建自定义数据数组
    //             let customDataArray = new Float32Array([
    //                 color1.r, color1.g, color1.b, color1.a,
    //                 color2.r, color2.g, color2.b, color2.a
    //             ]);

    //             // 创建实例
    //             let ins = this.testSystem._createIns(
    //                 resId, // 使用不同的资源ID (0-9)
    //                 this.tempMatrix,
    //                 true,
    //                 true,
    //                 true,
    //                 0,
    //                 {
    //                     color1: color1,
    //                     color2: color2,
    //                     customDataArray: customDataArray
    //                 }
    //             );

    //             // 添加到代理中
    //             this.testAgent.addIns(ins);

    //             // 存储到LOD测试数组中
    //             resourceInstances.push(ins);
    //         }

    //         this.lodTestInstances.push(resourceInstances);
    //     }

    //     console.log(`LOD测试初始化完成：创建了${resCount}种资源，每种${instancesPerRes}个实例，总共${resCount * instancesPerRes}个实例`);

    //     // 设置10秒后的LOD切换定时器
    //     this.lodSwitchTimer = Date.now();
    //     this.startLodSwitchTimer();
    // }

    // /**
    //  * 启动LOD切换定时器
    //  */
    // private startLodSwitchTimer() {

    //     // 使用frameLoop方法每秒检查一次
    //     Laya.stage.timer.frameOnce(180, this, this.switchToLowerLod); // 60帧约等于1秒
    // }

    // /**
    //  * 切换所有实例到Lower LOD级别
    //  */
    // private switchToLowerLod() {
    //     console.log("开始切换LOD级别到Lower...");

    //     // 创建LOD变化映射
    //     const lodChangeMap = new Map<number, QXLodLevel>();

    //     // 遍历所有实例，设置LOD级别为Lower
    //     for (let resId = 0; resId < this.lodTestInstances.length; resId++) {
    //         const instances = this.lodTestInstances[resId];
    //         for (let instanceId = 0; instanceId < instances.length; instanceId++) {
    //             const ins = instances[instanceId];
    //             lodChangeMap.set(ins.id, QXLodLevel.Lower);
    //         }
    //     }

    //     // 调用Agent的setChangeInsId2LevelList接口通知系统
    //     this.testAgent.setChangeInsId2LevelList(lodChangeMap);

    //     console.log(`LOD级别切换完成：${lodChangeMap.size}个实例已切换到Lower级别`);
    // }
}