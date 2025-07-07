const { regClass, property } = Laya;



@regClass()
export class Main extends Laya.Script {

    static customShader3DCount: number = 10;
    static customShader3DChangeColor: boolean = true;


    @property({ type: Number, tips: "自定义3DShader的个数，根据个数创建球状对象并变化颜色" })
    customShader3DCount: number = 10;

    @property({ type: Boolean, tips: "自定义3DShader材质球是否自动变换颜色" })
    customShader3DChangeColor: boolean = true;

    @property({ type: Number, tips: "instanceMesh的种类数量，用于创建不同形状的mesh" })
    meshCount: number = 172;

    @property({ type: Number, tips: "instance的数量，除以meshCount就是每个instance合批的数量" })
    insCount: number = 1010;

    @property({ type: Laya.Prefab, tips: "透明预制体，会合批使用的是默认材质" })
    prefab3DTransprent: Laya.Prefab = null;

    @property({ type: Number, tips: "透明预制体的数量" })
    prefab3DTransparentCount: number = 45;

    @property({ type: Boolean, tips: "不透明预制体实例是否自动变换位置" })
    ChangeTransform: boolean = true;

    @property({ type: Laya.Prefab, tips: "不透明预制体，会合批，引擎默认材质与mesh" })
    prefab3DOpaque: Laya.Prefab = null;

    @property({ type: Number, tips: "不透明预制体的数量，可以用来调整面数内容" })
    prefab3DOpaqueCount: number = 45;

    @property({ type: Laya.Prefab, tips: "2D预制体，单个预制体上面是五个自定义shader内容" })
    prefab2D: Laya.Prefab = null;

    @property({ type: Number, tips: "2D预制体的数量" })
    prefab2DCount: number = 5;

    @property({ type: Number, tips: "每帧位移的透明预制体实例个数,测试数据更新" })
    transCount: number = 20;

    @property({ type: Laya.Sprite3D, tips: "用来放置自定义3Dshader的绘制子节点" })
    custom3DShaderRoot: Laya.Sprite3D;

    @property({ type: Laya.Box, tips: "用来放置自定义2Dshader的绘制子节点" })
    boxShader2D: Laya.Box;

    @property({ type: Laya.Box, tips: "用来放置背包界面的绘制子节点" })
    boxBagUI: Laya.Box;

    @property({ type: Laya.Button, tips: "用来切换背包界面显示隐藏的按钮" })
    bagBtn: Laya.Button;

    @property({ type: Laya.Button, tips: "用来切换自定义2Dshader绘制色块的按钮" })
    custom2DShaderBtn: Laya.Button;

    @property({ type: Laya.Button, tips: "用来切换instanceMesh的按钮" })
    insMeshBtn: Laya.Button;

    @property({ type: Laya.Button, tips: "用来切换自定义3Dshader的按钮" })
    custom3DShaderBtn: Laya.Button;

    @property({ type: Laya.Button, tips: "用来切换不透明预制体实例的按钮" })
    opaqueBtn: Laya.Button;

    @property({ type: Laya.Button, tips: "用来切换透明预制体实例的按钮" })
    transparentBtn: Laya.Button;

    meshs: Laya.Mesh[] = [];

    insMeshRoot: Laya.Sprite3D = new Laya.Sprite3D();
    opaqueRoot: Laya.Sprite3D = new Laya.Sprite3D();
    transparentRoot: Laya.Sprite3D = new Laya.Sprite3D();

    onStart() {
        console.log("Game start");
    }


    onEnable(): void {
        Main.customShader3DChangeColor = this.customShader3DChangeColor;
        Main.customShader3DCount = this.customShader3DCount;
        this.owner.addChild(this.insMeshRoot);
        this.owner.addChild(this.opaqueRoot);
        this.owner.addChild(this.transparentRoot);
        this.owner.addChild(this.custom3DShaderRoot);
        this.createMeshs();
        this.createInstance();
        this.createPrefab2D();
        this.createPrefab3D();
        // Laya.timer.once(1000, this, () => {
        //     console.log("当前scene内：");
        //     console.log("WebGLRenderElement2DCount: ", (window as any).WebGLRenderElement2DCount);
        //     console.log("WebGLShaderInstanceCount: ", (window as any).WebGLShaderInstanceCount);
        //     console.log("WebGLRenderElement3DCount: ", (window as any).WebGLRenderElement3DCount);
        //     console.log("WebGLInstanceRenderElement3DCount: ", (window as any).WebGLInstanceRenderElement3DCount);
        // });
        Laya.loader.load("multPrefabDemo/prefabUI/UIContiner.lh").then(() => {
            let uiRes: Laya.Prefab = Laya.loader.getRes("multPrefabDemo/prefabUI/UIContiner.lh");
            let uiIns: Laya.Sprite = uiRes.create() as Laya.Sprite;
            uiIns.scale(0.6, 0.6);
            this.boxBagUI.addChild(uiIns);
            this.bagBtn.on(Laya.Event.CLICK, this, () => {
                if (this.boxBagUI.visible) {
                    this.bagBtn.label = "打开背包界面";
                } else {
                    this.bagBtn.label = "关闭背包界面";
                }
                this.boxBagUI.visible = !this.boxBagUI.visible;
            })
        });

        this.custom2DShaderBtn.on(Laya.Event.CLICK, this, () => {
            if (this.boxShader2D.visible) {
                this.custom2DShaderBtn.label = "打开自定义2Dshader绘制色块";
            } else {
                this.custom2DShaderBtn.label = "关闭自定义2Dshader绘制色块";
            }
            this.boxShader2D.visible = !this.boxShader2D.visible;
        });

        this.insMeshBtn.on(Laya.Event.CLICK, this, () => {
            if (this.insMeshRoot.active) {
                this.insMeshBtn.label = "打开instanceMesh";
            } else {
                this.insMeshBtn.label = "关闭instanceMesh";
            }
            this.insMeshRoot.active = !this.insMeshRoot.active;
        });

        this.custom3DShaderBtn.on(Laya.Event.CLICK, this, () => {
            if (this.custom3DShaderRoot.active) {
                this.custom3DShaderBtn.label = "打开自定义3Dshader";
            } else {
                this.custom3DShaderBtn.label = "关闭自定义3Dshader";
            }
            this.custom3DShaderRoot.active = !this.custom3DShaderRoot.active;
        });

        this.opaqueBtn.on(Laya.Event.CLICK, this, () => {
            if (this.opaqueRoot.active) {
                this.opaqueBtn.label = "打开不透明预制体实例";
            } else {
                this.opaqueBtn.label = "关闭不透明预制体实例";
            }
            this.opaqueRoot.active = !this.opaqueRoot.active;
        });

        this.transparentBtn.on(Laya.Event.CLICK, this, () => {
            if (this.transparentRoot.active) {
                this.transparentBtn.label = "打开透明预制体实例";
            } else {
                this.transparentBtn.label = "关闭透明预制体实例";
            }
            this.transparentRoot.active = !this.transparentRoot.active;
        });

    }


    createPrefab2D() {
        if (!this.prefab2D) return;
        let ins2Ds: Laya.Sprite[] = [];

        for (let i = 0; i < this.prefab2DCount; i++) {
            let ins: Laya.Sprite = this.prefab2D.create() as Laya.Sprite;
            ins2Ds.push(ins);

            // 在boxShader2D的宽高范围内进行网格布局
            let boxWidth = this.boxShader2D.width; // boxShader2D的宽度
            let boxHeight = this.boxShader2D.height; // boxShader2D的高度

            // 计算每行可以放置多少个预制体
            let itemWidth = ins.width; // 预制体宽度
            let itemHeight = ins.height; // 预制体高度
            let horizontalSpacing = 20; // 水平间距
            let verticalSpacing = 20; // 垂直间距

            // 计算每行最大数量（考虑间距）
            let maxItemsPerRow = Math.floor((boxWidth + horizontalSpacing) / (itemWidth + horizontalSpacing));

            // 计算当前预制体在第几行第几列
            let currentRow = Math.floor(i / maxItemsPerRow); // 当前行
            let currentCol = i % maxItemsPerRow; // 当前列

            // 计算X位置 - 从左到右排列
            let xPosition = currentCol * (itemWidth + horizontalSpacing) + horizontalSpacing;

            // 计算Y位置 - 根据行数和预制体高度进行垂直偏移
            let yPosition = currentRow * (itemHeight + verticalSpacing) + verticalSpacing;

            // 设置位置
            ins.x = xPosition;
            ins.y = yPosition;

            this.boxShader2D.addChild(ins);
        }
    }

    // 存储需要动画的对象
    private animatedObjects: { obj: Laya.Sprite3D, baseAngle: number, speed: number }[] = [];

    createPrefab3D() {
        if (!this.prefab3DTransprent) return;

        // 清空之前的动画对象
        this.animatedObjects = [];

        for (let i = 0; i < this.prefab3DTransparentCount; i++) {
            let ins: Laya.Sprite3D = this.prefab3DTransprent.create() as Laya.Sprite3D;

            // 在边长为50的正四边形范围内随机设置位置（以原点为中心）
            let x = (Math.random() - 0.5) * 50; // 随机X坐标，范围[-25, 25]
            let z = (Math.random() - 0.5) * 50; // 随机Z坐标，范围[-25, 25]
            let y = 0.5; // Y坐标保持为0

            // 设置预制体位置
            ins.transform.position = new Laya.Vector3(x, y, z);

            // 为对象添加动画数据
            if (i < this.transCount && this.ChangeTransform) {
                this.animatedObjects.push({
                    obj: ins,
                    baseAngle: 0, // 基础角度
                    speed: 0.02 + (i * 0.001) // 不同的旋转速度
                });
            }

            this.transparentRoot.addChild(ins);
        }

        for (let i = 0; i < this.prefab3DOpaqueCount; i++) {
            let ins: Laya.Sprite3D = this.prefab3DOpaque.create() as Laya.Sprite3D;

            // 在边长为50的正四边形范围内随机设置位置（以原点为中心）
            let x = (Math.random() - 0.5) * 50; // 随机X坐标，范围[-25, 25]
            let z = (Math.random() - 0.5) * 50; // 随机Z坐标，范围[-25, 25]
            let y = 0; // Y坐标保持为0

            // 设置预制体位置
            ins.transform.position = new Laya.Vector3(x, y, z);
            this.opaqueRoot.addChild(ins);
        }

    }

    // 每帧更新动画对象位置
    onUpdate(): void {
        this.updateAnimatedObjects();
    }

    // 更新动画对象位置的方法
    private updateAnimatedObjects(): void {
        if (this.animatedObjects.length === 0) return;
        let currentTime = Laya.timer.currTimer * 0.001; // 当前时间（秒）

        // 立方体中心点(0, 20, 0)，立方体宽高为40，即边长为40
        let cubeCenter = { x: 0, y: 10, z: 0 };
        let cubeHalfSize = 15; // 立方体半边长为20

        this.animatedObjects.forEach((item, index) => {
            // 在立方体内生成随机位移，使用正弦函数创建平滑的运动轨迹
            let timeOffset = currentTime + index; // 为每个对象添加时间偏移，避免同步运动

            // 使用不同频率的正弦波在X、Y、Z轴上生成位置变化
            let x = cubeCenter.x + Math.sin(timeOffset * 0.5) * cubeHalfSize; // X轴范围[-20, 20] + 中心0
            let y = cubeCenter.y + Math.sin(timeOffset * 0.3 + index * 0.1) * cubeHalfSize; // Y轴范围[0, 40] + 中心20
            let z = cubeCenter.z + Math.sin(timeOffset * 0.7 + index * 0.2) * cubeHalfSize; // Z轴范围[-20, 20] + 中心0

            // 更新位置
            item.obj.transform.position = new Laya.Vector3(x, y, z);
        });
    }

    createInstance() {
        Laya.loader.load("resources/images/layabox.png").then((res: Laya.Texture2D) => {
            var count: number = this.insCount;
            var boxMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
            var mat: Laya.UnlitMaterial = new Laya.UnlitMaterial();
            mat.albedoTexture = res;

            // 立方体范围参数：长宽高分别为50, 50, 20
            let cubeWidth = 60;  // X轴范围
            let cubeDepth = 60;  // Z轴范围  
            let cubeHeight = 20; // Y轴范围

            for (let i = 0; i < count; i++) {
                let sp: Laya.Sprite3D = new Laya.Sprite3D();
                let mesh: Laya.MeshFilter = sp.addComponent(Laya.MeshFilter);
                let render: Laya.MeshRenderer = sp.addComponent(Laya.MeshRenderer);
                render.castShadow = true;
                render.receiveShadow = true;
                boxMesh = this.meshs[i % this.meshs.length];
                mesh.sharedMesh = boxMesh;
                render.material = mat;

                let randomX = (Math.random() - 0.5) * cubeWidth - 10;
                let randomY = (Math.random() - 0.5) * cubeHeight + 10;
                let randomZ = (Math.random() - 0.5) * cubeDepth - 10;

                sp.transform.localPosition = new Laya.Vector3(randomX, randomY, randomZ);
                this.insMeshRoot.addChild(sp);
            }
        });
    }


    createMeshs(): void {
        var meshType: number = this.meshCount;
        // 清空之前的mesh数组
        this.meshs = [];

        // 根据meshType数量创建对应数量的mesh
        for (let i = 0; i < meshType; i++) {
            var vertexDeclaration: Laya.VertexDeclaration = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL,UV");
            var vertices: Float32Array;
            var indices: Uint16Array;

            // 为每个mesh设置不同的偏移位置
            var offsetX = (i % 5) * 3; // 每行5个，间距3
            var offsetZ = Math.floor(i / 5) * 3; // 每5个换一行
            var offsetY = Math.sin(i * 0.5) * 2; // 高度变化

            // 创建立方体mesh（可以根据需要修改为其他形状）
            vertices = this.createBoxVerticesWithOffset(offsetX, offsetY, offsetZ, i);
            indices = this.createBoxIndices();

            var mesh = Laya.PrimitiveMesh._createMesh(vertexDeclaration, vertices, indices);
            this.meshs.push(mesh);
        }

        console.log(`创建了 ${meshType} 个mesh`);
    }

    // 创建立方体顶点数据
    private createBoxVertices(): Float32Array {
        var long: number = 1;
        var height: number = 1;
        var width: number = 1;

        var halfLong: number = long / 2;
        var halfHeight: number = height / 2;
        var halfWidth: number = width / 2;

        return new Float32Array([
            //上
            -halfLong, halfHeight, -halfWidth, 0, 1, 0, 0, 0,
            halfLong, halfHeight, -halfWidth, 0, 1, 0, 1, 0,
            halfLong, halfHeight, halfWidth, 0, 1, 0, 1, 1,
            -halfLong, halfHeight, halfWidth, 0, 1, 0, 0, 1,
            //下
            -halfLong, -halfHeight, -halfWidth, 0, -1, 0, 0, 1,
            halfLong, -halfHeight, -halfWidth, 0, -1, 0, 1, 1,
            halfLong, -halfHeight, halfWidth, 0, -1, 0, 1, 0,
            -halfLong, -halfHeight, halfWidth, 0, -1, 0, 0, 0,
            //左
            -halfLong, halfHeight, -halfWidth, -1, 0, 0, 0, 0,
            -halfLong, halfHeight, halfWidth, -1, 0, 0, 1, 0,
            -halfLong, -halfHeight, halfWidth, -1, 0, 0, 1, 1,
            -halfLong, -halfHeight, -halfWidth, -1, 0, 0, 0, 1,
            //右
            halfLong, halfHeight, -halfWidth, 1, 0, 0, 1, 0,
            halfLong, halfHeight, halfWidth, 1, 0, 0, 0, 0,
            halfLong, -halfHeight, halfWidth, 1, 0, 0, 0, 1,
            halfLong, -halfHeight, -halfWidth, 1, 0, 0, 1, 1,
            //前
            -halfLong, halfHeight, halfWidth, 0, 0, 1, 0, 0,
            halfLong, halfHeight, halfWidth, 0, 0, 1, 1, 0,
            halfLong, -halfHeight, halfWidth, 0, 0, 1, 1, 1,
            -halfLong, -halfHeight, halfWidth, 0, 0, 1, 0, 1,
            //后
            -halfLong, halfHeight, -halfWidth, 0, 0, -1, 1, 0,
            halfLong, halfHeight, -halfWidth, 0, 0, -1, 0, 0,
            halfLong, -halfHeight, -halfWidth, 0, 0, -1, 0, 1,
            -halfLong, -halfHeight, -halfWidth, 0, 0, -1, 1, 1
        ]);
    }

    // 创建立方体索引数据
    private createBoxIndices(): Uint16Array {
        return new Uint16Array([
            //上
            0, 1, 2, 2, 3, 0,
            //下
            4, 7, 6, 6, 5, 4,
            //左
            8, 9, 10, 10, 11, 8,
            //右
            12, 15, 14, 14, 13, 12,
            //前
            16, 17, 18, 18, 19, 16,
            //后
            20, 23, 22, 22, 21, 20
        ]);
    }

    // 创建平面顶点数据
    private createPlaneVertices(): Float32Array {
        var size: number = 1;
        var halfSize: number = size / 2;

        return new Float32Array([
            // 位置(3) + 法线(3) + UV(2)
            -halfSize, 0, -halfSize, 0, 1, 0, 0, 0,  // 左下
            halfSize, 0, -halfSize, 0, 1, 0, 1, 0,   // 右下
            halfSize, 0, halfSize, 0, 1, 0, 1, 1,    // 右上
            -halfSize, 0, halfSize, 0, 1, 0, 0, 1    // 左上
        ]);
    }

    // 创建平面索引数据
    private createPlaneIndices(): Uint16Array {
        return new Uint16Array([
            0, 1, 2, 2, 3, 0
        ]);
    }

    // 创建三角形顶点数据
    private createTriangleVertices(): Float32Array {
        var size: number = 1;

        return new Float32Array([
            // 位置(3) + 法线(3) + UV(2)
            0, size, 0, 0, 1, 0, 0.5, 1,      // 顶点
            -size, -size, 0, 0, 1, 0, 0, 0,   // 左下
            size, -size, 0, 0, 1, 0, 1, 0     // 右下
        ]);
    }

    // 创建三角形索引数据
    private createTriangleIndices(): Uint16Array {
        return new Uint16Array([0, 1, 2]);
    }

    // 创建四面体顶点数据
    private createTetrahedronVertices(): Float32Array {
        var size: number = 1;

        return new Float32Array([
            // 位置(3) + 法线(3) + UV(2)
            0, size, 0, 0, 1, 0, 0.5, 1,           // 顶点
            -size, -size, size, 0, -1, 1, 0, 0,    // 前左
            size, -size, size, 0, -1, 1, 1, 0,     // 前右
            0, -size, -size, 0, -1, -1, 0.5, 0     // 后中
        ]);
    }

    // 创建四面体索引数据
    private createTetrahedronIndices(): Uint16Array {
        return new Uint16Array([
            0, 1, 2,  // 前面
            0, 2, 3,  // 右面  
            0, 3, 1,  // 左面
            1, 3, 2   // 底面
        ]);
    }

    // 创建立方体顶点数据（带偏移，顶点范围限制在-0.5到0.5）
    private createBoxVerticesWithOffset(offsetX: number, offsetY: number, offsetZ: number, i: number): Float32Array {
        // 基础大小设为1，半径为0.5
        var halfSize: number = 0.5;

        // 根据meshType(i)来调整顶点位置，创建不同形状的变体
        var factor = i * 0.1; // 变化因子

        // 为不同的mesh创建略微不同的顶点位置
        var vertexVariation = [
            // 基于i值创建不同的顶点变化
            Math.sin(factor) * 0.1,      // x方向变化
            Math.cos(factor) * 0.1,      // y方向变化  
            Math.sin(factor * 2) * 0.1   // z方向变化
        ];

        return new Float32Array([
            //上面 - 添加顶点变化
            -halfSize + vertexVariation[0], halfSize + vertexVariation[1], -halfSize + vertexVariation[2], 0, 1, 0, 0, 0,
            halfSize + vertexVariation[0], halfSize + vertexVariation[1], -halfSize + vertexVariation[2], 0, 1, 0, 1, 0,
            halfSize + vertexVariation[0], halfSize + vertexVariation[1], halfSize + vertexVariation[2], 0, 1, 0, 1, 1,
            -halfSize + vertexVariation[0], halfSize + vertexVariation[1], halfSize + vertexVariation[2], 0, 1, 0, 0, 1,

            //下面
            -halfSize - vertexVariation[0], -halfSize - vertexVariation[1], -halfSize - vertexVariation[2], 0, -1, 0, 0, 1,
            halfSize - vertexVariation[0], -halfSize - vertexVariation[1], -halfSize - vertexVariation[2], 0, -1, 0, 1, 1,
            halfSize - vertexVariation[0], -halfSize - vertexVariation[1], halfSize - vertexVariation[2], 0, -1, 0, 1, 0,
            -halfSize - vertexVariation[0], -halfSize - vertexVariation[1], halfSize - vertexVariation[2], 0, -1, 0, 0, 0,

            //左面
            -halfSize + vertexVariation[2], halfSize + vertexVariation[0], -halfSize + vertexVariation[1], -1, 0, 0, 0, 0,
            -halfSize + vertexVariation[2], halfSize + vertexVariation[0], halfSize + vertexVariation[1], -1, 0, 0, 1, 0,
            -halfSize + vertexVariation[2], -halfSize - vertexVariation[0], halfSize + vertexVariation[1], -1, 0, 0, 1, 1,
            -halfSize + vertexVariation[2], -halfSize - vertexVariation[0], -halfSize + vertexVariation[1], -1, 0, 0, 0, 1,

            //右面
            halfSize - vertexVariation[2], halfSize - vertexVariation[0], -halfSize - vertexVariation[1], 1, 0, 0, 1, 0,
            halfSize - vertexVariation[2], halfSize - vertexVariation[0], halfSize - vertexVariation[1], 1, 0, 0, 0, 0,
            halfSize - vertexVariation[2], -halfSize + vertexVariation[0], halfSize - vertexVariation[1], 1, 0, 0, 0, 1,
            halfSize - vertexVariation[2], -halfSize + vertexVariation[0], -halfSize - vertexVariation[1], 1, 0, 0, 1, 1,

            //前面
            -halfSize + vertexVariation[1], halfSize + vertexVariation[2], halfSize + vertexVariation[0], 0, 0, 1, 0, 0,
            halfSize + vertexVariation[1], halfSize + vertexVariation[2], halfSize + vertexVariation[0], 0, 0, 1, 1, 0,
            halfSize + vertexVariation[1], -halfSize - vertexVariation[2], halfSize + vertexVariation[0], 0, 0, 1, 1, 1,
            -halfSize + vertexVariation[1], -halfSize - vertexVariation[2], halfSize + vertexVariation[0], 0, 0, 1, 0, 1,

            //后面
            -halfSize - vertexVariation[1], halfSize - vertexVariation[2], -halfSize - vertexVariation[0], 0, 0, -1, 1, 0,
            halfSize - vertexVariation[1], halfSize - vertexVariation[2], -halfSize - vertexVariation[0], 0, 0, -1, 0, 0,
            halfSize - vertexVariation[1], -halfSize + vertexVariation[2], -halfSize - vertexVariation[0], 0, 0, -1, 0, 1,
            -halfSize - vertexVariation[1], -halfSize + vertexVariation[2], -halfSize - vertexVariation[0], 0, 0, -1, 1, 1
        ]);
    }



}