"use strict";
var __bundle__ = (() => {
  var __defProp = Object.defineProperty;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __getOwnPropNames = Object.getOwnPropertyNames;
  var __hasOwnProp = Object.prototype.hasOwnProperty;
  var __name = (target, value) => __defProp(target, "name", { value, configurable: true });
  var __export = (target, all) => {
    for (var name in all)
      __defProp(target, name, { get: all[name], enumerable: true });
  };
  var __copyProps = (to, from, except, desc) => {
    if (from && typeof from === "object" || typeof from === "function") {
      for (let key of __getOwnPropNames(from))
        if (!__hasOwnProp.call(to, key) && key !== except)
          __defProp(to, key, { get: () => from[key], enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable });
    }
    return to;
  };
  var __toCommonJS = (mod) => __copyProps(__defProp({}, "__esModule", { value: true }), mod);

  // INDEX:WebGL.scene.js
  var WebGL_scene_exports = {};
  __export(WebGL_scene_exports, {
    webglRenderMode: () => webglRenderMode
  });

  // assets/resources/bundleCulling/webglSrc/webglRenderMode.ts
  var tempvec0 = new Laya.Vector3();
  var tempvec1 = new Laya.Vector3();
  var tempQuaternion0 = new Laya.Quaternion();
  var tempMatrix = new Laya.Matrix4x4();
  var _webglRenderMode = class _webglRenderMode extends Laya.Script {
    constructor() {
      super(...arguments);
      this.bundleMeshes = [];
      this.bundleMaterials = [];
    }
    onEnable() {
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
      this.bundleMeshes.forEach((mesh) => {
        mesh.lock = true;
      });
    }
    createMaterials() {
      const createMaterial = /* @__PURE__ */ __name((r, g, b) => {
        let material = new Laya.Material();
        material.setShaderName("PBR");
        material.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
        material.setColor("u_AlbedoColor", new Laya.Color(r, g, b, 1));
        return material;
      }, "createMaterial");
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
      this.bundleMaterials.forEach((material) => {
        material.lock = true;
      });
    }
    createOneMesheRenderSprite(mesh, material) {
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
        (Math.random() * 2 - 1) * 100
      );
      const scale = Math.random() + 0.5;
      tempvec1.set(scale, scale, scale);
      let quaternion = tempQuaternion0;
      Laya.Quaternion.createFromYawPitchRoll(
        (Math.random() * 2 - 1) * Math.PI,
        (Math.random() * 2 - 1) * Math.PI,
        (Math.random() * 2 - 1) * Math.PI,
        quaternion
      );
      let worldMatrix = tempMatrix;
      Laya.Matrix4x4.createAffineTransformation(tempvec0, quaternion, tempvec1, worldMatrix);
      return worldMatrix;
    }
  };
  __name(_webglRenderMode, "webglRenderMode");
  var webglRenderMode = _webglRenderMode;
  return __toCommonJS(WebGL_scene_exports);
})();
window.__setBundle_ && window.__setBundle_("sJFuuytPR_CBmANg7IGX4w", __bundle__)
//# sourceMappingURL=WebGL.scene.js.map
