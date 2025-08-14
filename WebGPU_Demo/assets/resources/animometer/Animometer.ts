import { GenerateMesh } from "./src/GenerateMesh";
import { AnimometerSettings } from "./src/Settings";

const { regClass, property } = Laya;


/**
 * Project Settings
 *     width: 600
 *     height: 400
 *     scale mode: "noscale"
 */

@regClass()
export class Animometer extends Laya.Script {

    @property(Laya.Camera)
    camera: Laya.Camera;

    declare owner: Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    @property(AnimometerSettings)
    public settings: AnimometerSettings = new AnimometerSettings();

    async createMaterials(numTriangles: number): Promise<Laya.Material[]> {
        return Laya.loader.load("resources/animometer/shader/Animometer.lmat", Laya.Loader.MATERIAL).then((material: Laya.Material) => {
            let materials = new Array<Laya.Material>(numTriangles);
            for (let i = 0; i < numTriangles; i++) {
                let mat: Laya.Material = materials[i] = material.clone();

                mat.setFloat("u_Scale", Math.random() * 0.2 + 0.2);
                mat.setFloat("u_OffsetX", 0.9 * 2 * (Math.random() - 0.5));
                mat.setFloat("u_OffsetY", 0.9 * 2 * (Math.random() - 0.5));
                mat.setFloat("u_Scalar", Math.random() * 1.5 + 0.5);
                mat.setFloat("u_ScalarOffset", Math.random() * 10);
            }
            return materials;
        });
    }

    createRenderElement() {
        const numTriangles = this.settings.numTriangles;

        if (numTriangles > 0) {
            let meshFilter = this.owner.addComponent(Laya.MeshFilter);
            let meshRender = this.owner.addComponent(Laya.MeshRenderer);

            if (meshFilter && meshRender) {

                this.createMaterials(numTriangles).then((materials: Laya.Material[]) => {
                    console.time("createMesh");
                    let mesh = GenerateMesh.createTriangleMesh(numTriangles);
                    console.timeEnd("createMesh");

                    console.time("create render element");
                    meshRender.sharedMaterials = materials;
                    meshFilter.sharedMesh = mesh;
                    console.timeEnd("create render element");
                });
            }
        }
    }

    createTemp() {
        if (this.camera) {

            let mesh = GenerateMesh.createTriangleMesh(1);

        }
    }

    createCommand() {

        if (this.camera) {

            let mesh = GenerateMesh.createTriangleMesh(1);

            let commandBuffer = new Laya.CommandBuffer();

            const numTriangles = this.settings.numTriangles;

            const getBlock = (num: number) => {
                let block = new Laya.MaterialInstancePropertyBlock();
                {

                    let dataArray0 = new Float32Array(4 * num);
                    let dataArray1 = new Float32Array(4 * num);

                    for (let i = 0; i < num; i++) {
                        let u_Scale = Math.random() * 0.2 + 0.2;
                        let u_OffsetX = 0.9 * 2 * (Math.random() - 0.5);
                        let u_OffsetY = 0.9 * 2 * (Math.random() - 0.5);
                        let u_Scalar = Math.random() * 1.5 + 0.5;
                        let u_ScalarOffset = Math.random() * 10;

                        dataArray0[i * 4 + 0] = u_Scale;
                        dataArray0[i * 4 + 1] = u_OffsetX;
                        dataArray0[i * 4 + 2] = u_OffsetY;
                        dataArray0[i * 4 + 3] = u_Scalar;

                        dataArray1[i * 4 + 0] = u_ScalarOffset;
                    }

                    block.setVectorArray("a_Custom0", dataArray0, Laya.InstanceLocation.CUSTOME0);
                    block.setVectorArray("a_Custom1", dataArray1, Laya.InstanceLocation.CUSTOME1);

                }
                return block;
            }


            this.createMaterials(1).then((materials: Laya.Material[]) => {

                let material = materials[0];

                let instanceCount = Math.floor(numTriangles / 1024);

                let leftCount = numTriangles % 1024;

                for (let i = 0; i < instanceCount; i++) {
                    let block = getBlock(1024);
                    commandBuffer.drawMeshInstance(mesh, 0, null, material, 0, block, 1024);
                }
                if (leftCount > 0) {
                    let block = getBlock(leftCount);
                    commandBuffer.drawMeshInstance(mesh, 0, null, material, 0, block, leftCount);
                }

                // for (let i = 0; i < numTriangles; i++) {
                //     // let mat: Laya.Material = materials[i];
                //     // commandBuffer.drawMesh(mesh, Laya.Matrix4x4.DEFAULT, mat, 0, 0);

                // }

                this.camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, commandBuffer);
            });


        }
    }

    onAwake(): void {

        // AnimometerConfig();
        // this.createRenderElement();
        this.createCommand();

    }

    onDisable(): void {
        let meshFilter = this.owner.getComponent(Laya.MeshFilter);
        let meshRender = this.owner.getComponent(Laya.MeshRenderer);

        if (meshFilter && meshRender) {
            let mesh = meshFilter.sharedMesh;
            if (mesh) {
                mesh.destroy();
            }

            let materials = meshRender.sharedMaterials;
            if (materials) {
                for (let i = 0; i < materials.length; i++) {
                    materials[i].destroy();
                }
            }
            meshRender.sharedMaterials = [];
        }
    }

}

const AnimometerConfig = () => {
    Laya.stage.designWidth = 600;
    Laya.stage.designHeight = 600;
    Laya.stage.alignV = "top";
    Laya.stage.alignH = "center";
    Laya.stage.screenMode = "none";
}

Laya.addBeforeInitCallback(() => {
    Laya.Config.fixedFrames = false;
})

Laya.addAfterInitCallback(() => {
    AnimometerConfig();
    console.log("AnimometerConfig");
});