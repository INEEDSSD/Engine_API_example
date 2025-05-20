export class BundleCullingRenderElement extends Laya.WebGPURenderElement3D {

    cullShaderData: Laya.WebGPUShaderData;

    constructor() {
        super();

        this.cullShaderData = new Laya.WebGPUShaderData();
        this.isRender = true;
    };

    protected _bindGroup(context: Laya.WebGPURenderContext3D, shaderInstance: Laya.WebGPUShaderInstance, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): void {
        this.bindGroupMap.clear();

        {
            let sceneGroup = context._sceneBindGroup;
            command.setBindGroup(0, sceneGroup);
            this.bindGroupMap.set(0, sceneGroup);
        }
        {
            command.setBindGroup(1, context._cameraBindGroup);
            this.bindGroupMap.set(1, context._cameraBindGroup);
        }
        {
            let shaderResource = shaderInstance.uniformSetMap.get(2);
            let bindgroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup(this.owner._commonUniformMap, this.cullShaderData, null, shaderResource);

            // let bindgroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroupByNode(shaderResource, this.owner);

            command.setBindGroup(2, bindgroup);
            this.bindGroupMap.set(2, bindgroup);
        }
        {
            let shaderResource = shaderInstance.uniformSetMap.get(3);

            let bindgroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup([this.subShader._owner.name], this.materialShaderData, null, shaderResource);

            command.setBindGroup(3, bindgroup);
            this.bindGroupMap.set(3, bindgroup);
        }

    }

    _preUpdatePre(context: Laya.WebGPURenderContext3D): void {
        this._compileShader(context);

        let subShader = this.subShader;
        let matSubBuffer = this.materialShaderData.createSubUniformBuffer("Material", subShader.owner.name, subShader._uniformMap);
        if (matSubBuffer.needUpload) {
            matSubBuffer.bufferBlock.needUpload();
        }

        //sprite ubo
        if (this.renderShaderData && this.owner._commonUniformMap.length > 0) {
            let nodemap = this.owner._commonUniformMap;
            for (var i = 0, n = nodemap.length; i < n; i++) {
                let moduleName = nodemap[i];
                let unifomrMap = <Laya.WebGPUCommandUniformMap>Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap(nodemap[i]);
                let uniformBuffer = this.renderShaderData.createSubUniformBuffer(moduleName, moduleName, unifomrMap._idata);
                if (uniformBuffer && uniformBuffer.needUpload) {
                    uniformBuffer.bufferBlock.needUpload();
                }
            }
        }
        //additional ubo
        if (this.owner) {
            for (let [key, value] of this.owner.additionShaderData) {
                let shaderData = value as Laya.WebGPUShaderData;
                let unifomrMap = <Laya.WebGPUCommandUniformMap>Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap(key);
                let uniformBuffer = shaderData.createSubUniformBuffer(key, key, unifomrMap._idata);
                if (uniformBuffer && uniformBuffer.needUpload) {
                    uniformBuffer.bufferBlock.needUpload();
                }
            }
        }
    }

    _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): number {

        if (!this.isRender) {
            return 0;
        }

        let shaders = this._shaderInstances.elements;

        for (let j = 0, m = this._shaderInstances.length; j < m; j++) {
            let shaderInstance = shaders[j];
            if (!shaderInstance.complete) {
                continue;
            }

            this._bindGroup(context, shaderInstance, command);

            let pipeline = this._getWebGPURenderPipeline(shaderInstance, context.destRT, context);

            command.setPipeline(pipeline);  //新建渲染管线

            this._uploadGeometry(command);
        }

        return 0;
    }

}