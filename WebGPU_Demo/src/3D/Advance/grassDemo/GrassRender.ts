import { GrassMaterial } from "./GrassMaterial";
import { GrassRenderManager } from "./GrassRenderManager";

export class GlassRender {

    private grassManager: GrassRenderManager;
    private instanceCMD: Laya.DrawMeshInstancedCMD;
    private materialBlock: Laya.MaterialInstancePropertyBlock;
    private grassMaterial: GrassMaterial;
    private buf: Laya.CommandBuffer;
    private camera: Laya.Camera;
    constructor(manager: GrassRenderManager, camera: Laya.Camera) {
        this.grassManager = manager;
        this.createCommandBuffer();
        this.camera = camera;
    }


    /**
     * @internal
     */
    private creatGrassMesh(): Laya.Mesh {
        // 生成单片grass (一个三角形)
        // 每个顶点包含: position(3) + uv(2) + normal(3) = 8个float
        var vertexArray: Float32Array = new Float32Array(3 * 6);
        
        // 顶点1 (左下)
        vertexArray[0] = -0.25;  // position.x
        vertexArray[1] = 0.0;    // position.y
        vertexArray[2] = 0.0;    // position.z
        vertexArray[3] = 0.0;    // normal.x
        vertexArray[4] = 1.0;    // normal.y
        vertexArray[5] = 0.0;    // normal.z

        // 顶点2 (右下)
        vertexArray[6] = 0.25;   // position.x
        vertexArray[7] = 0.0;    // position.y
        vertexArray[8] = 0.0;   // position.z
        vertexArray[9] = 0.0;   // normal.x
        vertexArray[10] = 1.0;   // normal.y
        vertexArray[11] = 0.0;   // normal.z
        
        // 顶点3 (顶部)
        vertexArray[12] = 0.0;   // position.x
        vertexArray[13] = 1.0;   // position.y
        vertexArray[14] = 0.0;   // position.z
        vertexArray[15] = 0.0;   // normal.x
        vertexArray[16] = 1.0;   // normal.y
        vertexArray[17] = 0.0;   // normal.z

        var indexArray: Uint16Array = new Uint16Array([2, 1, 0]);
        
        // 使用Laya引擎的顶点声明创建方法
        var vertexDeclaration: Laya.VertexDeclaration = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL");
        
        //@ts-ignore
        var mesh = Laya.PrimitiveMesh._createMesh(vertexDeclaration, vertexArray, indexArray);
        mesh.lock = true;
        return mesh;
    }

    /**
     * @internal
     */
    private createMaterial(): GrassMaterial {
        var mat = new GrassMaterial();
        this.grassMaterial = mat;
        //set mat Property
        return mat;
    }

    /**
     * 创建CommandBuffer命令缓存流
     * @param camera 
     */
    createCommandBuffer() {
        Laya.DrawMeshInstancedCMD.maxInstanceCount = 1000000;
        //创建渲染命令流
        this.buf = new Laya.CommandBuffer();
        //创建材质instance属性块
        this.materialBlock = new Laya.MaterialInstancePropertyBlock();
        //设置属性
        this.materialBlock.setVector3Array("a_privotPosition", this.grassManager.dataArrayBuffer, Laya.InstanceLocation.CUSTOME0);
        // let matrixs =new Array<Matrix4x4>();
        // for(var i = 0;i<1000000;i++){
        //     matrixs.push(new Matrix4x4());
        // }
        this.instanceCMD = this.buf.drawMeshInstance(this.creatGrassMesh(), 0, null, this.createMaterial(), 0, this.materialBlock, this.grassManager.drawArrayLength);
        return;
    }

    removeCommandBuffer() {
        this.camera.removeCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, this.buf);
    }

    addCommandBuffer() {
        this.camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, this.buf);
    }

    changeDrawNums() {
        this.materialBlock.setVector3Array("a_privotPosition", this.grassManager.dataArrayBuffer, Laya.InstanceLocation.CUSTOME0);
        this.instanceCMD.setDrawNums(this.grassManager.drawArrayLength);
    }


}