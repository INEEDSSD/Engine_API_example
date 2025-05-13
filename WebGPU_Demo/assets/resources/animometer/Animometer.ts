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

    createCommand() {

        if (this.camera) {

            let mesh = GenerateMesh.createTriangleMesh(1);

            let commandBuffer = new Laya.CommandBuffer();

            this.createMaterials(this.settings.numTriangles).then((materials: Laya.Material[]) => {

                for (let i = 0; i < this.settings.numTriangles; i++) {
                    let mat: Laya.Material = materials[i];
                    commandBuffer.drawMesh(mesh, Laya.Matrix4x4.DEFAULT, mat, 0, 0);
                }

                this.camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, commandBuffer);
            });


        }
    }

    onAwake(): void {

        // AnimometerConfig();
        this.createRenderElement();
        // this.createCommand();

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

// Laya.addAfterInitCallback(() => {
//     AnimometerConfig();
//     console.log("AnimometerConfig");
// });