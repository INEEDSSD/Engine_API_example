"use strict";
(() => {
  var __defProp = Object.defineProperty;
  var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
  var __name = (target, value) => __defProp(target, "name", { value, configurable: true });
  var __decorateClass = (decorators, target, key, kind) => {
    var result = kind > 1 ? void 0 : kind ? __getOwnPropDesc(target, key) : target;
    for (var i = decorators.length - 1, decorator; i >= 0; i--)
      if (decorator = decorators[i])
        result = (kind ? decorator(target, key, result) : decorator(result)) || result;
    if (kind && result)
      __defProp(target, key, result);
    return result;
  };

  // src/CameraMove.ts
  var { regClass, property } = Laya;
  var CameraMove = class extends Laya.Script3D {
    constructor() {
      super();
      /** @private */
      this.lastMouseX = 0;
      this.lastMouseY = 0;
      this.yawPitchRoll = new Laya.Vector3();
      this._tempVector3 = new Laya.Vector3();
      this.resultRotation = new Laya.Quaternion();
      this.tempRotationZ = new Laya.Quaternion();
      this.tempRotationX = new Laya.Quaternion();
      this.tempRotationY = new Laya.Quaternion();
      this.isMouseDown = false;
      this.rotaionSpeed = 8e-5;
      this.camera = new Laya.Camera();
      this.scene = new Laya.Scene3D();
      this.speed = 0.01;
    }
    /**
     * @private
     */
    _updateRotation() {
      if (Math.abs(this.yawPitchRoll.y) < 1.5) {
        Laya.Quaternion.createFromYawPitchRoll(this.yawPitchRoll.x, this.yawPitchRoll.y, this.yawPitchRoll.z, this.tempRotationZ);
        this.tempRotationZ.cloneTo(this.camera.transform.localRotation);
        this.camera.transform.localRotation = this.camera.transform.localRotation;
      }
    }
    //YPR To Quaternion
    /**
     * @inheritDoc
     */
    onAwake() {
      Laya.stage.on(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.on(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
      this.camera = this.owner;
    }
    /**
     * @inheritDoc
     */
    onUpdate() {
      var elapsedTime = Laya.timer.delta;
      if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
        Laya.InputManager.hasKeyDown(87) && this.moveForward(-this.speed * elapsedTime);
        Laya.InputManager.hasKeyDown(83) && this.moveForward(this.speed * elapsedTime);
        Laya.InputManager.hasKeyDown(65) && this.moveRight(-this.speed * elapsedTime);
        Laya.InputManager.hasKeyDown(68) && this.moveRight(this.speed * elapsedTime);
        Laya.InputManager.hasKeyDown(81) && this.moveVertical(this.speed * elapsedTime);
        Laya.InputManager.hasKeyDown(69) && this.moveVertical(-this.speed * elapsedTime);
        var offsetX = Laya.stage.mouseX - this.lastMouseX;
        var offsetY = Laya.stage.mouseY - this.lastMouseY;
        if (this.isMouseDown) {
          var yprElem = this.yawPitchRoll;
          yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
          yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
          this._updateRotation();
        }
      }
      this.lastMouseX = Laya.stage.mouseX;
      this.lastMouseY = Laya.stage.mouseY;
    }
    /**
     * @inheritDoc
     */
    onDestroy() {
      Laya.stage.off(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
    }
    mouseDown(e) {
      this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);
      this.lastMouseX = Laya.stage.mouseX;
      this.lastMouseY = Laya.stage.mouseY;
      this.isMouseDown = true;
    }
    mouseUp(e) {
      this.isMouseDown = false;
    }
    mouseOut(e) {
      this.isMouseDown = false;
    }
    /**
     * 向前移动。
     * @param distance 移动距离。
     */
    moveForward(distance) {
      this._tempVector3.x = this._tempVector3.y = 0;
      this._tempVector3.z = distance;
      this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向右移动。
     * @param distance 移动距离。
     */
    moveRight(distance) {
      this._tempVector3.y = this._tempVector3.z = 0;
      this._tempVector3.x = distance;
      this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向上移动。
     * @param distance 移动距离。
     */
    moveVertical(distance) {
      this._tempVector3.x = this._tempVector3.z = 0;
      this._tempVector3.y = distance;
      this.camera.transform.translate(this._tempVector3, false);
    }
  };
  __name(CameraMove, "CameraMove");
  __decorateClass([
    property("number")
  ], CameraMove.prototype, "speed", 2);
  CameraMove = __decorateClass([
    regClass("fd46c0e3-b05d-44fb-971a-9b00b0a1c5fd", "../src/CameraMove.ts")
  ], CameraMove);

  // src/multMatDemo/multMatDemo.ts
  var { regClass: regClass2, property: property2 } = Laya;
  var multMatDemo = class extends Laya.Script {
    constructor() {
      super(...arguments);
      //declare owner : Laya.Sprite3D;
      //declare owner : Laya.Sprite;
      this.text = "";
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    onEnable() {
      this.mat1 = new Laya.BlinnPhongMaterial();
      this.mat2 = new Laya.PBRStandardMaterial();
      this.mat2.albedoColor = new Laya.Color(1, 0, 0, 1);
      this.mat3 = new Laya.UnlitMaterial();
      Laya.Texture2D.load("resources/images/layabox.png", Laya.Handler.create(this, (texture) => {
        texture.wrapModeU = Laya.WrapMode.Clamp;
        texture.wrapModeV = Laya.WrapMode.Repeat;
        texture.filterMode = Laya.FilterMode.Bilinear;
        texture.anisoLevel = 2;
        this.mat1.albedoTexture = texture;
        var tilingOffset = this.mat1.tilingOffset;
        tilingOffset.setValue(3, 3, 0, 0);
        this.mat1.tilingOffset = tilingOffset;
        this.createMoreBox();
      }));
    }
    createMoreBox() {
      let xLine = 10;
      let yLine = 10;
      let zLine = 10;
      let oriVec3 = new Laya.Vector3(-5, -10, -20);
      let mtls = [this.mat1, this.mat2, this.mat3];
      let mid = 0;
      for (let x = 0; x < xLine; x++) {
        for (let y = 0; y < yLine; y++) {
          for (let z = 0; z < zLine; z++) {
            var box = this.sprite3D.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(0.5, 0.5, 0.5)));
            box.transform.position = new Laya.Vector3(x + oriVec3.x, y + oriVec3.y, z + oriVec3.z);
            box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
            box.meshRenderer.sharedMaterial = mtls[mid++ % 3];
          }
        }
      }
    }
  };
  __name(multMatDemo, "multMatDemo");
  __decorateClass([
    property2({ type: Laya.Sprite3D })
  ], multMatDemo.prototype, "sprite3D", 2);
  multMatDemo = __decorateClass([
    regClass2("ed695ad4-d762-4323-a0aa-5822e070c8f2", "../src/multMatDemo/multMatDemo.ts")
  ], multMatDemo);

  // src/multPrefabDemo/Main.ts
  var { regClass: regClass3, property: property3 } = Laya;
  var Main = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.customShader3DCount = 10;
      this.customShader3DChangeColor = true;
      this.meshCount = 172;
      this.insCount = 1010;
      this.prefab3DTransprent = null;
      this.prefab3DTransparentCount = 45;
      this.ChangeTransform = true;
      this.prefab3DOpaque = null;
      this.prefab3DOpaqueCount = 45;
      this.prefab2D = null;
      this.prefab2DCount = 5;
      this.transCount = 20;
      this.meshs = [];
      this.insMeshRoot = new Laya.Sprite3D();
      this.opaqueRoot = new Laya.Sprite3D();
      this.transparentRoot = new Laya.Sprite3D();
      // 存储需要动画的对象
      this.animatedObjects = [];
    }
    onStart() {
      console.log("Game start");
    }
    onEnable() {
      Main.customShader3DChangeColor = this.customShader3DChangeColor;
      Main.customShader3DCount = this.customShader3DCount;
      this.owner.addChild(this.insMeshRoot);
      this.owner.addChild(this.opaqueRoot);
      this.owner.addChild(this.transparentRoot);
      this.owner.addChild(this.custom3DShaderRoot);
      this.createMeshs();
      this.createInstance();
      this.createPrefab2D();
      this.createPrefab3D();
      Laya.loader.load("resources/prefabUI/UIContiner.lh").then(() => {
        let uiRes = Laya.loader.getRes("resources/prefabUI/UIContiner.lh");
        let uiIns = uiRes.create();
        uiIns.scale(0.6, 0.6);
        this.boxBagUI.addChild(uiIns);
        this.bagBtn.on(Laya.Event.CLICK, this, () => {
          if (this.boxBagUI.visible) {
            this.bagBtn.label = "打开背包界面";
          } else {
            this.bagBtn.label = "关闭背包界面";
          }
          this.boxBagUI.visible = !this.boxBagUI.visible;
        });
      });
      this.custom2DShaderBtn.on(Laya.Event.CLICK, this, () => {
        if (this.boxShader2D.visible) {
          this.custom2DShaderBtn.label = "打开自定义2Dshader绘制色块";
        } else {
          this.custom2DShaderBtn.label = "关闭自定义2Dshader绘制色块";
        }
        this.boxShader2D.visible = !this.boxShader2D.visible;
      });
      this.insMeshBtn.on(Laya.Event.CLICK, this, () => {
        if (this.insMeshRoot.active) {
          this.insMeshBtn.label = "打开instanceMesh";
        } else {
          this.insMeshBtn.label = "关闭instanceMesh";
        }
        this.insMeshRoot.active = !this.insMeshRoot.active;
      });
      this.custom3DShaderBtn.on(Laya.Event.CLICK, this, () => {
        if (this.custom3DShaderRoot.active) {
          this.custom3DShaderBtn.label = "打开自定义3Dshader";
        } else {
          this.custom3DShaderBtn.label = "关闭自定义3Dshader";
        }
        this.custom3DShaderRoot.active = !this.custom3DShaderRoot.active;
      });
      this.opaqueBtn.on(Laya.Event.CLICK, this, () => {
        if (this.opaqueRoot.active) {
          this.opaqueBtn.label = "打开不透明预制体实例";
        } else {
          this.opaqueBtn.label = "关闭不透明预制体实例";
        }
        this.opaqueRoot.active = !this.opaqueRoot.active;
      });
      this.transparentBtn.on(Laya.Event.CLICK, this, () => {
        if (this.transparentRoot.active) {
          this.transparentBtn.label = "打开透明预制体实例";
        } else {
          this.transparentBtn.label = "关闭透明预制体实例";
        }
        this.transparentRoot.active = !this.transparentRoot.active;
      });
    }
    createPrefab2D() {
      if (!this.prefab2D)
        return;
      let ins2Ds = [];
      for (let i = 0; i < this.prefab2DCount; i++) {
        let ins = this.prefab2D.create();
        ins2Ds.push(ins);
        let boxWidth = this.boxShader2D.width;
        let boxHeight = this.boxShader2D.height;
        let itemWidth = ins.width;
        let itemHeight = ins.height;
        let horizontalSpacing = 20;
        let verticalSpacing = 20;
        let maxItemsPerRow = Math.floor((boxWidth + horizontalSpacing) / (itemWidth + horizontalSpacing));
        let currentRow = Math.floor(i / maxItemsPerRow);
        let currentCol = i % maxItemsPerRow;
        let xPosition = currentCol * (itemWidth + horizontalSpacing) + horizontalSpacing;
        let yPosition = currentRow * (itemHeight + verticalSpacing) + verticalSpacing;
        ins.x = xPosition;
        ins.y = yPosition;
        this.boxShader2D.addChild(ins);
      }
    }
    createPrefab3D() {
      if (!this.prefab3DTransprent)
        return;
      this.animatedObjects = [];
      for (let i = 0; i < this.prefab3DTransparentCount; i++) {
        let ins = this.prefab3DTransprent.create();
        let x = (Math.random() - 0.5) * 50;
        let z = (Math.random() - 0.5) * 50;
        let y = 0.5;
        ins.transform.position = new Laya.Vector3(x, y, z);
        if (i < this.transCount && this.ChangeTransform) {
          this.animatedObjects.push({
            obj: ins,
            baseAngle: 0,
            // 基础角度
            speed: 0.02 + i * 1e-3
            // 不同的旋转速度
          });
        }
        this.transparentRoot.addChild(ins);
      }
      for (let i = 0; i < this.prefab3DOpaqueCount; i++) {
        let ins = this.prefab3DOpaque.create();
        let x = (Math.random() - 0.5) * 50;
        let z = (Math.random() - 0.5) * 50;
        let y = 0;
        ins.transform.position = new Laya.Vector3(x, y, z);
        this.opaqueRoot.addChild(ins);
      }
    }
    // 每帧更新动画对象位置
    onUpdate() {
      this.updateAnimatedObjects();
    }
    // 更新动画对象位置的方法
    updateAnimatedObjects() {
      if (this.animatedObjects.length === 0)
        return;
      let currentTime = Laya.timer.currTimer * 1e-3;
      let cubeCenter = { x: 0, y: 10, z: 0 };
      let cubeHalfSize = 15;
      this.animatedObjects.forEach((item, index) => {
        let timeOffset = currentTime + index;
        let x = cubeCenter.x + Math.sin(timeOffset * 0.5) * cubeHalfSize;
        let y = cubeCenter.y + Math.sin(timeOffset * 0.3 + index * 0.1) * cubeHalfSize;
        let z = cubeCenter.z + Math.sin(timeOffset * 0.7 + index * 0.2) * cubeHalfSize;
        item.obj.transform.position = new Laya.Vector3(x, y, z);
      });
    }
    createInstance() {
      Laya.loader.load("resources/images/layabox.png").then((res) => {
        var count = this.insCount;
        var boxMesh = Laya.PrimitiveMesh.createBox(1, 1, 1);
        var mat = new Laya.UnlitMaterial();
        mat.albedoTexture = res;
        let cubeWidth = 60;
        let cubeDepth = 60;
        let cubeHeight = 20;
        for (let i = 0; i < count; i++) {
          let sp = new Laya.Sprite3D();
          let mesh = sp.addComponent(Laya.MeshFilter);
          let render = sp.addComponent(Laya.MeshRenderer);
          render.castShadow = true;
          render.receiveShadow = true;
          boxMesh = this.meshs[i % this.meshs.length];
          mesh.sharedMesh = boxMesh;
          render.material = mat;
          let randomX = (Math.random() - 0.5) * cubeWidth - 10;
          let randomY = (Math.random() - 0.5) * cubeHeight + 10;
          let randomZ = (Math.random() - 0.5) * cubeDepth - 10;
          sp.transform.localPosition = new Laya.Vector3(randomX, randomY, randomZ);
          this.insMeshRoot.addChild(sp);
        }
      });
    }
    createMeshs() {
      var meshType = this.meshCount;
      this.meshs = [];
      for (let i = 0; i < meshType; i++) {
        var vertexDeclaration = Laya.VertexMesh.getVertexDeclaration("POSITION,NORMAL,UV");
        var vertices;
        var indices;
        var offsetX = i % 5 * 3;
        var offsetZ = Math.floor(i / 5) * 3;
        var offsetY = Math.sin(i * 0.5) * 2;
        vertices = this.createBoxVerticesWithOffset(offsetX, offsetY, offsetZ, i);
        indices = this.createBoxIndices();
        var mesh = Laya.PrimitiveMesh._createMesh(vertexDeclaration, vertices, indices);
        this.meshs.push(mesh);
      }
      console.log(`创建了 ${meshType} 个mesh`);
    }
    // 创建立方体顶点数据
    createBoxVertices() {
      var long = 1;
      var height = 1;
      var width = 1;
      var halfLong = long / 2;
      var halfHeight = height / 2;
      var halfWidth = width / 2;
      return new Float32Array([
        //上
        -halfLong,
        halfHeight,
        -halfWidth,
        0,
        1,
        0,
        0,
        0,
        halfLong,
        halfHeight,
        -halfWidth,
        0,
        1,
        0,
        1,
        0,
        halfLong,
        halfHeight,
        halfWidth,
        0,
        1,
        0,
        1,
        1,
        -halfLong,
        halfHeight,
        halfWidth,
        0,
        1,
        0,
        0,
        1,
        //下
        -halfLong,
        -halfHeight,
        -halfWidth,
        0,
        -1,
        0,
        0,
        1,
        halfLong,
        -halfHeight,
        -halfWidth,
        0,
        -1,
        0,
        1,
        1,
        halfLong,
        -halfHeight,
        halfWidth,
        0,
        -1,
        0,
        1,
        0,
        -halfLong,
        -halfHeight,
        halfWidth,
        0,
        -1,
        0,
        0,
        0,
        //左
        -halfLong,
        halfHeight,
        -halfWidth,
        -1,
        0,
        0,
        0,
        0,
        -halfLong,
        halfHeight,
        halfWidth,
        -1,
        0,
        0,
        1,
        0,
        -halfLong,
        -halfHeight,
        halfWidth,
        -1,
        0,
        0,
        1,
        1,
        -halfLong,
        -halfHeight,
        -halfWidth,
        -1,
        0,
        0,
        0,
        1,
        //右
        halfLong,
        halfHeight,
        -halfWidth,
        1,
        0,
        0,
        1,
        0,
        halfLong,
        halfHeight,
        halfWidth,
        1,
        0,
        0,
        0,
        0,
        halfLong,
        -halfHeight,
        halfWidth,
        1,
        0,
        0,
        0,
        1,
        halfLong,
        -halfHeight,
        -halfWidth,
        1,
        0,
        0,
        1,
        1,
        //前
        -halfLong,
        halfHeight,
        halfWidth,
        0,
        0,
        1,
        0,
        0,
        halfLong,
        halfHeight,
        halfWidth,
        0,
        0,
        1,
        1,
        0,
        halfLong,
        -halfHeight,
        halfWidth,
        0,
        0,
        1,
        1,
        1,
        -halfLong,
        -halfHeight,
        halfWidth,
        0,
        0,
        1,
        0,
        1,
        //后
        -halfLong,
        halfHeight,
        -halfWidth,
        0,
        0,
        -1,
        1,
        0,
        halfLong,
        halfHeight,
        -halfWidth,
        0,
        0,
        -1,
        0,
        0,
        halfLong,
        -halfHeight,
        -halfWidth,
        0,
        0,
        -1,
        0,
        1,
        -halfLong,
        -halfHeight,
        -halfWidth,
        0,
        0,
        -1,
        1,
        1
      ]);
    }
    // 创建立方体索引数据
    createBoxIndices() {
      return new Uint16Array([
        //上
        0,
        1,
        2,
        2,
        3,
        0,
        //下
        4,
        7,
        6,
        6,
        5,
        4,
        //左
        8,
        9,
        10,
        10,
        11,
        8,
        //右
        12,
        15,
        14,
        14,
        13,
        12,
        //前
        16,
        17,
        18,
        18,
        19,
        16,
        //后
        20,
        23,
        22,
        22,
        21,
        20
      ]);
    }
    // 创建平面顶点数据
    createPlaneVertices() {
      var size = 1;
      var halfSize = size / 2;
      return new Float32Array([
        // 位置(3) + 法线(3) + UV(2)
        -halfSize,
        0,
        -halfSize,
        0,
        1,
        0,
        0,
        0,
        // 左下
        halfSize,
        0,
        -halfSize,
        0,
        1,
        0,
        1,
        0,
        // 右下
        halfSize,
        0,
        halfSize,
        0,
        1,
        0,
        1,
        1,
        // 右上
        -halfSize,
        0,
        halfSize,
        0,
        1,
        0,
        0,
        1
        // 左上
      ]);
    }
    // 创建平面索引数据
    createPlaneIndices() {
      return new Uint16Array([
        0,
        1,
        2,
        2,
        3,
        0
      ]);
    }
    // 创建三角形顶点数据
    createTriangleVertices() {
      var size = 1;
      return new Float32Array([
        // 位置(3) + 法线(3) + UV(2)
        0,
        size,
        0,
        0,
        1,
        0,
        0.5,
        1,
        // 顶点
        -size,
        -size,
        0,
        0,
        1,
        0,
        0,
        0,
        // 左下
        size,
        -size,
        0,
        0,
        1,
        0,
        1,
        0
        // 右下
      ]);
    }
    // 创建三角形索引数据
    createTriangleIndices() {
      return new Uint16Array([0, 1, 2]);
    }
    // 创建四面体顶点数据
    createTetrahedronVertices() {
      var size = 1;
      return new Float32Array([
        // 位置(3) + 法线(3) + UV(2)
        0,
        size,
        0,
        0,
        1,
        0,
        0.5,
        1,
        // 顶点
        -size,
        -size,
        size,
        0,
        -1,
        1,
        0,
        0,
        // 前左
        size,
        -size,
        size,
        0,
        -1,
        1,
        1,
        0,
        // 前右
        0,
        -size,
        -size,
        0,
        -1,
        -1,
        0.5,
        0
        // 后中
      ]);
    }
    // 创建四面体索引数据
    createTetrahedronIndices() {
      return new Uint16Array([
        0,
        1,
        2,
        // 前面
        0,
        2,
        3,
        // 右面  
        0,
        3,
        1,
        // 左面
        1,
        3,
        2
        // 底面
      ]);
    }
    // 创建立方体顶点数据（带偏移，顶点范围限制在-0.5到0.5）
    createBoxVerticesWithOffset(offsetX, offsetY, offsetZ, i) {
      var halfSize = 0.5;
      var factor = i * 0.1;
      var vertexVariation = [
        // 基于i值创建不同的顶点变化
        Math.sin(factor) * 0.1,
        // x方向变化
        Math.cos(factor) * 0.1,
        // y方向变化  
        Math.sin(factor * 2) * 0.1
        // z方向变化
      ];
      return new Float32Array([
        //上面 - 添加顶点变化
        -halfSize + vertexVariation[0],
        halfSize + vertexVariation[1],
        -halfSize + vertexVariation[2],
        0,
        1,
        0,
        0,
        0,
        halfSize + vertexVariation[0],
        halfSize + vertexVariation[1],
        -halfSize + vertexVariation[2],
        0,
        1,
        0,
        1,
        0,
        halfSize + vertexVariation[0],
        halfSize + vertexVariation[1],
        halfSize + vertexVariation[2],
        0,
        1,
        0,
        1,
        1,
        -halfSize + vertexVariation[0],
        halfSize + vertexVariation[1],
        halfSize + vertexVariation[2],
        0,
        1,
        0,
        0,
        1,
        //下面
        -halfSize - vertexVariation[0],
        -halfSize - vertexVariation[1],
        -halfSize - vertexVariation[2],
        0,
        -1,
        0,
        0,
        1,
        halfSize - vertexVariation[0],
        -halfSize - vertexVariation[1],
        -halfSize - vertexVariation[2],
        0,
        -1,
        0,
        1,
        1,
        halfSize - vertexVariation[0],
        -halfSize - vertexVariation[1],
        halfSize - vertexVariation[2],
        0,
        -1,
        0,
        1,
        0,
        -halfSize - vertexVariation[0],
        -halfSize - vertexVariation[1],
        halfSize - vertexVariation[2],
        0,
        -1,
        0,
        0,
        0,
        //左面
        -halfSize + vertexVariation[2],
        halfSize + vertexVariation[0],
        -halfSize + vertexVariation[1],
        -1,
        0,
        0,
        0,
        0,
        -halfSize + vertexVariation[2],
        halfSize + vertexVariation[0],
        halfSize + vertexVariation[1],
        -1,
        0,
        0,
        1,
        0,
        -halfSize + vertexVariation[2],
        -halfSize - vertexVariation[0],
        halfSize + vertexVariation[1],
        -1,
        0,
        0,
        1,
        1,
        -halfSize + vertexVariation[2],
        -halfSize - vertexVariation[0],
        -halfSize + vertexVariation[1],
        -1,
        0,
        0,
        0,
        1,
        //右面
        halfSize - vertexVariation[2],
        halfSize - vertexVariation[0],
        -halfSize - vertexVariation[1],
        1,
        0,
        0,
        1,
        0,
        halfSize - vertexVariation[2],
        halfSize - vertexVariation[0],
        halfSize - vertexVariation[1],
        1,
        0,
        0,
        0,
        0,
        halfSize - vertexVariation[2],
        -halfSize + vertexVariation[0],
        halfSize - vertexVariation[1],
        1,
        0,
        0,
        0,
        1,
        halfSize - vertexVariation[2],
        -halfSize + vertexVariation[0],
        -halfSize - vertexVariation[1],
        1,
        0,
        0,
        1,
        1,
        //前面
        -halfSize + vertexVariation[1],
        halfSize + vertexVariation[2],
        halfSize + vertexVariation[0],
        0,
        0,
        1,
        0,
        0,
        halfSize + vertexVariation[1],
        halfSize + vertexVariation[2],
        halfSize + vertexVariation[0],
        0,
        0,
        1,
        1,
        0,
        halfSize + vertexVariation[1],
        -halfSize - vertexVariation[2],
        halfSize + vertexVariation[0],
        0,
        0,
        1,
        1,
        1,
        -halfSize + vertexVariation[1],
        -halfSize - vertexVariation[2],
        halfSize + vertexVariation[0],
        0,
        0,
        1,
        0,
        1,
        //后面
        -halfSize - vertexVariation[1],
        halfSize - vertexVariation[2],
        -halfSize - vertexVariation[0],
        0,
        0,
        -1,
        1,
        0,
        halfSize - vertexVariation[1],
        halfSize - vertexVariation[2],
        -halfSize - vertexVariation[0],
        0,
        0,
        -1,
        0,
        0,
        halfSize - vertexVariation[1],
        -halfSize + vertexVariation[2],
        -halfSize - vertexVariation[0],
        0,
        0,
        -1,
        0,
        1,
        -halfSize - vertexVariation[1],
        -halfSize + vertexVariation[2],
        -halfSize - vertexVariation[0],
        0,
        0,
        -1,
        1,
        1
      ]);
    }
  };
  __name(Main, "Main");
  Main.customShader3DCount = 10;
  Main.customShader3DChangeColor = true;
  __decorateClass([
    property3({ type: Number, tips: "自定义3DShader的个数，根据个数创建球状对象并变化颜色" })
  ], Main.prototype, "customShader3DCount", 2);
  __decorateClass([
    property3({ type: Boolean, tips: "自定义3DShader材质球是否自动变换颜色" })
  ], Main.prototype, "customShader3DChangeColor", 2);
  __decorateClass([
    property3({ type: Number, tips: "instanceMesh的种类数量，用于创建不同形状的mesh" })
  ], Main.prototype, "meshCount", 2);
  __decorateClass([
    property3({ type: Number, tips: "instance的数量，除以meshCount就是每个instance合批的数量" })
  ], Main.prototype, "insCount", 2);
  __decorateClass([
    property3({ type: Laya.Prefab, tips: "透明预制体，会合批使用的是默认材质" })
  ], Main.prototype, "prefab3DTransprent", 2);
  __decorateClass([
    property3({ type: Number, tips: "透明预制体的数量" })
  ], Main.prototype, "prefab3DTransparentCount", 2);
  __decorateClass([
    property3({ type: Boolean, tips: "不透明预制体实例是否自动变换位置" })
  ], Main.prototype, "ChangeTransform", 2);
  __decorateClass([
    property3({ type: Laya.Prefab, tips: "不透明预制体，会合批，引擎默认材质与mesh" })
  ], Main.prototype, "prefab3DOpaque", 2);
  __decorateClass([
    property3({ type: Number, tips: "不透明预制体的数量，可以用来调整面数内容" })
  ], Main.prototype, "prefab3DOpaqueCount", 2);
  __decorateClass([
    property3({ type: Laya.Prefab, tips: "2D预制体，单个预制体上面是五个自定义shader内容" })
  ], Main.prototype, "prefab2D", 2);
  __decorateClass([
    property3({ type: Number, tips: "2D预制体的数量" })
  ], Main.prototype, "prefab2DCount", 2);
  __decorateClass([
    property3({ type: Number, tips: "每帧位移的透明预制体实例个数,测试数据更新" })
  ], Main.prototype, "transCount", 2);
  __decorateClass([
    property3({ type: Laya.Sprite3D, tips: "用来放置自定义3Dshader的绘制子节点" })
  ], Main.prototype, "custom3DShaderRoot", 2);
  __decorateClass([
    property3({ type: Laya.Box, tips: "用来放置自定义2Dshader的绘制子节点" })
  ], Main.prototype, "boxShader2D", 2);
  __decorateClass([
    property3({ type: Laya.Box, tips: "用来放置背包界面的绘制子节点" })
  ], Main.prototype, "boxBagUI", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换背包界面显示隐藏的按钮" })
  ], Main.prototype, "bagBtn", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换自定义2Dshader绘制色块的按钮" })
  ], Main.prototype, "custom2DShaderBtn", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换instanceMesh的按钮" })
  ], Main.prototype, "insMeshBtn", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换自定义3Dshader的按钮" })
  ], Main.prototype, "custom3DShaderBtn", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换不透明预制体实例的按钮" })
  ], Main.prototype, "opaqueBtn", 2);
  __decorateClass([
    property3({ type: Laya.Button, tips: "用来切换透明预制体实例的按钮" })
  ], Main.prototype, "transparentBtn", 2);
  Main = __decorateClass([
    regClass3("7bad1742-6eed-4d8d-81c0-501dc5bf03d6", "../src/multPrefabDemo/Main.ts")
  ], Main);

  // src/multPrefabDemo/baseRenderScript.ts
  var { regClass: regClass4, property: property4 } = Laya;
  var baseRenderScript = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.text = "";
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    onEnable() {
      let mesh2D = this.createBoxMesh2D(50, 50);
      let baserender = this.owner.getComponent(Laya.Mesh2DRender);
      baserender.sharedMesh = mesh2D;
    }
    /**
     * 生成一个圆形
     * @param radius 
     * @param numSegments 
     * @returns 
     */
    createCircleMesh2D(radius, numSegments) {
      const twoPi = Math.PI * 2;
      let vertexs = new Float32Array((numSegments + 1) * 5);
      let index = new Uint16Array((numSegments + 1) * 3);
      var pos = 0;
      for (let i2 = 0; i2 < numSegments; i2++, pos += 5) {
        const angle = twoPi * i2 / numSegments;
        var x = vertexs[pos + 0] = radius * Math.cos(angle);
        var y = vertexs[pos + 1] = radius * Math.sin(angle);
        vertexs[pos + 2] = 0;
        vertexs[pos + 3] = 0.5 + x / (2 * radius);
        vertexs[pos + 4] = 0.5 + y / (2 * radius);
      }
      vertexs[pos] = 0;
      vertexs[pos + 1] = 0;
      vertexs[pos + 2] = 0;
      vertexs[pos + 3] = 0.5;
      vertexs[pos + 4] = 0.5;
      for (var i = 1, ibIndex = 0; i < numSegments; i++, ibIndex += 3) {
        index[ibIndex] = i;
        index[ibIndex + 1] = i - 1;
        index[ibIndex + 2] = numSegments;
      }
      index[ibIndex] = numSegments - 1;
      index[ibIndex + 1] = 0;
      index[ibIndex + 2] = numSegments;
      var declaration = Laya.VertexMesh2D.getVertexDeclaration(["POSITION,UV"], false)[0];
      let mesh2D = Laya.Mesh2D.createMesh2DByPrimitive([vertexs], [declaration], index, Laya.IndexFormat.UInt16, [{ length: index.length, start: 0 }]);
      return mesh2D;
    }
    /**
     * 生成一个矩形Box
     * @param width 宽度
     * @param height 高度
     * @returns 
     */
    createBoxMesh2D(width, height) {
      let vertexs = new Float32Array(4 * 5);
      let index = new Uint16Array(2 * 3);
      const halfWidth = width / 2;
      const halfHeight = height / 2;
      var pos = 0;
      vertexs[pos + 0] = -halfWidth;
      vertexs[pos + 1] = -halfHeight;
      vertexs[pos + 2] = 0;
      vertexs[pos + 3] = 0;
      vertexs[pos + 4] = 0;
      pos += 5;
      vertexs[pos + 0] = halfWidth;
      vertexs[pos + 1] = -halfHeight;
      vertexs[pos + 2] = 0;
      vertexs[pos + 3] = 1;
      vertexs[pos + 4] = 0;
      pos += 5;
      vertexs[pos + 0] = halfWidth;
      vertexs[pos + 1] = halfHeight;
      vertexs[pos + 2] = 0;
      vertexs[pos + 3] = 1;
      vertexs[pos + 4] = 1;
      pos += 5;
      vertexs[pos + 0] = -halfWidth;
      vertexs[pos + 1] = halfHeight;
      vertexs[pos + 2] = 0;
      vertexs[pos + 3] = 0;
      vertexs[pos + 4] = 1;
      index[0] = 0;
      index[1] = 1;
      index[2] = 2;
      index[3] = 0;
      index[4] = 2;
      index[5] = 3;
      var declaration = Laya.VertexMesh2D.getVertexDeclaration(["POSITION,UV"], false)[0];
      let mesh2D = Laya.Mesh2D.createMesh2DByPrimitive(
        [vertexs],
        [declaration],
        index,
        Laya.IndexFormat.UInt16,
        [{ length: index.length, start: 0 }]
      );
      return mesh2D;
    }
    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}
    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}
    //手动调用节点销毁时执行
    //onDestroy(): void {}
    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}
    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}
    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
  };
  __name(baseRenderScript, "baseRenderScript");
  __decorateClass([
    property4(String)
  ], baseRenderScript.prototype, "text", 2);
  baseRenderScript = __decorateClass([
    regClass4("b2654594-4905-4b88-b53a-0db4f95450d9", "../src/multPrefabDemo/baseRenderScript.ts")
  ], baseRenderScript);

  // src/multPrefabDemo/materialUpdateData.ts
  var { regClass: regClass5, property: property5 } = Laya;
  var materialUpdateData = class extends Laya.Script {
    constructor() {
      super(...arguments);
      //declare owner : Laya.Sprite3D;
      //declare owner : Laya.Sprite;
      // 颜色渐变相关变量
      this.startTime = 0;
      this.currentColor = new Laya.Color(1, 0, 0, 1);
      // 当前颜色
      this.targetColor = new Laya.Color(0, 1, 0, 1);
      // 目标颜色
      this.transitionDuration = 2e3;
      // 渐变持续时间（毫秒）
      this.colorChangeInterval = 3e3;
      // 颜色切换间隔（毫秒）
      this.lastColorChangeTime = 0;
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    onEnable() {
      this.startTime = Laya.timer.currTimer;
      this.lastColorChangeTime = this.startTime;
      this.generateNewTargetColor();
    }
    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}
    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}
    //手动调用节点销毁时执行
    //onDestroy(): void {}
    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    onUpdate() {
      if (Main.customShader3DChangeColor) {
        let currentTime = Laya.timer.currTimer;
        if (currentTime - this.lastColorChangeTime >= this.colorChangeInterval) {
          this.currentColor = this.targetColor.clone();
          this.generateNewTargetColor();
          this.startTime = currentTime;
          this.lastColorChangeTime = currentTime;
        }
        let elapsedTime = currentTime - this.startTime;
        let progress = Math.min(elapsedTime / this.transitionDuration, 1);
        progress = this.easeInOutQuad(progress);
        let interpolatedColor = this.lerpColor(this.currentColor, this.targetColor, progress);
        let meshrender = this.owner.getComponent(Laya.MeshRenderer);
        let mat = meshrender.sharedMaterial;
        mat.setShaderData("u_InColor", Laya.ShaderDataType.Color, interpolatedColor);
      }
    }
    /**
     * 生成新的随机目标颜色
     */
    generateNewTargetColor() {
      this.targetColor = new Laya.Color(Math.random(), Math.random(), Math.random(), 1);
    }
    /**
     * 颜色线性插值
     * @param colorA 起始颜色
     * @param colorB 目标颜色  
     * @param t 插值参数 (0-1)
     * @returns 插值后的颜色
     */
    lerpColor(colorA, colorB, t) {
      return new Laya.Color(
        colorA.r + (colorB.r - colorA.r) * t,
        colorA.g + (colorB.g - colorA.g) * t,
        colorA.b + (colorB.b - colorA.b) * t,
        colorA.a + (colorB.a - colorA.a) * t
      );
    }
    /**
     * 缓动函数 - 平滑的进入和退出
     * @param t 输入参数 (0-1)
     * @returns 缓动后的值 (0-1)
     */
    easeInOutQuad(t) {
      return t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
    }
    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}
    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
  };
  __name(materialUpdateData, "materialUpdateData");
  materialUpdateData = __decorateClass([
    regClass5("161a01ee-b3db-42fc-8496-60db3c75e0d9", "../src/multPrefabDemo/materialUpdateData.ts")
  ], materialUpdateData);

  // src/multPrefabDemo/shader3DCreate.ts
  var vs = `
#include "Camera.glsl";
#include "Sprite3DVertex.glsl";
#include "VertexCommon.glsl";

varying vec3 v_Normal;

void main()
{
	Vertex vertex;
    getVertexParams(vertex);
  	mat4 worldMat = getWorldMatrix();
    vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;

    gl_Position = getPositionCS(positionWS);
	  
	vec3 normalWS = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);
    v_Normal = normalWS;
	gl_Position=remapPositionZ(gl_Position);
}
`;
  var _Shader3DCreate = class _Shader3DCreate {
    static createShader3D(shaderName, shaderCount) {
      _Shader3DCreate.createMultipleColorShaders3D(shaderName, shaderCount);
    }
    /**
     * 根据shaderCount循环生成多个不同颜色的Shader3D
     * @param baseName 基础shader名称
     * @param shaderCount shader数量
     */
    static createMultipleColorShaders3D(baseName, shaderCount) {
      console.log(`开始创建 ${shaderCount} 个不同颜色的shader`);
      for (let i = 0; i < shaderCount; i++) {
        let colorData = this.generateColorFromIndex(i, shaderCount);
        const customPs = this.generateFragmentShader(colorData.color, colorData.defines);
        let shaderName = `${baseName}_${i}`;
        let shader = Laya.Shader3D.add(shaderName, false);
        let subshader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap, _Shader3DCreate.uniformMap, _Shader3DCreate.defaultValue);
        shader.addSubShader(subshader);
        subshader.addShaderPass(vs, customPs);
        this.shaders.push(shader);
        console.log(`创建了shader: ${shaderName}, 颜色: rgb(${colorData.color.r.toFixed(3)}, ${colorData.color.g.toFixed(3)}, ${colorData.color.b.toFixed(3)}), defines: ${colorData.defines.join(", ")}`);
      }
      console.log(`所有shader创建完成`);
    }
    /**
     * 根据索引生成颜色和shader defines
     * @param index 当前索引
     * @param total 总数量
     * @returns 颜色和defines对象
     */
    static generateColorFromIndex(index, total) {
      let defines = [];
      let color;
      let colorDefine = `COLOR${index + 1}`;
      defines.push(colorDefine);
      let hue = index / total * 360;
      let saturation = 0.8;
      let value = 1;
      color = this.hsvToRgb(hue, saturation, value);
      return { color, defines };
    }
    /**
     * HSV色彩空间转RGB
     * @param h 色相 0-360
     * @param s 饱和度 0-1
     * @param v 明度 0-1
     * @returns RGB颜色对象
     */
    static hsvToRgb(h, s, v) {
      let c = v * s;
      let x = c * (1 - Math.abs(h / 60 % 2 - 1));
      let m = v - c;
      let r = 0, g = 0, b = 0;
      if (h >= 0 && h < 60) {
        r = c;
        g = x;
        b = 0;
      } else if (h >= 60 && h < 120) {
        r = x;
        g = c;
        b = 0;
      } else if (h >= 120 && h < 180) {
        r = 0;
        g = c;
        b = x;
      } else if (h >= 180 && h < 240) {
        r = 0;
        g = x;
        b = c;
      } else if (h >= 240 && h < 300) {
        r = x;
        g = 0;
        b = c;
      } else if (h >= 300 && h < 360) {
        r = c;
        g = 0;
        b = x;
      }
      return {
        r: r + m,
        g: g + m,
        b: b + m
      };
    }
    /**
     * 生成片段着色器代码
     * @param color 颜色对象
     * @param defines shader defines
     * @returns 片段着色器代码
     */
    static generateFragmentShader(color, defines) {
      let defineString = defines.map((define) => `#if defined(${define})`).join("\n");
      let defineString1 = defines.map((define) => `#define ${define}`).join("\n");
      return `
#if defined(GL_FRAGMENT_PRECISION_HIGH)// 原来的写法会被我们自己的解析流程处理，而我们的解析是不认内置宏的，导致被删掉，所以改成 if defined 了
precision highp float;
#else
precision mediump float;
#endif

${defineString1}
varying vec3 v_Normal;

void main()
{    
    ${defineString}
    // 基础颜色
    vec3 baseColor = vec3(${color.r.toFixed(3)}, ${color.g.toFixed(3)}, ${color.b.toFixed(3)});
    #else
    vec3 baseColor = vec3(1.0, 1.0, 1.0);
    #endif
    
    // 可以选择是否考虑法线影响
    vec3 finalColor = baseColor * abs(dot(v_Normal, vec3(0.0, 0.0, 1.0)));
    // 最终颜色计算
    finalColor = finalColor * u_InColor.rgb;
    
    // 确保颜色在合理范围内
    finalColor = clamp(finalColor, 0.0, 1.0);
    
    gl_FragColor = vec4(finalColor, 1.0);
}
`;
    }
  };
  __name(_Shader3DCreate, "Shader3DCreate");
  _Shader3DCreate.shaders = [];
  _Shader3DCreate.uniformMap = {
    "u_InColor": Laya.ShaderDataType.Color
  };
  _Shader3DCreate.defaultValue = {
    "u_InColor": new Laya.Color(1, 1, 1, 1)
  };
  var Shader3DCreate = _Shader3DCreate;

  // src/multPrefabDemo/customShader3D.ts
  var { regClass: regClass6, property: property6 } = Laya;
  var customShader3D = class extends Laya.Script {
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    onEnable() {
      Shader3DCreate.createShader3D("myCustom3DShader", Main.customShader3DCount);
      for (let i = 0; i < Main.customShader3DCount; i++) {
        let sp = new Laya.Sprite3D();
        let meshfilter = sp.addComponent(Laya.MeshFilter);
        let meshrender = sp.addComponent(Laya.MeshRenderer);
        meshrender.castShadow = true;
        meshrender.receiveShadow = true;
        let mesh = Laya.PrimitiveMesh.createSphere(2, 10, 10);
        meshfilter.sharedMesh = mesh;
        let mat = new Laya.Material();
        mat.setShaderName(Shader3DCreate.shaders[i].name);
        meshrender.material = mat;
        let radius = 10;
        let angle = i / Main.customShader3DCount * Math.PI * 2;
        let x = radius * Math.cos(angle);
        let z = radius * Math.sin(angle);
        let y = 0.5;
        sp.transform.position = new Laya.Vector3(x, y, z);
        sp.transform.setWorldLossyScale(new Laya.Vector3(0.2, 0.2, 0.2));
        sp.addComponent(materialUpdateData);
        this.owner.addChild(sp);
      }
    }
    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}
    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}
    //手动调用节点销毁时执行
    //onDestroy(): void {}
    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}
    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}
    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
  };
  __name(customShader3D, "customShader3D");
  customShader3D = __decorateClass([
    regClass6("8bdfbeb8-927a-49b8-a2f8-20bdeeacfb2a", "../src/multPrefabDemo/customShader3D.ts")
  ], customShader3D);

  // src/singleMatDemo/singleMatDemo.ts
  var { regClass: regClass7, property: property7 } = Laya;
  var singleMatDemo = class extends Laya.Script {
    constructor() {
      super(...arguments);
      //declare owner : Laya.Sprite3D;
      //declare owner : Laya.Sprite;
      this.text = "";
    }
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}
    //组件被启用后执行，例如节点被添加到舞台后
    onEnable() {
      this.mat1 = new Laya.BlinnPhongMaterial();
      this.mat2 = new Laya.PBRStandardMaterial();
      this.mat2.albedoColor = new Laya.Color(1, 0, 0, 1);
      this.mat3 = new Laya.UnlitMaterial();
      Laya.Texture2D.load("resources/images/layabox.png", Laya.Handler.create(this, (texture) => {
        texture.wrapModeU = Laya.WrapMode.Clamp;
        texture.wrapModeV = Laya.WrapMode.Repeat;
        texture.filterMode = Laya.FilterMode.Bilinear;
        texture.anisoLevel = 2;
        this.mat1.albedoTexture = texture;
        var tilingOffset = this.mat1.tilingOffset;
        tilingOffset.setValue(3, 3, 0, 0);
        this.mat1.tilingOffset = tilingOffset;
        this.createMoreBox();
      }));
    }
    createMoreBox() {
      let xLine = 10;
      let yLine = 10;
      let zLine = 10;
      let oriVec3 = new Laya.Vector3(-5, -10, -20);
      let mtls = [this.mat1, this.mat2, this.mat3];
      let mid = 0;
      for (let x = 0; x < xLine; x++) {
        for (let y = 0; y < yLine; y++) {
          for (let z = 0; z < zLine; z++) {
            var box = this.sprite3D.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(0.5, 0.5, 0.5)));
            box.transform.position = new Laya.Vector3(x + oriVec3.x, y + oriVec3.y, z + oriVec3.z);
            box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
            box.meshRenderer.sharedMaterial = this.mat1;
          }
        }
      }
    }
  };
  __name(singleMatDemo, "singleMatDemo");
  __decorateClass([
    property7({ type: Laya.Sprite3D })
  ], singleMatDemo.prototype, "sprite3D", 2);
  singleMatDemo = __decorateClass([
    regClass7("6a3a2e9a-6ad3-4583-a4f2-f754e66458a9", "../src/singleMatDemo/singleMatDemo.ts")
  ], singleMatDemo);
})();
//# sourceMappingURL=bundle.js.map
