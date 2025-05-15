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
  var __decorateClass = (decorators, target, key, kind) => {
    var result = kind > 1 ? void 0 : kind ? __getOwnPropDesc(target, key) : target;
    for (var i = decorators.length - 1, decorator; i >= 0; i--)
      if (decorator = decorators[i])
        result = (kind ? decorator(target, key, result) : decorator(result)) || result;
    if (kind && result)
      __defProp(target, key, result);
    return result;
  };

  // INDEX:WebGPU.js
  var WebGPU_exports = {};
  __export(WebGPU_exports, {
    BundleCullingRender: () => BundleCullingRender
  });

  // assets/resources/bundleCulling/src/BundleCullingBundleElement.ts
  var _BundleCullingBundleElement = class _BundleCullingBundleElement extends Laya.WebGPURenderElement3D {
    constructor() {
      super();
      this._renderelements = [];
      this._needRecreateRenderBundle = false;
      this._commandBunlde = new Laya.WebGPURenderBundle();
      this.isRender = true;
      this.materialRenderQueue = 2e3;
      this.materialShaderData = new Laya.WebGPUShaderData();
    }
    addRenderElement(element) {
      this._renderelements.push(element);
      this._needRecreateRenderBundle = true;
    }
    _preUpdatePre(context) {
      for (var i = 0; i < this._renderelements.length; i++) {
        this._renderelements[i]._preUpdatePre(context);
      }
    }
    _render(context, command) {
      if (this._needRecreateRenderBundle) {
        this._commandBunlde.startRender(context.destRT, "renderCullBundle");
        for (var i = 0; i < this._renderelements.length; i++) {
          this._renderelements[i]._render(context, this._commandBunlde);
        }
        this._commandBunlde.finish("renderCullBundle");
        this._needRecreateRenderBundle = false;
      }
      command.excuteBundle([this._commandBunlde._gpuBundle]);
      return 0;
    }
  };
  __name(_BundleCullingBundleElement, "BundleCullingBundleElement");
  var BundleCullingBundleElement = _BundleCullingBundleElement;

  // assets/resources/bundleCulling/src/BundleCullingComputeShader.ts
  function initShader(config) {
    let uniformMap = {
      "u_color": Laya.ShaderDataType.Color
    };
    let defaultValue = {
      "u_color": Laya.Color.WHITE
    };
    let vsCode = `
    #include "Camera.glsl";

    #ifdef STORAGEBUFFER
        layout(set = 2, binding = 0) readonly buffer Instances {
            mat4 instances[];
        };

        struct CulledInstances {
            uint indirectIndex;
            uint instances[${config.max_instance_per_drawable}];  // 动态数组
        };
        layout(set = 2, binding = 1) readonly buffer Culled {
            CulledInstances culled;
        };
    #endif

    varying vec3 v_Normal;

    void main()
    {
        vec4 position = a_Position;
        vec3 normal = a_Normal.xyz;
        vec2 uv = a_Texcoord0;
        uint Instanceindex = gl_InstanceIndex;
        uint modelIndex = culled.instances[Instanceindex];
        mat4 worldmat = instances[modelIndex];

        vec3 normalWS = normalize((worldmat * vec4(a_Position.xyz, 0.0)).xyz);
        v_Normal = normalWS;
        vec3 positionWS = (worldmat*position).xyz;
        gl_Position=getPositionCS(positionWS);
        gl_Position=remapPositionZ(gl_Position);
    }
    `;
    let fsCode = `
    varying vec3 v_Normal;
    
    void main()
    {
        vec4 color = u_color;
        vec3 lightDir = vec3(0.25, 0.5, 1.0);
        vec3 lightColor = vec3(1, 1, 1);
        vec3 ambientColor = vec3(0.03, 0.03, 0.03);

        vec3 L = normalize(lightDir);
        float NDotL = max(dot(v_Normal, L), 0.0);
        vec3 surfaceColor = (u_color.rgb * ambientColor) + (u_color.rgb * NDotL);

        gl_FragColor = vec4(surfaceColor,1.0);
    }
    `;
    let shader = Laya.Shader3D.add("colorShader", true, false);
    shader.shaderType = Laya.ShaderFeatureType.D3;
    let subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, uniformMap, defaultValue);
    shader.addSubShader(subShader);
    let forwardPass = subShader.addShaderPass(vsCode, fsCode);
  }
  __name(initShader, "initShader");
  function createComputeShader(config) {
    let code = `struct CameraUniforms {
    frustum: array<vec4f, 6>
}
@group(0) @binding(0) var<uniform> camera:CameraUniforms;

@group(1) @binding(0) var<storage, read> instances: array<mat4x4f>;
struct CulledInstances {
    indirectIndex: u32,
    instances: array<u32>,
}

@group(1) @binding(1) var<storage, read_write> culled: CulledInstances;

struct IndirectArgs {
    drawCount: u32,
    instanceCount: atomic<u32>,
    reserved0: u32,
    reserved1: u32,
    reserved2: u32,
}
@group(1) @binding(2) var<storage, read_write> indirectArgs: array<IndirectArgs>;


fn isVisible(instanceIndex: u32) -> bool {
   
    let model = instances[instanceIndex];
    let pos = model * vec4(0, 0, 0, 1);
    let radius = 1.0; // Just fudging it. None of the meshes should be bigger than this.

    for (var i = 0; i < 6; i++) {
    if (dot(camera.frustum[i], pos) < -radius) {
        return false;
    }
    }
    return true;
}

@compute @workgroup_size(${config.culling_workgroup_size})
fn computeMain(@builtin(global_invocation_id) gloablId: vec3u) {
    let instanceIndex = gloablId.x;
    if (instanceIndex >= ${config.max_instance_per_drawable}) {
    return;
    }

    if (!isVisible(instanceIndex)) { return; }

    let culledIndex = atomicAdd(&indirectArgs[culled.indirectIndex].instanceCount, 1u);
    culled.instances[culledIndex] = instanceIndex;
}
`;
    let uniformCommandMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cameraCull");
    uniformCommandMap.addShaderUniformArray(Laya.Shader3D.propertyNameToID("frustum"), "frustum", Laya.ShaderDataType.Vector4, 6);
    let uniformCommandMap2 = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("CullDataGroup");
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.DeviceBuffer);
    uniformCommandMap2.addShaderUniform(Laya.Shader3D.propertyNameToID("indirectArgs"), "indirectArgs", Laya.ShaderDataType.DeviceBuffer);
    return Laya.ComputeShader.createComputeShader("cullRenderBundle", code, [uniformCommandMap, uniformCommandMap2]);
  }
  __name(createComputeShader, "createComputeShader");
  function createCullingSpriteCommandMap() {
    const spriteParms = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap("cullSprite");
    spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("instances"), "instances", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
    spriteParms.addShaderUniform(Laya.Shader3D.propertyNameToID("culled"), "culled", Laya.ShaderDataType.ReadOnlyDeviceBuffer);
  }
  __name(createCullingSpriteCommandMap, "createCullingSpriteCommandMap");

  // assets/resources/bundleCulling/src/BundleCullingRenderElement.ts
  var _BundleCullingRenderElement = class _BundleCullingRenderElement extends Laya.WebGPURenderElement3D {
    constructor() {
      super();
      this.bindGroup = /* @__PURE__ */ new Map();
      this.cullShaderData = new Laya.WebGPUShaderData();
      this.isRender = true;
    }
    getBaseRender3DNodeBindGroup(context, shaderInstance) {
      let reCreateBindGroup = false;
      let bindGroup = this.bindGroup.get(shaderInstance._id);
      let shaderInstanceID = shaderInstance._id;
      if (!bindGroup) {
        reCreateBindGroup = true;
      } else {
        if (bindGroup.isNeedCreate(this.cullShaderData._getBindGroupLastUpdateMask(`${this.owner._commonUniformMap[0]}_${shaderInstanceID}`))) {
          reCreateBindGroup = true;
        }
      }
      if (reCreateBindGroup) {
        let bindGroupArray = shaderInstance.uniformSetMap.get(2);
        let shaderData = this.cullShaderData;
        let bindGroupEntriys = [];
        for (let com of this.owner._commonUniformMap) {
          let comMap = Laya.LayaGL.renderDeviceFactory.createGlobalUniformMap(com);
          if (comMap._ishasBuffer) {
            shaderData.createSubUniformBuffer(com, com, comMap._idata);
          }
          shaderData.fillBindGroupEntry(com, `${com}_${shaderInstanceID}`, bindGroupEntriys, bindGroupArray);
        }
        let groupLayout = Laya.WebGPUBindGroupHelper.createBindGroupEntryLayout(bindGroupArray);
        let bindGroupDescriptor = {
          label: "GPUBindGroupDescriptor",
          layout: groupLayout,
          entries: bindGroupEntriys
        };
        let bindGroupGpu = Laya.WebGPURenderEngine._instance.getDevice().createBindGroup(bindGroupDescriptor);
        bindGroup = new Laya.WebGPUBindGroup();
        bindGroup.gpuRS = bindGroupGpu;
        bindGroup.createMask = Laya.Stat.loopCount;
        this.bindGroup.set(shaderInstanceID, bindGroup);
      }
      return bindGroup;
    }
    _bindGroup(context, shaderInstance, command) {
      if (shaderInstance.uniformSetMap.get(0).length > 0) {
        command.setBindGroup(0, context._sceneBindGroup);
      }
      if (shaderInstance.uniformSetMap.get(1).length > 0) {
        command.setBindGroup(1, context._cameraBindGroup);
      }
      if (this.owner) {
        let bindgroup = this.getBaseRender3DNodeBindGroup(context, shaderInstance);
        command.setBindGroup(2, bindgroup);
      }
      if (shaderInstance.uniformSetMap.get(3).length > 0) {
        command.setBindGroup(3, this.materialShaderData._createOrGetBindGroupByBindInfoArray("Material", this.subShader.owner.name, shaderInstance, 3, shaderInstance.uniformSetMap.get(3)));
      }
    }
    _preUpdatePre(context) {
      this._compileShader(context);
      let subShader = this.subShader;
      let matSubBuffer = this.materialShaderData.createSubUniformBuffer("Material", subShader.owner.name, subShader._uniformMap);
      if (matSubBuffer.needUpload) {
        matSubBuffer.bufferBlock.needUpload();
      }
    }
    _render(context, command) {
      if (!this.isRender) {
        return 0;
      }
      let shaders = this._shaderInstances.elements;
      for (let j = 0, m = this._shaderInstances.length; j < m; j++) {
        let shaderInstance = shaders[j];
        if (!shaderInstance.complete) {
          continue;
        }
        command.setPipeline(this._getWebGPURenderPipeline(shaderInstance, context.destRT, context));
        this._bindGroup(context, shaderInstance, command);
        this._uploadGeometry(command);
      }
      return 0;
    }
  };
  __name(_BundleCullingRenderElement, "BundleCullingRenderElement");
  var BundleCullingRenderElement = _BundleCullingRenderElement;

  // assets/resources/bundleCulling/src/BundleCullingRender.ts
  var { regClass, property } = Laya;
  var tempvec0 = new Laya.Vector3();
  var tempvec1 = new Laya.Vector3();
  var tempQuaternion0 = new Laya.Quaternion();
  var tempMatrix = new Laya.Matrix4x4();
  var BundleCullingRender = class extends Laya.BaseRender {
    constructor() {
      super();
      this._renderelements = [];
      this.elementChange = false;
      this.cullPlaneData = new Float32Array(4 * 6);
      this.computeCommand = new Laya.ComputeCommandBuffer();
      this.bundleMeshes = [];
      this.bundleMaterials = [];
      this.indirectCullBuffers = [];
      this.instanceBuffer = [];
      this.geometryBounds = new Laya.Bounds(new Laya.Vector3(-1e3, -1e3, -1e3), new Laya.Vector3(1e3, 1e3, 1e3));
      this.ViewCamera = new Laya.Camera(0, 0.1, 500);
      this.ViewCamera.transform.position = new Laya.Vector3(0, 200, 0);
      this.ViewCamera.transform.rotationEuler = new Laya.Vector3(-90, 0, 0);
    }
    get config() {
      return this._config;
    }
    set config(value) {
      this._config = value;
      this.tempFloatArray = new Float32Array(this.config.max_instance_per_drawable * 16);
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
        material.setShaderName("colorShader");
        material.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_OPAQUE;
        material.setColor("u_color", new Laya.Color(r, g, b, 1));
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
    createIndirectDrawBuffer() {
      let drawElementCount = this.bundleMeshes.length * this.bundleMaterials.length;
      let usage = Laya.EDeviceBufferUsage.INDIRECT | Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;
      let byteLength = 20 * drawElementCount;
      this.indirectDrawBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
      this.indirectDrawBuffer.setDataLength(byteLength);
      let indirectDrawArray = new Uint32Array(drawElementCount * 5);
      for (var i = 0; i < this.bundleMaterials.length; i++) {
        for (var j = 0; j < this.bundleMeshes.length; j++) {
          let index = i * this.bundleMeshes.length * 5 + j * 5;
          let mesh = this.bundleMeshes[j];
          indirectDrawArray[index] = mesh.getSubMesh(0).indexCount;
          indirectDrawArray[index + 1] = this.config.max_instance_per_drawable;
          indirectDrawArray[index + 2] = 0;
        }
      }
      this.indirectDrawBuffer.setData(indirectDrawArray.buffer, 0, 0, indirectDrawArray.byteLength);
    }
    createInstanceCullBuffer() {
      let usage = Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;
      let byteLength = this.config.max_instance_per_drawable * Uint32Array.BYTES_PER_ELEMENT + 4;
      let index = 0;
      let tempArray = new Uint32Array(byteLength / Uint32Array.BYTES_PER_ELEMENT);
      for (var i = 0; i < this.bundleMaterials.length; i++) {
        for (var j = 0; j < this.bundleMeshes.length; j++) {
          tempArray[0] = index;
          let indirectCullBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
          indirectCullBuffer.setDataLength(byteLength);
          indirectCullBuffer.setData(tempArray.buffer, 0, 0, tempArray.byteLength);
          this.indirectCullBuffers.push(indirectCullBuffer);
          index++;
        }
      }
    }
    createInstanceDataDeviceBuffer() {
      const createOnePosGeometry = /* @__PURE__ */ __name(() => {
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
      }, "createOnePosGeometry");
      let usage = Laya.EDeviceBufferUsage.STORAGE | Laya.EDeviceBufferUsage.COPY_DST;
      let drawElementCount = this.bundleMeshes.length * this.bundleMaterials.length;
      let bytelength = 16 * 4 * this.config.max_instance_per_drawable;
      for (var i = 0; i < drawElementCount; i++) {
        let deviceBuffer = Laya.LayaGL.renderDeviceFactory.createDeviceBuffer(usage);
        deviceBuffer.setDataLength(bytelength);
        this.instanceBuffer.push(deviceBuffer);
        for (var j = 0; j < this.config.max_instance_per_drawable; j++) {
          let matrix = createOnePosGeometry();
          let offset = j * 16;
          this.tempFloatArray.set(matrix.elements, offset);
        }
        deviceBuffer.setData(this.tempFloatArray.buffer, 0, 0, this.tempFloatArray.byteLength);
      }
    }
    createBundleCullingRenderElements() {
      const createGeometry = /* @__PURE__ */ __name((mesh, index2, deviceBuffer) => {
        let geometry = Laya.LayaGL.renderDeviceFactory.createRenderGeometryElement(Laya.MeshTopology.Triangles, Laya.DrawType.DrawElementIndirect);
        let meshBufferState = mesh.getSubMesh(0).bufferState._deviceBufferState;
        let vertexBuffers = meshBufferState._vertexBuffers.slice();
        let indexBuffer = meshBufferState._bindedIndexBuffer;
        geometry.drawType = Laya.DrawType.DrawElementIndirect;
        geometry.bufferState = Laya.LayaGL.renderDeviceFactory.createBufferState();
        geometry.bufferState.applyState(vertexBuffers, indexBuffer);
        geometry.indexFormat = Laya.IndexFormat.UInt16;
        geometry.setIndirectDrawBuffer(deviceBuffer, index2 * 20);
        return geometry;
      }, "createGeometry");
      const createRenderElement = /* @__PURE__ */ __name((geometry, material) => {
        let element = new BundleCullingRenderElement();
        element.materialShaderData = material.shaderData;
        element.materialId = material.id;
        element.subShader = material.shader.getSubShaderAt(0);
        element.geometry = geometry;
        return element;
      }, "createRenderElement");
      let index = 0;
      for (let i = 0; i < this.bundleMaterials.length; i++) {
        for (let j = 0; j < this.bundleMeshes.length; j++) {
          let mesh = this.bundleMeshes[j];
          let material = this.bundleMaterials[i];
          let geoemtry = createGeometry(mesh, index, this.indirectDrawBuffer);
          let element = createRenderElement(geoemtry, material);
          this.addrenderElement(element);
          element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("instances"), this.instanceBuffer[index]);
          element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("culled"), this.indirectCullBuffers[index]);
          element.cullShaderData.setDeviceBuffer(Laya.Shader3D.propertyNameToID("indirectArgs"), this.indirectDrawBuffer);
          index++;
          console.log(index);
        }
      }
    }
    createComputeCommand() {
      let commandBuffer = this.computeCommand = new Laya.ComputeCommandBuffer();
      let drawlength = this._renderelements.length;
      for (let i = 0; i < drawlength; i++) {
        commandBuffer.addClearBufferCommand(this.indirectDrawBuffer, i * 20 + 4, 4);
      }
      let shaderDefine = Laya.LayaGL.unitRenderModuleDataFactory.createDefineDatas();
      for (let i = 0; i < drawlength; i++) {
        commandBuffer.addDispatchCommand(
          this.computeShader,
          "computeMain",
          shaderDefine,
          [this.renderNode.shaderData, this._renderelements[i].cullShaderData],
          new Laya.Vector3(Math.ceil(this.config.max_instance_per_drawable / this.config.culling_workgroup_size), 1, 1)
        );
      }
    }
    _getcommonUniformMap() {
      return ["cullSprite"];
    }
    onAwake() {
      createCullingSpriteCommandMap();
      initShader(this.config);
      this.computeShader = createComputeShader(this.config);
      this.createMeshes();
      this.createMaterials();
      this.createIndirectDrawBuffer();
      this.createInstanceCullBuffer();
      this.createInstanceDataDeviceBuffer();
      if (this.config.useRenderBundle) {
        this._renderBundleElement = new BundleCullingBundleElement();
        this._renderBundleElement.transform = this.owner.transform;
        this._renderBundleElement.renderShaderData = this.renderNode.shaderData;
        this._renderBundleElement.owner = this.renderNode;
        this.elementChange = true;
      }
      this.createBundleCullingRenderElements();
      this.createComputeCommand();
    }
    onEnable() {
    }
    addrenderElement(element) {
      if (this.config.useRenderBundle) {
        this._renderelements.push(element);
        this._renderBundleElement.addRenderElement(element);
        element.transform = this.owner.transform;
        element.renderShaderData = this.renderNode.shaderData;
        element.owner = this.renderNode;
      } else {
        this._renderelements.push(element);
        element.transform = this.owner.transform;
        element.renderShaderData = this.renderNode.shaderData;
        element.owner = this.renderNode;
        this.elementChange = true;
      }
    }
    _renderUpdate(context) {
      if (this.elementChange) {
        this._setRenderElements();
      }
      let camera = Laya.RenderContext3D._instance.camera;
      let boundFrustum = camera.boundFrustum;
      let fillCullData = /* @__PURE__ */ __name((plane, index) => {
        this.cullPlaneData[index] = plane.normal.x;
        this.cullPlaneData[index + 1] = plane.normal.y;
        this.cullPlaneData[index + 2] = plane.normal.z;
        this.cullPlaneData[index + 3] = plane.distance;
      }, "fillCullData");
      fillCullData(boundFrustum.near, 0);
      fillCullData(boundFrustum.far, 4);
      fillCullData(boundFrustum.left, 8);
      fillCullData(boundFrustum.right, 12);
      fillCullData(boundFrustum.top, 16);
      fillCullData(boundFrustum.bottom, 20);
      this.renderNode.shaderData.setBuffer(Laya.Shader3D.propertyNameToID("frustum"), this.cullPlaneData);
      this.computeCommand.executeCMDs();
      if (this.config.useOverHeadView) {
        camera._shaderValues.setMatrix4x4(Laya.BaseCamera.VIEWPROJECTMATRIX, this.ViewCamera.projectionViewMatrix);
      }
    }
    _setRenderElements() {
      if (this.config.useRenderBundle)
        this.renderNode.setRenderelements([this._renderBundleElement]);
      else
        this.renderNode.setRenderelements(this._renderelements);
      this.elementChange = false;
    }
    onDestroy() {
      super.onDestroy();
      this.bundleMeshes.forEach((mesh) => {
        mesh.lock = false;
        mesh.destroy();
      });
      this.bundleMaterials.forEach((material) => {
        material.lock = false;
        material.destroy();
      });
    }
  };
  __name(BundleCullingRender, "BundleCullingRender");
  BundleCullingRender.posIndex = 0;
  BundleCullingRender = __decorateClass([
    regClass("4eb6ec29-a744-4d83-a656-ebdfeb97188f", "resources/bundleCulling/src/BundleCullingRender.ts")
  ], BundleCullingRender);
  return __toCommonJS(WebGPU_exports);
})();
window.__setBundle_ && window.__setBundle_("MHrn72u2R-aHUoxvsccg7Q", __bundle__)
//# sourceMappingURL=WebGPU.js.map
