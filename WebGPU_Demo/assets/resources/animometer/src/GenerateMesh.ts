
const TriangleVertex = new Float32Array([
    // position data  /**/ color data
    0, 0.1, 0, 1.0, 0.0, 0.0,      /**/ 1, 0, 0, 1,
    -0.1, -0.1, 0, 1.0, 0.0, 0.0,      /**/ 0, 1, 0, 1,
    0.1, -0.1, 0, 1.0, 0.0, 0.0,      /**/ 0, 0, 1, 1,
]);

const TriangleIndex = new Uint16Array([0, 2, 1]);

export class GenerateMesh {

    static createTriangleMesh(numTriangles: number): Laya.Mesh {

        console.time("mesh");

        const vertices = TriangleVertex;

        let mesh = new Laya.Mesh();

        let vertexDeclaration = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL,COLOR");

        let vertexBuffer = Laya.Laya3DRender.renderOBJCreate.createVertexBuffer3D(vertices.byteLength, Laya.BufferUsage.Static, false);

        vertexBuffer.vertexDeclaration = vertexDeclaration;
        vertexBuffer.setData(vertices.buffer);

        mesh._vertexBuffer = vertexBuffer;
        mesh._vertexCount = 3;

        let indexBuffer = Laya.Laya3DRender.renderOBJCreate.createIndexBuffer3D(Laya.IndexFormat.UInt16, TriangleIndex.length, Laya.BufferUsage.Static, false);
        indexBuffer.setData(TriangleIndex);

        mesh._indexBuffer = indexBuffer;

        mesh._setBuffer(vertexBuffer, indexBuffer);

        console.timeEnd("mesh");

        console.time("subMesh");
        let subMeshes = new Array<Laya.SubMesh>(numTriangles);
        {
            let subMesh = new Laya.SubMesh(mesh);

            subMesh._vertexBuffer = vertexBuffer;
            subMesh._indexBuffer = indexBuffer;
            subMesh._setIndexRange(0, indexBuffer.indexCount);

            subMesh._subIndexBufferStart.length = 1;
            subMesh._subIndexBufferCount.length = 1;
            subMesh._subIndexBufferStart[0] = 0;
            subMesh._subIndexBufferCount[0] = indexBuffer.indexCount;

            for (let i = 0; i < numTriangles; i++) {
                subMeshes[i] = subMesh;
            }
        }

        mesh._subMeshes = subMeshes;

        console.timeEnd("subMesh");

        // mesh._setSubMeshes(subMeshes);

        return mesh;
    }

}