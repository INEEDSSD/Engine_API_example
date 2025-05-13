import { BundleCullingConfig } from "../BundleCullingConfig";
const tempvec0 = new Laya.Vector3();
const tempvec1 = new Laya.Vector3();
const tempQuaternion0 = new Laya.Quaternion();
const tempMatrix = new Laya.Matrix4x4();
export class webglRenderMode extends Laya.Script {
    public config: BundleCullingConfig;

    bundleMeshes: Laya.Mesh[] = [];

    bundleMaterials: Laya.Material[] = [];

    onEnable(): void {
        this.createMeshes();
        this.createMaterials();
        for (var i = 0; i < this.bundleMaterials.length; i++) {
            for (var j = 0; j < this.bundleMeshes.length; j++) {
                for (var index = 0; index < this.config.max_instance_per_drawable; index++) {
                    this.createOneMesheRenderSprite(this.bundleMeshes[j], this.bundleMaterials[i]);
                }

            }
        }
    }

    createMeshes() {
        let cubeMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        this.bundleMeshes.push(cubeMesh);
        let sphereMesh = Laya.PrimitiveMesh.createSphere(0.5);
        this.bundleMeshes.push(sphereMesh);
        let cylinderMesh = Laya.PrimitiveMesh.createCylinder(0.5, 1);
        this.bundleMeshes.push(cylinderMesh);
        let coneMesh = Laya.PrimitiveMesh.createCone(0.5, 1);
        this.bundleMeshes.push(coneMesh);

        this.bundleMeshes.forEach(mesh => {
            mesh.lock = true;
        });
    }

    createMaterials() {
        const createMaterial = (r: number, g: number, b: number) => {
            let material = new Laya.Material();
            material.setShaderName("PBR");
            material.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
            material.setColor("u_AlbedoColor", new Laya.Color(r, g, b, 1.0));
            return material;
        };
        this.bundleMaterials.push(createMaterial(1, 1, 1));
        this.bundleMaterials.push(createMaterial(1, 0, 0));
        this.bundleMaterials.push(createMaterial(0, 1, 0));
        this.bundleMaterials.push(createMaterial(0, 0, 1));
        this.bundleMaterials.push(createMaterial(1, 1, 0));
        this.bundleMaterials.push(createMaterial(1, 0, 1));
        this.bundleMaterials.push(createMaterial(0, 1, 1));
        this.bundleMaterials.push(createMaterial(0.5, 0.5, 0.5));
        this.bundleMaterials.push(createMaterial(0.5, 0, 0));
        this.bundleMaterials.push(createMaterial(0, 0.5, 0));
        this.bundleMaterials.push(createMaterial(0, 0, 0.5));
        this.bundleMaterials.push(createMaterial(0.5, 0.5, 0));
        this.bundleMaterials.push(createMaterial(0.5, 0, 0.5));
        this.bundleMaterials.push(createMaterial(0, 0.5, 0.5));

        this.bundleMaterials.forEach(material => {
            material.lock = true;
        });
    }

    createOneMesheRenderSprite(mesh: Laya.Mesh, material: Laya.Material) {
        let meshsprite = new Laya.Sprite3D();
        let meshfilter = meshsprite.addComponent(Laya.MeshFilter);
        let meshrender = meshsprite.addComponent(Laya.MeshRenderer);
        meshfilter.sharedMesh = mesh;
        meshrender.sharedMaterial = material;
        meshsprite.transform.worldMatrix = this.createOneMatrix();
        this.owner.scene.addChild(meshsprite);
    }

    createOneMatrix() {
        tempvec0.set(
            (Math.random() * 2 - 1) * 100,
            (Math.random() * 2 - 1) * 100,
            (Math.random() * 2 - 1) * 100);
        const scale = Math.random() + 0.5;
        tempvec1.set(scale, scale, scale);//大小 0-1

        let quaternion = tempQuaternion0;
        Laya.Quaternion.createFromYawPitchRoll((Math.random() * 2 - 1) * Math.PI,
            (Math.random() * 2 - 1) * Math.PI,
            (Math.random() * 2 - 1) * Math.PI, quaternion
        );
        let worldMatrix = tempMatrix;
        Laya.Matrix4x4.createAffineTransformation(tempvec0, quaternion, tempvec1, worldMatrix);
        return worldMatrix;
    }

}


