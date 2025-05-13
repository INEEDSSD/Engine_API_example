const { regClass, property } = Laya;

@regClass()
export class BundleCullingConfig {

    @property(Number)
    max_instance_per_drawable: number = 1000;

    @property(Number)
    culling_workgroup_size: number = 64;

    @property(Boolean)
    useOverHeadView: boolean = false;

    @property(Boolean)
    useRenderBundle: boolean = true;

}