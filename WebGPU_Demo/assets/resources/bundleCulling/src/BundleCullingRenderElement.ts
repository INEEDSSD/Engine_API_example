export class BundleCullingRenderElement extends (Laya.WebGPURenderElement3D ? Laya.WebGPURenderElement3D : Laya.WebGLRenderElement3D) {

    cullShaderData: Laya.WebGPUShaderData;

    constructor() {
        super();

        this.cullShaderData = new Laya.WebGPUShaderData();
        this.isRender = true;
    };

    protected _bindGroup(context: Laya.WebGPURenderContext3D, info: Laya.OneDrawCacheInfo, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle) {
        let shaderInstance = info.shaderInstance;

        command.setBindGroup(0, context._sceneBindGroup);
        command.setBindGroup(1, context._cameraBindGroup);

        {
            //判断 nodePipeline是否有改变
            if (this.owner) {
                let bindgroupChangeFlag = this.owner.bindGroupChangeFlag;
                if (info.shaderChange || this._spriteRenderDataChange || Laya.compareCahceFlag(bindgroupChangeFlag, info.renderNodeBindGroupCacheFlag)) {
                    info.renderNodeBindGroupCacheFlag.setValue(Laya.Stat.loopCount, Laya.WebGPURenderEngine._instance._framePassCount);
                    let shaderResource = shaderInstance.uniformSetMap.get(2);
                    let textureExitsMask = shaderInstance.uniformTextureExits.get(2);

                    let commands = this.owner?._commonUniformMap;
                    let shaderData = this.cullShaderData as Laya.WebGPUShaderData;
                    let addition = this.owner?.additionShaderData;
                    info.nodeBindGroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup(commands, shaderData, addition, shaderResource, textureExitsMask);
                    Laya.coverCahceFlag(this.owner.bindGroupLayoutChangeFlag, this._pipelineChangeFlag);
                }
            } else {
                info.nodeBindGroup = Laya.WebGPUBindGroupCache.emptyBindGroup;
            }
            command.setBindGroup(2, info.nodeBindGroup);
        }
        {
            if (this._materialShaderData) {
                if (info.shaderChange || this._materialRenderDataChange || Laya.compareCahceFlag(this._matBindGroupChangeFlag, info.matBindGroupCacheFlag)) {
                    info.matBindGroupCacheFlag.setValue(Laya.Stat.loopCount, Laya.WebGPURenderEngine._instance._framePassCount);
                    let shaderResource = shaderInstance.uniformSetMap.get(3);
                    let textureExitsMask = shaderInstance.uniformTextureExits.get(3);

                    info.matBindGroup = Laya.WebGPURenderEngine._instance.bindGroupCache.getBindGroup([this._subShader._owner.name], this._materialShaderData, null, shaderResource, textureExitsMask);
                    Laya.coverCahceFlag(this._matBindGroupLayoutFlag, this._pipelineChangeFlag);
                }
            } else {
                info.matBindGroup = Laya.WebGPUBindGroupCache.emptyBindGroup;
            }
            command.setBindGroup(3, info.matBindGroup);
        }
    }

    _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): 1 | 0 {
        return super._render(context, command);
    }
}