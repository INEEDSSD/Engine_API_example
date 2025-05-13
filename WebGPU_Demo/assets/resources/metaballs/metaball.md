# metaball

## method

1. WriteBuffer 
    每帧更新 vertex buffer 数据
2. NewBuffer
    每帧创建新的 buffer 对象
3. NewStagingBuffer
    每次更新创建新的 staging buffer 向 vertex 中上传更新数据
4. SingleStagingBuffer
    使用一个 staging buffer 向 同一个 vertex 中上传数据
5. StagingBufferRing
6. ComputeShader
