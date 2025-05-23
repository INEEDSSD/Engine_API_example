const { regClass, property } = Laya;


Laya.addAfterInitCallback(()=>{
    if (Laya.LayaGL.renderEngine.getCapable(Laya.RenderCapable.ComputeShader)) {
        
        console.log("  IndirectDraw log,  use gl is ", Laya.LayaGL.renderEngine);
        return Laya.Browser.loadLib("js/WebGPU.js");
    } else {
        
        console.log("  IndirectDraw log,  use gl is ", Laya.LayaGL.renderEngine);
        return Laya.Browser.loadLib("js/WebGL.js");
    }
});

@regClass()
export class IndirectDraw extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        

    }
}