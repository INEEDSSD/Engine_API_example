const { regClass, property } = Laya;

/**
 * 2D自定义shader需要使用的mesh脚本，这里获取mesh2DRender，并设置mesh2D为box类型
 */

@regClass()
export class baseRenderScript extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    @property(String)
    public text: string = "";

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        let mesh2D: Laya.Mesh2D = this.createBoxMesh2D(50, 50);
        let baserender: Laya.Mesh2DRender = this.owner.getComponent(Laya.Mesh2DRender);
        baserender.sharedMesh = mesh2D;


        
    }

    /**
     * 生成一个圆形
     * @param radius 
     * @param numSegments 
     * @returns 
     */
    private createCircleMesh2D(radius: number, numSegments: number): Laya.Mesh2D {
        const twoPi = Math.PI * 2;
        let vertexs = new Float32Array((numSegments + 1) * 5);
        let index = new Uint16Array((numSegments + 1) * 3);
        var pos = 0;
        for (let i = 0; i < numSegments; i++, pos += 5) {
            const angle = twoPi * i / numSegments;
            var x = vertexs[pos + 0] = radius * Math.cos(angle);
            var y = vertexs[pos + 1] = radius * Math.sin(angle);
            vertexs[pos + 2] = 0;

            // 计算UV坐标
            vertexs[pos + 3] = 0.5 + x / (2 * radius); // 将x从[-radius, radius]映射到[0,1]
            vertexs[pos + 4] = 0.5 + y / (2 * radius); // 将y从[-radius, radius]映射到[0,1]
        }
        //add center
        vertexs[pos] = 0;
        vertexs[pos + 1] = 0;
        vertexs[pos + 2] = 0;
        vertexs[pos + 3] = 0.5;
        vertexs[pos + 4] = 0.5;

        for (var i = 1, ibIndex = 0; i < numSegments; i++, ibIndex += 3) {
            index[ibIndex] = i;
            index[ibIndex + 1] = i - 1;
            index[ibIndex + 2] = numSegments;
        }
        index[ibIndex] = numSegments - 1;
        index[ibIndex + 1] = 0;
        index[ibIndex + 2] = numSegments;
        var declaration = Laya.VertexMesh2D.getVertexDeclaration(["POSITION,UV"], false)[0];
        let mesh2D = Laya.Mesh2D.createMesh2DByPrimitive([vertexs], [declaration], index, Laya.IndexFormat.UInt16, [{ length: index.length, start: 0 }]);
        return mesh2D;
    }

    /**
     * 生成一个矩形Box
     * @param width 宽度
     * @param height 高度
     * @returns 
     */
    private createBoxMesh2D(width: number, height: number): Laya.Mesh2D {
        // 4个顶点，每个顶点5个数据：x, y, z, u, v
        let vertexs = new Float32Array(4 * 5);
        // 2个三角形，每个三角形3个顶点索引
        let index = new Uint16Array(2 * 3);
        
        const halfWidth = width / 2;
        const halfHeight = height / 2;
        
        // 设置4个顶点的位置和UV坐标
        var pos = 0;
        
        // 顶点0：左下角
        vertexs[pos + 0] = -halfWidth;  // x
        vertexs[pos + 1] = -halfHeight; // y
        vertexs[pos + 2] = 0;           // z
        vertexs[pos + 3] = 0;           // u
        vertexs[pos + 4] = 0;           // v
        pos += 5;
        
        // 顶点1：右下角
        vertexs[pos + 0] = halfWidth;   // x
        vertexs[pos + 1] = -halfHeight; // y
        vertexs[pos + 2] = 0;           // z
        vertexs[pos + 3] = 1;           // u
        vertexs[pos + 4] = 0;           // v
        pos += 5;
        
        // 顶点2：右上角
        vertexs[pos + 0] = halfWidth;   // x
        vertexs[pos + 1] = halfHeight;  // y
        vertexs[pos + 2] = 0;           // z
        vertexs[pos + 3] = 1;           // u
        vertexs[pos + 4] = 1;           // v
        pos += 5;
        
        // 顶点3：左上角
        vertexs[pos + 0] = -halfWidth;  // x
        vertexs[pos + 1] = halfHeight;  // y
        vertexs[pos + 2] = 0;           // z
        vertexs[pos + 3] = 0;           // u
        vertexs[pos + 4] = 1;           // v
        
        // 设置索引：两个三角形组成矩形
        // 第一个三角形：左下、右下、右上
        index[0] = 0;
        index[1] = 1;
        index[2] = 2;
        
        // 第二个三角形：左下、右上、左上
        index[3] = 0;
        index[4] = 2;
        index[5] = 3;
        
        // 获取顶点声明
        var declaration = Laya.VertexMesh2D.getVertexDeclaration(["POSITION,UV"], false)[0];
        
        // 创建Mesh2D
        let mesh2D = Laya.Mesh2D.createMesh2DByPrimitive(
            [vertexs], 
            [declaration], 
            index, 
            Laya.IndexFormat.UInt16, 
            [{ length: index.length, start: 0 }]
        );
        
        return mesh2D;
    }

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