import { MetaballConfig, MetaballMethod } from "./MetaballConfig";
import { MarchingCubes, Volume } from "./src/MarchingCubes";
import { Metaball_Base } from "./src/Metaball_Base";
import { Metaball_ComputeShader } from "./src/Metaball_ComputeShader";
import { Metaball_WriteBuffer } from "./src/Metaball_WriteBuffer";
import { Metaballs } from "./src/Metaballs";


const { regClass, property } = Laya;

@regClass()
export class MetaballScript extends Laya.Script {

    declare owner: Laya.Sprite3D;

    @property(MetaballConfig)
    config: MetaballConfig = new MetaballConfig();

    metaballs: Metaballs;

    marchingCubes: MarchingCubes;

    metaball_method: Metaball_Base;

    meshFilter: Laya.MeshFilter;

    setMetaballStep(step: number) {
        let volume = new Volume();
        volume.xMin = -1.05;
        volume.xMax = 1.05;
        volume.xStep = step;
        volume.yMin = -0.1;
        volume.yMax = 2.5;
        volume.yStep = step;
        volume.zMin = -1.05;
        volume.zMax = 1.1;
        volume.zStep = step;

        this.marchingCubes = new MarchingCubes(volume);

        switch (this.config.metaballMethod) {
            case MetaballMethod.WriteBufer:
                this.metaball_method = new Metaball_WriteBuffer(this.marchingCubes.volume, this.meshFilter);
                break;
            case MetaballMethod.ComputeShader:
                this.metaball_method = new Metaball_ComputeShader(this.marchingCubes.volume, this.meshFilter);
                break;
            default:
                break;
        }



        this.metaballs = new Metaballs();
    }

    updateMetaballs(timestamp: number) {
        this.metaballs.updateBalls(timestamp);

        this.metaball_method.updateMetaballs(this.metaballs, this.marchingCubes);

        this.metaball_method.update(this.marchingCubes);
    }

    clearMetaballs() {
        this.metaballs.clearBalls();
        this.metaball_method.destroy();
    }

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        this.meshFilter = this.owner.getComponent(Laya.MeshFilter) as Laya.MeshFilter;

        this.setMetaballStep(0.075);
    }

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    t: number = 0;
    onUpdate(): void {
        this.updateMetaballs(this.t);
        this.t += 25;

        this.metaball_method.updateCompute();
    }

    onDestroy(): void {
        this.clearMetaballs();
    }
}