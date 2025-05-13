const { regClass, property } = Laya;


export enum MetaballMethod {
    WriteBufer = "WriteBufer",
    ComputeShader = "ComputeShader",
}

@regClass()
export class MetaballConfig {

    @property({
        type: MetaballMethod
    })
    metaballMethod: MetaballMethod = MetaballMethod.WriteBufer;

    @property(Number)
    a: number = 0;

}