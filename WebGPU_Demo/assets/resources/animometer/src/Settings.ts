const { regClass, property } = Laya;

@regClass()
export class AnimometerSettings {

    @property(Number)
    numTriangles: number;

    @property(Boolean)
    renderBundles: boolean = false;

    @property(Boolean)
    dynamicOffsets: boolean = false;

}