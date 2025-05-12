import { BaseScript } from "../../BaseScript";

const { regClass, property } = Laya;

@regClass()
export class Render_CMDRender extends BaseScript {
    declare owner: Laya.Sprite;

    static cmd: Laya.CommandBuffer2D;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Laya.loader.load(["resources/res/apes/monkey2.png"]).then(() => {
            let mesh = this.generateCircleVerticesAndUV(100, 100);
            var t = Laya.loader.getRes("resources/res/apes/monkey2.png")._bitmap;

            let rtMesh = new Laya.RenderTexture(500, 500, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.None);
            this.createMesh2DCMD(rtMesh, mesh, t);
            let sp1: Laya.Sprite = new Laya.Sprite();
            sp1.texture = new Laya.Texture(rtMesh);
            sp1.pos(300, 10);
            sp1.scale(0.5, 0.5);
            this.box2D.addChild(sp1);

            let rtMeshRender = new Laya.RenderTexture(500, 500, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.None);
            this.createMesh2DRenderCMD(rtMeshRender, mesh, t);
            let sp2: Laya.Sprite = new Laya.Sprite();
            sp2.texture = new Laya.Texture(rtMeshRender);
            sp2.pos(600, 10);
            sp2.scale(0.5, 0.5);
            this.box2D.addChild(sp2);

            let rtBlit = new Laya.RenderTexture(500, 500, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.None);
            this.create2DBlitCMD(rtBlit, t);
            let sp3: Laya.Sprite = new Laya.Sprite();
            sp3.texture = new Laya.Texture(rtBlit);
            sp3.pos(900, 10);
            sp3.scale(0.5, 0.5);
            this.box2D.addChild(sp3);
        });
    }

    /**
     * 创建使用2DMesh的commandBuffer2D
     * @param rt rt
     * @param mesh2d mesh 
     * @param meshTexture meshTexture 
     */
    createMesh2DCMD(rt: Laya.RenderTexture, mesh2d: Laya.Mesh2D, meshTexture: Laya.BaseTexture): void {
        let cmd = Render_CMDRender.cmd = new Laya.CommandBuffer2D("test");
        cmd.setRenderTarget(rt as any, true, Laya.Color.RED);
        cmd.drawMesh(mesh2d, Laya.Matrix.EMPTY, meshTexture);
        cmd.apply(true);
        Laya.Utils3D.uint8ArrayToArrayBufferAsync(rt).then((res) => {
            console.log(res);
        });
        cmd.clear(true);
    }

    /**
     * 创建使用2DMeshRender的commandbuffer2D
     * @param rt 
     * @param mesh 
     * @param meshTexture 
     */
    createMesh2DRenderCMD(rt: Laya.RenderTexture, mesh: Laya.Mesh2D, meshTexture: Laya.BaseTexture): void {
        var ape: Laya.Sprite = new Laya.Sprite();
        let mesh2Drender = ape.addComponent(Laya.Mesh2DRender);
        mesh2Drender.sharedMesh = mesh;
        mesh2Drender.color = Laya.Color.BLUE;
        mesh2Drender.texture = meshTexture;

        let cmd = Render_CMDRender.cmd = new Laya.CommandBuffer2D("test");
        cmd.setRenderTarget(rt as any, true, Laya.Color.GREEN);
        let mat = new Laya.Matrix();
        mat.setTranslate(100, 100);
        cmd.drawRenderElement((mesh2Drender as any)._renderElements[0], mat);
        mat.setTranslate(100, 300);
        cmd.apply(true);
        Laya.Utils3D.uint8ArrayToArrayBufferAsync(rt).then((res) => {
            console.log(res);
        });
        cmd.clear(true);
    }

    /**
     * 创建绘制blit矩形的commandBuffer2D
     * @param rt 
     * @param meshTexture 
     */
    create2DBlitCMD(rt: Laya.RenderTexture, meshTexture: Laya.BaseTexture): void {
        let cmd = Render_CMDRender.cmd = new Laya.CommandBuffer2D("test");
        cmd.setRenderTarget(rt as any, true, Laya.Color.BLUE);
        cmd.blitTextureQuad(meshTexture, rt as any, new Laya.Vector4(0, 0, 0.3, 0.3));
        cmd.blitTextureQuad(meshTexture, rt as any, new Laya.Vector4(0.3, 0.3, 0.5, 0.5));
        cmd.blitTextureQuad(meshTexture, rt as any, new Laya.Vector4(0.8, 0.8, 0.2, 0.2));
        cmd.apply(true);
        Laya.Utils3D.uint8ArrayToArrayBufferAsync(rt).then((res) => {
            console.log(res);
        });
        cmd.clear(true);
    }


    /**
     * 生成一个圆形
     * @param radius 
     * @param numSegments 
     * @returns 
     */
    private generateCircleVerticesAndUV(radius: number, numSegments: number): Laya.Mesh2D {
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
}