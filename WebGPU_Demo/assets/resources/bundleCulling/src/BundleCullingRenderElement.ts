export class BundleCullingRenderElement extends Laya.WebGPURenderElement3D {

    cullShaderData: Laya.WebGPUShaderData;

    constructor() {
        super();

        this.cullShaderData = new Laya.WebGPUShaderData();
        this.isRender = true;
    };

    private bindGroup: Map<number, Laya.WebGPUBindGroup> = new Map();

    private getBaseRender3DNodeBindGroup(context: Laya.WebGPURenderContext3D, shaderInstance: Laya.WebGPUShaderInstance): Laya.WebGPUBindGroup {
        let reCreateBindGroup = false;
        let bindGroup = this.bindGroup.get(shaderInstance._id);
        let shaderInstanceID = shaderInstance._id;
        if (!bindGroup) {
            reCreateBindGroup = true;
        }
        else {
            if (bindGroup.isNeedCreate(this.cullShaderData._getBindGroupLastUpdateMask(`${this.owner._commonUniformMap[0]}_${shaderInstanceID}`))) {
                reCreateBindGroup = true;
            }
        }

        if (reCreateBindGroup) {
            let bindGroupArray = shaderInstance.uniformSetMap.get(2);

            let shaderData = this.cullShaderData;
            let bindGroupEntriys: any[] = []; // GPUBindGroupEntry[]
            for (let com of this.owner._commonUniformMap) {

                let comMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap(com) as Laya.WebGPUCommandUniformMap;
                if (comMap._ishasBuffer) {
                    shaderData.createSubUniformBuffer(com, com, comMap._idata);
                }
                shaderData.fillBindGroupEntry(com, `${com}_${shaderInstanceID}`, bindGroupEntriys, bindGroupArray);
            }

            let groupLayout = Laya.WebGPUBindGroupHelper.createBindGroupEntryLayout(bindGroupArray);
            let bindGroupDescriptor = {
                label: "GPUBindGroupDescriptor",
                layout: groupLayout,
                entries: bindGroupEntriys
            };

            let bindGroupGpu = Laya.WebGPURenderEngine._instance.getDevice().createBindGroup(bindGroupDescriptor);
            bindGroup = new Laya.WebGPUBindGroup();
            bindGroup.gpuRS = bindGroupGpu;
            bindGroup.createMask = Laya.Stat.loopCount;
            this.bindGroup.set(shaderInstanceID, bindGroup);
        }

        return bindGroup;
    }

    protected _bindGroup(context: Laya.WebGPURenderContext3D, shaderInstance: Laya.WebGPUShaderInstance, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): void {
        if (shaderInstance.uniformSetMap.get(0).length > 0) {
            command.setBindGroup(0, context._sceneBindGroup);
        }
        if (shaderInstance.uniformSetMap.get(1).length > 0) {
            command.setBindGroup(1, context._cameraBindGroup);
        }
        //if (shaderInstance.uniformSetMap.get(2).length > 0) {//additional & Sprite3D NodeModule
        if (this.owner) {
            let bindgroup = this.getBaseRender3DNodeBindGroup(context, shaderInstance);
            command.setBindGroup(2, bindgroup);
        }
        if (shaderInstance.uniformSetMap.get(3).length > 0) {
            command.setBindGroup(3, this.materialShaderData._createOrGetBindGroupByBindInfoArray("Material", this.subShader.owner.name, shaderInstance, 3, shaderInstance.uniformSetMap.get(3)));
        }
    }

    _preUpdatePre(context: Laya.WebGPURenderContext3D): void {
        this._compileShader(context);

        let subShader = this.subShader;
        let matSubBuffer = this.materialShaderData.createSubUniformBuffer("Material", subShader.owner.name, subShader._uniformMap);
        if (matSubBuffer.needUpload) {
            matSubBuffer.bufferBlock.needUpload();
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

            command.setPipeline(this._getWebGPURenderPipeline(shaderInstance, context.destRT, context));

            this._bindGroup(context, shaderInstance, command);
            this._uploadGeometry(command);
        }

        return 0;
    }

}