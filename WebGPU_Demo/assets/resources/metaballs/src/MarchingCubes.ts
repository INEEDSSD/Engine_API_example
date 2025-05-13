import { Metaballs } from "./Metaballs";

import { MarchingCubesEdgeTable as edgeTable, MarchingCubesTriTable as triTable } from "./MarchingCubesTables";

const indexList = new Uint16Array(12);
const TMP_VEC3_A = new Laya.Vector3(0, 0, 0);
const TMP_VEC3_B = new Laya.Vector3(0, 0, 0);

// Lifted from https://stackoverflow.com/questions/43122082/efficiently-count-the-number-of-bits-in-an-integer-in-javascript/43122214
function bitCount(n: number) {
    n = n - ((n >> 1) & 0x55555555);
    n = (n & 0x33333333) + ((n >> 2) & 0x33333333);
    return ((n + (n >> 4) & 0xF0F0F0F) * 0x1010101) >> 24;
}

const DEFAULT_VOLUME = {
    xMin: -1,
    xMax: 1,
    xStep: 0.1,
    yMin: -1,
    yMax: 1,
    yStep: 0.1,
    zMin: -1,
    zMax: 1,
    zStep: 0.1,
};


export class Volume {

    width: number;
    height: number;
    depth: number;
    values: Float32Array;

    xMin: number = -1;
    xMax: number = 1;
    xStep: number = 0.1;
    yMin: number = -1;
    yMax: number = 1;
    yStep: number = 0.1;
    zMin: number = -1;
    zMax: number = 1;
    zStep: number = 0.1;
};

export class MarchingCubes {

    valueCache: Float32Array = new Float32Array(8);

    normalCache: Float32Array = new Float32Array(8 * 3);

    volume: Volume = new Volume();

    constructor(surfaceVolume: Volume) {

        this.volume.xMin = surfaceVolume.xMin;
        this.volume.xMax = surfaceVolume.xMax;
        this.volume.xStep = surfaceVolume.xStep;
        this.volume.yMin = surfaceVolume.yMin;
        this.volume.yMax = surfaceVolume.yMax;
        this.volume.yStep = surfaceVolume.yStep;
        this.volume.zMin = surfaceVolume.zMin;
        this.volume.zMax = surfaceVolume.zMax;
        this.volume.zStep = surfaceVolume.zStep;

        this.volume.width = Math.floor((this.volume.xMax - this.volume.xMin) / this.volume.xStep) + 1;
        this.volume.height = Math.floor((this.volume.yMax - this.volume.yMin) / this.volume.yStep) + 1;
        this.volume.depth = Math.floor((this.volume.zMax - this.volume.zMin) / this.volume.zStep) + 1;
        this.volume.values = new Float32Array(this.volume.width * this.volume.height * this.volume.depth);
    }

    updateVolume(isosurface: Metaballs) {
        const vol = this.volume;
        const values = vol.values;
        let offset = 0;

        for (let k = 0; k < vol.depth; ++k) {
            const z = vol.zMin + (vol.zStep * k);
            for (let j = 0; j < vol.height; ++j) {
                const y = vol.yMin + (vol.yStep * j);
                for (let i = 0; i < vol.width; ++i) {
                    const x = vol.xMin + (vol.xStep * i);
                    values[offset++] = isosurface.surfaceFunc(x, y, z);
                }
            }
        }
    }

    valueAt(i: number, j: number, k: number) {
        const vol = this.volume;
        const index = i +
            (j * vol.width) +
            (k * vol.width * vol.height);
        return vol.values[index];
    }

    generateMesh(arrays: {
        positions: Float32Array,
        normals: Float32Array,
        indices: Uint32Array,
        vertexOffset: number,
        indexOffset: number,
        maxVertices: number,
    }, threshold = 40) {
        if (!arrays.positions) {
            throw new Error('Must specify a positions array');
        }
        if (!arrays.indices) {
            throw new Error('Must specify a index array');
        }

        if (!arrays.vertexOffset) {
            arrays.vertexOffset = 0;
        }
        if (!arrays.indexOffset) {
            arrays.indexOffset = 0;
        }

        arrays.maxVertices = Math.floor(arrays.positions.length / 6);
        if (arrays.normals) {
            arrays.maxVertices = Math.min(arrays.maxVertices, Math.floor(arrays.normals.length / 6));
        }

        const initialIndexOffset = arrays.indexOffset;

        // Iterate through the full volume and evaluate the isosurface at every
        // point, then generate the triangulated surface based on that.
        const vol = this.volume;
        for (let k = 0; k < vol.depth - 1; ++k) {
            for (let j = 0; j < vol.height - 1; ++j) {
                for (let i = 0; i < vol.width - 1; ++i) {
                    if (!this.marchingCube(i, j, k, threshold, arrays)) {
                        // If we hit this then our output arrays have run out of room and we'll simply have to
                        // abort mid-triangulation. At least you'll get a partially computed surface out of it!
                        return arrays.indexOffset - initialIndexOffset;
                    }
                }
            }
        }
        return arrays.indexOffset - initialIndexOffset;
    }

    marchingCube(i: number, j: number, k: number, threshold: number, arrays: {
        positions: Float32Array,
        normals: Float32Array,
        vertexOffset: number,
        maxVertices: number,
        indices: Uint32Array,
        indexOffset: number,
    }) {
        let vertexOffset = arrays.vertexOffset;
        const vol = this.volume;
        const positions = arrays.positions;
        const normals = arrays.normals;

        const x = vol.xMin + (vol.xStep * i);
        const y = vol.yMin + (vol.yStep * j);
        const z = vol.zMin + (vol.zStep * k);

        const values = this.valueCache;
        values[0] = this.valueAt(i, j, k);
        values[1] = this.valueAt(i + 1, j, k);
        values[2] = this.valueAt(i + 1, j + 1, k);
        values[3] = this.valueAt(i, j + 1, k);
        values[4] = this.valueAt(i, j, k + 1);
        values[5] = this.valueAt(i + 1, j, k + 1);
        values[6] = this.valueAt(i + 1, j + 1, k + 1);
        values[7] = this.valueAt(i, j + 1, k + 1);

        // Determine the index into the edge table which tells us which vertices are
        // inside of the surface.
        let cubeIndex = 0;
        if (values[0] < threshold) cubeIndex |= 1;
        if (values[1] < threshold) cubeIndex |= 2;
        if (values[2] < threshold) cubeIndex |= 4;
        if (values[3] < threshold) cubeIndex |= 8;
        if (values[4] < threshold) cubeIndex |= 16;
        if (values[5] < threshold) cubeIndex |= 32;
        if (values[6] < threshold) cubeIndex |= 64;
        if (values[7] < threshold) cubeIndex |= 128;

        const edges = edgeTable[cubeIndex];

        // Cube is entirely in/out of the surface
        if (edges === 0) {
            return true;
        }
        // Will we run out of space in the vertex buffers?
        const vertCount = bitCount(edges);
        if (vertCount + vertexOffset >= arrays.maxVertices) {
            return false;
        }

        // Generate vertices where the surface intersects the cube
        if (edges & 1) {
            this.interpX(positions, normals, vertexOffset * 3, threshold, i, j, k, values[0], values[1]);
            indexList[0] = vertexOffset++;
        }
        if (edges & 2) {
            this.interpY(positions, normals, vertexOffset * 3, threshold, i + 1, j, k, values[1], values[2]);
            indexList[1] = vertexOffset++;
        }
        if (edges & 4) {
            this.interpX(positions, normals, vertexOffset * 3, threshold, i, j + 1, k, values[3], values[2]);
            indexList[2] = vertexOffset++;
        }
        if (edges & 8) {
            this.interpY(positions, normals, vertexOffset * 3, threshold, i, j, k, values[0], values[3]);
            indexList[3] = vertexOffset++;
        }

        if (edges & 16) {
            this.interpX(positions, normals, vertexOffset * 3, threshold, i, j, k + 1, values[4], values[5]);
            indexList[4] = vertexOffset++;
        }
        if (edges & 32) {
            this.interpY(positions, normals, vertexOffset * 3, threshold, i + 1, j, k + 1, values[5], values[6]);
            indexList[5] = vertexOffset++;
        }
        if (edges & 64) {
            this.interpX(positions, normals, vertexOffset * 3, threshold, i, j + 1, k + 1, values[7], values[6]);
            indexList[6] = vertexOffset++;
        }
        if (edges & 128) {
            this.interpY(positions, normals, vertexOffset * 3, threshold, i, j, k + 1, values[4], values[7]);
            indexList[7] = vertexOffset++;
        }

        if (edges & 256) {
            this.interpZ(positions, normals, vertexOffset * 3, threshold, i, j, k, values[0], values[4]);
            indexList[8] = vertexOffset++;
        }
        if (edges & 512) {
            this.interpZ(positions, normals, vertexOffset * 3, threshold, i + 1, j, k, values[1], values[5]);
            indexList[9] = vertexOffset++;
        }
        if (edges & 1024) {
            this.interpZ(positions, normals, vertexOffset * 3, threshold, i + 1, j + 1, k, values[2], values[6]);
            indexList[10] = vertexOffset++;
        }
        if (edges & 2048) {
            this.interpZ(positions, normals, vertexOffset * 3, threshold, i, j + 1, k, values[3], values[7]);
            indexList[11] = vertexOffset++;
        }

        arrays.vertexOffset = vertexOffset;

        // Record the triangle indices
        let triTableOffset = cubeIndex <<= 4;
        const indexCount = triTable[triTableOffset++];
        if (indexCount >= arrays.indices.length) {
            // Not enough space in the index arrays for any more triangles.
            return false;
        }

        for (let i = 0; i < indexCount; ++i) {
            const index = triTable[triTableOffset++];
            arrays.indices[arrays.indexOffset++] = indexList[index];
        }

        return true;
    }

    interpX(out: Float32Array, nout: Float32Array, offset: number, threshold: number, i: number, j: number, k: number, valp1: number, valp2: number) {
        offset *= 2;

        const vol = this.volume;
        const mu = (threshold - valp1) / (valp2 - valp1);
        out[offset] = vol.xMin + (vol.xStep * i) + (mu * vol.xStep);
        out[offset + 1] = vol.yMin + (vol.yStep * j);
        out[offset + 2] = vol.zMin + (vol.zStep * k);

        if (nout) {
            this.computeNormal(TMP_VEC3_A, 0, i, j, k);
            this.computeNormal(TMP_VEC3_B, 0, i + 1, j, k);

            //   vec3.lerp(TMP_VEC3_A, TMP_VEC3_A, TMP_VEC3_B, mu);
            Laya.Vector3.lerp(TMP_VEC3_A, TMP_VEC3_B, mu, TMP_VEC3_A);
            nout[offset + 3] = TMP_VEC3_A.x;
            nout[offset + 4] = TMP_VEC3_A.y;
            nout[offset + 5] = TMP_VEC3_A.z;
        }
    }

    interpY(out: Float32Array, nout: Float32Array, offset: number, threshold: number, i: number, j: number, k: number, valp1: number, valp2: number) {
        offset *= 2;

        const vol = this.volume;
        const mu = (threshold - valp1) / (valp2 - valp1);
        out[offset] = vol.xMin + (vol.xStep * i);
        out[offset + 1] = vol.yMin + (vol.yStep * j) + (mu * vol.yStep);
        out[offset + 2] = vol.zMin + (vol.zStep * k);

        if (nout) {
            this.computeNormal(TMP_VEC3_A, 0, i, j, k);
            this.computeNormal(TMP_VEC3_B, 0, i, j + 1, k);

            // vec3.lerp(TMP_VEC3_A, TMP_VEC3_A, TMP_VEC3_B, mu);
            Laya.Vector3.lerp(TMP_VEC3_A, TMP_VEC3_B, mu, TMP_VEC3_A);
            nout[offset + 3] = TMP_VEC3_A.x;
            nout[offset + 4] = TMP_VEC3_A.y;
            nout[offset + 5] = TMP_VEC3_A.z;
        }
    }

    interpZ(out: Float32Array, nout: Float32Array, offset: number, threshold: number, i: number, j: number, k: number, valp1: number, valp2: number) {
        offset *= 2;

        const vol = this.volume;
        const mu = (threshold - valp1) / (valp2 - valp1);
        out[offset] = vol.xMin + (vol.xStep * i);
        out[offset + 1] = vol.yMin + (vol.yStep * j);
        out[offset + 2] = vol.zMin + (vol.zStep * k) + (mu * vol.zStep);

        if (nout) {
            this.computeNormal(TMP_VEC3_A, 0, i, j, k);
            this.computeNormal(TMP_VEC3_B, 0, i, j, k + 1);

            // vec3.lerp(TMP_VEC3_A, TMP_VEC3_A, TMP_VEC3_B, mu);
            Laya.Vector3.lerp(TMP_VEC3_A, TMP_VEC3_B, mu, TMP_VEC3_A);
            nout[offset + 3] = TMP_VEC3_A.x;
            nout[offset + 4] = TMP_VEC3_A.y;
            nout[offset + 5] = TMP_VEC3_A.z;
        }
    };

    computeNormal(nout: Laya.Vector3, offset: number, i: number, j: number, k: number) {
        nout.x = this.valueAt(i - 1, j, k) - this.valueAt(i + 1, j, k);
        nout.y = this.valueAt(i, j - 1, k) - this.valueAt(i, j + 1, k);
        nout.z = this.valueAt(i, j, k - 1) - this.valueAt(i, j, k + 1);
    };

}
