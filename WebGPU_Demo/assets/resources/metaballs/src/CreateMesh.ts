// @ts-nocheck
export function createMesh(vertexDeclaration: Laya.VertexDeclaration, vertices: Float32Array, indices: Uint32Array) {

    let mesh = new Laya.Mesh();

    let subMesh = new Laya.SubMesh(mesh);
    var vertexBuffer = Laya.Laya3DRender.renderOBJCreate.createVertexBuffer3D(vertices.length * 4, Laya.BufferUsage.Dynamic, false);
    vertexBuffer.vertexDeclaration = vertexDeclaration;
    vertexBuffer.setData(vertices.buffer);

    mesh._vertexBuffer = vertexBuffer;
    mesh._vertexCount = vertexBuffer._byteLength / vertexDeclaration.vertexStride;
    var indexBuffer = Laya.Laya3DRender.renderOBJCreate.createIndexBuffer3D(Laya.IndexFormat.UInt32, indices.length, Laya.BufferUsage.Dynamic, false);
    indexBuffer.setData(indices);
    mesh._indexBuffer = indexBuffer;

    mesh._setBuffer(vertexBuffer, indexBuffer);
    //mesh._setInstanceBuffer(mesh._instanceBufferStateType);
    subMesh._vertexBuffer = vertexBuffer;
    subMesh._indexBuffer = indexBuffer;
    subMesh._setIndexRange(0, indexBuffer.indexCount);
    subMesh.indexFormat = Laya.IndexFormat.UInt32;

    var subIndexBufferStart: number[] = subMesh._subIndexBufferStart;
    var subIndexBufferCount: number[] = subMesh._subIndexBufferCount;
    var boneIndicesList: Uint16Array[] = subMesh._boneIndicesList;
    subIndexBufferStart.length = 1;
    subIndexBufferCount.length = 1;
    boneIndicesList.length = 1;
    subIndexBufferStart[0] = 0;
    subIndexBufferCount[0] = indexBuffer.indexCount;

    var subMeshes: Laya.SubMesh[] = [];
    subMeshes.push(subMesh);
    mesh._setSubMeshes(subMeshes);
    // mesh.calculateBounds();
    var memorySize: number = vertexBuffer._byteLength + indexBuffer._byteLength;
    mesh._setCPUMemory(memorySize);
    mesh._setGPUMemory(memorySize);
    return {
        mesh: mesh,
        indexBuffer: indexBuffer,
        subMesh: subMesh,
        vertexBuffer: vertexBuffer,
    };
}

export function updateMesh(mesh: Laya.Mesh, indexBuffer: Laya.IndexBuffer3D, vertexBuffer: Laya.VertexBuffer3D, subMesh: Laya.SubMesh, indexCount: number) {
    mesh._setBuffer(vertexBuffer, indexBuffer);

    subMesh._setIndexRange(0, indexCount, Laya.IndexFormat.UInt32);
    subMesh._subIndexBufferCount[0] = indexCount;
    subMesh.clearRenderParams();
    subMesh.setDrawElemenParams(indexCount, 0);
}