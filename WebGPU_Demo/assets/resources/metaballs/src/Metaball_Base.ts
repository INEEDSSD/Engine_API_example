import { MarchingCubes, Volume } from "./MarchingCubes";
import { Metaballs } from "./Metaballs";

export abstract class Metaball_Base {

    volume: Volume;

    marchingCubeCells: number;

    vertexBufferSize: number;

    indexBufferSize: number;

    indexCount: number;

    constructor(volume: Volume) {
        this.volume = volume;

        this.marchingCubeCells = (volume.width - 1) * (volume.height - 1) * (volume.depth - 1);
        this.vertexBufferSize = (Float32Array.BYTES_PER_ELEMENT * 3) * 12 * this.marchingCubeCells;
        this.indexBufferSize = Uint32Array.BYTES_PER_ELEMENT * 15 * this.marchingCubeCells;

        this.indexCount = 0;
    }

    updateMetaballs(metaballs: Metaballs, marchingCubes: MarchingCubes) {
        marchingCubes.updateVolume(metaballs);
    }

    abstract update(marchingCubes: MarchingCubes): void;

    abstract updateCompute(): void;

    destroy() {
        this.volume = null;
        this.indexCount = 0;
    }

}