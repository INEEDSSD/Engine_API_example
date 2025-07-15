import { BundleCullingRenderElement } from "./BundleCullingRenderElement";

export class BundleCullingBundleElement extends Laya.WebGPURenderElement3D {

    private _renderelements: BundleCullingRenderElement[] = [];
    private _needRecreateRenderBundle: boolean = false;

    private _commandBunlde: Laya.WebGPURenderBundle = new Laya.WebGPURenderBundle();

    constructor() {
        super();
        this.isRender = true;
        this.materialRenderQueue = 2000;
        this.materialShaderData = new Laya.WebGPUShaderData();
    }

    addRenderElement(element: BundleCullingRenderElement) {
        this._renderelements.push(element);
        this._needRecreateRenderBundle = true;
    }

    _preUpdatePre(context: Laya.WebGPURenderContext3D): void {
        for (var i = 0; i < this._renderelements.length; i++) {
            this._renderelements[i]._preUpdatePre(context);
        }
    }

    _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): 1 | 0 {
        if (this._needRecreateRenderBundle) {
            this._commandBunlde.startRender(context.destRT, "renderCullBundle");
            for (var i = 0; i < this._renderelements.length; i++) {
                this._renderelements[i]._render(context, this._commandBunlde);
            }
            this._commandBunlde.finish("renderCullBundle");
            this._needRecreateRenderBundle = false;
        }
        (command as Laya.WebGPURenderCommandEncoder).excuteBundle([this._commandBunlde._gpuBundle])
        return 0;
    }

    // _render(context: Laya.WebGPURenderContext3D, command: Laya.WebGPURenderCommandEncoder | Laya.WebGPURenderBundle): number {
    //     if (this._needRecreateRenderBundle) {
    //         this._commandBunlde.startRender(context.destRT, "renderCullBundle");
    //         for (var i = 0; i < this._renderelements.length; i++) {
    //             this._renderelements[i]._render(context, this._commandBunlde);
    //         }
    //         this._commandBunlde.finish("renderCullBundle");
    //         this._needRecreateRenderBundle = false;
    //     }
    //     (command as Laya.WebGPURenderCommandEncoder).excuteBundle([this._commandBunlde._gpuBundle])
    //     return 0;
    // }
};