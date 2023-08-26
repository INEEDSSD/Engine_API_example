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

  // src/3D/common/CameraMoveScript.ts
  var Vector3 = Laya.Vector3;
  var Quaternion = Laya.Quaternion;
  var InputManager = Laya.InputManager;
  var Event = Laya.Event;
  var _CameraMoveScript = class _CameraMoveScript extends Laya.Script {
    constructor() {
      super();
      /** @private */
      this._tempVector3 = new Vector3();
      this.yawPitchRoll = new Vector3();
      this.resultRotation = new Quaternion();
      this.tempRotationZ = new Quaternion();
      this.tempRotationX = new Quaternion();
      this.tempRotationY = new Quaternion();
      this.rotaionSpeed = 6e-5;
      this.speed = 8e-4;
    }
    /**
     * @private
     */
    _updateRotation() {
      if (Math.abs(this.yawPitchRoll.y) < 1.5) {
        Quaternion.createFromYawPitchRoll(this.yawPitchRoll.x, this.yawPitchRoll.y, this.yawPitchRoll.z, this.tempRotationZ);
        this.tempRotationZ.cloneTo(this.camera.transform.localRotation);
        this.camera.transform.localRotation = this.camera.transform.localRotation;
      }
    }
    /**
     * @inheritDoc
     */
    onAwake() {
      Laya.stage.on(Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.on(Event.RIGHT_MOUSE_UP, this, this.mouseUp);
      this.camera = this.owner;
    }
    /**
     * @inheritDoc
     */
    onUpdate() {
      var elapsedTime = Laya.timer.delta;
      if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY) && this.isMouseDown) {
        var scene = this.owner.scene;
        InputManager.hasKeyDown(87) && this.moveForward(-this.speed * elapsedTime);
        InputManager.hasKeyDown(83) && this.moveForward(this.speed * elapsedTime);
        InputManager.hasKeyDown(65) && this.moveRight(-this.speed * elapsedTime);
        InputManager.hasKeyDown(68) && this.moveRight(this.speed * elapsedTime);
        InputManager.hasKeyDown(81) && this.moveVertical(this.speed * elapsedTime);
        InputManager.hasKeyDown(69) && this.moveVertical(-this.speed * elapsedTime);
        var offsetX = Laya.stage.mouseX - this.lastMouseX;
        var offsetY = Laya.stage.mouseY - this.lastMouseY;
        var yprElem = this.yawPitchRoll;
        yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
        yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
        this._updateRotation();
      }
      this.lastMouseX = Laya.stage.mouseX;
      this.lastMouseY = Laya.stage.mouseY;
    }
    /**
     * @inheritDoc
     */
    onDestroy() {
      Laya.stage.off(Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Event.RIGHT_MOUSE_UP, this, this.mouseUp);
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
  __name(_CameraMoveScript, "CameraMoveScript");
  var CameraMoveScript = _CameraMoveScript;

  // src/Index.ts
  var Stat = Laya.Stat;
  var { regClass, property } = Laya;
  var Index = class extends Laya.Script {
    constructor() {
      super(...arguments);
      this.index_2d = 0;
      this.index_3d = 0;
      this.show_2d = true;
      this.show_3d = true;
      this._titleCellSize = 30;
      this._contentCellSize = 24;
      this._totalTitleHeight1 = 0;
      this._totalTitleHeight2 = 0;
      this._contentSelectedIndexArr1 = new Array();
      this._contentSelectedIndexArr2 = new Array();
      this._cur2D3D = true;
      this.titleIndex = 0;
      this.contentIndex = 0;
      this.category = "null";
      this.group = 0;
      this.contentName = 0;
      this._statPos = null;
    }
    onResize() {
      console.log("Browser.clientWidth:" + Laya.Browser.clientWidth + "  Laya.stage.designWidth:" + Laya.stage.designWidth);
      console.log("Browser.clientHeight:" + Laya.Browser.clientHeight + "  Laya.stage.designHeight:" + Laya.stage.designHeight);
      console.log("Browser.pixelRatio:" + Laya.Browser.pixelRatio);
      if (Laya.Browser.clientWidth > Laya.Browser.clientHeight) {
        Index.isLandscape = true;
        this.codeButton.visible = true;
        this.qrcodeButton.visible = true;
        let screenHeight = Laya.stage.designHeight;
        let screenWidth = Laya.stage.designHeight * Laya.Browser.clientWidth / Laya.Browser.clientHeight;
        Index.screenWidth = screenWidth;
        Index.screenHeight = screenHeight;
        console.log("onResize >>", "[screenWidth:" + screenWidth + "] [screenHeight:" + screenHeight + "]");
        if (screenWidth > 1440)
          screenWidth = 1440;
        this.rightImage.width = screenWidth - 250 - 40;
        this.desc.width = this.rightImage.width;
        console.log("this.rightImage.width:" + this.rightImage.width);
        if (this.rightImage.width < 1138) {
          this.pageImage.width = this.rightImage.width;
          this.page.width = this.pageImage.width - 14;
          this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
        } else {
          this.pageImage.width = 1138;
          this.page.width = this.pageImage.width - 14;
          this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
        }
        if (this.curScene2D) {
          this.curScene2D.scale(this.page.width / Index.pageWidth, this.page.height / Index.pageHeight);
        }
        this._statPos = this.pageImage.localToGlobal(new Laya.Point(0, 0), false);
        Index.pagePos = this.page.localToGlobal(new Laya.Point(0, 0), false);
      } else {
        Index.isLandscape = false;
        this.codeButton.visible = false;
        this.qrcodeButton.visible = false;
        let screenHeight = Laya.stage.designHeight;
        let screenWidth = Laya.stage.designHeight * Laya.Browser.clientHeight / Laya.Browser.clientWidth;
        console.log("onResize >>", "[screenWidth:" + screenWidth + "] [screenHeight:" + screenHeight + "]");
        if (screenWidth > 1440)
          screenWidth = 1440;
        this.rightImage.width = screenWidth - 250 - 40;
        this.desc.width = this.rightImage.width;
        if (this.rightImage.width < 1138) {
          this.pageImage.width = this.rightImage.width;
          this.page.width = this.pageImage.width - 14;
          this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
        } else {
          this.pageImage.width = 1138;
          this.page.width = this.pageImage.width - 14;
          this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
        }
        if (this.curScene2D) {
          this.curScene2D.scale(this.page.width / Index.pageWidth, this.page.height / Index.pageHeight);
        }
        this._statPos = this.pageImage.localToGlobal(new Laya.Point(0, 0), false);
        Index.pagePos = this.page.localToGlobal(new Laya.Point(0, 0), false);
      }
      if (!this._cur2D3D) {
        Laya.Stat.hide();
        this.showStat();
      }
      if (!Laya.Browser.onPC) {
        this.codeButton.visible = false;
        this.qrcodeButton.visible = false;
      }
      Index.scaleWidth = this.page.width / Index.pageWidth;
      Index.scaleHeight = this.page.height / Index.pageHeight;
      console.log("onResize >>", "[scaleWidth:" + Index.scaleWidth + "] [scaleWidth:" + Index.scaleHeight + "]");
    }
    showStat() {
      if (Index.isLandscape) {
        Laya.Stat.hide();
        Laya.Stat.show(this._statPos.x * Laya.Browser.clientHeight / Laya.stage.designHeight * Laya.Browser.pixelRatio + 20, this._statPos.y * Laya.Browser.clientHeight / Laya.stage.designHeight * Laya.Browser.pixelRatio + 20, [
          Stat.FPSStatUIParams,
          Stat.NodeStatUIParams,
          Stat.Sprite3DStatUIParams,
          Stat.DrawCall,
          Stat.TriangleFace,
          Stat.RenderNode,
          Stat.SkinRenderNode,
          Stat.ParticleRenderNode,
          Stat.FrustumCulling,
          Stat.GPUMemory,
          Stat.TextureMemeory,
          Stat.RenderTextureMemory,
          Stat.BufferMemory
        ]);
      }
    }
    onEnable() {
      if (!Laya.LayaGL.renderEngine.getCapable(Laya.RenderCapable.RenderTextureFormat_R16G16B16A16))
        Index.rt = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false, 4);
      else
        Index.rt = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R16G16B16A16, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false, 4);
      Index.curPage = this.page;
      Index.curPage.texture = new Laya.Texture(Index.rt);
      this.setMousePointer();
      this.titleList1.mouseHandler = new Laya.Handler(this, this.onTitleMouseHandler1);
      this.contentList1.renderHandler = new Laya.Handler(this, this.onContentListRender);
      this.contentList1.mouseHandler = new Laya.Handler(this, this.onContentMouseHandler1);
      this.titleList2.mouseHandler = new Laya.Handler(this, this.onTitleMouseHandler2);
      this.contentList2.renderHandler = new Laya.Handler(this, this.onContentListRender);
      this.contentList2.mouseHandler = new Laya.Handler(this, this.onContentMouseHandler2);
      this._cur2D3D = true;
      let start2D3D = true;
      this.category = window.category;
      if (this.category != "null") {
        if (this.category == "2D") {
          this._cur2D3D = false;
          start2D3D = false;
        } else if (this.category == "3D") {
          this._cur2D3D = true;
          start2D3D = true;
        }
      }
      this.group = Number(window.group);
      if (isNaN(this.group))
        this.group = 0;
      this.contentName = Number(window.name);
      if (isNaN(this.contentName))
        this.contentName = 0;
      const jsonPath1 = "resources/json/2d.json";
      Laya.loader.load(jsonPath1).then((res) => {
        let _file = Laya.loader.getRes(jsonPath1);
        this._json1 = _file.data.demoList;
        this.initTitleList(this._json1, this.titleList1, true);
        if (!start2D3D)
          this.select2D(this.group);
      });
      const jsonPath2 = "resources/json/3d.json";
      Laya.loader.load(jsonPath2).then((res) => {
        let _file = Laya.loader.getRes(jsonPath2);
        this._json2 = _file.data.demoList;
        this.initTitleList(this._json2, this.titleList2, false);
        if (start2D3D)
          this.select3D(this.group);
      });
      Laya.stage.on(Laya.Event.RESIZE, this, this.onResize);
      this.btn1.on(Laya.Event.CLICK, this, this.select2DFromButton);
      this.btn2.on(Laya.Event.CLICK, this, this.select3DFromButton);
      this.onResize();
      this.codeButton.on(Laya.Event.CLICK, null, () => {
        let type = this._cur2D3D == true ? "2D" : "3D";
        let _json = null;
        let index = 0;
        let _contentSelectedIndexArr = null;
        if (this._cur2D3D) {
          _json = this._json1;
          index = this.index_2d;
          _contentSelectedIndexArr = this._contentSelectedIndexArr1;
        } else {
          _json = this._json2;
          index = this.index_3d;
          _contentSelectedIndexArr = this._contentSelectedIndexArr2;
        }
        window.$.ajax(
          "script/" + type + "/" + _json[index].content[_contentSelectedIndexArr[index]].scene + ".ts",
          {
            dataType: "text",
            success: (code) => {
              window.$("#codeLayer").css("display", "block");
              window.$("#fade").css("display", "block");
              window.editor.setValue(code);
              window.editor.resize();
              window.editor.moveCursorTo(0);
            },
            error: function() {
              console.log(arguments);
            }
          }
        );
      });
      this.qrcodeButton.on(Laya.Event.CLICK, null, () => {
        window.$("#qrcodeLayer").css("display", "block");
        let url = Laya.Browser.window.location.href + "?category=" + (this._cur2D3D == true ? "2D" : "3D") + "&group=" + this.titleIndex + "&name=" + this.contentIndex;
        console.log(url);
        window.$("#qrcodeTable").empty();
        window.$("#qrcodeTable").qrcode({
          render: "table",
          text: url
        });
        window.$("#fade").css("display", "block");
      });
    }
    initTitleList(_json, list, d2d3) {
      if (_json && _json.length > 0) {
        let data = [];
        for (let i = 0; i < _json.length; i++) {
          if (d2d3) {
            this._contentSelectedIndexArr1[i] = 0;
            if (this.category == "2D" && this.group == i)
              this._contentSelectedIndexArr1[i] = this.contentName;
          } else {
            this._contentSelectedIndexArr2[i] = 0;
            if (this.category == "3D" && this.group == i)
              this._contentSelectedIndexArr2[i] = this.contentName;
          }
          data[i] = {};
          data[i].title = { "text": _json[i].title };
          data[i].num = { "text": _json[i].content.length };
        }
        list.array = data;
        list.repeatY = data.length;
        if (d2d3)
          this._totalTitleHeight1 = this._titleCellSize * data.length;
        else
          this._totalTitleHeight2 = this._titleCellSize * data.length;
        list.vScrollBarSkin = "";
      }
    }
    select2D(index = 0) {
      if (this._cur2D3D)
        return;
      Index.rt = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R16G16B16A16, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false, 4);
      Index.curPage.texture = new Laya.Texture(Index.rt);
      Laya.Resource.destroyUnusedResources();
      Laya.Scene.gc();
      Laya.Stat.hide();
      this.panel1.visible = true;
      this.panel2.visible = false;
      this._cur2D3D = true;
      this.btn1.selected = true;
      this.btn2.selected = false;
      if (index == 0) {
        this.showContentList(this.index_2d);
      } else {
        this.index_2d = index;
        this.titleIndex = index;
        this.showContentList(index);
      }
    }
    select2DFromButton() {
      this.select2D();
    }
    select3D(index = 0) {
      if (!this._cur2D3D)
        return;
      this.showStat();
      this.panel1.visible = false;
      this.panel2.visible = true;
      this._cur2D3D = false;
      this.btn1.selected = false;
      this.btn2.selected = true;
      if (index == 0) {
        this.showContentList(this.index_3d);
      } else {
        this.index_3d = index;
        this.titleIndex = index;
        this.showContentList(index);
      }
    }
    select3DFromButton() {
      this.select3D();
    }
    showContentList(index) {
      let titleList = null;
      let contentList = null;
      let titleListBg = null;
      let contentListBgHeight = 0;
      let _totalTitleHeight = 0;
      let _contentSelectedIndexArr = null;
      let _json = null;
      let show = false;
      if (this._cur2D3D) {
        titleList = this.titleList1;
        contentList = this.contentList1;
        titleListBg = this.titleListBg1;
        _totalTitleHeight = this._totalTitleHeight1;
        _contentSelectedIndexArr = this._contentSelectedIndexArr1;
        _json = this._json1;
        show = this.show_2d;
      } else {
        titleList = this.titleList2;
        contentList = this.contentList2;
        titleListBg = this.titleListBg2;
        _totalTitleHeight = this._totalTitleHeight2;
        _contentSelectedIndexArr = this._contentSelectedIndexArr2;
        _json = this._json2;
        show = this.show_3d;
      }
      let content = _json[index].content;
      if (content && content.length > 0) {
        let data = [];
        let len = content.length;
        if (!show)
          len = 0;
        for (let i = 0; i < len; i++) {
          data[i] = {};
          if (i == _contentSelectedIndexArr[index]) {
            data[i].img = { "visible": true };
            data[i].name = { "text": content[i].name, "color": "#ffffff" };
          } else {
            data[i].img = { "visible": false };
            data[i].name = { "text": content[i].name, "color": "#717171" };
          }
        }
        contentList.array = data;
        contentList.repeatY = data.length;
        contentList.height = this._contentCellSize * data.length;
        if (!show) {
          contentListBgHeight = contentList.height;
          contentList.y = this._titleCellSize * (index + 1);
          contentList.y;
        } else {
          contentListBgHeight = contentList.height + 30;
          contentList.y = this._titleCellSize * (index + 1);
          contentList.y += 15;
        }
        contentList.vScrollBarSkin = "";
        titleList.height = _totalTitleHeight + contentListBgHeight;
        titleListBg.height = titleList.height + 10;
      }
      if (show)
        this.showContent(_contentSelectedIndexArr[index]);
      if (!show)
        index = -1;
      for (let i = 0; i < _json.length; i++) {
        let box = titleList.getCell(i);
        if (i > index) {
          box.y = this._titleCellSize * i + contentListBgHeight;
        } else {
          box.y = this._titleCellSize * i;
        }
        let clip_arrow = box.getChildByName("arrow");
        i == index ? clip_arrow.index = 1 : clip_arrow.index = 0;
        let clip_select = box.getChildByName("select");
        i == index ? clip_select.index = 1 : clip_select.index = 0;
        let select_bg = box.getChildByName("bg");
        i == index ? select_bg.visible = true : select_bg.visible = false;
        let title = box.getChildByName("title");
        i == index ? title.color = "#2395db" : title.color = "#000000";
      }
    }
    showContent(index) {
      let contentList = null;
      let _json = null;
      let _contentSelectedIndexArr = null;
      let type = "";
      let _index = 0;
      if (this._cur2D3D) {
        contentList = this.contentList1;
        _contentSelectedIndexArr = this._contentSelectedIndexArr1;
        _json = this._json1;
        type = "2D";
        _index = this.index_2d;
      } else {
        contentList = this.contentList2;
        _contentSelectedIndexArr = this._contentSelectedIndexArr2;
        _json = this._json2;
        _index = this.index_3d;
        type = "3D";
      }
      _contentSelectedIndexArr[_index] = index;
      contentList.refresh();
      let title = _json[_index].title;
      let content = _json[_index].content[index];
      this.name.text = title + "--" + content.name;
      this.desc.text = content.desc;
      this.nameLine.width = this.getStrLength(this.name.text, this.name.fontSize);
      if (this.curSceneURl == "resources/scene/3D/Camera/CameraMSAADemo.ls") {
        Index.curPage.texture = new Laya.Texture(Index.rt);
      }
      Laya.Scene.close(this.curSceneURl);
      Laya.Scene.destroy(this.curSceneURl);
      this.page.destroyChildren();
      let path = "resources/scene/" + type + "/" + content.scene + ".ls";
      console.log("open " + content.scene);
      if (Laya.Browser._isMiniGame && content.minigame != void 0 && !content.minigame)
        path = "resources/scene/Error.ls";
      Laya.Scene.open(path, false).then((scene) => {
        this.curSceneURl = path;
        this.curScene2D = scene;
        this.page.addChild(scene);
        if (this.curScene2D) {
          this.curScene2D.scale(this.page.width / Index.pageWidth, this.page.height / Index.pageHeight);
        }
      });
    }
    /** 列表单元的渲染处理 */
    onContentListRender(item, index) {
      let titleList = null;
      let _contentSelectedIndexArr = null;
      let _index = 0;
      if (this._cur2D3D) {
        titleList = this.titleList1;
        _contentSelectedIndexArr = this._contentSelectedIndexArr1;
        _index = this.index_2d;
      } else {
        titleList = this.titleList2;
        _contentSelectedIndexArr = this._contentSelectedIndexArr2;
        _index = this.index_3d;
      }
      if (index > titleList.array.length || index < 0)
        return;
      let img = item.getChildByName("img");
      let name = item.getChildByName("name");
      if (index == _contentSelectedIndexArr[_index]) {
        img.visible = true;
        img.width = (name.x - img.x) * 2 + this.getStrLength(name.text, name.fontSize);
        name.color = "#ffffff";
      } else {
        img.visible = false;
        name.color = "#000000";
      }
    }
    /** 绑定list的鼠标点击事件 */
    onTitleMouseHandler1(e, index) {
      if (e.type != Laya.Event.CLICK)
        return;
      if (index == this.index_2d && this.show_2d)
        this.show_2d = false;
      else {
        this.index_2d = index;
        this.show_2d = true;
      }
      this.titleIndex = index;
      this.showContentList(index);
    }
    /** 绑定list的鼠标点击事件 */
    onTitleMouseHandler2(e, index) {
      if (e.type != Laya.Event.CLICK)
        return;
      if (index == this.index_3d && this.show_3d)
        this.show_3d = false;
      else {
        this.index_3d = index;
        this.show_3d = true;
      }
      this.titleIndex = index;
      this.showContentList(index);
    }
    /** 绑定list的鼠标点击事件 */
    onContentMouseHandler1(e, index) {
      if (e.type != Laya.Event.CLICK)
        return;
      this._contentSelectedIndexArr1[this.index_2d] = index;
      this.contentIndex = index;
      this.showContentList(this.index_2d);
    }
    /** 绑定list的鼠标点击事件 */
    onContentMouseHandler2(e, index) {
      if (e.type != Laya.Event.CLICK)
        return;
      this._contentSelectedIndexArr2[this.index_3d] = index;
      this.contentIndex = index;
      this.showContentList(this.index_3d);
    }
    getStrLength(str, fontSize) {
      var width = 0;
      for (var i = 0; i < str.length; i++) {
        if (str.charCodeAt(i) > 127 || str.charCodeAt(i) == 94) {
          width += fontSize;
        } else {
          width += fontSize / 2 + 2;
        }
      }
      return width + 2;
    }
    setMousePointer() {
      this.btn1.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.btn1.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.btn2.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.btn2.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.codeButton.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.codeButton.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.qrcodeButton.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.qrcodeButton.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.titleList1.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.titleList1.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.titleList2.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.titleList2.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.contentList1.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.contentList1.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
      this.contentList2.on(Laya.Event.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this.contentList2.on(Laya.Event.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
    }
  };
  __name(Index, "Index");
  Index.pageWidth = 1124;
  Index.pageHeight = 456;
  Index.screenWidth = 0;
  Index.screenHeight = 0;
  Index.scaleWidth = 0;
  Index.scaleHeight = 0;
  Index.pagePos = null;
  Index.isLandscape = true;
  __decorateClass([
    property(Laya.Button)
  ], Index.prototype, "btn1", 2);
  __decorateClass([
    property(Laya.Button)
  ], Index.prototype, "btn2", 2);
  __decorateClass([
    property(Laya.Image)
  ], Index.prototype, "titleListBg1", 2);
  __decorateClass([
    property(Laya.List)
  ], Index.prototype, "titleList1", 2);
  __decorateClass([
    property(Laya.List)
  ], Index.prototype, "contentList1", 2);
  __decorateClass([
    property(Laya.Panel)
  ], Index.prototype, "panel1", 2);
  __decorateClass([
    property(Laya.Image)
  ], Index.prototype, "titleListBg2", 2);
  __decorateClass([
    property(Laya.List)
  ], Index.prototype, "titleList2", 2);
  __decorateClass([
    property(Laya.List)
  ], Index.prototype, "contentList2", 2);
  __decorateClass([
    property(Laya.Panel)
  ], Index.prototype, "panel2", 2);
  __decorateClass([
    property(Laya.Sprite)
  ], Index.prototype, "page", 2);
  __decorateClass([
    property(Laya.Label)
  ], Index.prototype, "name", 2);
  __decorateClass([
    property(Laya.Image)
  ], Index.prototype, "nameLine", 2);
  __decorateClass([
    property(Laya.Button)
  ], Index.prototype, "codeButton", 2);
  __decorateClass([
    property(Laya.Button)
  ], Index.prototype, "qrcodeButton", 2);
  __decorateClass([
    property(Laya.Label)
  ], Index.prototype, "desc", 2);
  __decorateClass([
    property(Laya.Image)
  ], Index.prototype, "rightImage", 2);
  __decorateClass([
    property(Laya.Image)
  ], Index.prototype, "pageImage", 2);
  Index = __decorateClass([
    regClass("b72c3382-c3da-44fd-a770-137f2eba8ca6", "../src/Index.ts")
  ], Index);

  // src/BaseScript.ts
  var Stat2 = Laya.Stat;
  var Button = Laya.Button;
  var Event2 = Laya.Event;
  var Vector32 = Laya.Vector3;
  var { regClass: regClass2, property: property2 } = Laya;
  var BaseScript = class extends Laya.Script {
    constructor() {
      super();
      this.pageWidth = Laya.stage.designHeight * Laya.Browser.clientWidth / Laya.Browser.clientHeight;
      this.pageHeight = Laya.stage.designHeight;
      if (Index.curPage) {
        this.pageWidth = Index.pageWidth;
        this.pageHeight = Index.pageHeight;
      }
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    base(camera = null, moveCamera = true, spec = false) {
      this.box2D = this.owner;
      this.box2D.bgColor = "#232628";
      if (Index && Index.curPage && camera) {
        if (moveCamera) {
          camera.addComponent(CameraMoveScript);
        }
        if (!spec) {
          camera.msaa = true;
          camera.renderTarget = Index.rt;
        }
      } else if (camera) {
        if (moveCamera) {
          camera.addComponent(CameraMoveScript);
        }
        Laya.Stat.show(0, 0, [
          Stat2.FPSStatUIParams,
          Stat2.NodeStatUIParams,
          Stat2.Sprite3DStatUIParams,
          Stat2.DrawCall,
          Stat2.TriangleFace,
          Stat2.RenderNode,
          Stat2.SkinRenderNode,
          Stat2.ParticleRenderNode,
          Stat2.FrustumCulling,
          Stat2.GPUMemory,
          Stat2.TextureMemeory,
          Stat2.RenderTextureMemory,
          Stat2.BufferMemory,
          Stat2.BufferMemory
        ]);
      }
    }
    setCameraDirectionLight(camera, directionLight, fieldOfView = 60) {
      camera.transform.position = new Vector32(0, 2, 3);
      camera.transform.rotationEuler = new Vector32(-30, 0, 0);
      camera.useOcclusionCulling = false;
      camera.fieldOfView = fieldOfView;
      directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
    }
    addBottomButton(buttonNames, caller, func) {
      this._buttonType = 0;
      this._button = this.owner.addChild(new Button("resources/image/img_btn_bg.png", buttonNames[0]));
      this._button.size(150, 40);
      this._button.labelSize = 16;
      this._button.sizeGrid = "21,83,22,76";
      this._button.stateNum = 1;
      this._button.labelColors = "#ffffff";
      this._button.pos(this.pageWidth / 2 - this._button.width / 2, this.pageHeight - 50);
      this._button.on(Event2.CLICK, this, () => {
        this._buttonType++;
        if (buttonNames.length == 2) {
          this._buttonType %= 2;
          switch (this._buttonType) {
            case 0:
              this._button.label = buttonNames[0];
              func[1].apply(caller);
              break;
            case 1:
              this._button.label = buttonNames[1];
              func[0].apply(caller);
              break;
          }
        } else if (buttonNames.length == 3) {
          this._buttonType %= 3;
          switch (this._buttonType) {
            case 0:
              this._button.label = buttonNames[0];
              func[2].apply(caller);
              break;
            case 1:
              this._button.label = buttonNames[1];
              func[0].apply(caller);
              break;
            case 2:
              this._button.label = buttonNames[2];
              func[1].apply(caller);
              break;
          }
        }
      });
      this._button.on(Event2.MOUSE_OVER, null, () => {
        Laya.Mouse.cursor = "pointer";
      });
      this._button.on(Event2.MOUSE_OUT, null, () => {
        Laya.Mouse.cursor = "default";
      });
    }
  };
  __name(BaseScript, "BaseScript");
  BaseScript = __decorateClass([
    regClass2("f999a6b2-716f-4ca7-8e71-6d093654e431", "../src/BaseScript.ts")
  ], BaseScript);

  // src/Entry.ts
  var { regClass: regClass3, property: property3 } = Laya;
  var entry = class extends Laya.Script {
    onEnable() {
      Laya.URL.basePath = "http://10.10.20.24:9232/";
      Laya.loader.loadPackage("", null, null).then(() => {
        let DDPath = "resources/json/2d.json";
        let DDDPath = "resources/json/3d.json";
        let Big_cb = new Laya.ComboBox();
        let sp = new Laya.Sprite();
        sp.zOrder = 99999;
        sp.addChild(Big_cb);
        Laya.stage.addChild(sp);
        let big_labs = "";
        Big_cb.skin = "resources/res/ui/combobox.png";
        Big_cb.itemHeight = 20;
        Big_cb.size(170, 40);
        Big_cb.left = 90;
        Big_cb.top = 580;
        Big_cb.itemColors = "#394f55";
        Big_cb.labels = big_labs;
        Big_cb.scrollType = Laya.ScrollType.Vertical;
        let Small_cb = new Laya.ComboBox();
        sp.addChild(Small_cb);
        let small_labs = "";
        Small_cb.skin = "resources/res/ui/combobox.png";
        Small_cb.itemHeight = 20;
        Small_cb.left = 320;
        Small_cb.top = 580;
        Small_cb.size(170, 40);
        Small_cb.labels = small_labs;
        Small_cb.scrollType = Laya.ScrollType.Vertical;
        let bt = new Laya.Button();
        sp.addChild(bt);
        let bt_label = "\u4E0B\u4E00\u4E2A";
        bt.skin = "resources/res/ui/combobox.png";
        bt.left = 550;
        bt.top = 580;
        bt.size(170, 40);
        bt.label = bt_label;
        Laya.loader.load([DDPath, DDDPath], Laya.Loader.JSON).then(() => {
          let DD = Laya.loader.getRes(DDPath).data;
          let DDD = Laya.loader.getRes(DDDPath).data;
          let destoryLastScene = /* @__PURE__ */ __name(() => {
            Laya.Scene.unDestroyedScenes.forEach((item) => {
              item.destroy();
            });
          }, "destoryLastScene");
          let showDemo = /* @__PURE__ */ __name((resource, resPath) => {
            DD = resource;
            let Demo_2D = {};
            let Demo_2D_Name = [];
            let Demo_3D = {};
            let Demo_3D_Name = [];
            for (let i = 0, j = DD.demoList.length; i < j; i++) {
              let singleArray = DD.demoList[i].content;
              Demo_2D[i] = [];
              Demo_2D_Name[i] = DD.demoList[i].title;
              for (let x = 0, y = singleArray.length; x < y; x++) {
                Demo_2D[i][x] = singleArray[x];
              }
            }
            for (let i = 0, j = DDD.demoList.length; i < j; i++) {
              let singleArray = DDD.demoList[i].content;
              Demo_3D[i] = [];
              Demo_3D_Name[i] = DDD.demoList[i].title;
              for (let x = 0, y = singleArray.length; x < y; x++) {
                Demo_3D[i][x] = singleArray[x];
              }
            }
            let index_2D = 0;
            let index_index_2D = 0;
            let index_3D = 0;
            let index_index_3D = 0;
            Demo_2D_Name.forEach((item) => {
              big_labs += item + ",";
            });
            big_labs = big_labs.substring(0, big_labs.lastIndexOf(","));
            Big_cb.labels = big_labs;
            Big_cb.defaultLabel = Demo_2D_Name[0];
            for (let item of Demo_2D[index_2D]) {
              small_labs += item.name + ",";
            }
            small_labs = small_labs.substring(0, small_labs.lastIndexOf(","));
            Small_cb.labels = small_labs;
            Small_cb.defaultLabel = Demo_2D[index_2D][index_index_2D].name;
            for (let item of Demo_2D[index_2D]) {
              small_labs += item.name + ",";
            }
            let SmallScene = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
            Laya.Scene.open(SmallScene);
            function Bigonselect(index) {
              if (index == -1)
                return;
              small_labs = "";
              index_2D = index;
              let _limitBig = Demo_2D.length;
              if (index_2D + 1 >= _limitBig) {
                index_2D = 0;
              }
              Big_cb.defaultLabel = Demo_2D_Name[index_2D];
              let BigScene = resPath + Demo_2D[index_2D][0].scene + ".ls";
              for (let item of Demo_2D[index_2D]) {
                small_labs += item.name + ",";
              }
              small_labs = small_labs.substring(0, small_labs.lastIndexOf(","));
              Small_cb.labels = small_labs;
              Small_cb.defaultLabel = Demo_2D[index_2D][0].name;
              destoryLastScene();
              Laya.Scene.open(BigScene);
            }
            __name(Bigonselect, "Bigonselect");
            function Smallonselect(index) {
              if (index == -1)
                return;
              index_index_2D = index - 1;
              let _limit = Demo_2D[index_2D].length;
              let _limitBig = Demo_2D.length;
              if (index_2D + 1 >= _limitBig) {
                index_2D = 0;
              }
              if (index_index_2D + 1 >= _limit) {
                index_index_2D = 0;
                index_2D++;
              } else {
                index_index_2D++;
              }
              Small_cb.defaultLabel = Demo_2D[index_2D][index_index_2D].name;
              let SmallScene2 = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
              let Scenename = Demo_2D[index_2D][index_index_2D].name;
              destoryLastScene();
              Laya.Scene.open(SmallScene2);
              console.log("\u6253\u5F00" + Scenename);
            }
            __name(Smallonselect, "Smallonselect");
            function Btonselect() {
              let _limit = Demo_2D[index_2D].length;
              let _limitBig = Demo_2D.length;
              if (index_2D + 1 >= _limitBig) {
                index_2D = 0;
              }
              if (index_index_2D + 1 >= _limit) {
                index_index_2D = 0;
                index_2D++;
                Bigonselect(index_2D);
              } else {
                index_index_2D++;
              }
              let SmallScene2 = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
              let Scenename = Demo_2D[index_2D][index_index_2D].name;
              destoryLastScene();
              Laya.Scene.open(SmallScene2);
              Small_cb.defaultLabel = Scenename;
              console.log("\u6253\u5F00" + Scenename);
            }
            __name(Btonselect, "Btonselect");
            Big_cb.selectHandler = new Laya.Handler(this, Bigonselect);
            Small_cb.selectHandler = new Laya.Handler(this, Smallonselect);
            bt.clickHandler = new Laya.Handler(this, Btonselect);
          }, "showDemo");
          showDemo(DD, "resources/scene/2D/");
        });
      });
    }
  };
  __name(entry, "entry");
  entry = __decorateClass([
    regClass3("9c954058-63a9-4c9e-b7ae-4670f3285de3", "../src/Entry.ts")
  ], entry);

  // src/Main.generated.ts
  var _MainBase = class _MainBase extends Laya.Scene {
  };
  __name(_MainBase, "MainBase");
  var MainBase = _MainBase;

  // src/Main.ts
  Laya.LayaEnv.beforeInit = function(config) {
    console.log("before init from Main");
    Laya.Config.preserveDrawingBuffer = true;
    Laya.Config.isAlpha = true;
  };
  var { regClass: regClass4, property: property4 } = Laya;
  var Main = class extends MainBase {
    constructor() {
      super(...arguments);
      // 进入第一个loading后，后期预先加载的场景
      this.loadingIndex = 0;
      this.loadingOtherScenesPath = [
        //3D 场景 
        { url: "resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Light/MultiLight.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcessDoF.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcessAO.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcessBloom.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcess_Blur.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcess_Edge.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Show/GunDemo.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Show/DamagedHelmetModelShow.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Advance/ReflectionProbe.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Advance/VideoPlayIn3DWorld.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Advance/CommandBuffer_Outline.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/LayaScene_separable-sss/Conventional/HeadBlinnphong.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/texAnimation/Attack01/Attack01.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/texAnimation/role/role.lh", type: Laya.Loader.HIERARCHY }
      ];
    }
    onAwake() {
      let resArr = [
        //UI 资源
        { url: "resources/image/button1.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/button2.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/clip_arrow.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/clip_num_bg.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_blue_line.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_btn_bg.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_frame.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_list_bg.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_selected_bg.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_white_bg.jpg", type: Laya.Loader.IMAGE },
        { url: "resources/image/img_white_line.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/vscroll.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/vscroll$bar.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/vscroll$down.png", type: Laya.Loader.IMAGE },
        { url: "resources/image/vscroll$up.png", type: Laya.Loader.IMAGE },
        //2D 资源
        { url: "resources/res/apes/monkey0.png", type: Laya.Loader.IMAGE },
        { url: "resources/res/apes/monkey1.png", type: Laya.Loader.IMAGE },
        { url: "resources/res/apes/monkey2.png", type: Laya.Loader.IMAGE },
        { url: "resources/res/apes/monkey3.png", type: Laya.Loader.IMAGE },
        { url: "resources/res/fighter/fighter.atlas", type: Laya.Loader.ATLAS },
        { url: "resources/res/bg2.png", type: Laya.Loader.IMAGE },
        //Json 资源
        { url: "resources/res/tiledMap/orthogonal-test-movelayer.json", type: Laya.Loader.JSON },
        { url: "resources/res/tiledMap/isometric_grass_and_water.json", type: Laya.Loader.JSON },
        { url: "resources/res/tiledMap/perspective_walls.json", type: Laya.Loader.JSON },
        { url: "resources/res/tiledMap/desert.json", type: Laya.Loader.JSON },
        //3D 资源       
        { url: "resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/staticModel/grid/plane.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/particle/ETF_Burning_Ground.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/particle/ETF_Eternal_Light.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/skinModel/dude/dude.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/trail/Cube.lh", type: Laya.Loader.HIERARCHY },
        // 纹理资源
        { url: "resources/scene/3D/Scene3D/GriendSkyAmbientDemo/GriendSkyAmbientDemo.ktx", type: Laya.Loader.TEXTURE2D },
        { url: "resources/scene/3D/Material/PBRMaterialDemo/PBRMaterialDemo.ktx", type: Laya.Loader.TEXTURE2D },
        { url: "resources/res/threeDimen/LayaScene_MaskModelTest/Conventional/Assets/Scenes/MaskModelTestGIReflection.ltcb", type: Laya.Loader.TEXTURE2D },
        // LoadGltfRosource
        { url: "resources/res/threeDimen/fbx/LayaMonkey.FBX", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/fbx/Danding.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/fbx/Stand.FBX", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/fbx/Material.lmat", type: Laya.Loader.MATERIAL },
        { url: "resources/res/threeDimen/fbx/LayaMonkey.lmat", type: Laya.Loader.MATERIAL },
        // LoadFbxRosource
        { url: "resources/res/threeDimen/gltf/AnimatedCube/AnimatedCube.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/gltf/RiggedFigure/RiggedFigure.gltf", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/gltf/Duck/Duck.lh", type: Laya.Loader.HIERARCHY },
        // EnvironmentalReflection
        { url: "resources/res/threeDimen/staticModel/teapot/teapot-Teapot001.lm", type: Laya.Loader.MESH },
        { url: "resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat", type: Laya.Loader.MATERIAL },
        // GarbageCollection
        { url: "resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", type: Laya.Loader.HIERARCHY }
      ];
      console.time();
      Laya.loader.load(
        //先加载本场景要用的
        ["resources/image/ly.png", "resources/image/progress.png", "resources/image/progress$bar.png"]
      ).then(() => {
        console.timeEnd();
        console.log("\u5148\u52A0\u8F7D\u672C\u573A\u666F\u8981\u7528\u7684\u5B8C\u6210");
        Laya.loader.load(resArr, null, Laya.Handler.create(this, this.onLoading, null, false)).then(() => {
          this.onLoaded();
        });
        Laya.loader.on(Laya.Event.ERROR, this, this.onError);
      });
    }
    /**
    * 当报错时打印错误
    * @param err 报错信息
    */
    onError(err) {
      console.log("\u52A0\u8F7D\u5931\u8D25: " + err);
    }
    /**
     * 加载时侦听
     */
    onLoading(progress) {
      if (progress > 0.92)
        this.loadingBar.value = 0.95;
      else {
        this.loadingBar.value = progress;
      }
    }
    /**
     * 加载完成后，处理逻辑
     */
    onLoaded() {
      this.loadingBar.value = 0.98;
      console.log("\u52A0\u8F7D\u7ED3\u675F", this.loadingBar.value);
      if (!Laya.Browser._isMiniGame) {
        this.initDom();
        this.initAce();
      }
      this.enterDemo();
    }
    /**
     * 初始化查看源码和二维码用到的Dom节点
     */
    initDom() {
      let url = "resources/image/img_code_close.png";
      var codeLayer = Laya.Browser.document.createElement("div");
      codeLayer.id = "codeLayer";
      codeLayer.style = "display: none;position: absolute;top: 15%;left: 20%;width: 60%;height: 70%;background-color: #e4e4e4;z-index:1002;overflow: auto;";
      Laya.Browser.document.body.appendChild(codeLayer);
      var span = Laya.Browser.document.createElement("span");
      span.style = "position:absolute;text-align:center;color:#000000;width:100%;top:10;font-size:20px;";
      span.innerHTML = "\u6E90\u7801&nbsp;&nbsp;";
      codeLayer.appendChild(span);
      var img = Laya.Browser.document.createElement("img");
      img.style = "position:absolute;right:15;top:10;cursor:pointer;";
      img.src = Laya.URL.postFormatURL(Laya.URL.formatURL(url));
      img.setAttribute("href", "javascript:void(0)");
      img.setAttribute("onclick", "document.getElementById('codeLayer').style.display='none';document.getElementById('fade').style.display='none'");
      codeLayer.appendChild(img);
      var pre = Laya.Browser.document.createElement("pre");
      pre.id = "code";
      pre.setAttribute("class", "ace_editor");
      pre.style = "position:absolute;top:30px;width:99%;height:91%;border:2px solid #ccc;";
      codeLayer.appendChild(pre);
      var textarea = Laya.Browser.document.createElement("textarea");
      textarea.id = "codeContent";
      textarea.setAttribute("class", "ace_text-input");
      pre.appendChild(textarea);
      var qrcodeLayer = Laya.Browser.document.createElement("div");
      qrcodeLayer.id = "qrcodeLayer";
      qrcodeLayer.style = "display: none;position: absolute;left: 0;right: 0;top: 0;bottom: 0;text-align:center;margin:auto;width: 316px; height: 346px;background-color: #e4e4e4; z-index:1002; overflow: false;";
      Laya.Browser.document.body.appendChild(qrcodeLayer);
      var qrcodeSpan = Laya.Browser.document.createElement("span");
      qrcodeSpan.style = "position:absolute;text-align:center;color:#000000;width:100%;top:10px;left:10px;font-size:20px;";
      qrcodeSpan.innerHTML = "\u626B\u63CF\u4E8C\u7EF4\u7801&nbsp;&nbsp;";
      qrcodeLayer.appendChild(qrcodeSpan);
      var qrcodeImg = Laya.Browser.document.createElement("img");
      qrcodeImg.style = "position:absolute;right:15;top:10;cursor:pointer;";
      qrcodeImg.src = Laya.URL.postFormatURL(Laya.URL.formatURL(url));
      qrcodeImg.setAttribute("href", "javascript:void(0)");
      qrcodeImg.setAttribute("onclick", "document.getElementById('qrcodeLayer').style.display='none';document.getElementById('fade').style.display='none'");
      qrcodeLayer.appendChild(qrcodeImg);
      console.log("asd");
      var qrcode = Laya.Browser.document.createElement("div");
      qrcode.id = "qrcode";
      qrcode.style = "position:absolute;top:30px;padding: 30px 30px 30px 30px;";
      qrcodeLayer.appendChild(qrcode);
      var qrcodeTable = Laya.Browser.document.createElement("div");
      qrcodeTable.id = "qrcodeTable";
      qrcode.appendChild(qrcodeTable);
      var fade = Laya.Browser.document.createElement("div");
      fade.id = "fade";
      fade.style = "display: none;position: absolute;top: 0%;left: 0%; width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.8; opacity:.80; filter: alpha(opacity=88);";
      Laya.Browser.document.body.appendChild(fade);
    }
    /**
     * 初始化查看源码的第三方JS类库
     */
    initAce() {
      var script1 = Laya.Browser.document.createElement("script");
      script1.src = "https://cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ace.js";
      script1.onload = function() {
        var script2 = Laya.Browser.document.createElement("script");
        script2.src = "https://cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ext-language_tools.js";
        script2.onload = function() {
          var script = Laya.Browser.document.createElement("script");
          script.src = Laya.URL.postFormatURL(Laya.URL.formatURL("js/aceInit.js"));
          script.onerror = function() {
            console.log("download " + script.src + " error");
          };
          Laya.Browser.document.body.appendChild(script);
        };
        script2.onerror = function() {
          console.log("download " + script2.src + " error");
        };
        Laya.Browser.document.body.appendChild(script2);
      };
      script1.onerror = function() {
        console.log("download " + script1.src + " error");
      };
      Laya.Browser.document.body.appendChild(script1);
    }
    /**
     * 初始化查看源码的第三方JS类库
     */
    enterDemo() {
      Laya.Scene.open("resources/scene/Index.ls");
    }
    /**
     * 预先加载其它场景资源
     */
    loadOtherScene(index) {
      if (index == this.loadingOtherScenesPath.length)
        return;
      Laya.loader.load(
        this.loadingOtherScenesPath[index]
      ).then(() => {
        console.log("\u540E\u671F\u52A0\u8F7D\u5B8C " + index + " \u573A\u666F");
        this.loadingIndex++;
        this.loadOtherScene(this.loadingIndex);
      });
    }
  };
  __name(Main, "Main");
  Main = __decorateClass([
    regClass4("ad3cf108-21a0-4a90-9e86-6a401327d722", "../src/Main.ts")
  ], Main);

  // src/2D/Animation/Animation_Altas.ts
  var Animation = Laya.Animation;
  var Loader = Laya.Loader;
  var { regClass: regClass5, property: property5 } = Laya;
  var Animation_Altas = class extends BaseScript {
    constructor() {
      super();
      this.AniConfPath = "resources/res/fighter/fighter.json";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.AniConfPath, Loader.ATLAS).then(() => {
        this.createAnimation();
      });
    }
    //通过Animation来创建动画
    createAnimation(_e = null) {
      var ani = new Animation();
      ani.loadAtlas(this.AniConfPath);
      ani.interval = 30;
      ani.index = 1;
      ani.play();
      var bounds = ani.getGraphicBounds();
      ani.pivot(bounds.width / 2, bounds.height / 2);
      ani.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.owner.addChild(ani);
    }
  };
  __name(Animation_Altas, "Animation_Altas");
  Animation_Altas = __decorateClass([
    regClass5("bb1a4989-f1cb-40f1-ade0-043f8bf448f4", "../src/2D/Animation/Animation_Altas.ts")
  ], Animation_Altas);

  // src/2D/Animation/Animation_SWF.ts
  var MovieClip = Laya.MovieClip;
  var { regClass: regClass6, property: property6 } = Laya;
  var Animation_SWF = class extends BaseScript {
    constructor() {
      super();
      this.SWFPath = "resources/res/swf/dragon.swf";
      this.MCWidth = 318;
      this.MCHeight = 406;
    }
    onAwake() {
      super.base();
      this.createMovieClip();
    }
    //创建MovieClip组件创建动画
    createMovieClip() {
      var mc = new MovieClip();
      mc.load(this.SWFPath);
      mc.x = (this.pageWidth - this.MCWidth) / 2;
      mc.y = (this.pageHeight - this.MCHeight) / 2;
      this.owner.addChild(mc);
    }
  };
  __name(Animation_SWF, "Animation_SWF");
  Animation_SWF = __decorateClass([
    regClass6("2d69f3c9-f041-497b-b922-0e1fae2231fc", "../src/2D/Animation/Animation_SWF.ts")
  ], Animation_SWF);

  // src/2D/BlendMode/BlendMode_Lighter.ts
  var Animation2 = Laya.Animation;
  var Handler = Laya.Handler;
  var Tween = Laya.Tween;
  var { regClass: regClass7, property: property7 } = Laya;
  var BlendMode_Lighter = class extends BaseScript {
    constructor() {
      super();
      // 一只凤凰的分辨率是550 * 400
      this.phoenixWidth = 750;
      this.phoenixHeight = 450;
      this.bgColorTweener = new Tween();
      this.gradientInterval = 2e3;
      this.bgColorChannels = { "r": 99, "g": 0, "b": 255 };
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createPhoenixes();
      this.evalBgColor();
      Laya.timer.frameLoop(1, this, this.renderBg);
    }
    createPhoenixes() {
      var scaleFactor = Math.min(
        this.pageWidth / (this.phoenixWidth * 2),
        this.pageHeight / this.phoenixHeight
      );
      this.blendedPhoenix = this.createAnimation();
      this.blendedPhoenix.blendMode = "lighter";
      this.blendedPhoenix.scale(scaleFactor, scaleFactor);
      this.blendedPhoenix.y = (this.pageHeight - this.phoenixHeight * scaleFactor) / 2;
      this.normalPhoenix = this.createAnimation();
      this.normalPhoenix.scale(scaleFactor, scaleFactor);
      this.normalPhoenix.x = this.phoenixWidth * scaleFactor;
      this.normalPhoenix.y = (this.pageHeight - this.phoenixHeight * scaleFactor) / 2;
    }
    createAnimation() {
      var frames = [];
      for (var i = 1; i <= 25; ++i) {
        frames.push("resources/res/phoenix/phoenix" + this.preFixNumber(i, 4) + ".jpg");
      }
      var animation = new Animation2();
      animation.loadImages(frames);
      this.box2D.addChild(animation);
      var clips = animation.frames.concat();
      clips = clips.reverse();
      animation.frames = animation.frames.concat(clips);
      animation.play();
      return animation;
    }
    preFixNumber(num, strLen) {
      return ("0000000000" + num).slice(-strLen);
    }
    evalBgColor() {
      var color = Math.random() * 16777215;
      var channels = this.getColorChannals(color);
      this.bgColorTweener.to(this.bgColorChannels, { "r": channels[0], "g": channels[1], "b": channels[2] }, this.gradientInterval, null, Handler.create(this, this.onTweenComplete));
    }
    getColorChannals(color) {
      var result = [];
      result.push(color >> 16);
      result.push(color >> 8 & 255);
      result.push(color & 255);
      return result;
    }
    onTweenComplete() {
      this.evalBgColor();
    }
    renderBg() {
      this.bgSp.graphics.clear();
      this.bgSp.graphics.drawRect(
        this.blendedPhoenix.x,
        this.blendedPhoenix.y,
        this.phoenixWidth,
        this.phoenixHeight,
        this.getHexColorString()
      );
    }
    getHexColorString() {
      this.bgColorChannels.r = Math.floor(this.bgColorChannels.r);
      this.bgColorChannels.g = 0;
      this.bgColorChannels.b = Math.floor(this.bgColorChannels.b);
      var r = this.bgColorChannels.r.toString(16);
      r = r.length == 2 ? r : "0" + r;
      var g = this.bgColorChannels.g.toString(16);
      g = g.length == 2 ? g : "0" + g;
      var b = this.bgColorChannels.b.toString(16);
      b = b.length == 2 ? b : "0" + b;
      return "#" + r + g + b;
    }
    /**
     * 手动调用节点销毁时执行
     */
    onDestroy() {
      if (this.blendedPhoenix == null)
        return;
      if (this.normalPhoenix == null)
        return;
      this.bgColorTweener.clear();
      this.normalPhoenix.stop();
      this.blendedPhoenix.stop();
      Laya.timer.clear(this, this.renderBg);
      this.box2D.graphics.clear();
    }
  };
  __name(BlendMode_Lighter, "BlendMode_Lighter");
  __decorateClass([
    property7({ type: Laya.Sprite })
  ], BlendMode_Lighter.prototype, "bgSp", 2);
  BlendMode_Lighter = __decorateClass([
    regClass7("07612b84-7887-4044-8910-6e2fc2b0d0ab", "../src/2D/BlendMode/BlendMode_Lighter.ts")
  ], BlendMode_Lighter);

  // src/2D/DOM/DOM_Form.ts
  var Sprite = Laya.Sprite;
  var SpriteUtils = Laya.SpriteUtils;
  var Render = Laya.Render;
  var Browser = Laya.Browser;
  var Text = Laya.Text;
  var { regClass: regClass8, property: property8 } = Laya;
  var DOM_Form = class extends BaseScript {
    constructor() {
      super();
      this.rowHeight = 30;
      this.rowSpacing = 10;
    }
    onAwake() {
      super.base();
      this.box2D.bgColor = "#FFFFFF";
      this.form = new Sprite();
      this.form.size(250, 120);
      this.form.pos((this.pageWidth - this.form.width) / 2, (this.pageHeight - this.form.height) / 2);
      this.owner.addChild(this.form);
      var rowHeightDelta = this.rowSpacing + this.rowHeight;
      this.showLabel("\u90AE\u7BB1", 0, rowHeightDelta * 0);
      this.showLabel("\u51FA\u751F\u65E5\u671F", 0, rowHeightDelta * 1);
      this.showLabel("\u5BC6\u7801", 0, rowHeightDelta * 2);
      this.emailInput = this.createInputElement();
      this.birthdayInput = this.createInputElement();
      this.passwordInput = this.createInputElement();
      this.birthdayInput.type = "date";
      this.passwordInput.type = "password";
      var dom;
      let all = [this.emailInput, this.birthdayInput, this.passwordInput];
      for (var i = 0; i < all.length; i++) {
        dom = all[i];
        if (Index.curPage)
          SpriteUtils.fitDOMElementInArea(dom, this.form, Index.pagePos.x + 100, Index.pagePos.y + i * (this.rowSpacing + this.rowHeight), 150, this.rowHeight);
        else
          SpriteUtils.fitDOMElementInArea(dom, this.form, 100, i * (this.rowSpacing + this.rowHeight), 150, this.rowHeight);
      }
    }
    onDestroy() {
      Browser.removeElement(this.emailInput);
      Browser.removeElement(this.birthdayInput);
      Browser.removeElement(this.passwordInput);
    }
    showLabel(label, x, y) {
      var t = new Text();
      t.height = this.rowHeight;
      t.valign = "middle";
      t.fontSize = 15;
      t.font = "SimHei";
      t.text = label;
      t.pos(x, y);
      this.form.addChild(t);
    }
    createInputElement() {
      var input = Browser.createElement("input");
      input.style.zIndex = Render.canvas.zIndex + 1;
      input.style.width = "100px";
      Browser.document.body.appendChild(input);
      return input;
    }
  };
  __name(DOM_Form, "DOM_Form");
  DOM_Form = __decorateClass([
    regClass8("1c782215-3a40-4f5d-8669-d905f1c1fdf1", "../src/2D/DOM/DOM_Form.ts")
  ], DOM_Form);

  // src/2D/DOM/DOM_Video.ts
  var Sprite2 = Laya.Sprite;
  var SpriteUtils2 = Laya.SpriteUtils;
  var Render2 = Laya.Render;
  var Browser2 = Laya.Browser;
  var { regClass: regClass9, property: property9 } = Laya;
  var DOM_Video = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      var videoElement = Browser2.createElement("video");
      Browser2.document.body.appendChild(videoElement);
      this.video = videoElement;
      videoElement.style.zInddex = Render2.canvas.style.zIndex + 1;
      videoElement.src = Laya.URL.postFormatURL(Laya.URL.formatURL("resources/res/av/mov_bbb.mp4"));
      videoElement.controls = true;
      videoElement.setAttribute("webkit-playsinline", true);
      videoElement.setAttribute("playsinline", true);
      var reference = new Sprite2();
      this.owner.addChild(reference);
      reference.pos((this.pageWidth - 600) / 2, (this.pageHeight - 400) / 2);
      reference.size(600, 400);
      reference.graphics.drawRect(0, 0, reference.width, reference.height, "#000000");
      if (Index.curPage)
        SpriteUtils2.fitDOMElementInArea(videoElement, reference, Index.pagePos.x, Index.pagePos.y, reference.width, reference.height);
      else
        SpriteUtils2.fitDOMElementInArea(videoElement, reference, 0, 0, reference.width, reference.height);
    }
    onDestroy() {
      Browser2.removeElement(this.video);
    }
  };
  __name(DOM_Video, "DOM_Video");
  DOM_Video = __decorateClass([
    regClass9("185fc57b-dbf7-4008-bc7d-11e6ff6bd852", "../src/2D/DOM/DOM_Video.ts")
  ], DOM_Video);

  // src/2D/Filters/Filters_Blur.ts
  var Sprite3 = Laya.Sprite;
  var BlurFilter = Laya.BlurFilter;
  var { regClass: regClass10, property: property10 } = Laya;
  var Filters_Blur = class extends BaseScript {
    constructor() {
      super();
      this.apePath = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.apePath).then(() => {
        this.createApe();
      });
    }
    createApe(_e = null) {
      var ape = new Sprite3();
      ape.loadImage(this.apePath);
      ape.x = (this.pageWidth - ape.width) / 2;
      ape.y = (this.pageHeight - ape.height) / 2;
      this.box2D.addChild(ape);
      this.applayFilter(ape);
    }
    applayFilter(ape) {
      var blurFilter = new BlurFilter();
      blurFilter.strength = 5;
      ape.filters = [blurFilter];
    }
  };
  __name(Filters_Blur, "Filters_Blur");
  Filters_Blur = __decorateClass([
    regClass10("5a2d9f62-4b74-4b87-a22d-82ecd65fa568", "../src/2D/Filters/Filters_Blur.ts")
  ], Filters_Blur);

  // src/2D/Filters/Filters_Color.ts
  var Sprite4 = Laya.Sprite;
  var ColorFilter = Laya.ColorFilter;
  var { regClass: regClass11, property: property11 } = Laya;
  var Filters_Color = class extends BaseScript {
    constructor() {
      super();
      this.ApePath = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.ApePath).then(() => {
        this.setup();
      });
    }
    setup(e = null) {
      this.normalizeApe();
      this.makeRedApe();
      this.grayingApe();
    }
    normalizeApe() {
      var originalApe = this.createApe();
      this.apeTexture = Laya.loader.getRes(this.ApePath);
      originalApe.x = (this.pageWidth - this.apeTexture.width) / 2 - this.apeTexture.width;
      originalApe.y = (this.pageHeight - this.apeTexture.height) / 2;
    }
    makeRedApe() {
      var redMat = [
        1,
        0,
        0,
        0,
        0,
        //R
        0,
        0,
        0,
        0,
        0,
        //G
        0,
        0,
        0,
        0,
        0,
        //B
        0,
        0,
        0,
        1,
        0
      ];
      var redFilter = new ColorFilter(redMat);
      var redApe = this.createApe();
      redApe.filters = [redFilter];
      redApe.x = (this.pageWidth - this.apeTexture.width) / 2;
      redApe.y = (this.pageHeight - this.apeTexture.height) / 2;
    }
    grayingApe() {
      var grayscaleMat = [
        0.3086,
        0.6094,
        0.082,
        0,
        0,
        0.3086,
        0.6094,
        0.082,
        0,
        0,
        0.3086,
        0.6094,
        0.082,
        0,
        0,
        0,
        0,
        0,
        1,
        0
      ];
      var grayscaleFilter = new ColorFilter(grayscaleMat);
      var grayApe = this.createApe();
      grayApe.filters = [grayscaleFilter];
      grayApe.x = (this.pageWidth - this.apeTexture.width) / 2 + this.apeTexture.width;
      grayApe.y = (this.pageHeight - this.apeTexture.height) / 2;
    }
    createApe() {
      var ape = new Sprite4();
      ape.loadImage("resources/res/apes/monkey2.png");
      this.box2D.addChild(ape);
      return ape;
    }
  };
  __name(Filters_Color, "Filters_Color");
  Filters_Color = __decorateClass([
    regClass11("a191fef0-2f45-4ee6-b170-a95e6e080673", "../src/2D/Filters/Filters_Color.ts")
  ], Filters_Color);

  // src/2D/Filters/Filters_Glow.ts
  var Sprite5 = Laya.Sprite;
  var GlowFilter = Laya.GlowFilter;
  var { regClass: regClass12, property: property12 } = Laya;
  var Filters_Glow = class extends BaseScript {
    constructor() {
      super();
      this.apePath = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.apePath).then((tex) => {
        this.setup(tex);
      });
    }
    setup(tex) {
      this.createApe();
      this.applayFilter();
    }
    createApe() {
      this.ape = new Sprite5();
      this.ape.loadImage(this.apePath);
      var texture = Laya.loader.getRes(this.apePath);
      this.ape.x = (this.pageWidth - texture.width) / 2;
      this.ape.y = (this.pageHeight - texture.height) / 2;
      this.box2D.addChild(this.ape);
    }
    applayFilter() {
      var glowFilter = new GlowFilter("#ffff00", 10, 0, 0);
      this.ape.filters = [glowFilter];
    }
  };
  __name(Filters_Glow, "Filters_Glow");
  Filters_Glow = __decorateClass([
    regClass12("3245ae37-5b4f-4178-901d-4b22800bb84a", "../src/2D/Filters/Filters_Glow.ts")
  ], Filters_Glow);

  // src/2D/InputDevice/InputDevice_Compasss.ts
  var Sprite6 = Laya.Sprite;
  var Event3 = Laya.Event;
  var Browser3 = Laya.Browser;
  var Text2 = Laya.Text;
  var Gyroscope = Laya.Gyroscope;
  var { regClass: regClass13, property: property13 } = Laya;
  var InputDevice_Compasss = class extends BaseScript {
    constructor() {
      super();
      this.compassImgPath = "resources/res/inputDevice/kd.png";
      this.firstTime = true;
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.compassImgPath).then(() => {
        this.init();
      });
    }
    init() {
      this.createCompass();
      this.createDirectionIndicator();
      this.drawUI();
      this.createDegreesText();
      Gyroscope.instance.on(Event3.CHANGE, this, this.onOrientationChange);
    }
    createCompass() {
      this.compassImg = new Sprite6();
      this.box2D.addChild(this.compassImg);
      this.compassImg.loadImage(this.compassImgPath);
      this.compassImg.pivot(this.compassImg.width / 2, this.compassImg.height / 2);
      this.compassImg.pos(this.pageWidth / 2, 400);
    }
    drawUI() {
      var canvas = new Sprite6();
      this.box2D.addChild(canvas);
      canvas.graphics.drawLine(this.compassImg.x, 50, this.compassImg.x, 182, "#FFFFFF", 3);
      canvas.graphics.drawLine(-140 + this.compassImg.x, this.compassImg.y, 140 + this.compassImg.x, this.compassImg.y, "#AAAAAA", 1);
      canvas.graphics.drawLine(this.compassImg.x, -140 + this.compassImg.y, this.compassImg.x, 140 + this.compassImg.y, "#AAAAAA", 1);
    }
    createDegreesText() {
      this.degreesText = new Text2();
      this.box2D.addChild(this.degreesText);
      this.degreesText.align = "center";
      this.degreesText.size(this.pageWidth, 100);
      this.degreesText.pos(0, this.compassImg.y + 400);
      this.degreesText.fontSize = 100;
      this.degreesText.color = "#FFFFFF";
    }
    // 方位指示器指向当前所朝方位。
    createDirectionIndicator() {
      this.directionIndicator = new Sprite6();
      this.box2D.addChild(this.directionIndicator);
      this.directionIndicator.alpha = 0.8;
      this.directionIndicator.graphics.drawCircle(0, 0, 70, "#343434");
      this.directionIndicator.graphics.drawLine(-40, 0, 40, 0, "#FFFFFF", 3);
      this.directionIndicator.graphics.drawLine(0, -40, 0, 40, "#FFFFFF", 3);
      this.directionIndicator.x = this.compassImg.x;
      this.directionIndicator.y = this.compassImg.y;
    }
    onOrientationChange(absolute, info) {
      if (info.alpha === null) {
        alert("\u5F53\u524D\u8BBE\u5907\u4E0D\u652F\u6301\u9640\u87BA\u4EEA\u3002");
      } else if (this.firstTime && !absolute && !Browser3.onIOS) {
        this.firstTime = false;
        alert("\u5728\u5F53\u524D\u8BBE\u5907\u4E2D\u65E0\u6CD5\u83B7\u53D6\u5730\u7403\u5750\u6807\u7CFB\uFF0C\u4F7F\u7528\u8BBE\u5907\u5750\u6807\u7CFB\uFF0C\u4F60\u53EF\u4EE5\u7EE7\u7EED\u89C2\u8D4F\uFF0C\u4F46\u662F\u63D0\u4F9B\u7684\u65B9\u4F4D\u5E76\u975E\u6B63\u786E\u65B9\u4F4D\u3002");
      }
      this.degreesText.text = 360 - Math.floor(info.alpha) + "\xB0";
      this.compassImg.rotation = info.alpha;
      this.directionIndicator.x = -1 * Math.floor(info.gamma) / 90 * 70 + this.compassImg.x;
      this.directionIndicator.y = -1 * Math.floor(info.beta) / 90 * 70 + this.compassImg.y;
    }
  };
  __name(InputDevice_Compasss, "InputDevice_Compasss");
  InputDevice_Compasss = __decorateClass([
    regClass13("bd6d133a-0360-4e2d-bd20-5c9ef850727d", "../src/2D/InputDevice/InputDevice_Compasss.ts")
  ], InputDevice_Compasss);

  // src/2D/InputDevice/InputDevice_GluttonousSnake.ts
  var Sprite7 = Laya.Sprite;
  var Event4 = Laya.Event;
  var Accelerator = Laya.Accelerator;
  var Point = Laya.Point;
  var { regClass: regClass14, property: property14 } = Laya;
  var InputDevice_GluttonousSnake = class extends BaseScript {
    constructor() {
      super();
      this.segments = [];
      this.foods = [];
      this.initialSegmentsAmount = 5;
      this.vx = 0;
      this.vy = 0;
    }
    onAwake() {
      super.base();
      this.initSnake();
      Accelerator.instance.on(Event4.CHANGE, this, this.monitorAccelerator);
      Laya.timer.frameLoop(1, this, this.animate);
      Laya.timer.loop(3e3, this, this.produceFood);
      this.produceFood();
    }
    initSnake() {
      for (var i = 0; i < this.initialSegmentsAmount; i++) {
        this.addSegment();
        if (i == 0) {
          var header = this.segments[0];
          header.rotation = 180;
          this.targetPosition = new Point();
          this.targetPosition.x = this.pageWidth / 2;
          this.targetPosition.y = this.pageHeight / 2;
          header.pos(this.targetPosition.x + header.width, this.targetPosition.y);
          header.graphics.drawCircle(header.width, 5, 3, "#000000");
          header.graphics.drawCircle(header.width, -5, 3, "#000000");
        }
      }
    }
    monitorAccelerator(acceleration, accelerationIncludingGravity, rotationRate, interval) {
      this.vx = accelerationIncludingGravity.x;
      this.vy = accelerationIncludingGravity.y;
    }
    addSegment() {
      var seg = new Segment(40, 30);
      this.box2D.addChildAt(seg, 0);
      if (this.segments.length > 0) {
        var prevSeg = this.segments[this.segments.length - 1];
        seg.rotation = prevSeg.rotation;
        var point = seg.getPinPosition();
        seg.x = prevSeg.x - point.x;
        seg.y = prevSeg.y - point.y;
      }
      this.segments.push(seg);
    }
    animate() {
      var seg = this.segments[0];
      this.targetPosition.x += this.vx;
      this.targetPosition.y += this.vy;
      this.limitMoveRange();
      this.checkEatFood();
      var targetX = this.targetPosition.x;
      var targetY = this.targetPosition.y;
      for (var i = 0, len = this.segments.length; i < len; i++) {
        seg = this.segments[i];
        var dx = targetX - seg.x;
        var dy = targetY - seg.y;
        var radian = Math.atan2(dy, dx);
        seg.rotation = radian * 180 / Math.PI;
        var pinPosition = seg.getPinPosition();
        var w = pinPosition.x - seg.x;
        var h = pinPosition.y - seg.y;
        seg.x = targetX - w;
        seg.y = targetY - h;
        targetX = seg.x;
        targetY = seg.y;
      }
    }
    limitMoveRange() {
      if (this.targetPosition.x < 0)
        this.targetPosition.x = 0;
      else if (this.targetPosition.x > this.pageWidth)
        this.targetPosition.x = this.pageWidth;
      if (this.targetPosition.y < 0)
        this.targetPosition.y = 0;
      else if (this.targetPosition.y > this.pageHeight)
        this.targetPosition.y = this.pageHeight;
    }
    checkEatFood() {
      var food;
      for (var i = this.foods.length - 1; i >= 0; i--) {
        food = this.foods[i];
        if (food.hitTestPoint(this.targetPosition.x, this.targetPosition.y)) {
          this.addSegment();
          Laya.stage.removeChild(food);
          this.foods.splice(i, 1);
        }
      }
    }
    produceFood() {
      if (this.foods.length == 5)
        return;
      var food = new Sprite7();
      this.box2D.addChild(food);
      this.foods.push(food);
      const foodSize = 40;
      food.size(foodSize, foodSize);
      food.graphics.drawRect(0, 0, foodSize, foodSize, "#00BFFF");
      food.x = Math.random() * this.pageWidth;
      food.y = Math.random() * this.pageHeight;
    }
  };
  __name(InputDevice_GluttonousSnake, "InputDevice_GluttonousSnake");
  InputDevice_GluttonousSnake = __decorateClass([
    regClass14("06ea46e2-eb55-4c32-8d2b-6fa85bc8cf9c", "../src/2D/InputDevice/InputDevice_GluttonousSnake.ts")
  ], InputDevice_GluttonousSnake);
  var _Segment = class _Segment extends Sprite7 {
    constructor(width, height) {
      super();
      this.size(width, height);
      this.init();
    }
    init() {
      this.graphics.drawRect(-this.height / 2, -this.height / 2, this.width + this.height, this.height, "#FF7F50");
    }
    // 获取关节另一头位置
    getPinPosition() {
      var radian = this.rotation * Math.PI / 180;
      var tx = this.x + Math.cos(radian) * this.width;
      var ty = this.y + Math.sin(radian) * this.width;
      return new Point(tx, ty);
    }
  };
  __name(_Segment, "Segment");
  var Segment = _Segment;

  // src/2D/InputDevice/InputDevice_Map.ts
  var Text3 = Laya.Text;
  var Geolocation = Laya.Geolocation;
  var Handler2 = Laya.Handler;
  var Browser4 = Laya.Browser;
  var SpriteUtils3 = Laya.SpriteUtils;
  var { regClass: regClass15, property: property15 } = Laya;
  var InputDevice_Map = class extends BaseScript {
    constructor() {
      super();
      this.BMap = Browser4.window.BMap;
    }
    onAwake() {
      this.convertor = new this.BMap.Convertor();
      super.base();
      this.createDom();
      this.initMap();
      this.createInfoText();
      var successHandler = new Handler2(this, this.updatePosition);
      var errorHandler = new Handler2(this, this.onError);
      Geolocation.enableHighAccuracy = true;
      Geolocation.watchPosition(successHandler, errorHandler);
      this.convertToBaiduCoord = this.convertToBaiduCoord.bind(this);
    }
    onDestroy() {
      Browser4.removeElement(this.mapDiv);
    }
    createDom() {
      this.mapDiv = Browser4.createElement("div");
      var style = this.mapDiv.style;
      style.position = "absolute";
      style.top = "50px";
      style.left = "0px";
      style.width = Browser4.width / Browser4.pixelRatio + "px";
      style.height = Browser4.height / Browser4.pixelRatio + "px";
      Browser4.document.body.appendChild(this.mapDiv);
      if (Index.curPage)
        SpriteUtils3.fitDOMElementInArea(this.mapDiv, this.box2D, Index.pagePos.x, Index.pagePos.y + 50, this.pageWidth, this.pageHeight - 50);
    }
    initMap() {
      this.map = new this.BMap.Map(this.mapDiv);
      this.map.disableKeyboard();
      this.map.disableScrollWheelZoom();
      this.map.disableDoubleClickZoom();
      this.map.disablePinchToZoom();
      this.map.centerAndZoom(new this.BMap.Point(116.32715863448607, 39.990912172420714), 15);
      this.marker = new this.BMap.Marker(new this.BMap.Point(0, 0));
      this.map.addOverlay(this.marker);
      var label = new this.BMap.Label("\u5F53\u524D\u4F4D\u7F6E", { "offset": new this.BMap.Size(-15, 30) });
      this.marker.setLabel(label);
    }
    createInfoText() {
      this.infoText = new Text3();
      this.owner.addChild(this.infoText);
      this.infoText.fontSize = 20;
      this.infoText.color = "#FFFFFF";
      this.infoText.text = "\u7B49\u5F85\u521D\u59CB\u5316\u6570\u636E";
      this.infoText.size(this.pageWidth, this.pageHeight);
    }
    // 更新设备位置
    updatePosition(p) {
      var point = new this.BMap.Point(p.longitude, p.latitude);
      this.convertor.translate([point], 1, 5, this.convertToBaiduCoord);
      this.infoText.text = "\u7ECF\u5EA6\uFF1A" + p.longitude + "	\u7EAC\u5EA6\uFF1A" + p.latitude + "	\u7CBE\u5EA6\uFF1A" + p.accuracy + "\n\u6D77\u62D4\uFF1A" + p.altitude + "	\u6D77\u62D4\u7CBE\u5EA6\uFF1A" + p.altitudeAccuracy + "\n\u5934\uFF1A" + p.heading + "\n\u901F\u5EA6\uFF1A" + p.speed + "\n\u65F6\u95F4\u6233\uFF1A" + p.timestamp;
    }
    // 将原始坐标转换为百度坐标
    convertToBaiduCoord(data) {
      if (data.status == 0) {
        var position = data.points[0];
        this.marker.setPosition(position);
        this.map.panTo(position);
        this.map.setZoom(17);
      }
    }
    onError(e) {
      if (e.code == Geolocation.TIMEOUT)
        console.log("\u83B7\u53D6\u4F4D\u7F6E\u8D85\u65F6");
      else if (e.code == Geolocation.POSITION_UNAVAILABLE)
        console.log("\u4F4D\u7F6E\u4E0D\u53EF\u7528");
      else if (e.code == Geolocation.PERMISSION_DENIED)
        console.log("\u65E0\u6743\u9650");
    }
  };
  __name(InputDevice_Map, "InputDevice_Map");
  InputDevice_Map = __decorateClass([
    regClass15("8ec2c3be-7664-483d-9bb8-6844ba2e6eb4", "../src/2D/InputDevice/InputDevice_Map.ts")
  ], InputDevice_Map);

  // src/2D/InputDevice/InputDevice_Shake.ts
  var Sprite8 = Laya.Sprite;
  var Event5 = Laya.Event;
  var Shake = Laya.Shake;
  var Text4 = Laya.Text;
  var { regClass: regClass16, property: property16 } = Laya;
  var InputDevice_Shake = class extends BaseScript {
    constructor() {
      super();
      this.picW = 824;
      this.picH = 484;
      this.shakeCount = 0;
    }
    onAwake() {
      super.base();
      this.showShakePic();
      this.showConsoleText();
      this.startShake();
    }
    showShakePic() {
      var shakePic = new Sprite8();
      shakePic.loadImage("resources/res/inputDevice/shake.png");
      this.box2D.addChild(shakePic);
    }
    showConsoleText() {
      this.console = new Text4();
      this.box2D.addChild(this.console);
      this.console.y = this.picH + 10;
      this.console.width = this.pageWidth;
      this.console.height = this.pageHeight - this.console.y;
      this.console.color = "#FFFFFF";
      this.console.fontSize = 50;
      this.console.align = "center";
      this.console.valign = "middle";
      this.console.leading = 10;
    }
    startShake() {
      Shake.instance.start(5, 500);
      Shake.instance.on(Event5.CHANGE, this, this.onShake);
      this.console.text = "\u5F00\u59CB\u63A5\u6536\u8BBE\u5907\u6447\u52A8\n";
    }
    onShake() {
      this.shakeCount++;
      this.console.text += "\u8BBE\u5907\u6447\u6643\u4E86" + this.shakeCount + "\u6B21\n";
      if (this.shakeCount >= 3) {
        Shake.instance.stop();
        this.console.text += "\u505C\u6B62\u63A5\u6536\u8BBE\u5907\u6447\u52A8";
      }
    }
  };
  __name(InputDevice_Shake, "InputDevice_Shake");
  InputDevice_Shake = __decorateClass([
    regClass16("0d182ff5-c807-482f-93a4-71c520624de7", "../src/2D/InputDevice/InputDevice_Shake.ts")
  ], InputDevice_Shake);

  // src/2D/Interaction/Interaction_CustomEvent.ts
  var Sprite9 = Laya.Sprite;
  var Event6 = Laya.Event;
  var Tween2 = Laya.Tween;
  var Ease = Laya.Ease;
  var { regClass: regClass17, property: property17 } = Laya;
  var Interaction_CustomEvent = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createSprite();
    }
    createSprite() {
      this.sp = new Sprite9();
      this.sp.graphics.drawRect(0, 0, 200, 200, "#D2691E");
      this.sp.anchorX = 0.5;
      this.sp.anchorY = 0.5;
      this.sp.x = this.pageWidth / 2;
      this.sp.y = this.pageHeight / 2;
      this.sp.size(200, 200);
      this.box2D.addChild(this.sp);
      this.sp.on(Interaction_CustomEvent.ROTATE, this, this.onRotate);
      this.sp.on(Event6.CLICK, this, this.onSpriteClick);
    }
    onSpriteClick(e = null) {
      var randomAngle = Math.random() * 180;
      this.sp.event(Interaction_CustomEvent.ROTATE, [randomAngle]);
    }
    // 触发自定义的rotate事件
    onRotate(newAngle) {
      Tween2.to(this.sp, { "rotation": newAngle }, 1e3, Ease.elasticOut);
    }
  };
  __name(Interaction_CustomEvent, "Interaction_CustomEvent");
  Interaction_CustomEvent.ROTATE = "rotate";
  Interaction_CustomEvent = __decorateClass([
    regClass17("4348f438-2443-44c5-b56e-6fffed21110a", "../src/2D/Interaction/Interaction_CustomEvent.ts")
  ], Interaction_CustomEvent);

  // src/2D/Interaction/Interaction_Drag.ts
  var Sprite10 = Laya.Sprite;
  var Event7 = Laya.Event;
  var Rectangle = Laya.Rectangle;
  var { regClass: regClass18, property: property18 } = Laya;
  var Interaction_Drag = class extends BaseScript {
    constructor() {
      super();
      this.ApePath = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.ApePath).then(() => {
        this.setup();
      });
    }
    setup(_e = null) {
      this.createApe();
      this.showDragRegion();
    }
    createApe() {
      this.ape = new Sprite10();
      this.ape.loadImage(this.ApePath);
      this.box2D.addChild(this.ape);
      var texture = Laya.loader.getRes(this.ApePath);
      this.ape.pivot(texture.width / 2, texture.height / 2);
      this.ape.x = this.pageWidth / 2;
      this.ape.y = this.pageHeight / 2;
      this.ape.on(Event7.MOUSE_DOWN, this, this.onStartDrag);
    }
    showDragRegion() {
      var dragWidthLimit = 350;
      var dragHeightLimit = 200;
      this.dragRegion = new Rectangle(this.pageWidth - dragWidthLimit >> 1, this.pageHeight - dragHeightLimit >> 1, dragWidthLimit, dragHeightLimit);
      this.box2D.graphics.drawRect(
        this.dragRegion.x,
        this.dragRegion.y,
        this.dragRegion.width,
        this.dragRegion.height,
        null,
        "#FFFFFF",
        2
      );
    }
    onStartDrag(e = null) {
      this.ape.startDrag(this.dragRegion, true, 100);
    }
    onDestroy() {
      if (this.ape) {
        this.ape.off(Event7.MOUSE_DOWN, this, this.onStartDrag);
      }
    }
  };
  __name(Interaction_Drag, "Interaction_Drag");
  Interaction_Drag = __decorateClass([
    regClass18("953133f3-7108-48c9-b38f-f851783a1d23", "../src/2D/Interaction/Interaction_Drag.ts")
  ], Interaction_Drag);

  // src/2D/Interaction/Interaction_FixInteractiveRegion.ts
  var Sprite11 = Laya.Sprite;
  var Event8 = Laya.Event;
  var Text5 = Laya.Text;
  var { regClass: regClass19, property: property19 } = Laya;
  var Interaction_FixInteractiveRegion = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.buildWorld();
      this.createLogger();
    }
    buildWorld() {
      this.createCoralRect();
      this.createDeepSkyblueRect();
      this.createDarkOrchidRect();
      this.box2D.on(Event8.MOUSE_DOWN, this, this.onDown);
    }
    createCoralRect() {
      var coralRect = new Sprite11();
      coralRect.graphics.drawRect(0, 0, this.pageWidth, this.pageHeight / 2, "#FF7F50");
      coralRect.name = "\u73CA\u745A\u8272\u5BB9\u5668";
      coralRect.size(this.pageWidth, this.pageHeight / 2);
      this.box2D.addChild(coralRect);
      coralRect.on(Event8.MOUSE_DOWN, this, this.onDown);
    }
    createDeepSkyblueRect() {
      var deepSkyblueRect = new Sprite11();
      deepSkyblueRect.graphics.drawRect(0, 0, 100, 100, "#00BFFF");
      deepSkyblueRect.name = "\u5929\u84DD\u8272\u77E9\u5F62";
      deepSkyblueRect.size(100, 100);
      deepSkyblueRect.pos(10, 10);
      this.box2D.addChild(deepSkyblueRect);
      deepSkyblueRect.on(Event8.MOUSE_DOWN, this, this.onDown);
    }
    createDarkOrchidRect() {
      var darkOrchidRect = new Sprite11();
      darkOrchidRect.name = "\u6697\u7D2B\u8272\u77E9\u5F62\u5BB9\u5668";
      darkOrchidRect.graphics.drawRect(-100, -100, 200, 200, "#9932CC");
      darkOrchidRect.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.box2D.addChild(darkOrchidRect);
      darkOrchidRect.mouseThrough = true;
      darkOrchidRect.on(Event8.MOUSE_DOWN, this, this.onDown);
    }
    createLogger() {
      this.logger = new Text5();
      this.logger.size(this.pageWidth, this.pageHeight);
      this.logger.align = "right";
      this.logger.fontSize = 20;
      this.logger.color = "#FFFFFF";
      this.box2D.addChild(this.logger);
    }
    /**侦听处理方法*/
    onDown(e = null) {
      this.logger.text += "\u70B9\u51FB - " + e.target.name + "\n";
    }
    onDestroy() {
      this.box2D.off(Event8.MOUSE_DOWN, this, this.onDown);
    }
  };
  __name(Interaction_FixInteractiveRegion, "Interaction_FixInteractiveRegion");
  Interaction_FixInteractiveRegion = __decorateClass([
    regClass19("60a3caf8-aaf6-4ba3-b0e9-e5684315a537", "../src/2D/Interaction/Interaction_FixInteractiveRegion.ts")
  ], Interaction_FixInteractiveRegion);

  // src/2D/Interaction/Interaction_Hold.ts
  var Sprite12 = Laya.Sprite;
  var Event9 = Laya.Event;
  var Ease2 = Laya.Ease;
  var Tween3 = Laya.Tween;
  var { regClass: regClass20, property: property20 } = Laya;
  var Interaction_Hold = class extends BaseScript {
    constructor() {
      super();
      this.HOLD_TRIGGER_TIME = 1e3;
      this.apePath = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      this.base();
      Laya.loader.load(this.apePath).then(() => {
        this.createApe();
      });
    }
    createApe(_e = null) {
      this.ape = new Sprite12();
      this.ape.loadImage(this.apePath);
      var texture = Laya.loader.getRes(this.apePath);
      this.ape.pivot(texture.width / 2, texture.height / 2);
      this.ape.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.ape.scale(0.8, 0.8);
      this.box2D.addChild(this.ape);
      this.ape.on(Event9.MOUSE_DOWN, this, this.onApePress);
    }
    onApePress(e = null) {
      Laya.timer.once(this.HOLD_TRIGGER_TIME, this, this.onHold);
      this.box2D.on(Event9.MOUSE_UP, this, this.onApeRelease);
    }
    onHold(e = null) {
      Tween3.to(this.ape, { "scaleX": 1, "scaleY": 1 }, 500, Ease2.bounceOut);
      this.isApeHold = true;
    }
    /** 鼠标放开后停止hold */
    onApeRelease(e = null) {
      if (this.isApeHold) {
        this.isApeHold = false;
        Tween3.to(this.ape, { "scaleX": 0.8, "scaleY": 0.8 }, 300);
      } else
        Laya.timer.clear(this, this.onHold);
      this.box2D.off(Event9.MOUSE_UP, this, this.onApeRelease);
    }
    onDestroy() {
      if (this.ape) {
        this.ape.off(Event9.MOUSE_DOWN, this, this.onApePress);
      }
      Laya.timer.clear(this, this.onHold);
      this.box2D.off(Event9.MOUSE_UP, this, this.onApeRelease);
    }
  };
  __name(Interaction_Hold, "Interaction_Hold");
  Interaction_Hold = __decorateClass([
    regClass20("e750bba3-37cb-4786-82e4-1b6563a2e33a", "../src/2D/Interaction/Interaction_Hold.ts")
  ], Interaction_Hold);

  // src/2D/Interaction/Interaction_Keyboard.ts
  var Event10 = Laya.Event;
  var Text6 = Laya.Text;
  var { regClass: regClass21, property: property21 } = Laya;
  var Interaction_Keyboard = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.listenKeyboard();
      this.createLogger();
      Laya.timer.frameLoop(1, this, this.keyboardInspector);
    }
    listenKeyboard() {
      this.keyDownList = [];
      Laya.stage.on(Event10.KEY_DOWN, this, this.onKeyDown);
      Laya.stage.on(Event10.KEY_UP, this, this.onKeyUp);
    }
    /**键盘按下处理*/
    onKeyDown(e = null) {
      this.keyDownList[e["keyCode"]] = true;
    }
    /**键盘抬起处理*/
    onKeyUp(e = null) {
      delete this.keyDownList[e["keyCode"]];
    }
    keyboardInspector(e = null) {
      var numKeyDown = this.keyDownList.length;
      var newText = "[ ";
      for (var i = 0; i < numKeyDown; i++) {
        if (this.keyDownList[i]) {
          newText += i + " ";
        }
      }
      newText += "]";
      this.logger.changeText(newText);
    }
    /**添加提示文本*/
    createLogger() {
      this.logger = new Text6();
      this.logger.size(this.pageWidth, this.pageHeight);
      this.logger.fontSize = 30;
      this.logger.font = "SimHei";
      this.logger.wordWrap = true;
      this.logger.color = "#FFFFFF";
      this.logger.align = "center";
      this.logger.valign = "middle";
      this.box2D.addChild(this.logger);
    }
    onDestroy() {
      Laya.timer.clear(this, this.keyboardInspector);
      this.box2D.off(Event10.KEY_DOWN, this, this.onKeyDown);
      this.box2D.off(Event10.KEY_UP, this, this.onKeyUp);
    }
  };
  __name(Interaction_Keyboard, "Interaction_Keyboard");
  Interaction_Keyboard = __decorateClass([
    regClass21("abcf4e1d-34fe-46ca-af6c-5931de9f03ba", "../src/2D/Interaction/Interaction_Keyboard.ts")
  ], Interaction_Keyboard);

  // src/2D/Interaction/Interaction_Mouse.ts
  var Sprite13 = Laya.Sprite;
  var Event11 = Laya.Event;
  var Text7 = Laya.Text;
  var { regClass: regClass22, property: property22 } = Laya;
  var Interaction_Mouse = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createInteractiveTarget();
      this.createLogger();
    }
    createInteractiveTarget() {
      var rect = new Sprite13();
      rect.graphics.drawRect(0, 0, 200, 200, "#D2691E");
      rect.size(200, 200);
      rect.x = (this.pageWidth - 200) / 2;
      rect.y = (this.pageHeight - 200) / 2;
      this.box2D.addChild(rect);
      rect.on(Event11.MOUSE_DOWN, this, this.mouseHandler);
      rect.on(Event11.MOUSE_UP, this, this.mouseHandler);
      rect.on(Event11.RIGHT_MOUSE_DOWN, this, this.mouseHandler);
      rect.on(Event11.RIGHT_MOUSE_UP, this, this.mouseHandler);
      rect.on(Event11.CLICK, this, this.mouseHandler);
      rect.on(Event11.RIGHT_CLICK, this, this.mouseHandler);
      rect.on(Event11.MOUSE_MOVE, this, this.mouseHandler);
      rect.on(Event11.MOUSE_OVER, this, this.mouseHandler);
      rect.on(Event11.MOUSE_OUT, this, this.mouseHandler);
      rect.on(Event11.DOUBLE_CLICK, this, this.mouseHandler);
      rect.on(Event11.MOUSE_WHEEL, this, this.mouseHandler);
    }
    /**
     * 鼠标响应事件处理
     */
    mouseHandler(e = null) {
      switch (e.type) {
        case Event11.MOUSE_DOWN:
          this.appendText("\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\n\u5DE6\u952E\u6309\u4E0B");
          break;
        case Event11.MOUSE_UP:
          this.appendText("\n\u5DE6\u952E\u62AC\u8D77");
          break;
        case Event11.CLICK:
          this.appendText("\n\u5DE6\u952E\u70B9\u51FB\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014");
          break;
        case Event11.RIGHT_MOUSE_DOWN:
          this.appendText("\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014\n\u53F3\u952E\u6309\u4E0B");
          break;
        case Event11.RIGHT_MOUSE_UP:
          this.appendText("\n\u53F3\u952E\u62AC\u8D77");
          break;
        case Event11.RIGHT_CLICK:
          this.appendText("\n\u53F3\u952E\u5355\u51FB\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014");
          break;
        case Event11.MOUSE_MOVE:
          if (/鼠标移动\.*$/.test(this.txt.text))
            this.appendText(".");
          else
            this.appendText("\n\u9F20\u6807\u79FB\u52A8");
          break;
        case Event11.MOUSE_OVER:
          this.appendText("\n\u9F20\u6807\u7ECF\u8FC7\u76EE\u6807");
          break;
        case Event11.MOUSE_OUT:
          this.appendText("\n\u9F20\u6807\u79FB\u51FA\u76EE\u6807");
          break;
        case Event11.DOUBLE_CLICK:
          this.appendText("\n\u9F20\u6807\u5DE6\u952E\u53CC\u51FB\n\u2014\u2014\u2014\u2014\u2014\u2014\u2014\u2014");
          break;
        case Event11.MOUSE_WHEEL:
          this.appendText("\n\u9F20\u6807\u6EDA\u8F6E\u6EDA\u52A8");
          break;
      }
    }
    appendText(value) {
      this.txt.text += value;
      this.txt.scrollY = this.txt.maxScrollY;
    }
    /**添加提示文本*/
    createLogger() {
      this.txt = new Text7();
      this.txt.overflow = Text7.SCROLL;
      this.txt.text = "\u8BF7\u628A\u9F20\u6807\u79FB\u5230\u5230\u77E9\u5F62\u65B9\u5757,\u5DE6\u53F3\u952E\u64CD\u4F5C\u89E6\u53D1\u76F8\u5E94\u4E8B\u4EF6\n";
      this.txt.size(this.pageWidth, this.pageHeight);
      this.txt.pos(10, 50);
      this.txt.fontSize = 20;
      this.txt.wordWrap = true;
      this.txt.color = "#FFFFFF";
      this.box2D.addChild(this.txt);
    }
    onDestroy() {
    }
  };
  __name(Interaction_Mouse, "Interaction_Mouse");
  Interaction_Mouse = __decorateClass([
    regClass22("abb8bb43-c117-4faa-9f70-9b8fcef22737", "../src/2D/Interaction/Interaction_Mouse.ts")
  ], Interaction_Mouse);

  // src/2D/Interaction/Interaction_Rotate.ts
  var Sprite14 = Laya.Sprite;
  var Event12 = Laya.Event;
  var { regClass: regClass23, property: property23 } = Laya;
  var Interaction_Rotate = class extends BaseScript {
    constructor() {
      super();
      this.preRadian = 0;
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createSprite();
      this.box2D.on(Event12.MOUSE_UP, this, this.onMouseUp);
      this.box2D.on(Event12.MOUSE_OUT, this, this.onMouseUp);
    }
    createSprite() {
      this.sp = new Sprite14();
      var w = 200, h = 300;
      this.sp.graphics.drawRect(0, 0, w, h, "#FF7F50");
      this.sp.size(w, h);
      this.sp.pivot(w / 2, h / 2);
      this.sp.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.box2D.addChild(this.sp);
      this.sp.on(Event12.MOUSE_DOWN, this, this.onMouseDown);
    }
    onMouseDown(e) {
      let touches = e.touches;
      if (touches && touches.length == 2) {
        this.preRadian = Math.atan2(
          touches[0].pos.y - touches[1].pos.y,
          touches[0].pos.x - touches[1].pos.y
        );
        this.box2D.on(Event12.MOUSE_MOVE, this, this.onMouseMove);
      }
    }
    onMouseMove(e) {
      var touches = e.touches;
      if (touches && touches.length == 2) {
        var nowRadian = Math.atan2(
          touches[0].pos.y - touches[1].pos.y,
          touches[0].pos.x - touches[1].pos.x
        );
        this.sp.rotation += 180 / Math.PI * (nowRadian - this.preRadian);
        this.preRadian = nowRadian;
      }
    }
    onMouseUp(e) {
      this.box2D.off(Event12.MOUSE_MOVE, this, this.onMouseMove);
    }
    onDestroy() {
      if (this.sp) {
        this.sp.off(Event12.MOUSE_DOWN, this, this.onMouseDown);
      }
      this.box2D.off(Event12.MOUSE_UP, this, this.onMouseUp);
      this.box2D.off(Event12.MOUSE_OUT, this, this.onMouseUp);
      this.box2D.off(Event12.MOUSE_MOVE, this, this.onMouseMove);
    }
  };
  __name(Interaction_Rotate, "Interaction_Rotate");
  Interaction_Rotate = __decorateClass([
    regClass23("005ecd05-5266-479b-b03b-058b601a2bdc", "../src/2D/Interaction/Interaction_Rotate.ts")
  ], Interaction_Rotate);

  // src/2D/Interaction/Interaction_Scale.ts
  var Sprite15 = Laya.Sprite;
  var Event13 = Laya.Event;
  var { regClass: regClass24, property: property24 } = Laya;
  var Interaction_Scale = class extends BaseScript {
    constructor() {
      super();
      //上次记录的两个触模点之间距离
      this.lastDistance = 0;
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createSprite();
      this.box2D.on(Event13.MOUSE_UP, this, this.onMouseUp);
      this.box2D.on(Event13.MOUSE_OUT, this, this.onMouseUp);
    }
    createSprite() {
      this.sp = new Sprite15();
      var w = 300, h = 300;
      this.sp.graphics.drawRect(0, 0, w, h, "#FF7F50");
      this.sp.size(w, h);
      this.sp.pivot(w / 2, h / 2);
      this.sp.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.box2D.addChild(this.sp);
      this.sp.on(Event13.MOUSE_DOWN, this, this.onMouseDown);
    }
    onMouseDown(e = null) {
      var touches = e.touches;
      if (touches && touches.length == 2) {
        this.lastDistance = this.getDistance(touches);
        this.box2D.on(Event13.MOUSE_MOVE, this, this.onMouseMove);
      }
    }
    onMouseMove(e = null) {
      var distance = this.getDistance(e.touches);
      const factor = 0.01;
      this.sp.scaleX += (distance - this.lastDistance) * factor;
      this.sp.scaleY += (distance - this.lastDistance) * factor;
      this.lastDistance = distance;
    }
    onMouseUp(e = null) {
      this.box2D.off(Event13.MOUSE_MOVE, this, this.onMouseMove);
    }
    /**计算两个触摸点之间的距离*/
    getDistance(touches) {
      var distance = 0;
      if (touches && touches.length == 2) {
        var dx = touches[0].pos.x - touches[1].pos.x;
        var dy = touches[0].pos.y - touches[1].pos.y;
        distance = Math.sqrt(dx * dx + dy * dy);
      }
      return distance;
    }
    onDestroy() {
      if (this.sp) {
        this.sp.off(Event13.MOUSE_DOWN, this, this.onMouseDown);
      }
      this.box2D.off(Event13.MOUSE_UP, this, this.onMouseUp);
      this.box2D.off(Event13.MOUSE_OUT, this, this.onMouseUp);
      this.box2D.off(Event13.MOUSE_MOVE, this, this.onMouseMove);
    }
  };
  __name(Interaction_Scale, "Interaction_Scale");
  Interaction_Scale = __decorateClass([
    regClass24("49bc36f8-5c1e-4ea0-9897-ee73c96d20ba", "../src/2D/Interaction/Interaction_Scale.ts")
  ], Interaction_Scale);

  // src/2D/Interaction/Interaction_Swipe.ts
  var Sprite16 = Laya.Sprite;
  var Event14 = Laya.Event;
  var Tween4 = Laya.Tween;
  var { regClass: regClass25, property: property25 } = Laya;
  var Interaction_Swipe = class extends BaseScript {
    constructor() {
      super();
      //swipe滚动范围
      this.TrackLength = 200;
      //触发swipe的拖动距离
      this.TOGGLE_DIST = this.TrackLength / 2;
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createSprtie();
      this.drawTrack();
    }
    createSprtie() {
      const w = 50;
      const h = 30;
      this.button = new Sprite16();
      this.button.graphics.drawRect(0, 0, w, h, "#FF7F50");
      this.button.anchorX = 0.5;
      this.button.anchorY = 0.5;
      this.button.size(w, h);
      this.button.x = (this.pageWidth - this.TrackLength) / 2;
      this.button.y = this.pageHeight / 2;
      this.button.on(Event14.MOUSE_DOWN, this, this.onMouseDown);
      this.box2D.addChild(this.button);
      this.beginPosition = this.button.x;
      this.endPosition = this.beginPosition + this.TrackLength;
    }
    drawTrack() {
      var graph = new Sprite16();
      this.box2D.graphics.drawLine(
        this.beginPosition,
        this.pageHeight / 2,
        this.endPosition,
        this.pageHeight / 2,
        "#FFFFFF",
        20
      );
      this.box2D.addChild(graph);
    }
    /**按下事件处理*/
    onMouseDown(e = null) {
      this.box2D.on(Event14.MOUSE_MOVE, this, this.onMouseMove);
      this.buttonPosition = this.button.x;
      this.box2D.on(Event14.MOUSE_UP, this, this.onMouseUp);
      this.box2D.on(Event14.MOUSE_OUT, this, this.onMouseUp);
    }
    /**移到事件处理*/
    onMouseMove(e = null) {
      this.button.x = Math.max(Math.min(this.box2D.mouseX, this.endPosition), this.beginPosition);
    }
    /**抬起事件处理*/
    onMouseUp(e = null) {
      this.box2D.off(Event14.MOUSE_MOVE, this, this.onMouseMove);
      this.box2D.off(Event14.MOUSE_UP, this, this.onMouseUp);
      this.box2D.off(Event14.MOUSE_OUT, this, this.onMouseUp);
      var dist = this.box2D.mouseX - this.buttonPosition;
      var targetX = this.beginPosition;
      if (dist > this.TOGGLE_DIST)
        targetX = this.endPosition;
      Tween4.to(this.button, { x: targetX }, 100);
    }
    onDestroy() {
      if (this.button) {
        this.button.off(Event14.MOUSE_DOWN, this, this.onMouseDown);
      }
      this.box2D.off(Event14.MOUSE_MOVE, this, this.onMouseMove);
      this.box2D.off(Event14.MOUSE_UP, this, this.onMouseUp);
      this.box2D.off(Event14.MOUSE_OUT, this, this.onMouseUp);
      this.box2D.graphics.clear();
    }
  };
  __name(Interaction_Swipe, "Interaction_Swipe");
  Interaction_Swipe = __decorateClass([
    regClass25("736fde41-c3ff-4c92-b8e3-43ead714c499", "../src/2D/Interaction/Interaction_Swipe.ts")
  ], Interaction_Swipe);

  // src/2D/Loader/Loader_ClearTextureRes.ts
  var Animation3 = Laya.Animation;
  var Sprite17 = Laya.Sprite;
  var Event15 = Laya.Event;
  var Text8 = Laya.Text;
  var { regClass: regClass26, property: property26 } = Laya;
  var Loader_ClearTextureRes = class extends BaseScript {
    constructor() {
      super();
      this.isDestroyed = false;
      this.PathBg = "resources/res/bg2.png";
      this.PathFly = "resources/res/fighter/fighter.atlas";
    }
    onAwake() {
      super.base();
      this.init();
    }
    /**
     * 初始化场景
     */
    init() {
      this.spBg = Sprite17.fromImage(this.PathBg);
      this.box2D.addChild(this.spBg);
      this.aniFly = new Animation3();
      this.aniFly.loadAtlas(this.PathFly);
      this.aniFly.play();
      this.aniFly.pos(250, 100);
      this.box2D.addChild(this.aniFly);
      this.btn = new Sprite17().size(205, 55);
      this.btn.graphics.drawRect(0, 0, this.btn.width, this.btn.height, "#057AFB");
      this.txt = new Text8();
      this.txt.text = "\u9500\u6BC1";
      this.txt.pos(75, 15);
      this.txt.fontSize = 25;
      this.txt.color = "#FF0000";
      this.btn.addChild(this.txt);
      this.btn.pos(20, 160);
      this.btn.mouseEnabled = true;
      this.btn.name = "btnBg";
      this.owner.addChild(this.btn);
      this.btn.on(Event15.MOUSE_UP, this, this.onMouseUp1);
    }
    /**
     * 鼠标事件响应函数
     */
    onMouseUp1(evt) {
      if (this.isDestroyed) {
        this.spBg.visible = true;
        this.aniFly.visible = true;
        this.isDestroyed = false;
        this.txt.text = "\u9500\u6BC1";
      } else {
        this.spBg.visible = false;
        this.aniFly.visible = false;
        Laya.loader.clearTextureRes(this.PathBg);
        Laya.loader.clearTextureRes(this.PathFly);
        this.isDestroyed = true;
        this.txt.text = "\u6062\u590D";
      }
    }
  };
  __name(Loader_ClearTextureRes, "Loader_ClearTextureRes");
  Loader_ClearTextureRes = __decorateClass([
    regClass26("c920ccee-4e5c-46ef-948d-9386d2d09497", "../src/2D/Loader/Loader_ClearTextureRes.ts")
  ], Loader_ClearTextureRes);

  // src/2D/Loader/Loader_MultipleType.ts
  var Loader2 = Laya.Loader;
  var { regClass: regClass27, property: property27 } = Laya;
  var Loader_MultipleType = class extends BaseScript {
    constructor() {
      super();
      this.ROBOT_DATA_PATH = "resources/res/skeleton/robot/robot.bin";
      this.ROBOT_TEXTURE_PATH = "resources/res/skeleton/robot/texture.png";
    }
    onAwake() {
      super.base();
      var assets = [];
      assets.push({ "url": this.ROBOT_DATA_PATH, "type": Loader2.BUFFER });
      assets.push({ "url": this.ROBOT_TEXTURE_PATH, "type": Loader2.IMAGE });
      Laya.loader.load(assets).then(() => {
        this.onAssetsLoaded();
      });
    }
    onAssetsLoaded(e = null) {
      var robotData = Loader2.getRes(this.ROBOT_DATA_PATH);
      var robotTexture = Loader2.getRes(this.ROBOT_TEXTURE_PATH);
    }
  };
  __name(Loader_MultipleType, "Loader_MultipleType");
  Loader_MultipleType = __decorateClass([
    regClass27("50a57634-f741-4c37-bf36-a0cce9d09da0", "../src/2D/Loader/Loader_MultipleType.ts")
  ], Loader_MultipleType);

  // src/2D/Loader/Loader_ProgressAndErrorHandle.ts
  var Event16 = Laya.Event;
  var Loader3 = Laya.Loader;
  var { regClass: regClass28, property: property28 } = Laya;
  var Loader_ProgressAndErrorHandle = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      Laya.loader.retryNum = 0;
      var urls = ["do not exist", "resources/res/fighter/fighter.png", "resources/res/legend/map.jpg"];
      Laya.loader.load(urls, Loader3.IMAGE, this.onLoading).then(() => {
        this.onAssetLoaded();
      });
      Laya.loader.on(Event16.ERROR, this, this.onError);
    }
    onAssetLoaded() {
      console.log("\u52A0\u8F7D\u7ED3\u675F");
    }
    // 加载进度侦听器
    onLoading(progress) {
      console.log("\u52A0\u8F7D\u8FDB\u5EA6: " + progress);
    }
    onError(err) {
      console.log("\u52A0\u8F7D\u5931\u8D25: " + err);
    }
  };
  __name(Loader_ProgressAndErrorHandle, "Loader_ProgressAndErrorHandle");
  Loader_ProgressAndErrorHandle = __decorateClass([
    regClass28("b9446375-d62c-41c9-9a94-3934fe1c4e68", "../src/2D/Loader/Loader_ProgressAndErrorHandle.ts")
  ], Loader_ProgressAndErrorHandle);

  // src/2D/Loader/Loader_Sequence.ts
  var Handler3 = Laya.Handler;
  var { regClass: regClass29, property: property29 } = Laya;
  var Loader_Sequence = class extends BaseScript {
    constructor() {
      super();
      this.numLoaded = 0;
      this.resAmount = 3;
    }
    onAwake() {
      super.base();
      Laya.loader.maxLoader = 1;
      Laya.loader.load("resources/res/apes/monkey2.png", Handler3.create(this, this.onAssetLoaded), null, null, 0, false);
      Laya.loader.load("resources/res/apes/monkey1.png", Handler3.create(this, this.onAssetLoaded), null, null, 1, false);
      Laya.loader.load("resources/res/apes/monkey0.png", Handler3.create(this, this.onAssetLoaded), null, null, 2, false);
    }
    onAssetLoaded(texture) {
      if (++this.numLoaded == 3) {
        Laya.loader.maxLoader = 5;
        console.log("All done.");
      }
    }
  };
  __name(Loader_Sequence, "Loader_Sequence");
  Loader_Sequence = __decorateClass([
    regClass29("9e131321-5753-4af2-bae2-12fba50c60be", "../src/2D/Loader/Loader_Sequence.ts")
  ], Loader_Sequence);

  // src/2D/Loader/Loader_SingleType.ts
  var Loader4 = Laya.Loader;
  var { regClass: regClass30, property: property30 } = Laya;
  var Loader_SingleType = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/apes/monkey0.png").then((texture) => {
        this.onAssetLoaded1(texture);
      });
      Laya.loader.load(
        ["resources/res/apes/monkey0.png", "resources/res/apes/monkey1.png", "resources/res/apes/monkey2.png"]
      ).then(() => {
        this.onAssetLoaded2();
      });
    }
    onAssetLoaded1(texture) {
    }
    onAssetLoaded2() {
      var pic1 = Loader4.getRes("resources/res/apes/monkey0.png");
      var pic2 = Loader4.getRes("resources/res/apes/monkey1.png");
      var pic3 = Loader4.getRes("resources/res/apes/monkey2.png");
    }
  };
  __name(Loader_SingleType, "Loader_SingleType");
  Loader_SingleType = __decorateClass([
    regClass30("95b37044-4647-4ee9-9207-36f9d3043b28", "../src/2D/Loader/Loader_SingleType.ts")
  ], Loader_SingleType);

  // src/2D/Network/Network_GET.ts
  var Event17 = Laya.Event;
  var Text9 = Laya.Text;
  var HttpRequest = Laya.HttpRequest;
  var { regClass: regClass31, property: property31 } = Laya;
  var Network_GET = class extends BaseScript {
    constructor() {
      super();
      this.text = new Laya.Label();
    }
    onAwake() {
      super.base();
      this.connect();
      this.showLogger();
      this.text.text = "\u8BF7\u67E5\u770B\u6E90\u7801\u548C\u8C03\u8BD5\u4FE1\u606F\uFF0C\u4E86\u89E3\u5982\u4F55\u4F7F\u7528";
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 25;
      this.text.width = 800;
      this.text.anchorX = 0.5;
      this.text.align = "center";
      this.text.x = this.pageWidth / 2;
      this.text.y = 50;
      this.owner.addChild(this.text);
    }
    connect() {
      this.hr = new HttpRequest();
      this.hr.once(Event17.PROGRESS, this, this.onHttpRequestProgress);
      this.hr.once(Event17.COMPLETE, this, this.onHttpRequestComplete);
      this.hr.once(Event17.ERROR, this, this.onHttpRequestError);
      this.hr.send("https://xkxz.zhonghao.huo.inner.layabox.com/", null, "get", "text");
    }
    showLogger() {
      this.logger = new Text9();
      this.logger.fontSize = 30;
      this.logger.color = "#FFFFFF";
      this.logger.align = "center";
      this.logger.valign = "middle";
      this.logger.size(this.pageWidth, this.pageHeight);
      this.logger.text = "\u7B49\u5F85\u54CD\u5E94...\n";
      this.box2D.addChild(this.logger);
    }
    onHttpRequestError(e = null) {
      console.log(e);
    }
    onHttpRequestProgress(e = null) {
      console.log(e);
    }
    onHttpRequestComplete(e = null) {
      this.logger.text += "\u6536\u5230\u6570\u636E\uFF1A" + this.hr.data;
    }
  };
  __name(Network_GET, "Network_GET");
  Network_GET = __decorateClass([
    regClass31("4a17cfed-05f9-4f7b-9e6b-8f48bd35b748", "../src/2D/Network/Network_GET.ts")
  ], Network_GET);

  // src/2D/Network/Network_POST.ts
  var Event18 = Laya.Event;
  var Text10 = Laya.Text;
  var HttpRequest2 = Laya.HttpRequest;
  var { regClass: regClass32, property: property32 } = Laya;
  var Network_POST = class extends BaseScript {
    constructor() {
      super();
      this.text = new Laya.Label();
    }
    onAwake() {
      super.base();
      this.connect();
      this.showLogger();
      this.text.text = "\u8BF7\u67E5\u770B\u6E90\u7801\u548C\u8C03\u8BD5\u4FE1\u606F\uFF0C\u4E86\u89E3\u5982\u4F55\u4F7F\u7528";
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 25;
      this.text.width = 800;
      this.text.anchorX = 0.5;
      this.text.align = "center";
      this.text.x = this.pageWidth / 2;
      this.text.y = 50;
      this.owner.addChild(this.text);
    }
    connect() {
      this.hr = new HttpRequest2();
      this.hr.once(Event18.PROGRESS, this, this.onHttpRequestProgress);
      this.hr.once(Event18.COMPLETE, this, this.onHttpRequestComplete);
      this.hr.once(Event18.ERROR, this, this.onHttpRequestError);
      this.hr.send("https://xkxz.zhonghao.huo.inner.layabox.com/", "name=myname&psword=xxx", "post", "text");
    }
    showLogger() {
      this.logger = new Text10();
      this.logger.fontSize = 30;
      this.logger.color = "#FFFFFF";
      this.logger.align = "center";
      this.logger.valign = "middle";
      this.logger.size(this.pageWidth, this.pageHeight);
      this.logger.text = "\u7B49\u5F85\u54CD\u5E94...\n";
      this.box2D.addChild(this.logger);
    }
    onHttpRequestError(e = null) {
      console.log(e);
    }
    onHttpRequestProgress(e = null) {
      console.log(e);
    }
    onHttpRequestComplete(e = null) {
      this.logger.text += "\u6536\u5230\u6570\u636E\uFF1A" + this.hr.data;
    }
  };
  __name(Network_POST, "Network_POST");
  Network_POST = __decorateClass([
    regClass32("5a212419-2134-441d-9652-db97ee9cc575", "../src/2D/Network/Network_POST.ts")
  ], Network_POST);

  // src/2D/Network/Network_ProtocolBuffer.ts
  var { regClass: regClass33, property: property33 } = Laya;
  var Network_ProtocolBuffer = class extends BaseScript {
    constructor() {
      super();
      this.ProtoBuf = window.protobuf;
      this.text = new Laya.Label();
    }
    onAwake() {
      super.base();
      var resPath = "resources/res/protobuf/awesome.proto";
      this.ProtoBuf.load(resPath, this.onAssetsLoaded);
      this.text.text = "\u8BF7\u67E5\u770B\u6E90\u7801\u548C\u8C03\u8BD5\u4FE1\u606F\uFF0C\u4E86\u89E3\u5982\u4F55\u4F7F\u7528";
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 25;
      this.text.width = 800;
      this.text.anchorX = 0.5;
      this.text.align = "center";
      this.text.x = this.pageWidth / 2;
      this.text.y = 50;
      this.owner.addChild(this.text);
    }
    onAssetsLoaded(err, root) {
      if (err)
        throw err;
      var AwesomeMessage = root.lookupType("awesomepackage.AwesomeMessage");
      console.log(AwesomeMessage);
      var payload = { awesomeField: "AwesomeString" };
      console.log(payload);
      var errMsg = AwesomeMessage.verify(payload);
      if (errMsg)
        throw Error(errMsg);
      var message = AwesomeMessage.create(payload);
      console.log(message);
      var buffer = AwesomeMessage.encode(message).finish();
      console.log(message);
      console.log(buffer);
    }
  };
  __name(Network_ProtocolBuffer, "Network_ProtocolBuffer");
  Network_ProtocolBuffer = __decorateClass([
    regClass33("98580ac3-3573-43ef-9485-c7f506715d1b", "../src/2D/Network/Network_ProtocolBuffer.ts")
  ], Network_ProtocolBuffer);

  // src/2D/Network/NetWork_Socket.ts
  var Byte = Laya.Byte;
  var Event19 = Laya.Event;
  var Socket = Laya.Socket;
  var { regClass: regClass34, property: property34 } = Laya;
  var NetWork_Socket = class extends BaseScript {
    constructor() {
      super();
      this.text = new Laya.Label();
    }
    onAwake() {
      super.base();
      this.connect();
      this.text.text = "\u8BF7\u67E5\u770B\u6E90\u7801\u548C\u8C03\u8BD5\u4FE1\u606F\uFF0C\u4E86\u89E3\u5982\u4F55\u4F7F\u7528";
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 25;
      this.text.width = 800;
      this.text.anchorX = 0.5;
      this.text.align = "center";
      this.text.x = this.pageWidth / 2;
      this.text.y = 50;
      this.owner.addChild(this.text);
    }
    connect() {
      this.socket = new Socket();
      this.socket.connectByUrl("wss://echo.websocket.org:80");
      this.output = this.socket.output;
      this.socket.on(Event19.OPEN, this, this.onSocketOpen);
      this.socket.on(Event19.CLOSE, this, this.onSocketClose);
      this.socket.on(Event19.MESSAGE, this, this.onMessageReveived);
      this.socket.on(Event19.ERROR, this, this.onConnectError);
    }
    onSocketOpen(e = null) {
      console.log("Connected");
      this.socket.send("demonstrate <sendString>");
      var message = "demonstrate <output.writeByte>";
      for (var i = 0; i < message.length; ++i) {
        this.output.writeByte(message.charCodeAt(i));
      }
      this.socket.flush();
    }
    onSocketClose(e = null) {
      console.log("Socket closed");
    }
    onMessageReveived(message = null) {
      console.log("Message from server:");
      if (typeof message == "string") {
        console.log(message);
      } else if (message instanceof ArrayBuffer) {
        console.log(new Byte(message).readUTFBytes());
      }
      this.socket.input.clear();
    }
    onConnectError(e = null) {
      console.log("error");
    }
  };
  __name(NetWork_Socket, "NetWork_Socket");
  NetWork_Socket = __decorateClass([
    regClass34("ba2e6abc-9636-42e7-bbb1-ec0077a58dc1", "../src/2D/Network/NetWork_Socket.ts")
  ], NetWork_Socket);

  // src/2D/Network/Network_XML.ts
  var XML = Laya.XML;
  var { regClass: regClass35, property: property35 } = Laya;
  var Network_XML = class extends BaseScript {
    constructor() {
      super();
      this.text = new Laya.Label();
    }
    onAwake() {
      super.base();
      this.setup();
      this.text.text = "\u8BF7\u67E5\u770B\u6E90\u7801\u548C\u8C03\u8BD5\u4FE1\u606F\uFF0C\u4E86\u89E3\u5982\u4F55\u4F7F\u7528";
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 25;
      this.text.width = 800;
      this.text.anchorX = 0.5;
      this.text.align = "center";
      this.text.x = this.pageWidth / 2;
      this.text.y = 50;
      this.owner.addChild(this.text);
    }
    setup() {
      var xmlValueContainsError = "<root><item>item a</item><item>item b</item>somethis...</root1>";
      var xmlValue = "<root><item>item a</item><item>item b</item>somethings...</root>";
      this.proessXML(xmlValueContainsError);
      console.log("\n");
      this.proessXML(xmlValue);
    }
    // 使用xml
    proessXML(source) {
      try {
        var xml = new XML(source);
      } catch (e) {
        return;
      }
      this.printDirectChildren(xml);
    }
    // 打印直接子级
    printDirectChildren(xml) {
      var nodes = xml.elements();
      for (var i = 0; i < nodes.length; i++) {
        var node = nodes[i];
        console.log("\u8282\u70B9\u540D\u79F0: " + node.name);
        console.log("\n");
      }
    }
  };
  __name(Network_XML, "Network_XML");
  Network_XML = __decorateClass([
    regClass35("d0daaa25-02fd-4534-8257-b71342e5af93", "../src/2D/Network/Network_XML.ts")
  ], Network_XML);

  // src/2D/PerformanceTest/PerformanceTest_Cartoon.ts
  var Sprite18 = Laya.Sprite;
  var Loader5 = Laya.Loader;
  var { regClass: regClass36, property: property36 } = Laya;
  var PerformanceTest_Cartoon = class extends BaseScript {
    constructor() {
      super();
      this.colAmount = 100;
      this.extraSpace = 50;
      this.moveSpeed = 2;
      this.rotateSpeed = 2;
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/cartoonCharacters/cartoonCharactors.json", Loader5.ATLAS).then(() => {
        this.createCharacters();
      });
    }
    createCharacters(e = null) {
      this.characterGroup = [];
      for (var i = 0; i < this.colAmount; ++i) {
        var tx = (this.pageWidth + this.extraSpace * 2) / this.colAmount * i - this.extraSpace;
        var tr = 360 / this.colAmount * i;
        var startY = (this.pageHeight - 500) / 2;
        this.createCharacter("cartoonCharactors/1.png", 46, 50, tr).pos(tx, 50 + startY);
        this.createCharacter("cartoonCharactors/2.png", 34, 50, tr).pos(tx, 150 + startY);
        this.createCharacter("cartoonCharactors/3.png", 42, 50, tr).pos(tx, 250 + startY);
        this.createCharacter("cartoonCharactors/4.png", 48, 50, tr).pos(tx, 350 + startY);
        this.createCharacter("cartoonCharactors/5.png", 36, 50, tr).pos(tx, 450 + startY);
      }
      Laya.timer.frameLoop(1, this, this.animate);
    }
    createCharacter(skin, pivotX, pivotY, rotation) {
      var charactor = new Sprite18();
      charactor.loadImage(skin);
      charactor.rotation = rotation;
      charactor.pivot(pivotX, pivotY);
      this.box2D.addChild(charactor);
      this.characterGroup.push(charactor);
      return charactor;
    }
    animate() {
      for (var i = this.characterGroup.length - 1; i >= 0; --i) {
        this.animateCharactor(this.characterGroup[i]);
      }
    }
    animateCharactor(charactor) {
      charactor.x += this.moveSpeed;
      charactor.rotation += this.rotateSpeed;
      if (charactor.x > this.pageWidth + this.extraSpace) {
        charactor.x = -this.extraSpace;
      }
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(PerformanceTest_Cartoon, "PerformanceTest_Cartoon");
  PerformanceTest_Cartoon = __decorateClass([
    regClass36("c49371bb-3aa5-4e62-9bd7-dcdade36c471", "../src/2D/PerformanceTest/PerformanceTest_Cartoon.ts")
  ], PerformanceTest_Cartoon);

  // src/2D/PerformanceTest/PerformanceTest_Cartoon2.ts
  var Animation4 = Laya.Animation;
  var Sprite19 = Laya.Sprite;
  var Stat3 = Laya.Stat;
  var Text11 = Laya.Text;
  var Image = Laya.Image;
  var { regClass: regClass37, property: property37 } = Laya;
  var PerformanceTest_Cartoon2 = class extends BaseScript {
    constructor() {
      super();
      this.amount = 500;
      this.character1 = [
        "resources/res/cartoon2/yd-6_01.png",
        "resources/res/cartoon2/yd-6_02.png",
        "resources/res/cartoon2/yd-6_03.png",
        "resources/res/cartoon2/yd-6_04.png",
        "resources/res/cartoon2/yd-6_05.png",
        "resources/res/cartoon2/yd-6_06.png",
        "resources/res/cartoon2/yd-6_07.png",
        "resources/res/cartoon2/yd-6_08.png"
      ];
      this.character2 = [
        "resources/res/cartoon2/yd-3_01.png",
        "resources/res/cartoon2/yd-3_02.png",
        "resources/res/cartoon2/yd-3_03.png",
        "resources/res/cartoon2/yd-3_04.png",
        "resources/res/cartoon2/yd-3_05.png",
        "resources/res/cartoon2/yd-3_06.png",
        "resources/res/cartoon2/yd-3_07.png",
        "resources/res/cartoon2/yd-3_08.png"
      ];
      this.character3 = [
        "resources/res/cartoon2/yd-2_01.png",
        "resources/res/cartoon2/yd-2_02.png",
        "resources/res/cartoon2/yd-2_03.png",
        "resources/res/cartoon2/yd-2_04.png",
        "resources/res/cartoon2/yd-2_05.png",
        "resources/res/cartoon2/yd-2_06.png",
        "resources/res/cartoon2/yd-2_07.png",
        "resources/res/cartoon2/yd-2_08.png"
      ];
      this.character4 = [
        "resources/res/cartoon2/wyd-1_01.png",
        "resources/res/cartoon2/wyd-1_02.png",
        "resources/res/cartoon2/wyd-1_03.png",
        "resources/res/cartoon2/wyd-1_04.png",
        "resources/res/cartoon2/wyd-1_05.png",
        "resources/res/cartoon2/wyd-1_06.png",
        "resources/res/cartoon2/wyd-1_07.png",
        "resources/res/cartoon2/wyd-1_08.png"
      ];
      this.characterSkins = [this.character1, this.character2, this.character3, this.character4];
      this.characters = [];
    }
    onAwake() {
      super.base();
      Stat3.enable();
      this.image = new Image();
      this.image.skin = "resources/res/cartoon2/background.jpg";
      this.box2D.addChild(this.image);
      this.createCharacters();
      this.text = new Text11();
      this.text.zOrder = 1e4;
      this.text.fontSize = 60;
      this.text.color = "#ff0000";
      this.box2D.addChild(this.text);
      Laya.timer.frameLoop(1, this, this.gameLoop);
    }
    createCharacters() {
      var char;
      var charSkin;
      for (var i = 0; i < this.amount; i++) {
        charSkin = this.characterSkins[Math.floor(Math.random() * this.characterSkins.length)];
        char = new Character(charSkin, this.pageWidth);
        char.x = Math.random() * (this.pageWidth + Character.WIDTH * 2);
        char.y = Math.random() * (this.pageHeight - Character.HEIGHT);
        char.zOrder = char.y;
        char.setSpeed(Math.floor(Math.random() * 2 + 3));
        char.setName(i.toString());
        this.box2D.addChild(char);
        this.characters.push(char);
      }
    }
    gameLoop() {
      for (var i = this.characters.length - 1; i >= 0; i--) {
        this.characters[i].update();
      }
      if (Laya.timer.currFrame % 60 === 0) {
        this.text.text = Stat3.FPS.toString();
      }
    }
    onDestroy() {
      Laya.timer.clear(this, this.gameLoop);
    }
  };
  __name(PerformanceTest_Cartoon2, "PerformanceTest_Cartoon2");
  PerformanceTest_Cartoon2 = __decorateClass([
    regClass37("de8c4e42-97fd-40a4-a361-a6aaf1d5e776", "../src/2D/PerformanceTest/PerformanceTest_Cartoon2.ts")
  ], PerformanceTest_Cartoon2);
  var _Character = class _Character extends Sprite19 {
    constructor(images, pageWidth) {
      super();
      this.speed = 5;
      this.pageWidth = 0;
      this.pageWidth = pageWidth;
      this.createAnimation(images);
      this.createBloodBar();
      this.createNameLabel();
    }
    createAnimation(images) {
      this.animation = new Animation4();
      this.animation.loadImages(images);
      this.animation.interval = 70;
      this.animation.play(0);
      this.addChild(this.animation);
    }
    createBloodBar() {
      this.bloodBar = new Sprite19();
      this.bloodBar.loadImage("resources/res/cartoon2/blood_1_r.png");
      this.bloodBar.x = 20;
      this.addChild(this.bloodBar);
    }
    createNameLabel() {
      this.nameLabel = new Text11();
      this.nameLabel.color = "#FFFFFF";
      this.nameLabel.text = "Default";
      this.nameLabel.fontSize = 13;
      this.nameLabel.width = _Character.WIDTH;
      this.nameLabel.align = "center";
      this.addChild(this.nameLabel);
    }
    setSpeed(value) {
      this.speed = value;
    }
    setName(value) {
      this.nameLabel.text = value;
    }
    update() {
      this.x += this.speed;
      if (this.x >= this.pageWidth + _Character.WIDTH)
        this.x = -_Character.WIDTH;
    }
  };
  __name(_Character, "Character");
  _Character.WIDTH = 110;
  _Character.HEIGHT = 110;
  var Character = _Character;

  // src/2D/PerformanceTest/PerformanceTest_Maggots.ts
  var Sprite20 = Laya.Sprite;
  var Rectangle2 = Laya.Rectangle;
  var { regClass: regClass38, property: property38 } = Laya;
  var PerformanceTest_Maggots = class extends BaseScript {
    constructor() {
      super();
      this.texturePath = "resources/res/tinyMaggot.png";
      this.padding = 100;
      this.maggotAmount = 5e3;
      this.tick = 0;
      this.maggots = [];
    }
    onAwake() {
      super.base();
      this.wrapBounds = new Rectangle2(-this.padding, -this.padding, this.pageWidth + this.padding * 2, this.pageHeight + this.padding * 2);
      Laya.loader.load(this.texturePath).then(() => {
        this.onTextureLoaded();
      });
    }
    onTextureLoaded(e = null) {
      this.maggotTexture = Laya.loader.getRes(this.texturePath);
      this.initMaggots();
      Laya.timer.frameLoop(1, this, this.animate);
    }
    initMaggots() {
      var maggotContainer;
      for (var i = 0; i < this.maggotAmount; i++) {
        if (i % 16e3 == 0)
          maggotContainer = this.createNewContainer();
        var maggot = this.newMaggot();
        maggotContainer.addChild(maggot);
        this.maggots.push(maggot);
      }
    }
    createNewContainer() {
      var container = new Sprite20();
      container.size(this.pageWidth, this.pageHeight);
      this.box2D.addChild(container);
      return container;
    }
    newMaggot() {
      var maggot = new Maggot();
      maggot.graphics.drawTexture(this.maggotTexture, 0, 0);
      maggot.pivot(16.5, 35);
      var rndScale = 0.8 + Math.random() * 0.3;
      maggot.scale(rndScale, rndScale);
      maggot.rotation = 0.1;
      maggot.x = Math.random() * this.pageWidth;
      maggot.y = Math.random() * this.pageHeight;
      maggot.direction = Math.random() * Math.PI;
      maggot.turningSpeed = Math.random() - 0.8;
      maggot.speed = (2 + Math.random() * 2) * 0.2;
      maggot.offset = Math.random() * 100;
      return maggot;
    }
    animate() {
      var maggot;
      var wb = this.wrapBounds;
      var angleUnit = 180 / Math.PI;
      var dir, x = 0, y = 0;
      for (var i = 0; i < this.maggotAmount; i++) {
        maggot = this.maggots[i];
        maggot.scaleY = 0.9 + Math.sin(this.tick + maggot.offset) * 0.1;
        maggot.direction += maggot.turningSpeed * 0.01;
        dir = maggot.direction;
        x = maggot.x;
        y = maggot.y;
        x += Math.sin(dir) * (maggot.speed * maggot.scaleY);
        y += Math.cos(dir) * (maggot.speed * maggot.scaleY);
        maggot.rotation = (-dir + Math.PI) * angleUnit;
        if (x < wb.x)
          x += wb.width;
        else if (x > wb.x + wb.width)
          x -= wb.width;
        if (y < wb.y)
          y += wb.height;
        else if (y > wb.y + wb.height)
          y -= wb.height;
        maggot.pos(x, y);
      }
      this.tick += 0.1;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(PerformanceTest_Maggots, "PerformanceTest_Maggots");
  PerformanceTest_Maggots = __decorateClass([
    regClass38("6193a68a-5cd6-41bf-b49e-02218bd55b60", "../src/2D/PerformanceTest/PerformanceTest_Maggots.ts")
  ], PerformanceTest_Maggots);
  var _Maggot = class _Maggot extends Sprite20 {
  };
  __name(_Maggot, "Maggot");
  var Maggot = _Maggot;

  // src/2D/PerformanceTest/PerformanceTest_Skeleton.ts
  var Event20 = Laya.Event;
  var { regClass: regClass39, property: property39 } = Laya;
  var PerformanceTest_Skeleton = class extends BaseScript {
    constructor() {
      super();
      this.fileName = "Dragon";
      this.rowCount = 10;
      this.colCount = 10;
      this.xOff = 50;
      this.yOff = 100;
      this.mAnimationArray = [];
      this.mActionIndex = 0;
    }
    onAwake() {
      super.base();
      this.mSpacingX = this.pageWidth / this.colCount;
      this.mSpacingY = this.pageHeight / this.rowCount;
      Laya.loader.load("resources/res/skeleton/" + this.fileName + "/" + this.fileName + ".sk").then((templet) => {
        for (var i = 0; i < this.rowCount; i++) {
          for (var j = 0; j < this.colCount; j++) {
            this.mArmature = templet.buildArmature(1);
            this.mArmature.x = this.xOff + j * this.mSpacingX;
            this.mArmature.y = this.yOff + i * this.mSpacingY;
            this.mAnimationArray.push(this.mArmature);
            this.mArmature.play(0, true);
            this.mArmature.scale(0.2, 0.2);
            this.box2D.addChild(this.mArmature);
          }
        }
        this.box2D.on(Event20.CLICK, this, this.toggleAction);
      });
    }
    onDestroy() {
      this.box2D.off(Event20.CLICK, this, this.toggleAction);
    }
    toggleAction(e = null) {
      this.mActionIndex++;
      var tAnimNum = this.mArmature.getAnimNum();
      if (this.mActionIndex >= tAnimNum) {
        this.mActionIndex = 0;
      }
      for (var i = 0, n = this.mAnimationArray.length; i < n; i++) {
        this.mAnimationArray[i].play(this.mActionIndex, true);
      }
    }
  };
  __name(PerformanceTest_Skeleton, "PerformanceTest_Skeleton");
  PerformanceTest_Skeleton = __decorateClass([
    regClass39("293180de-d815-409f-9e34-7fb7483191e5", "../src/2D/PerformanceTest/PerformanceTest_Skeleton.ts")
  ], PerformanceTest_Skeleton);

  // src/2D/PIXI/PIXI_Example_1.ts
  var Sprite21 = Laya.Sprite;
  var Event21 = Laya.Event;
  var Text12 = Laya.Text;
  var { regClass: regClass40, property: property40 } = Laya;
  var PIXI_Example_1 = class extends BaseScript {
    constructor() {
      super();
      this.starCount = 2500;
      this.sx = 1 + Math.random() / 20;
      this.sy = 1 + Math.random() / 20;
      this.stars = [];
      this.w = this.pageWidth;
      this.h = this.pageHeight;
      this.slideX = this.w / 2;
      this.slideY = this.h / 2;
    }
    onAwake() {
      super.base();
      this.createText();
      this.start();
      this.box2D.on(Event21.RESIZE, this, this.resize);
    }
    start() {
      for (var i = 0; i < this.starCount; i++) {
        var tempBall = new Sprite21();
        tempBall.loadImage("resources/res/pixi/bubble_32x32.png");
        tempBall.x = Math.random() * this.w - this.slideX;
        tempBall.y = Math.random() * this.h - this.slideY;
        tempBall.pivot(16, 16);
        this.stars.push({ "sprite": tempBall, "x": tempBall.x, "y": tempBall.y });
        this.box2D.addChild(tempBall);
      }
      this.box2D.on(Laya.Event.CLICK, this, this.newWave);
      this.speedInfo.text = "SX: " + this.sx + "\nSY: " + this.sy;
      this.resize();
      Laya.timer.frameLoop(1, this, this.update);
    }
    createText() {
      this.speedInfo = new Text12();
      this.speedInfo.color = "#FFFFFF";
      this.speedInfo.pos(this.w - 160, 20);
      this.speedInfo.zOrder = 1;
      this.box2D.addChild(this.speedInfo);
    }
    newWave() {
      this.sx = 1 + Math.random() / 20;
      this.sy = 1 + Math.random() / 20;
      this.speedInfo.text = "SX: " + this.sx + "\nSY: " + this.sy;
    }
    resize() {
      this.w = this.pageWidth;
      this.h = this.pageHeight;
      this.slideX = this.w / 2;
      this.slideY = this.h / 2;
    }
    update() {
      for (var i = 0; i < this.starCount; i++) {
        this.stars[i].sprite.x = this.stars[i].x + this.slideX;
        this.stars[i].sprite.y = this.stars[i].y + this.slideY;
        this.stars[i].x = this.stars[i].x * this.sx;
        this.stars[i].y = this.stars[i].y * this.sy;
        if (this.stars[i].x > this.w) {
          this.stars[i].x = this.stars[i].x - this.w;
        } else if (this.stars[i].x < -this.w) {
          this.stars[i].x = this.stars[i].x + this.w;
        }
        if (this.stars[i].y > this.h) {
          this.stars[i].y = this.stars[i].y - this.h;
        } else if (this.stars[i].y < -this.h) {
          this.stars[i].y = this.stars[i].y + this.h;
        }
      }
    }
    onDestroy() {
      this.box2D.off(Laya.Event.CLICK, this, this.newWave);
      Laya.timer.clear(this, this.update);
    }
  };
  __name(PIXI_Example_1, "PIXI_Example_1");
  PIXI_Example_1 = __decorateClass([
    regClass40("92f9f6d8-be63-4ca5-86bb-2ed1b5be63c7", "../src/2D/PIXI/PIXI_Example_1.ts")
  ], PIXI_Example_1);

  // src/2D/PIXI/PIXI_Example_2.ts
  var Sprite22 = Laya.Sprite;
  var Event22 = Laya.Event;
  var { regClass: regClass41, property: property41 } = Laya;
  var PIXI_Example_2 = class extends BaseScript {
    constructor() {
      super();
      this.n = 2e3;
      this.d = 1;
      this.current = 0;
      this.objs = 17;
      this.vx = 0;
      this.vy = 0;
      this.vz = 0;
      this.points1 = [];
      this.points2 = [];
      this.points3 = [];
      this.tpoint1 = [];
      this.tpoint2 = [];
      this.tpoint3 = [];
      this.balls = [];
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.box2D.on(Event22.RESIZE, this, this.onResize);
      this.makeObject(0);
      for (var i = 0; i < this.n; i++) {
        this.tpoint1[i] = this.points1[i];
        this.tpoint2[i] = this.points2[i];
        this.tpoint3[i] = this.points3[i];
        var tempBall = new Sprite22();
        tempBall.loadImage("resources/res/pixi/pixel.png");
        tempBall.pivot(3, 3);
        tempBall.alpha = 0.5;
        this.balls[i] = tempBall;
        this.box2D.addChild(tempBall);
      }
      this.onResize();
      Laya.timer.loop(5e3, this, this.nextObject);
      Laya.timer.frameLoop(1, this, this.update);
    }
    nextObject() {
      this.current++;
      if (this.current > this.objs) {
        this.current = 0;
      }
      this.makeObject(this.current);
    }
    makeObject(t) {
      var xd;
      var i;
      switch (t) {
        case 0:
          for (i = 0; i < this.n; i++) {
            this.points1[i] = -50 + Math.round(Math.random() * 100);
            this.points2[i] = 0;
            this.points3[i] = 0;
          }
          break;
        case 1:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(t * 360 / this.n) * 10);
            this.points2[i] = Math.cos(xd) * 10 * (Math.sin(t * 360 / this.n) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 2:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.random() * 180;
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(t * 360 / this.n) * 10);
            this.points2[i] = Math.cos(xd) * 10 * (Math.sin(t * 360 / this.n) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 3:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.cos(xd) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 4:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.cos(xd) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 5:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 6:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(i * 360 / this.n) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 7:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(i * 360 / this.n) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(i * 360 / this.n) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 8:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(i * 360 / this.n) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 9:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 10:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(i * 360 / this.n) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.cos(xd) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 11:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.sin(xd) * 10 * (Math.sin(i * 360 / this.n) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 12:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.sin(xd) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 13:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.sin(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 14:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.sin(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.sin(xd) * 10 * (Math.sin(i * 360 / this.n) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 15:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(i * 360 / this.n) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.sin(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
        case 16:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(i * 360 / this.n) * 10);
            this.points2[i] = Math.sin(i * 360 / this.n) * 10 * (Math.sin(xd) * 10);
            this.points3[i] = Math.sin(xd) * 100;
          }
          break;
        case 17:
          for (i = 0; i < this.n; i++) {
            xd = -90 + Math.round(Math.random() * 180);
            this.points1[i] = Math.cos(xd) * 10 * (Math.cos(xd) * 10);
            this.points2[i] = Math.cos(i * 360 / this.n) * 10 * (Math.sin(i * 360 / this.n) * 10);
            this.points3[i] = Math.sin(i * 360 / this.n) * 100;
          }
          break;
      }
    }
    onResize() {
    }
    update() {
      var x3d, y3d, z3d, tx, ty, tz, ox;
      if (this.d < 200) {
        this.d++;
      }
      this.vx += 75e-4;
      this.vy += 75e-4;
      this.vz += 75e-4;
      for (var i = 0; i < this.n; i++) {
        if (this.points1[i] > this.tpoint1[i]) {
          this.tpoint1[i] = this.tpoint1[i] + 1;
        }
        if (this.points1[i] < this.tpoint1[i]) {
          this.tpoint1[i] = this.tpoint1[i] - 1;
        }
        if (this.points2[i] > this.tpoint2[i]) {
          this.tpoint2[i] = this.tpoint2[i] + 1;
        }
        if (this.points2[i] < this.tpoint2[i]) {
          this.tpoint2[i] = this.tpoint2[i] - 1;
        }
        if (this.points3[i] > this.tpoint3[i]) {
          this.tpoint3[i] = this.tpoint3[i] + 1;
        }
        if (this.points3[i] < this.tpoint3[i]) {
          this.tpoint3[i] = this.tpoint3[i] - 1;
        }
        x3d = this.tpoint1[i];
        y3d = this.tpoint2[i];
        z3d = this.tpoint3[i];
        ty = y3d * Math.cos(this.vx) - z3d * Math.sin(this.vx);
        tz = y3d * Math.sin(this.vx) + z3d * Math.cos(this.vx);
        tx = x3d * Math.cos(this.vy) - tz * Math.sin(this.vy);
        tz = x3d * Math.sin(this.vy) + tz * Math.cos(this.vy);
        ox = tx;
        tx = tx * Math.cos(this.vz) - ty * Math.sin(this.vz);
        ty = ox * Math.sin(this.vz) + ty * Math.cos(this.vz);
        this.balls[i].x = 512 * tx / (this.d - tz) + this.box2D.width / 2;
        this.balls[i].y = this.box2D.height / 2 - 512 * ty / (this.d - tz);
      }
    }
    onDestroy() {
      Laya.timer.clear(this, this.nextObject);
      Laya.timer.clear(this, this.update);
    }
  };
  __name(PIXI_Example_2, "PIXI_Example_2");
  PIXI_Example_2 = __decorateClass([
    regClass41("60f16052-b54c-4618-87b4-8bc1dbfb2c0f", "../src/2D/PIXI/PIXI_Example_2.ts")
  ], PIXI_Example_2);

  // src/2D/PIXI/PIXI_Example_3.ts
  var Sprite23 = Laya.Sprite;
  var { regClass: regClass42, property: property42 } = Laya;
  var PIXI_Example_3 = class extends BaseScript {
    constructor() {
      super();
      this.colors = ["#5D0776", "#EC8A49", "#AF3666", "#F6C84C", "#4C779A"];
      this.colorCount = 0;
      this.isDown = false;
      this.path = [];
      this.color = this.colors[0];
    }
    onAwake() {
      super.base();
      this.createCanvases();
      Laya.timer.frameLoop(1, this, this.animate);
    }
    createCanvases() {
      var graphicsCanvas = new Sprite23();
      this.box2D.addChild(graphicsCanvas);
      var liveGraphicsCanvas = new Sprite23();
      this.box2D.addChild(liveGraphicsCanvas);
      this.liveGraphics = liveGraphicsCanvas.graphics;
      this.canvasGraphics = graphicsCanvas.graphics;
    }
    onMouseDown(e = null) {
      this.isDown = true;
      this.color = this.colors[this.colorCount++ % this.colors.length];
      this.path.length = 0;
    }
    onMouseMove(e = null) {
      if (!this.isDown)
        return;
      this.path.push(e.target.mouseX);
      this.path.push(e.target.mouseY);
    }
    onMouseUp(e = null) {
      this.isDown = false;
      this.canvasGraphics.drawPoly(0, 0, this.path.concat(), this.color);
    }
    animate() {
      this.liveGraphics.clear();
      this.liveGraphics.drawPoly(0, 0, this.path, this.color);
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(PIXI_Example_3, "PIXI_Example_3");
  PIXI_Example_3 = __decorateClass([
    regClass42("db6aa75c-0bcd-4553-96a2-6f1c3f6142f3", "../src/2D/PIXI/PIXI_Example_3.ts")
  ], PIXI_Example_3);

  // src/2D/PIXI/PIXI_Example_4.ts
  var Sprite24 = Laya.Sprite;
  var Point2 = Laya.Point;
  var { regClass: regClass43, property: property43 } = Laya;
  var PIXI_Example_4 = class extends BaseScript {
    constructor() {
      super();
      this.viewWidth = this.pageWidth;
      this.viewHeight = this.pageHeight;
      this.lasers = [];
      this.tick = 0;
      this.frequency = 80;
      this.type = 0;
    }
    onAwake() {
      super.base();
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      if (this.tick > this.frequency) {
        this.tick = 0;
        var laser = new Laser();
        laser.loadImage("resources/res/pixi/laser0" + (this.type % 5 + 1) + ".png");
        this.type++;
        laser.life = 0;
        var pos1;
        var pos2;
        if (this.type % 2) {
          pos1 = new Point2(-20, Math.random() * this.viewHeight);
          pos2 = new Point2(this.viewWidth, Math.random() * this.viewHeight + 20);
        } else {
          pos1 = new Point2(Math.random() * this.viewWidth, -20);
          pos2 = new Point2(Math.random() * this.viewWidth, this.viewHeight + 20);
        }
        var distX = pos1.x - pos2.x;
        var distY = pos1.y - pos2.y;
        var dist = Math.sqrt(distX * distX + distY * distY) + 40;
        laser.scaleX = dist / 20;
        laser.pos(pos1.x, pos1.y);
        laser.pivotY = 43 / 2;
        laser.blendMode = "lighter";
        laser.rotation = (Math.atan2(distY, distX) + Math.PI) * 180 / Math.PI;
        this.lasers.push(laser);
        this.box2D.addChild(laser);
        this.frequency *= 0.9;
      }
      for (var i = 0; i < this.lasers.length; i++) {
        laser = this.lasers[i];
        laser.life++;
        if (laser.life > 60 * 0.3) {
          laser.alpha *= 0.9;
          laser.scaleY = laser.alpha;
          if (laser.alpha < 0.01) {
            this.lasers.splice(i, 1);
            this.box2D.removeChild(laser);
            i--;
          }
        }
      }
      this.tick += 1;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(PIXI_Example_4, "PIXI_Example_4");
  PIXI_Example_4 = __decorateClass([
    regClass43("9c1ce71b-0f09-4fbd-bdaa-1259cadc79c6", "../src/2D/PIXI/PIXI_Example_4.ts")
  ], PIXI_Example_4);
  var _Laser = class _Laser extends Sprite24 {
  };
  __name(_Laser, "Laser");
  var Laser = _Laser;

  // src/2D/Physics/Physics_Bridge.ts
  var BoxCollider = Laya.BoxCollider;
  var Sprite25 = Laya.Sprite;
  var Event23 = Laya.Event;
  var RigidBody = Laya.RigidBody;
  var ChainCollider = Laya.ChainCollider;
  var PolygonCollider = Laya.PolygonCollider;
  var Physics = Laya.Physics;
  var CircleCollider = Laya.CircleCollider;
  var RevoluteJoint = Laya.RevoluteJoint;
  var Label = Laya.Label;
  var { regClass: regClass44, property: property44 } = Laya;
  var Physics_Bridge = class extends BaseScript {
    constructor() {
      super();
      this.ecount = 30;
    }
    onAwake() {
      super.base();
      Laya.Config.isAntialias = true;
      Laya.Physics.enable();
      Laya.PhysicsDebugDraw.enable();
      this.createBridge();
      this.eventListener();
    }
    createBridge() {
      const startPosX = 250, startPosY = 350;
      let ground = new Sprite25();
      this.box2D.addChild(ground);
      let groundBody = new RigidBody();
      groundBody.type = "static";
      ground.addComponentInstance(groundBody);
      let chainCollider = ground.addComponent(ChainCollider);
      chainCollider.points = "0,450,1024,450";
      let point1 = new Sprite25();
      this.box2D.addChild(point1);
      point1.pos(startPosX, startPosY);
      let pointRB1 = new RigidBody();
      pointRB1.type = "static";
      point1.addComponentInstance(pointRB1);
      let preBody = pointRB1;
      let width = 20, height = 2.5;
      for (let i = 0; i < this.ecount; i++) {
        let sp = new Sprite25();
        this.box2D.addChild(sp);
        sp.pos(startPosX + i * width, startPosY);
        let rb = sp.addComponent(RigidBody);
        let bc = sp.addComponent(BoxCollider);
        bc.width = width;
        bc.height = height;
        bc.density = 20;
        bc.friction = 0.2;
        bc.y = -height / 2;
        let rj2 = new RevoluteJoint();
        rj2.otherBody = preBody;
        sp.addComponentInstance(rj2);
        preBody = rb;
      }
      let point2 = new Sprite25();
      this.box2D.addChild(point2);
      point2.pos(startPosX + this.ecount * width, startPosY);
      let pointRB2 = new RigidBody();
      pointRB2.type = "static";
      point2.addComponentInstance(pointRB2);
      let rj = new RevoluteJoint();
      rj.otherBody = preBody;
      point2.addComponentInstance(rj);
      for (let i = 0; i < 2; i++) {
        let sp = new Sprite25();
        this.box2D.addChild(sp);
        sp.pos(350 + 100 * i, 300);
        let rb = sp.addComponent(RigidBody);
        rb.bullet = true;
        let pc = sp.addComponent(PolygonCollider);
        pc.points = "-10,0,10,0,0,30";
        pc.density = 1;
      }
      for (let i = 0; i < 2; i++) {
        let sp = new Sprite25();
        this.box2D.addChild(sp);
        sp.pos(400 + 150 * i, 350);
        let rb = sp.addComponent(RigidBody);
        rb.bullet = true;
        let pc = sp.addComponent(CircleCollider);
        pc.radius = 10;
      }
    }
    eventListener() {
      this.box2D.on(Event23.CLICK, this, (e) => {
        let targetX = (300 + Math.random() * 400) / Physics.PIXEL_RATIO, targetY = 500 / Physics.PIXEL_RATIO;
        let newBall = new Sprite25();
        this.box2D.addChild(newBall);
        let circleBody = newBall.addComponent(RigidBody);
        circleBody.bullet = true;
        let circleCollider = newBall.addComponent(CircleCollider);
        circleCollider.radius = 5;
        circleCollider.x = e.target.mouseX;
        circleCollider.y = e.target.mouseY;
        let circlePosx = circleCollider.x / Physics.PIXEL_RATIO;
        let circlePosy = circleCollider.y / Physics.PIXEL_RATIO;
        let velocityX = targetX - circlePosx;
        let velocityY = targetY - circlePosy;
        circleBody.linearVelocity = { "x": velocityX * 3, "y": velocityY * 3 };
        Laya.timer.frameOnce(120, this, function() {
          newBall.destroy();
        });
      });
      let label = this.label = this.box2D.addChild(new Label("\u5355\u51FB\u5C4F\u5E55\u4EA7\u751F\u65B0\u7684\u5C0F\u7403\u521A\u4F53\uFF0C\u51FB\u5411bridge\u7684\u968F\u673A\u4F4D\u7F6E"));
      label.top = 20;
      label.right = 20;
      label.fontSize = 16;
      label.color = "#e69999";
    }
    onDestroy() {
      this.box2D.offAll(Event23.CLICK);
      this.box2D.removeChild(this.label);
    }
  };
  __name(Physics_Bridge, "Physics_Bridge");
  Physics_Bridge = __decorateClass([
    regClass44("47c09d32-9526-42e6-8283-e1c8f965b163", "../src/2D/Physics/Physics_Bridge.ts")
  ], Physics_Bridge);

  // src/2D/Physics/Physics_CollisionEvent.ts
  var Sprite26 = Laya.Sprite;
  var Event24 = Laya.Event;
  var RigidBody2 = Laya.RigidBody;
  var ChainCollider2 = Laya.ChainCollider;
  var MouseJoint = Laya.MouseJoint;
  var Physics2 = Laya.Physics;
  var CircleCollider2 = Laya.CircleCollider;
  var { regClass: regClass45, property: property45 } = Laya;
  var Physics_CollisionEvent = class extends BaseScript {
    constructor() {
      super();
      this.count = 7;
      this.bodys = [];
      this.touching = [];
    }
    onAwake() {
      super.base();
      Laya.Config.isAntialias = true;
      Laya.Physics.enable();
      Laya.PhysicsDebugDraw.enable();
      this.createSensor();
    }
    createSensor() {
      let ground = new Sprite26();
      this.owner.addChild(ground);
      let groundBody = new RigidBody2();
      groundBody.type = "static";
      ground.addComponentInstance(groundBody);
      let chainCollider = ground.addComponent(ChainCollider2);
      chainCollider.points = "100,300,100,450,1024,450,1024,300";
      let sensorCollider = this.sensorCollider = ground.addComponent(CircleCollider2);
      sensorCollider.isSensor = true;
      sensorCollider.radius = 100;
      sensorCollider.x = 350;
      sensorCollider.y = 200;
      for (let i = 0, len = this.count; i < len; i++) {
        let sp = new Sprite26();
        this.owner.addChild(sp);
        sp.pos(350 + i * 50, 100).size(40, 40);
        let rb = sp.addComponent(RigidBody2);
        this.bodys.push(rb);
        this.touching[i] = false;
        let body = rb.getBody();
        if (body.GetUserData())
          body.SetUserData({ "pointer": i });
        else {
          console.log("GetUserData is null");
          body.pointer = i;
        }
        let circleCollider = sp.addComponent(CircleCollider2);
        circleCollider.radius = 20;
        sp.addComponent(MouseJoint);
      }
      ground.on(Event24.TRIGGER_ENTER, this, this.onTriggerEnter);
      ground.on(Event24.TRIGGER_EXIT, this, this.onTriggerExit);
      Laya.physicsTimer.frameLoop(1, this, this.onTriggerStay);
    }
    onTriggerEnter(colliderB, colliderA, contact) {
      if (colliderA === this.sensorCollider) {
        let bodyB = colliderB.owner.getComponent(RigidBody2);
        if (bodyB.getBody().GetUserData()) {
          let index = bodyB.getBody().GetUserData().pointer;
          this.touching[index] = true;
        } else {
          let index = bodyB.getBody().pointer;
          this.touching[index] = true;
        }
      }
    }
    onTriggerStay() {
      const box2d = window.box2d;
      let bodys = this.bodys, body;
      for (let i = 0, len = this.count; i < len; i++) {
        body = bodys[i];
        if (!this.touching[i]) {
          let body1 = body.getBody();
          if (body1.GetUserData())
            body1.SetUserData({ "pointer": i });
          continue;
        }
        let bodyA = this.sensorCollider.owner.getComponent(RigidBody2);
        let bodyB = body.owner.getComponent(RigidBody2);
        let bodyOriA = bodyA.getBody();
        let bodyOriB = bodyB.getBody();
        let position = bodyOriB.GetPosition();
        let center = new box2d.b2Vec2((450 + 100) / Physics2.PIXEL_RATIO, (300 + 100) / Physics2.PIXEL_RATIO);
        const d = box2d.b2Vec2.SubVV(center, position, new box2d.b2Vec2());
        if (d.LengthSquared() < 1e-5) {
          continue;
        }
        d.Normalize();
        const F = new box2d.b2Vec2(d.x * 100, d.y * 100);
        bodyB.applyForce(position, F);
      }
    }
    onTriggerExit(colliderB, colliderA, contact) {
      if (colliderA === this.sensorCollider) {
        let bodyB = colliderB.owner.getComponent(RigidBody2);
        if (bodyB.getBody().GetUserData()) {
          let index = bodyB.getBody().GetUserData().pointer;
          this.touching[index] = false;
        } else {
          let index = bodyB.getBody().pointer;
          this.touching[index] = false;
        }
      }
    }
    onDestroy() {
      Laya.physicsTimer.clearAll(this);
    }
  };
  __name(Physics_CollisionEvent, "Physics_CollisionEvent");
  Physics_CollisionEvent = __decorateClass([
    regClass45("1d0e4f07-4a46-4ccf-83f6-07d08e36a763", "../src/2D/Physics/Physics_CollisionEvent.ts")
  ], Physics_CollisionEvent);

  // src/2D/Physics/Physics_CollisionFiltering.ts
  var BoxCollider2 = Laya.BoxCollider;
  var Sprite27 = Laya.Sprite;
  var Event25 = Laya.Event;
  var RigidBody3 = Laya.RigidBody;
  var ChainCollider3 = Laya.ChainCollider;
  var MouseJoint2 = Laya.MouseJoint;
  var PolygonCollider2 = Laya.PolygonCollider;
  var CircleCollider3 = Laya.CircleCollider;
  var { regClass: regClass46, property: property46 } = Laya;
  var Physics_CollisionFiltering = class extends BaseScript {
    constructor() {
      super();
      this.preMovementX = 0;
      this.preMovementY = 0;
    }
    onAwake() {
      super.base();
      this.preMovementX = 0;
      this.preMovementY = 0;
      Laya.Config.isAntialias = true;
      Laya.Physics.enable();
      Laya.PhysicsDebugDraw.enable();
      this.createHouse();
      for (let i = 1; i <= 3; i++) {
        this.createBox(300, 300, 20, 20, i);
        this.createTriangle(500, 300, 20, i);
        this.createCircle(700, 300, 10, i);
      }
    }
    createHouse() {
      let house = new Sprite27();
      this.box2D.addChild(house);
      let rigidbody = house.addComponent(RigidBody3);
      rigidbody.type = "static";
      let chainCollider = house.addComponent(ChainCollider3);
      chainCollider.loop = true;
      chainCollider.points = "450,0,0,200,0,450,1024,450,1024,200";
    }
    createBox(posx, posy, width, height, ratio) {
      let box = new Sprite27();
      box.on(Event25.MOUSE_DOWN, this, this.mouseDown);
      this.box2D.addChild(box);
      box.pos(posx, posy).size(width * ratio, height * ratio);
      let rigidbody = box.addComponent(RigidBody3);
      rigidbody.category = Physics_CollisionFiltering.k_boxCategory;
      rigidbody.mask = Physics_CollisionFiltering.k_boxMask;
      let boxCollider = box.addComponent(BoxCollider2);
      boxCollider.width = width * ratio;
      boxCollider.height = height * ratio;
      this.addGroup(rigidbody, ratio);
    }
    createTriangle(posx, posy, side, ratio) {
      let triangle = new Sprite27();
      triangle.on(Event25.MOUSE_DOWN, this, this.mouseDown);
      this.box2D.addChild(triangle);
      triangle.pos(posx, posy).size(side * ratio, side * ratio);
      let rigidbody = triangle.addComponent(RigidBody3);
      rigidbody.category = Physics_CollisionFiltering.k_triangleCategory;
      rigidbody.mask = Physics_CollisionFiltering.k_triangleMask;
      let polygonCollider = triangle.addComponent(PolygonCollider2);
      polygonCollider.points = `0,0,0,${side * ratio},${side * ratio},0`;
      this.addGroup(rigidbody, ratio);
    }
    createCircle(posx, posy, radius, ratio) {
      let circle = new Sprite27();
      circle.on(Event25.MOUSE_DOWN, this, this.mouseDown);
      this.box2D.addChild(circle);
      circle.pos(posx, posy).size(radius * 2 * ratio, radius * 2 * ratio);
      let rigidbody = circle.addComponent(RigidBody3);
      rigidbody.category = Physics_CollisionFiltering.k_circleCategory;
      rigidbody.mask = Physics_CollisionFiltering.k_circleMask;
      let circleCollider = circle.addComponent(CircleCollider3);
      circleCollider.radius = radius * ratio;
      this.addGroup(rigidbody, ratio);
    }
    addGroup(rigidbody, ratio) {
      switch (ratio) {
        case 1:
          rigidbody.group = Physics_CollisionFiltering.k_smallGroup;
          break;
        case 2:
          rigidbody.group = Physics_CollisionFiltering.k_middleGroup;
          break;
        case 3:
          rigidbody.group = Physics_CollisionFiltering.k_largeGroup;
          break;
      }
    }
    mouseDown(e) {
      this.curTarget = e.target;
      let mouseJoint = this.curTarget.addComponent(MouseJoint2);
      Laya.timer.callLater(mouseJoint, mouseJoint.onMouseDown);
      this.box2D.on(Event25.MOUSE_UP, this, this.destoryJoint);
      this.box2D.on(Event25.MOUSE_OUT, this, this.destoryJoint);
    }
    mouseMove(e) {
      let movementX = e.nativeEvent.movementX;
      let movementY = e.nativeEvent.movementY;
      this.preMovementX = movementX;
      this.preMovementY = movementY;
      this.curTarget.pos(this.box2D.mouseX, this.box2D.mouseY);
    }
    mouseUp() {
      this.box2D.off(Event25.MOUSE_MOVE, this, this.mouseMove);
      this.box2D.off(Event25.MOUSE_UP, this, this.mouseUp);
      this.box2D.off(Event25.MOUSE_OUT, this, this.mouseUp);
      let rigidbody = this.curTarget.getComponent(RigidBody3);
      rigidbody.type = "dynamic";
      rigidbody.linearVelocity = [this.preMovementX, this.preMovementY];
      this.curTarget = null;
    }
    destoryJoint() {
      this.box2D.off(Event25.MOUSE_UP, this, this.destoryJoint);
      this.box2D.off(Event25.MOUSE_OUT, this, this.destoryJoint);
      let mouseJoint = this.curTarget.getComponent(MouseJoint2);
      mouseJoint.destroy();
      this.curTarget = null;
    }
    onDestroy() {
      this.box2D.off(Event25.MOUSE_MOVE, this, this.mouseMove);
      this.box2D.off(Event25.MOUSE_UP, this, this.mouseUp);
      this.box2D.off(Event25.MOUSE_OUT, this, this.mouseUp);
      this.box2D.off(Event25.MOUSE_UP, this, this.destoryJoint);
      this.box2D.off(Event25.MOUSE_OUT, this, this.destoryJoint);
    }
  };
  __name(Physics_CollisionFiltering, "Physics_CollisionFiltering");
  Physics_CollisionFiltering.k_smallGroup = 1;
  Physics_CollisionFiltering.k_middleGroup = 0;
  Physics_CollisionFiltering.k_largeGroup = -1;
  Physics_CollisionFiltering.k_triangleCategory = 2;
  Physics_CollisionFiltering.k_boxCategory = 4;
  Physics_CollisionFiltering.k_circleCategory = 8;
  Physics_CollisionFiltering.k_triangleMask = 15;
  Physics_CollisionFiltering.k_boxMask = 15 ^ Physics_CollisionFiltering.k_circleCategory;
  Physics_CollisionFiltering.k_circleMask = Physics_CollisionFiltering.k_triangleCategory | Physics_CollisionFiltering.k_boxCategory | 1;
  Physics_CollisionFiltering = __decorateClass([
    regClass46("699cf22f-9b38-440d-9278-5bf1a82cbc7a", "../src/2D/Physics/Physics_CollisionFiltering.ts")
  ], Physics_CollisionFiltering);

  // src/2D/Physics/Physics_Strandbeests.ts
  var BoxCollider3 = Laya.BoxCollider;
  var Sprite28 = Laya.Sprite;
  var Event26 = Laya.Event;
  var RigidBody4 = Laya.RigidBody;
  var ChainCollider4 = Laya.ChainCollider;
  var RevoluteJoint2 = Laya.RevoluteJoint;
  var Physics3 = Laya.Physics;
  var CircleCollider4 = Laya.CircleCollider;
  var PolygonCollider3 = Laya.PolygonCollider;
  var DistanceJoint = Laya.DistanceJoint;
  var Label2 = Laya.Label;
  var { regClass: regClass47, property: property47 } = Laya;
  var Physics_Strandbeests = class extends BaseScript {
    constructor() {
      super();
      this.scale = 2.5;
      this.pos = [500, 400];
      this.m_offset = [0, -80 * this.scale];
      this.pivot = [0, 8 * this.scale];
    }
    onAwake() {
      super.base();
      Laya.Config.isAntialias = true;
      Laya.Physics.enable();
      Laya.PhysicsDebugDraw.enable();
      this.Construct();
      this.eventListener();
    }
    Construct() {
      let ground = new Sprite28();
      this.box2D.addChild(ground);
      let rigidbody = new RigidBody4();
      rigidbody.type = "static";
      ground.addComponentInstance(rigidbody);
      let chainCollider = ground.addComponent(ChainCollider4);
      chainCollider.points = "0,200,0,450,1024,450,1024,200";
      for (let i = 1; i <= 32; i++) {
        let small = new Sprite28();
        small.pos(i * 30 + 50, 450 - 5 * this.scale);
        this.box2D.addChild(small);
        let sBody = small.addComponent(RigidBody4);
        let sCollider = small.addComponent(CircleCollider4);
        sCollider.radius = 2.5 * this.scale;
      }
      let chassis = this.chassis = new Sprite28();
      chassis.pos(this.pos[0] + this.pivot[0] + this.m_offset[0], this.pos[1] + this.pivot[1] + this.m_offset[1]).size(50 * this.scale, 20 * this.scale);
      this.box2D.addChild(chassis);
      let chassisBody = chassis.addComponent(RigidBody4);
      chassisBody.group = -1;
      let chassisCollider = chassis.addComponent(BoxCollider3);
      chassisCollider.density = 1;
      chassisCollider.width = 50 * this.scale;
      chassisCollider.height = 20 * this.scale;
      chassisCollider.x = -25 * this.scale;
      chassisCollider.y = -10 * this.scale;
      let wheel = this.wheel = new Sprite28();
      wheel.pos(this.pos[0] + this.pivot[0] + this.m_offset[0], this.pos[1] + this.pivot[1] + this.m_offset[1]);
      this.box2D.addChild(wheel);
      let wheelBody = wheel.addComponent(RigidBody4);
      wheelBody.group = -1;
      let wheelCollider = wheel.addComponent(CircleCollider4);
      wheelCollider.density = 1;
      wheelCollider.radius = 16 * this.scale;
      wheelCollider.x = -16 * this.scale;
      wheelCollider.y = -16 * this.scale;
      let motorJoint = this.motorJoint = new RevoluteJoint2();
      motorJoint.otherBody = wheelBody;
      motorJoint.motorSpeed = 2;
      motorJoint.maxMotorTorque = 400;
      motorJoint.enableMotor = true;
      chassis.addComponentInstance(motorJoint);
      let wheelOriBody = wheelBody.getBody();
      let wheelAnchor = [this.pivot[0], this.pivot[1] - 8 * this.scale];
      this.createLeg(-1, wheelAnchor);
      this.createLeg(1, wheelAnchor);
      wheelOriBody.SetTransform(wheelOriBody.GetPosition(), 120 * Math.PI / 180);
      this.createLeg(-1, wheelAnchor);
      this.createLeg(1, wheelAnchor);
      wheelOriBody.SetTransform(wheelOriBody.GetPosition(), -120 * Math.PI / 180);
      this.createLeg(-1, wheelAnchor);
      this.createLeg(1, wheelAnchor);
    }
    createLeg(s, wheelAnchor) {
      const box2d = window.box2d;
      const wheelBody = this.wheel.getComponent(RigidBody4);
      const chassisBody = this.chassis.getComponent(RigidBody4);
      const p1 = [54 * s * this.scale, -61 * -1 * this.scale];
      const p2 = [72 * s * this.scale, -12 * -1 * this.scale];
      const p3 = [43 * s * this.scale, -19 * -1 * this.scale];
      const p4 = [31 * s * this.scale, 8 * -1 * this.scale];
      const p5 = [60 * s * this.scale, 15 * -1 * this.scale];
      const p6 = [25 * s * this.scale, 37 * -1 * this.scale];
      let leg1 = new Sprite28();
      leg1.pos(this.pos[0] + this.m_offset[0], this.pos[1] + this.m_offset[1] + 16 * this.scale);
      this.box2D.addChild(leg1);
      let legBody1 = leg1.addComponent(RigidBody4);
      legBody1.angularDamping = 10;
      legBody1.group = -1;
      let legCollider1 = leg1.addComponent(PolygonCollider3);
      legCollider1.density = 1;
      let leg2 = new Sprite28();
      leg2.pos(this.pos[0] + this.m_offset[0] + p4[0], this.pos[1] + this.m_offset[1] + p4[1] + 16 * this.scale);
      this.box2D.addChild(leg2);
      let legBody2 = leg2.addComponent(RigidBody4);
      legBody2.angularDamping = 10;
      legBody2.group = -1;
      let legCollider2 = leg2.addComponent(PolygonCollider3);
      legCollider2.density = 1;
      if (s > 0) {
        legCollider1.points = p1.concat(p2).concat(p3).join(",");
        legCollider2.points = [0, 0].concat(B2Math.SubVV(p5, p4)).concat(B2Math.SubVV(p6, p4)).join(",");
      } else {
        legCollider1.points = p1.concat(p3).concat(p2).join(",");
        legCollider2.points = [0, 0].concat(B2Math.SubVV(p6, p4)).concat(B2Math.SubVV(p5, p4)).join(",");
      }
      const dampingRatio = 0.5;
      const frequencyHz = 10;
      let distanceJoint1 = new DistanceJoint();
      distanceJoint1.otherBody = legBody2;
      distanceJoint1.selfAnchor = p2;
      distanceJoint1.otherAnchor = B2Math.SubVV(p5, p4);
      distanceJoint1.frequency = frequencyHz;
      distanceJoint1.damping = dampingRatio;
      leg1.addComponentInstance(distanceJoint1);
      distanceJoint1.maxLength = distanceJoint1.minLength = distanceJoint1.length || distanceJoint1.joint.GetLength() * Physics3.PIXEL_RATIO;
      let distanceJoint2 = new DistanceJoint();
      distanceJoint2.otherBody = legBody2;
      distanceJoint2.selfAnchor = p3;
      distanceJoint2.frequency = frequencyHz;
      distanceJoint2.damping = dampingRatio;
      leg1.addComponentInstance(distanceJoint2);
      distanceJoint2.maxLength = distanceJoint2.minLength = distanceJoint2.length || distanceJoint2.joint.GetLength() * Physics3.PIXEL_RATIO;
      ;
      let localAnchor = new box2d.b2Vec2();
      wheelBody.getBody().GetLocalPoint({ "x": (this.pos[0] + this.m_offset[0]) / Physics3.PIXEL_RATIO, "y": (this.pos[1] + this.m_offset[1]) / Physics3.PIXEL_RATIO }, localAnchor);
      let anchor = [-localAnchor.x * Physics3.PIXEL_RATIO, -localAnchor.y * Physics3.PIXEL_RATIO];
      let distanceJoint3 = new DistanceJoint();
      distanceJoint3.otherBody = wheelBody;
      distanceJoint3.selfAnchor = p3;
      distanceJoint3.otherAnchor = anchor;
      distanceJoint3.frequency = frequencyHz;
      distanceJoint3.damping = dampingRatio;
      leg1.addComponentInstance(distanceJoint3);
      distanceJoint3.maxLength = distanceJoint3.minLength = distanceJoint3.length || distanceJoint3.joint.GetLength() * Physics3.PIXEL_RATIO;
      ;
      let distanceJoint4 = new DistanceJoint();
      distanceJoint4.otherBody = wheelBody;
      distanceJoint4.selfAnchor = B2Math.SubVV(p6, p4);
      distanceJoint4.otherAnchor = anchor;
      distanceJoint4.frequency = frequencyHz;
      distanceJoint4.damping = dampingRatio;
      leg2.addComponentInstance(distanceJoint4);
      distanceJoint4.maxLength = distanceJoint4.minLength = distanceJoint4.length || distanceJoint4.joint.GetLength() * Physics3.PIXEL_RATIO;
      ;
      let revoluteJoint = new RevoluteJoint2();
      revoluteJoint.otherBody = legBody2;
      revoluteJoint.anchor = B2Math.AddVV(p4, this.pivot);
      this.chassis.addComponentInstance(revoluteJoint);
    }
    eventListener() {
      Laya.stage.on(Event26.DOUBLE_CLICK, this, () => {
        this.motorJoint.motorSpeed = -this.motorJoint.motorSpeed;
      });
      Laya.stage.on(Event26.CLICK, this, (e) => {
        const chassisBody = this.chassis.getComponent(RigidBody4);
        const chassisPos = chassisBody.getBody().GetPosition();
        let newBall = new Sprite28();
        this.box2D.addChild(newBall);
        let circleBody = newBall.addComponent(RigidBody4);
        let circleCollider = newBall.addComponent(CircleCollider4);
        circleCollider.radius = 3 * this.scale;
        circleCollider.x = e.target.mouseX;
        circleCollider.y = e.target.mouseY;
        let circlePosx = circleCollider.x / Physics3.PIXEL_RATIO;
        let circlePosy = circleCollider.y / Physics3.PIXEL_RATIO;
        let velocityX = chassisPos.x - circlePosx;
        let velocityY = chassisPos.y - circlePosy;
        circleBody.linearVelocity = { "x": velocityX * 5, "y": velocityY * 5 };
        Laya.timer.frameOnce(120, this, function() {
          newBall.destroy();
        });
      });
      let label = this.label = this.box2D.addChild(new Label2("\u53CC\u51FB\u5C4F\u5E55\uFF0C\u4EFF\u751F\u673A\u5668\u4EBA\u5411\u76F8\u53CD\u65B9\u5411\u8FD0\u52A8\n\u5355\u51FB\u4EA7\u751F\u65B0\u7684\u5C0F\u7403\u521A\u4F53"));
      label.top = 20;
      label.right = 20;
      label.fontSize = 16;
      label.color = "#e69999";
    }
    dispose() {
      Laya.stage.offAll(Event26.CLICK);
      Laya.stage.offAll(Event26.DOUBLE_CLICK);
      this.box2D.removeChild(this.label);
    }
  };
  __name(Physics_Strandbeests, "Physics_Strandbeests");
  Physics_Strandbeests = __decorateClass([
    regClass47("6b3e7edf-f04c-4d8b-bb3a-6e08d193d2cb", "../src/2D/Physics/Physics_Strandbeests.ts")
  ], Physics_Strandbeests);
  var _B2Math = class _B2Math {
    static AddVV(a, b) {
      return [a[0] + b[0], a[1] + b[1]];
    }
    static SubVV(a, b) {
      return [a[0] - b[0], a[1] - b[1]];
    }
  };
  __name(_B2Math, "B2Math");
  var B2Math = _B2Math;

  // src/2D/Physics/Physics_Tumbler.ts
  var BoxCollider4 = Laya.BoxCollider;
  var Sprite29 = Laya.Sprite;
  var Event27 = Laya.Event;
  var RigidBody5 = Laya.RigidBody;
  var RevoluteJoint3 = Laya.RevoluteJoint;
  var Label3 = Laya.Label;
  var { regClass: regClass48, property: property48 } = Laya;
  var Physics_Tumbler = class extends BaseScript {
    constructor() {
      super();
      this.count = 0;
      this.totalBox = 200;
    }
    onAwake() {
      super.base();
      Laya.Config.isAntialias = true;
      Laya.Physics.enable();
      Laya.PhysicsDebugDraw.enable();
      this.createBox();
      this.eventListener();
    }
    createBox() {
      const width = 300, height = 20;
      const posx = this.pageWidth / 2, posy = this.pageHeight / 2;
      let box = this.box = new Sprite29();
      box.size(width + height * 2, width + height * 2);
      box.pivot(box.width / 2, box.height / 2);
      box.pos(posx, posy);
      this.box2D.addChild(box);
      let boxBody = box.addComponent(RigidBody5);
      let box1Shape = box.addComponent(BoxCollider4);
      let box2Shape = box.addComponent(BoxCollider4);
      let box3Shape = box.addComponent(BoxCollider4);
      let box4Shape = box.addComponent(BoxCollider4);
      box1Shape.width = width + height * 2;
      box1Shape.height = height;
      box1Shape.x = 0;
      box1Shape.y = 0;
      box2Shape.width = width + height * 2;
      box2Shape.height = height;
      box2Shape.x = 0;
      box2Shape.y = width + height;
      box3Shape.width = height;
      box3Shape.height = width + height * 2;
      box3Shape.x = 0;
      box3Shape.y = 0;
      box4Shape.width = height;
      box4Shape.height = width + height * 2;
      box4Shape.x = width + height;
      box4Shape.y = 0;
      let revoluteJoint = new RevoluteJoint3();
      revoluteJoint.anchor = [box.width / 2, box.width / 2];
      revoluteJoint.motorSpeed = 0.05 * Math.PI;
      revoluteJoint.maxMotorTorque = 1e8;
      revoluteJoint.enableMotor = true;
      box.addComponentInstance(revoluteJoint);
      Laya.timer.frameLoop(1, this, this.addMiniBox);
    }
    addMiniBox() {
      let box = this.box;
      if (this.count >= this.totalBox) {
        return;
      }
      let sp = new Sprite29();
      this.box2D.addChild(sp);
      sp.x = box.x;
      sp.y = box.y;
      sp.addComponent(RigidBody5);
      let collider = sp.addComponent(BoxCollider4);
      collider.width = 5;
      collider.height = 5;
      this.count++;
    }
    eventListener() {
      let label = this.label = this.box2D.addChild(new Label3("\u53CC\u51FB\u5C4F\u5E55\uFF0C\u5C06\u4F1A\u4EA7\u751F100\u4E2A\u65B0\u7684\u5C0F\u521A\u4F53"));
      label.top = 20;
      label.right = 20;
      label.fontSize = 16;
      label.color = "#e69999";
      Laya.stage.on(Event27.DOUBLE_CLICK, this, this.handleMouse);
      Laya.timer.frameLoop(1, this, this.addMiniBox);
    }
    handleMouse() {
      console.log("handleMouse");
      this.totalBox += 100;
    }
    onDestroy() {
      Laya.stage.offAll(Event27.DOUBLE_CLICK);
      this.box2D.removeChild(this.label);
    }
  };
  __name(Physics_Tumbler, "Physics_Tumbler");
  Physics_Tumbler = __decorateClass([
    regClass48("f1ab357a-3d29-44fd-b4c3-0da0cc19536c", "../src/2D/Physics/Physics_Tumbler.ts")
  ], Physics_Tumbler);

  // src/2D/Sound/Sound_SimpleDemo.ts
  var Sprite30 = Laya.Sprite;
  var Event28 = Laya.Event;
  var Handler4 = Laya.Handler;
  var SoundManager = Laya.SoundManager;
  var { regClass: regClass49, property: property49 } = Laya;
  var Sound_SimpleDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var gap = 10;
      var soundButton = this.createButton("\u64AD\u653E\u97F3\u6548");
      soundButton.x = (this.pageWidth - soundButton.width * 2 + gap) / 2;
      soundButton.y = (this.pageHeight - soundButton.height) / 2;
      this.box2D.addChild(soundButton);
      var musicButton = this.createButton("\u64AD\u653E\u97F3\u4E50");
      musicButton.x = soundButton.x + gap + soundButton.width;
      musicButton.y = soundButton.y;
      this.box2D.addChild(musicButton);
      soundButton.on(Event28.CLICK, this, this.onPlaySound);
      musicButton.on(Event28.CLICK, this, this.onPlayMusic);
    }
    createButton(label) {
      var w = 110;
      var h = 40;
      var button = new Sprite30();
      button.size(w, h);
      button.graphics.drawRect(0, 0, w, h, "#FF7F50");
      button.graphics.fillText(label, w / 2, 8, "25px SimHei", "#FFFFFF", "center");
      this.box2D.addChild(button);
      return button;
    }
    onPlayMusic(e = null) {
      console.log("\u64AD\u653E\u97F3\u4E50");
      SoundManager.playMusic("resources/res/sounds/bgm.mp3", 1, new Handler4(this, this.onComplete));
    }
    onPlaySound(e = null) {
      console.log("\u64AD\u653E\u97F3\u6548");
      SoundManager.playSound("resources/res/sounds/btn.mp3", 1, new Handler4(this, this.onComplete));
    }
    onComplete() {
      console.log("\u64AD\u653E\u5B8C\u6210");
    }
    onDestroy() {
      SoundManager.stopAllSound();
      SoundManager.stopMusic();
    }
  };
  __name(Sound_SimpleDemo, "Sound_SimpleDemo");
  Sound_SimpleDemo = __decorateClass([
    regClass49("4284d2ac-4597-45fa-9ede-342369ccae35", "../src/2D/Sound/Sound_SimpleDemo.ts")
  ], Sound_SimpleDemo);

  // src/2D/Skeleton/Skeleton_ChangeSkin.ts
  var Event29 = Laya.Event;
  var { regClass: regClass50, property: property50 } = Laya;
  var Skeleton_ChangeSkin = class extends BaseScript {
    constructor() {
      super();
      this.mStartX = 400;
      this.mStartY = 400;
      this.mCurrIndex = 0;
      this.mCurrSkinIndex = 0;
      this.mSkinList = ["goblin", "goblingirl"];
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/spine/spineRes2/goblins.sk").then((templet) => {
        this.mArmature = templet.buildArmature(1);
        this.mArmature.x = this.mStartX;
        this.mArmature.y = this.mStartY;
        this.mArmature.scale(0.8, 0.8);
        this.owner.addChild(this.mArmature);
        this.mArmature.on(Event29.STOPPED, this, this.completeHandler);
        this.play();
        this.changeSkin();
        Laya.timer.loop(1e3, this, this.changeSkin);
      });
    }
    changeSkin() {
      this.mCurrSkinIndex++;
      if (this.mCurrSkinIndex >= this.mSkinList.length) {
        this.mCurrSkinIndex = 0;
      }
      this.mArmature.showSkinByName(this.mSkinList[this.mCurrSkinIndex]);
    }
    completeHandler() {
      this.play();
    }
    play() {
      this.mCurrIndex++;
      if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
        this.mCurrIndex = 0;
      }
      this.mArmature.play(this.mCurrIndex, false);
    }
    onDestroy() {
      if (this.mArmature == null)
        return;
      this.mArmature.stop();
      Laya.timer.clear(this, this.changeSkin);
      this.mArmature.off(Event29.STOPPED, this, this.completeHandler);
    }
  };
  __name(Skeleton_ChangeSkin, "Skeleton_ChangeSkin");
  Skeleton_ChangeSkin = __decorateClass([
    regClass50("59e4e0e5-27e8-4a7f-a675-4492c54c3589", "../src/2D/Skeleton/Skeleton_ChangeSkin.ts")
  ], Skeleton_ChangeSkin);

  // src/2D/Skeleton/Skeleton_MultiTexture.ts
  var Event30 = Laya.Event;
  var { regClass: regClass51, property: property51 } = Laya;
  var Skeleton_MultiTexture = class extends BaseScript {
    constructor() {
      super();
      this.mStartX = 300;
      this.mStartY = 350;
      this.mCurrIndex = 0;
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/spine/spineRes1/dragon.sk").then((templet) => {
        this.mArmature = templet.buildArmature(0);
        this.mArmature.x = this.mStartX;
        this.mArmature.y = this.mStartY;
        this.mArmature.scale(0.5, 0.5);
        this.owner.addChild(this.mArmature);
        this.mArmature.on(Event30.STOPPED, this, this.completeHandler);
        this.play();
      });
    }
    completeHandler() {
      this.play();
    }
    play() {
      this.mCurrIndex++;
      if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
        this.mCurrIndex = 0;
      }
      this.mArmature.play(this.mCurrIndex, false);
    }
    onDestroy() {
      if (this.mArmature == null)
        return;
      this.mArmature.stop();
      this.mArmature.off(Event30.STOPPED, this, this.completeHandler);
    }
  };
  __name(Skeleton_MultiTexture, "Skeleton_MultiTexture");
  Skeleton_MultiTexture = __decorateClass([
    regClass51("d548a72a-4abf-4aa2-9b7e-499d67b6e5c5", "../src/2D/Skeleton/Skeleton_MultiTexture.ts")
  ], Skeleton_MultiTexture);

  // src/2D/Skeleton/Skeleton_SpineAdapted.ts
  var Event31 = Laya.Event;
  var Loader6 = Laya.Loader;
  var SpineSkeleton = Laya.SpineSkeleton;
  var { regClass: regClass52, property: property52 } = Laya;
  var Skeleton_SpineAdapted = class extends BaseScript {
    constructor() {
      super();
      this.index = -1;
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/spine/spineboy-pro.skel", Loader6.SPINE).then((templet) => {
        this.skeleton = new SpineSkeleton();
        this.skeleton.templet = templet;
        this.owner.addChild(this.skeleton);
        this.skeleton.pos(this.pageWidth / 2 - 200, this.pageHeight / 2 - 20);
        this.skeleton.scale(0.3, 0.3);
        this.skeleton.on(Event31.STOPPED, this, this.play);
        this.play();
      });
    }
    play() {
      if (++this.index >= this.skeleton.getAnimNum()) {
        this.index = 0;
      }
      this.skeleton.play(this.index, false, true);
    }
  };
  __name(Skeleton_SpineAdapted, "Skeleton_SpineAdapted");
  Skeleton_SpineAdapted = __decorateClass([
    regClass52("50339b2f-a2d1-4727-9376-6e9008aa5a49", "../src/2D/Skeleton/Skeleton_SpineAdapted.ts")
  ], Skeleton_SpineAdapted);

  // src/2D/Skeleton/Skeleton_SpineEvent.ts
  var Sprite31 = Laya.Sprite;
  var Event32 = Laya.Event;
  var Handler5 = Laya.Handler;
  var Tween5 = Laya.Tween;
  var { regClass: regClass53, property: property53 } = Laya;
  var Skeleton_SpineEvent = class extends BaseScript {
    constructor() {
      super();
      this.mStartX = 400;
      this.mStartY = 400;
      this.mCurrIndex = 0;
    }
    onAwake() {
      super.base();
      this.mLabelSprite = new Sprite31();
      Laya.loader.load("resources/res/spine/spineRes6/alien.sk").then((templet) => {
        this.mArmature = templet.buildArmature(1);
        this.mArmature.x = this.mStartX;
        this.mArmature.y = this.mStartY;
        this.mArmature.scale(0.5, 0.5);
        this.owner.addChild(this.mArmature);
        this.mArmature.on(Event32.LABEL, this, this.onEvent);
        this.mArmature.on(Event32.STOPPED, this, this.completeHandler);
        this.play();
      });
    }
    completeHandler() {
      this.play();
    }
    play() {
      this.mCurrIndex++;
      if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
        this.mCurrIndex = 0;
      }
      this.mArmature.play(this.mCurrIndex, false);
    }
    onEvent(e) {
      var tEventData = e;
      this.owner.addChild(this.mLabelSprite);
      this.mLabelSprite.x = this.mStartX;
      this.mLabelSprite.y = this.mStartY;
      this.mLabelSprite.graphics.clear();
      this.mLabelSprite.graphics.fillText(tEventData.name, 0, 0, "20px Arial", "#ff0000", "center");
      Tween5.to(this.mLabelSprite, { "y": this.mStartY - 200 }, 1e3, null, Handler5.create(this, this.playEnd));
    }
    playEnd() {
      this.mLabelSprite.removeSelf();
    }
    onDestroy() {
      if (this.mArmature == null)
        return;
      Tween5.clearAll(this.mLabelSprite);
      this.mArmature.stop();
      this.mArmature.off(Event32.STOPPED, this, this.completeHandler);
    }
  };
  __name(Skeleton_SpineEvent, "Skeleton_SpineEvent");
  Skeleton_SpineEvent = __decorateClass([
    regClass53("e21e30a8-95ad-4f26-b4a3-546f809e763b", "../src/2D/Skeleton/Skeleton_SpineEvent.ts")
  ], Skeleton_SpineEvent);

  // src/2D/Skeleton/Skeleton_SpineStretchyman.ts
  var Event33 = Laya.Event;
  var { regClass: regClass54, property: property54 } = Laya;
  var Skeleton_SpineStretchyman = class extends BaseScript {
    constructor() {
      super();
      this.mStartX = 200;
      this.mStartY = 400;
      this.mCurrIndex = 0;
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/spine/spineRes4/stretchyman.sk").then((templet) => {
        this.mArmature = templet.buildArmature(1);
        this.mArmature.x = this.mStartX;
        this.mArmature.y = this.mStartY;
        this.mArmature.scale(0.5, 0.5);
        this.owner.addChild(this.mArmature);
        this.mArmature.on(Event33.STOPPED, this, this.completeHandler);
        this.play();
      });
    }
    completeHandler() {
      this.play();
    }
    play() {
      this.mCurrIndex++;
      if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
        this.mCurrIndex = 0;
      }
      this.mArmature.play(this.mCurrIndex, false);
    }
    onDestroy() {
      if (this.mArmature == null)
        return;
      this.mArmature.stop();
      this.mArmature.off(Event33.STOPPED, this, this.completeHandler);
    }
  };
  __name(Skeleton_SpineStretchyman, "Skeleton_SpineStretchyman");
  Skeleton_SpineStretchyman = __decorateClass([
    regClass54("9428bf05-d5f5-4e58-a562-90e01db5af80", "../src/2D/Skeleton/Skeleton_SpineStretchyman.ts")
  ], Skeleton_SpineStretchyman);

  // src/2D/Skeleton/Skeleton_SpineVine.ts
  var { regClass: regClass55, property: property55 } = Laya;
  var Event34 = Laya.Event;
  var Skeleton_SpineVine = class extends BaseScript {
    constructor() {
      super();
      this.mStartX = 400;
      this.mStartY = 500;
      this.mCurrIndex = 0;
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/spine/spineRes5/vine.sk").then((templet) => {
        this.mArmature = templet.buildArmature(1);
        this.mArmature.x = this.mStartX;
        this.mArmature.y = this.mStartY;
        this.mArmature.scale(0.5, 0.5);
        this.owner.addChild(this.mArmature);
        this.mArmature.on(Event34.STOPPED, this, this.completeHandler);
        this.play();
      });
    }
    completeHandler() {
      this.play();
    }
    play() {
      this.mCurrIndex++;
      if (this.mCurrIndex >= this.mArmature.getAnimNum()) {
        this.mCurrIndex = 0;
      }
      this.mArmature.play(this.mCurrIndex, false);
    }
    onDestroy() {
      if (this.mArmature == null)
        return;
      this.mArmature.stop();
      this.mArmature.off(Event34.STOPPED, this, this.completeHandler);
    }
  };
  __name(Skeleton_SpineVine, "Skeleton_SpineVine");
  Skeleton_SpineVine = __decorateClass([
    regClass55("58d15757-1949-49e4-8863-0e26e5244c44", "../src/2D/Skeleton/Skeleton_SpineVine.ts")
  ], Skeleton_SpineVine);

  // src/2D/Sprite/Sprite_BinaryImage.ts
  var { regClass: regClass56, property: property56 } = Laya;
  var Sprite32 = Laya.Sprite;
  var Byte2 = Laya.Byte;
  var Texture = Laya.Texture;
  var Texture2D = Laya.Texture2D;
  var TextureFormat = Laya.TextureFormat;
  var Sprite_BinaryImage = class extends BaseScript {
    constructor() {
      super();
      this.sp1 = new Sprite32();
      this.sp2 = new Sprite32();
      this.sp3 = new Sprite32();
    }
    onAwake() {
      super.base();
      Laya.loader.fetch("resources/res/test.bin", "arraybuffer").then((res) => {
        let arraybuffer = res;
        let byte = new Byte2(arraybuffer);
        byte.writeArrayBuffer(arraybuffer, 4);
        this.imageArrayBuffer = byte.buffer;
        this.imgBlob = new Blob([this.imageArrayBuffer], { type: "image/png" });
        this.showApe1();
      });
      super.addBottomButton(["\u5207\u6362\u65B9\u5F0F", "\u5207\u6362\u65B9\u5F0F", "\u5207\u6362\u65B9\u5F0F"], this, [this.showApe2, this.showApe3, this.showApe1]);
    }
    showApe1() {
      let reader = new FileReader();
      reader.readAsDataURL(this.imgBlob);
      reader.onload = (e) => {
        this.sp1.loadImage(e.target.result);
        this.sp1.x = 10;
        this.owner.addChild(this.sp1);
        this.sp2.removeSelf();
        this.sp3.removeSelf();
      };
    }
    showApe2() {
      var url = Laya.Browser.window.URL.createObjectURL(this.imgBlob);
      console.log(url);
      Laya.loader.fetch(url, "image").then((res) => {
        var t2d = new Texture2D(res.width, res.height, TextureFormat.R8G8B8A8, false, false, true);
        t2d.setImageData(res, true, false);
        var texture = new Texture(t2d);
        this.sp2.graphics.drawTexture(texture, 150, 0);
        this.owner.addChild(this.sp2);
        this.sp1.removeSelf();
        this.sp3.removeSelf();
      });
    }
    showApe3() {
      let option = {};
      option.blob = this.imgBlob;
      Laya.loader.fetch("", "image", null, option).then((res) => {
        var t2d = new Texture2D(res.width, res.height, TextureFormat.R8G8B8A8, false, false, true);
        t2d.setImageData(res, true, false);
        var texture = new Texture(t2d);
        this.sp3.graphics.drawTexture(texture, 290, 0);
        this.owner.addChild(this.sp3);
        this.sp1.removeSelf();
        this.sp2.removeSelf();
      });
    }
  };
  __name(Sprite_BinaryImage, "Sprite_BinaryImage");
  Sprite_BinaryImage = __decorateClass([
    regClass56("6830521c-bf37-473b-bb75-9e8399bbcaab", "../src/2D/Sprite/Sprite_BinaryImage.ts")
  ], Sprite_BinaryImage);

  // src/2D/Sprite/Sprite_Cache.ts
  var Sprite33 = Laya.Sprite;
  var Text13 = Laya.Text;
  var { regClass: regClass57, property: property57 } = Laya;
  var Sprite_Cache = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.cacheText();
    }
    cacheText() {
      let textBox = new Sprite33();
      this.owner.addChild(textBox);
      let text;
      for (let i = 0; i < 1e3; i++) {
        text = new Text13();
        textBox.addChild(text);
        text.fontSize = 20;
        text.text = (Math.random() * 100).toFixed(0);
        text.rotation = Math.random() * 360;
        text.color = "#ccc";
        text.x = Math.random() * this.pageWidth;
        text.y = Math.random() * this.pageHeight;
      }
      textBox.cacheAs = "bitmap";
    }
  };
  __name(Sprite_Cache, "Sprite_Cache");
  Sprite_Cache = __decorateClass([
    regClass57("b1c27db6-bef3-4e4b-9222-4283acd98d50", "../src/2D/Sprite/Sprite_Cache.ts")
  ], Sprite_Cache);

  // src/2D/Sprite/Sprite_Container.ts
  var Sprite34 = Laya.Sprite;
  var { regClass: regClass58, property: property58 } = Laya;
  var Sprite_Container = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createApes();
    }
    createApes() {
      var layoutRadius = 150;
      var radianUnit = Math.PI / 2;
      this.apesCtn = new Sprite34();
      this.owner.addChild(this.apesCtn);
      for (var i = 0; i < 4; i++) {
        var ape = new Sprite34();
        ape.loadImage("resources/res/apes/monkey" + i + ".png");
        ape.pivot(55, 72);
        ape.pos(
          Math.cos(radianUnit * i) * layoutRadius,
          Math.sin(radianUnit * i) * layoutRadius
        );
        this.apesCtn.addChild(ape);
      }
      this.apesCtn.pos(this.pageWidth / 2, this.pageHeight / 2);
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate(e) {
      this.apesCtn.rotation += 1;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(Sprite_Container, "Sprite_Container");
  Sprite_Container = __decorateClass([
    regClass58("2812157c-5a61-4d9e-899c-96c7c41460fb", "../src/2D/Sprite/Sprite_Container.ts")
  ], Sprite_Container);

  // src/2D/Sprite/Sprite_DisplayImage.ts
  var { regClass: regClass59, property: property59 } = Laya;
  var Sprite_DisplayImage = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.showApe();
    }
    showApe() {
      const monkey1Path = "resources/res/apes/monkey1.png", monkey2Path = "resources/res/apes/monkey2.png";
      let ape = new Laya.Sprite();
      this.owner.addChild(ape);
      ape.loadImage(monkey1Path);
      Laya.loader.load(monkey2Path).then(() => {
        let monkey2 = Laya.loader.getRes(monkey2Path);
        let ape2 = new Laya.Sprite();
        this.owner.addChild(ape2);
        ape2.graphics.drawTexture(monkey2, 100, 0);
      });
    }
  };
  __name(Sprite_DisplayImage, "Sprite_DisplayImage");
  Sprite_DisplayImage = __decorateClass([
    regClass59("622a88a7-667e-46e7-843d-166c7d06018b", "../src/2D/Sprite/Sprite_DisplayImage.ts")
  ], Sprite_DisplayImage);

  // src/2D/Sprite/Sprite_DrawPath.ts
  var Sprite35 = Laya.Sprite;
  var { regClass: regClass60, property: property60 } = Laya;
  var Sprite_DrawPath = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.drawPentagram();
    }
    drawPentagram() {
      var canvas = new Sprite35();
      this.owner.addChild(canvas);
      var path = [];
      path.push(0, -130);
      path.push(33, -33);
      path.push(137, -30);
      path.push(55, 32);
      path.push(85, 130);
      path.push(0, 73);
      path.push(-85, 130);
      path.push(-55, 32);
      path.push(-137, -30);
      path.push(-33, -33);
      canvas.graphics.drawPoly(this.pageWidth / 2, this.pageHeight / 2, path, "#FF7F50");
    }
  };
  __name(Sprite_DrawPath, "Sprite_DrawPath");
  Sprite_DrawPath = __decorateClass([
    regClass60("91e0f116-48ba-450a-8860-c66bf714221c", "../src/2D/Sprite/Sprite_DrawPath.ts")
  ], Sprite_DrawPath);

  // src/2D/Sprite/Sprite_DrawShapes.ts
  var Sprite36 = Laya.Sprite;
  var { regClass: regClass61, property: property61 } = Laya;
  var Sprite_DrawShapes = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.drawSomething();
    }
    drawSomething() {
      this.sp = new Sprite36();
      this.owner.addChild(this.sp);
      this.sp.graphics.drawLine(10, 58, 146, 58, "#ff0000", 3);
      this.sp.graphics.drawLines(176, 58, [0, 0, 39, -50, 78, 0, 117, 50, 156, 0], "#ff0000", 5);
      this.sp.graphics.drawCurves(352, 58, [0, 0, 19, -100, 39, 0, 58, 100, 78, 0, 97, -100, 117, 0, 136, 100, 156, 0], "#ff0000", 5);
      this.sp.graphics.drawRect(10, 166, 166, 90, "#ffff00");
      this.sp.graphics.drawPoly(264, 166, [0, 0, 60, 0, 78.48, 57, 30, 93.48, -18.48, 57], "#ffff00");
      this.sp.graphics.drawPoly(400, 166, [0, 100, 50, 0, 100, 100], "#ffff00");
      this.sp.graphics.drawCircle(98, 332, 50, "#00ffff");
      this.sp.graphics.drawPie(240, 290, 100, 10, 60, "#00ffff");
      this.sp.graphics.drawPath(400, 310, [["moveTo", 5, 0], ["lineTo", 105, 0], ["arcTo", 110, 0, 110, 5, 5], ["lineTo", 110, 55], ["arcTo", 110, 60, 105, 60, 5], ["lineTo", 5, 60], ["arcTo", 0, 60, 0, 55, 5], ["lineTo", 0, 5], ["arcTo", 0, 0, 5, 0, 5], ["closePath"]], { fillStyle: "#00ffff" });
    }
  };
  __name(Sprite_DrawShapes, "Sprite_DrawShapes");
  Sprite_DrawShapes = __decorateClass([
    regClass61("8b346388-272f-454f-bf68-0a1087a7f2cf", "../src/2D/Sprite/Sprite_DrawShapes.ts")
  ], Sprite_DrawShapes);

  // src/2D/Sprite/Sprite_Guide.ts
  var Sprite37 = Laya.Sprite;
  var { regClass: regClass62, property: property62 } = Laya;
  var Sprite_Guide = class extends BaseScript {
    constructor() {
      super();
      this.guideSteps = [
        { x: 151, y: 575, radius: 150, tip: "resources/res/guide/help6.png", tipx: 200, tipy: 250 },
        { x: 883, y: 620, radius: 100, tip: "resources/res/guide/help4.png", tipx: 730, tipy: 380 },
        { x: 1128, y: 583, radius: 110, tip: "resources/res/guide/help3.png", tipx: 900, tipy: 300 }
      ];
      this.guideStep = 0;
      this.scaleX = Index.pageWidth / 1285;
      this.scaleY = Index.pageHeight / 727;
      this.box = new Laya.Box();
    }
    onAwake() {
      super.base();
      this.createPage();
      if (Index.curPage)
        this.box.scale(this.scaleX, this.scaleY);
    }
    createPage() {
      this.owner.addChild(this.box);
      this.gameContainer = new Sprite37();
      this.box.addChild(this.gameContainer);
      this.gameContainer.loadImage("resources/res/guide/crazy_snowball.png");
      this.gameContainer.on(Laya.Event.CLICK, this, this.nextStep);
      this.guideContainer = new Sprite37();
      this.box.addChild(this.guideContainer);
      this.guideContainer.cacheAs = "bitmap";
      this.maskArea = new Sprite37();
      this.guideContainer.addChild(this.maskArea);
      this.maskArea.alpha = 0.5;
      this.maskArea.graphics.drawRect(0, 0, 1285, 727, "#000");
      this.interactionArea = new Sprite37();
      this.guideContainer.addChild(this.interactionArea);
      this.interactionArea.blendMode = "destination-out";
      this.hitArea = new Laya.HitArea();
      this.hitArea.hit.drawRect(0, 0, 1285, 727, "#000");
      this.guideContainer.hitArea = this.hitArea;
      this.guideContainer.mouseEnabled = true;
      this.tipContainer = new Sprite37();
      this.box.addChild(this.tipContainer);
      this.nextStep();
    }
    nextStep() {
      if (this.guideStep === this.guideSteps.length) {
        this.box.removeChild(this.guideContainer);
        this.box.removeChild(this.tipContainer);
        return;
      }
      let step = this.guideSteps[this.guideStep++];
      this.hitArea.unHit.clear();
      this.hitArea.unHit.drawCircle(step.x, step.y, step.radius, "#000000");
      this.interactionArea.graphics.clear();
      this.interactionArea.graphics.drawCircle(step.x, step.y, step.radius, "#000000");
      this.tipContainer.graphics.clear();
      this.tipContainer.loadImage(step.tip);
      this.tipContainer.pos(step.tipx, step.tipy);
    }
  };
  __name(Sprite_Guide, "Sprite_Guide");
  Sprite_Guide = __decorateClass([
    regClass62("4c31a0b2-da12-464c-821b-fa3e2521c9ec", "../src/2D/Sprite/Sprite_Guide.ts")
  ], Sprite_Guide);

  // src/2D/Sprite/Sprite_MagnifyingGlass.ts
  var Sprite38 = Laya.Sprite;
  var { regClass: regClass63, property: property63 } = Laya;
  var Sprite_MagnifyingGlass = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      Laya.loader.load("resources/res/bg2.png").then(() => {
        this.setup();
      });
    }
    setup() {
      var bg = new Sprite38();
      bg.loadImage("resources/res/bg2.png");
      this.owner.addChild(bg);
      this.bg2 = new Sprite38();
      this.bg2.loadImage("resources/res/bg2.png");
      this.owner.addChild(this.bg2);
      this.bg2.scale(3, 3);
      this.maskSp = new Sprite38();
      this.maskSp.loadImage("resources/res/mask.png");
      this.maskSp.pivot(50, 50);
      this.bg2.mask = this.maskSp;
      Laya.stage.on("mousemove", this, this.onMouseMove);
    }
    onMouseMove(e) {
      this.bg2.x = -e.target.mouseX * 2;
      this.bg2.y = -e.target.mouseY * 2;
      this.maskSp.x = e.target.mouseX;
      this.maskSp.y = e.target.mouseY;
    }
    onDestroy() {
      Laya.stage.off("mousemove", this, this.onMouseMove);
    }
  };
  __name(Sprite_MagnifyingGlass, "Sprite_MagnifyingGlass");
  Sprite_MagnifyingGlass = __decorateClass([
    regClass63("781d3498-3b70-42c0-9931-19cca7dd3c2e", "../src/2D/Sprite/Sprite_MagnifyingGlass.ts")
  ], Sprite_MagnifyingGlass);

  // src/2D/Sprite/Sprite_NodeControl.ts
  var { regClass: regClass64, property: property64 } = Laya;
  var Sprite_NodeControl = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createApes();
    }
    createApes() {
      const Sprite47 = Laya.Sprite;
      let monkey2Path = "resources/res/apes/monkey2.png";
      this.ape1 = new Sprite47();
      this.ape2 = new Sprite47();
      this.ape1.loadImage(monkey2Path);
      this.ape2.loadImage(monkey2Path);
      this.ape1.pivot(55, 72);
      this.ape2.pivot(55, 72);
      this.ape1.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.ape2.pos(200, 0);
      this.owner.addChild(this.ape1);
      this.ape1.addChild(this.ape2);
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      this.ape1.rotation += 2;
      this.ape2.rotation -= 4;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(Sprite_NodeControl, "Sprite_NodeControl");
  Sprite_NodeControl = __decorateClass([
    regClass64("9b0b2bc8-0e72-4d28-a70e-dea5d386679e", "../src/2D/Sprite/Sprite_NodeControl.ts")
  ], Sprite_NodeControl);

  // src/2D/Sprite/Sprite_Pivot.ts
  var { regClass: regClass65, property: property65 } = Laya;
  var Sprite_Pivot = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createApes();
    }
    createApes() {
      const Sprite47 = Laya.Sprite;
      let monkey2Path = "resources/res/apes/monkey2.png";
      let gap = 150;
      this.ape1 = new Sprite47();
      this.owner.addChild(this.ape1);
      this.ape1.loadImage(monkey2Path);
      this.ape1.pivot(55, 72);
      this.ape1.pos(this.pageWidth / 2 - gap, this.pageHeight / 2);
      this.ape2 = new Sprite47();
      this.owner.addChild(this.ape2);
      this.ape2.loadImage(monkey2Path);
      this.ape2.pos(this.pageWidth / 2 + gap, this.pageHeight / 2);
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      this.ape1.rotation += 2;
      this.ape2.rotation += 2;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(Sprite_Pivot, "Sprite_Pivot");
  Sprite_Pivot = __decorateClass([
    regClass65("43d05e39-950f-4ef6-bc8d-f4b64c3a95c5", "../src/2D/Sprite/Sprite_Pivot.ts")
  ], Sprite_Pivot);

  // src/2D/Sprite/Sprite_RoateAndScale.ts
  var Sprite39 = Laya.Sprite;
  var { regClass: regClass66, property: property66 } = Laya;
  var Sprite_RoateAndScale = class extends BaseScript {
    constructor() {
      super();
      this.scaleDelta = 0;
    }
    onAwake() {
      super.base();
      this.createApe();
    }
    createApe() {
      this.ape = new Sprite39();
      this.ape.loadImage("resources/res/apes/monkey2.png");
      this.owner.addChild(this.ape);
      this.ape.pivot(55, 72);
      this.ape.x = this.pageWidth / 2;
      this.ape.y = this.pageHeight / 2;
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate(e) {
      this.ape.rotation += 2;
      this.scaleDelta += 0.02;
      var scaleValue = Math.sin(this.scaleDelta);
      this.ape.scale(scaleValue, scaleValue);
    }
    onDestroy() {
      Laya.timer.clear(this, this.animate);
    }
  };
  __name(Sprite_RoateAndScale, "Sprite_RoateAndScale");
  Sprite_RoateAndScale = __decorateClass([
    regClass66("c995c03a-29f2-42d9-9147-5b6d3c0f5039", "../src/2D/Sprite/Sprite_RoateAndScale.ts")
  ], Sprite_RoateAndScale);

  // src/2D/Sprite/Sprite_ScreenShot.ts
  var Sprite40 = Laya.Sprite;
  var Image2 = Laya.Image;
  var Texture2 = Laya.Texture;
  var Button2 = Laya.Button;
  var Event35 = Laya.Event;
  var RenderTexture2D = Laya.RenderTexture2D;
  var RenderTargetFormat = Laya.RenderTargetFormat;
  var Browser5 = Laya.Browser;
  var { regClass: regClass67, property: property67 } = Laya;
  var Sprite_ScreenShot = class extends BaseScript {
    constructor() {
      super();
      this.btnArr = ["resources/image/img_btn_bg.png", "resources/image/img_btn_bg.png", "resources/image/img_btn_bg.png"];
      this.nameArr = ["canvas\u622A\u56FE", "sprite\u622A\u56FE", "\u6E05\u7406"];
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.btnArr.concat("resources/res/apes/monkey3.png")).then(() => {
        this.onLoaded();
      });
    }
    createButton(skin, name, cb, index) {
      var btn = new Button2(skin, name);
      this.owner.addChild(btn);
      btn.on(Event35.CLICK, this, cb);
      btn.size(120, 30);
      btn.labelSize = 16;
      btn.sizeGrid = "21,83,22,76";
      btn.stateNum = 1;
      btn.labelColors = "#ffffff";
      btn.name = name;
      btn.right = 10;
      btn.top = 10 + index * (btn.height + 10);
      return btn;
    }
    onLoaded() {
      for (let index = 0; index < this.btnArr.length; index++) {
        this.createButton(this.btnArr[index], this.nameArr[index], this._onclick, index);
      }
      this._canvas = window.document.getElementById("layaCanvas");
      this.aimSp = new Sprite40();
      this.aimSp.size(this.pageWidth / 2, this.pageHeight / 2);
      this.owner.addChild(this.aimSp);
      this.aimSp.graphics.drawRect(0, 0, this.aimSp.width, this.aimSp.height, "#333333");
      this.monkeyTexture = Laya.loader.getRes("resources/res/apes/monkey3.png");
      this.aimSp.graphics.drawTexture(this.monkeyTexture, 0, 0, this.monkeyTexture.width, this.monkeyTexture.height);
      this.drawImage = new Image2();
      this.drawImage.size(this.pageWidth / 2, this.pageHeight / 2);
      this.owner.addChild(this.drawImage);
      this.drawImage.bottom = this.drawImage.right = 0;
      this.drawSp = new Sprite40();
      this.owner.addChild(this.drawSp);
      this.drawSp.size(this.pageWidth / 2, this.pageHeight / 2);
      this.drawSp.y = this.pageHeight / 2;
      this.drawSp.graphics.drawRect(0, 0, this.drawSp.width, this.drawSp.height, "#ff0000");
    }
    _onclick(e) {
      switch (e.target.name) {
        case this.nameArr[0]:
          var base64Url = this._canvas.toDataURL("image/png", 1);
          this.drawImage.skin = base64Url;
          console.log(base64Url);
          break;
        case this.nameArr[1]:
          var ddrt = new RenderTexture2D(Browser5.clientWidth * Browser5.pixelRatio, Browser5.clientHeight * Browser5.pixelRatio, RenderTargetFormat.R8G8B8A8, RenderTargetFormat.None);
          Laya.stage.drawToTexture(Browser5.clientWidth * Browser5.pixelRatio, Browser5.clientHeight * Browser5.pixelRatio, 0, 0, ddrt, true);
          var text = new Texture2(ddrt);
          this.drawSp.graphics.drawTexture(text, 0, 0, this.drawSp.width, this.drawSp.height);
          break;
        case this.nameArr[2]:
          this.drawImage.skin = null;
          this.drawSp.graphics.clear();
          this.drawSp.graphics.drawRect(0, 0, this.drawSp.width, this.drawSp.height, "#ff0000");
          break;
      }
    }
  };
  __name(Sprite_ScreenShot, "Sprite_ScreenShot");
  Sprite_ScreenShot = __decorateClass([
    regClass67("7215a525-ba4a-49c5-bb91-410cd7b5a48d", "../src/2D/Sprite/Sprite_ScreenShot.ts")
  ], Sprite_ScreenShot);

  // src/2D/Sprite/Sprite_SwitchTexture.ts
  var { regClass: regClass68, property: property68 } = Laya;
  var Sprite_SwitchTexture = class extends BaseScript {
    constructor() {
      super();
      this.monkey1Str = "resources/res/apes/monkey1.png";
      this.monkey2Str = "resources/res/apes/monkey2.png";
    }
    onAwake() {
      super.base();
      this.flag = true;
      Laya.loader.load([this.monkey1Str, this.monkey2Str]).then(() => {
        this.onAssetsLoaded();
      });
    }
    onAssetsLoaded() {
      this.monkey1Res = Laya.loader.getRes(this.monkey1Str), this.monkey2Res = Laya.loader.getRes(this.monkey2Str);
      this.ape = new Laya.Sprite();
      this.owner.addChild(this.ape);
      this.ape.pivot(55, 72);
      this.ape.pos(this.pageWidth / 2, this.pageHeight / 2);
      this.switchTexture();
      this.ape.on(Laya.Event.CLICK, this, this.switchTexture);
    }
    switchTexture() {
      let monkey = (this.flag = !this.flag) ? this.monkey1Res : this.monkey2Res;
      this.ape.graphics.clear();
      this.ape.graphics.drawTexture(monkey, 0, 0);
      this.ape.size(monkey.width, monkey.height);
    }
  };
  __name(Sprite_SwitchTexture, "Sprite_SwitchTexture");
  Sprite_SwitchTexture = __decorateClass([
    regClass68("dac515e7-e7e9-4cd1-9da2-be3ff5edb050", "../src/2D/Sprite/Sprite_SwitchTexture.ts")
  ], Sprite_SwitchTexture);

  // src/2D/TiledMap/TiledMap_AnimationTile.ts
  var Handler6 = Laya.Handler;
  var Rectangle3 = Laya.Rectangle;
  var TiledMap = Laya.TiledMap;
  var { regClass: regClass69, property: property69 } = Laya;
  var TiledMap_AnimationTile = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createMap();
    }
    createMap() {
      this.tiledMap = new TiledMap();
      this.tiledMap.createMap("resources/res/tiledMap/orthogonal-test-movelayer.json", new Rectangle3(0, 0, this.pageWidth, this.pageHeight), Handler6.create(this, this.onLoaded));
    }
    onLoaded() {
      this.tiledMap.mapSprite().removeSelf();
      let map = this.tiledMap.mapSprite();
      this.box2D.addChild(map);
    }
    dispose() {
      if (this.tiledMap) {
        this.tiledMap.mapSprite().removeChildren();
        this.tiledMap.destroy();
      }
    }
  };
  __name(TiledMap_AnimationTile, "TiledMap_AnimationTile");
  TiledMap_AnimationTile = __decorateClass([
    regClass69("64708305-a2d1-438a-afd9-2cfb5f20370c", "../src/2D/TiledMap/TiledMap_AnimationTile.ts")
  ], TiledMap_AnimationTile);

  // src/2D/TiledMap/TiledMap_IsometricWorld.ts
  var Sprite41 = Laya.Sprite;
  var Rectangle4 = Laya.Rectangle;
  var Point3 = Laya.Point;
  var Handler7 = Laya.Handler;
  var TiledMap2 = Laya.TiledMap;
  var { regClass: regClass70, property: property70 } = Laya;
  var TiledMap_IsometricWorld = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createMap();
      this.box2D.on("click", this, this.onStageClick);
    }
    createMap() {
      this.tiledMap = new TiledMap2();
      this.tiledMap.createMap("resources/res/tiledMap/isometric_grass_and_water.json", new Rectangle4(0, 0, Index.pageWidth, Index.pageHeight), Handler7.create(this, this.mapLoaded), null, new Point3(1600, 800));
    }
    onStageClick(e = null) {
      var p = new Point3(0, 0);
      if (this.layer) {
        this.layer.getTilePositionByScreenPos(e.target.mouseX, e.target.mouseY, p);
        this.layer.getScreenPositionByTilePos(Math.floor(p.x), Math.floor(p.y), p);
        this.sprite.pos(p.x, p.y);
      }
    }
    mapLoaded(e = null) {
      this.layer = this.tiledMap.getLayerByIndex(0);
      var radiusX = 32;
      var radiusY = Math.tan(180 / Math.PI * 30) * radiusX;
      var color = "#FF7F50";
      this.sprite = new Sprite41();
      this.sprite.graphics.drawLine(0, 0, -radiusX, radiusY, color);
      this.sprite.graphics.drawLine(0, 0, radiusX, radiusY, color);
      this.sprite.graphics.drawLine(-radiusX, radiusY, 0, radiusY * 2, color);
      this.sprite.graphics.drawLine(radiusX, radiusY, 0, radiusY * 2, color);
      this.box2D.addChild(this.sprite);
      this.sprite.zOrder = 99999;
      this.tiledMap.mapSprite().removeSelf();
      let map = this.tiledMap.mapSprite();
      map.x -= (1600 - this.pageWidth) / 2;
      this.box2D.addChild(map);
    }
    onDestroy() {
      this.box2D.off("click", this, this.onStageClick);
      if (this.tiledMap) {
        this.tiledMap.mapSprite().removeChildren();
        this.tiledMap.destroy();
      }
    }
  };
  __name(TiledMap_IsometricWorld, "TiledMap_IsometricWorld");
  TiledMap_IsometricWorld = __decorateClass([
    regClass70("36da897b-d4b1-430b-9e46-0d4640e6071a", "../src/2D/TiledMap/TiledMap_IsometricWorld.ts")
  ], TiledMap_IsometricWorld);

  // src/2D/TiledMap/TiledMap_PerspectiveWall.ts
  var Rectangle5 = Laya.Rectangle;
  var Handler8 = Laya.Handler;
  var TiledMap3 = Laya.TiledMap;
  var { regClass: regClass71, property: property71 } = Laya;
  var TiledMap_PerspectiveWall = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createMap();
    }
    createMap() {
      this.tiledMap = new TiledMap3();
      this.tiledMap.createMap("resources/res/tiledMap/perspective_walls.json", new Rectangle5(0, 0, this.pageWidth, this.pageHeight), Handler8.create(this, this.onLoaded));
    }
    onLoaded() {
      this.tiledMap.mapSprite().removeSelf();
      this.box2D.addChild(this.tiledMap.mapSprite());
    }
    onDestroy() {
      if (this.tiledMap) {
        this.tiledMap.mapSprite().removeChildren();
        this.tiledMap.destroy();
      }
    }
  };
  __name(TiledMap_PerspectiveWall, "TiledMap_PerspectiveWall");
  TiledMap_PerspectiveWall = __decorateClass([
    regClass71("a324d7b5-9adb-4b34-9170-139eb6f6f506", "../src/2D/TiledMap/TiledMap_PerspectiveWall.ts")
  ], TiledMap_PerspectiveWall);

  // src/2D/TiledMap/TiledMap_SimpleDemo.ts
  var Event36 = Laya.Event;
  var Rectangle6 = Laya.Rectangle;
  var Handler9 = Laya.Handler;
  var TiledMap4 = Laya.TiledMap;
  var { regClass: regClass72, property: property72 } = Laya;
  var TiledMap_SimpleDemo = class extends BaseScript {
    constructor() {
      super();
      this.mLastMouseX = 0;
      this.mLastMouseY = 0;
      this.mX = 0;
      this.mY = 0;
    }
    onAwake() {
      super.base();
      this.createMap();
      this.box2D.on(Event36.MOUSE_DOWN, this, this.mouseDown);
      this.box2D.on(Event36.MOUSE_UP, this, this.mouseUp);
    }
    //创建地图
    createMap() {
      this.tiledMap = new TiledMap4();
      this.mX = this.mY = 0;
      this.tiledMap.createMap("resources/res/tiledMap/desert.json", new Rectangle6(0, 0, this.pageWidth, this.pageHeight), new Handler9(this, this.completeHandler));
    }
    onLoaded() {
      this.tiledMap.mapSprite().removeSelf();
      this.box2D.addChild(this.tiledMap.mapSprite());
    }
    /**
     * 地图加载完成的回调
     */
    completeHandler(e = null) {
      this.box2D.on(Event36.RESIZE, this, this.resize);
      this.resize();
      this.onLoaded();
    }
    //鼠标按下拖动地图
    mouseDown(e = null) {
      this.mLastMouseX = e.target.mouseX;
      this.mLastMouseY = e.target.mouseY;
      this.box2D.on(Event36.MOUSE_MOVE, this, this.mouseMove);
    }
    mouseMove(e = null) {
      this.tiledMap.moveViewPort(this.mX - (e.target.mouseX - this.mLastMouseX), this.mY - (e.target.mouseY - this.mLastMouseY));
    }
    mouseUp(e = null) {
      this.mX = this.mX - (e.target.mouseX - this.mLastMouseX);
      this.mY = this.mY - (e.target.mouseY - this.mLastMouseY);
      this.box2D.off(Event36.MOUSE_MOVE, this, this.mouseMove);
    }
    // 窗口大小改变，把地图的视口区域重设下
    resize(e = null) {
      this.tiledMap.changeViewPort(this.mX, this.mY, this.pageWidth, this.pageHeight);
    }
    dispose() {
      this.box2D.off(Event36.MOUSE_DOWN, this, this.mouseDown);
      this.box2D.off(Event36.MOUSE_UP, this, this.mouseUp);
      this.box2D.off(Event36.RESIZE, this, this.resize);
      this.box2D.off(Event36.MOUSE_MOVE, this, this.mouseMove);
      if (this.tiledMap) {
        this.tiledMap.destroy();
      }
    }
  };
  __name(TiledMap_SimpleDemo, "TiledMap_SimpleDemo");
  TiledMap_SimpleDemo = __decorateClass([
    regClass72("05e90bf2-8094-404e-92ef-4f13b11f62b8", "../src/2D/TiledMap/TiledMap_SimpleDemo.ts")
  ], TiledMap_SimpleDemo);

  // src/2D/Timer/Timer_CallLater.ts
  var Text14 = Laya.Text;
  var { regClass: regClass73, property: property73 } = Laya;
  var Timer_CallLater = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.demonstrate();
    }
    demonstrate() {
      for (var i = 0; i < 10; i++) {
        Laya.timer.callLater(this, this.onCallLater);
      }
    }
    onCallLater(e = null) {
      console.log("onCallLater triggered");
      var text = new Text14();
      text.font = "SimHei";
      text.fontSize = 30;
      text.color = "#FFFFFF";
      text.text = "\u6253\u5F00\u63A7\u5236\u53F0\u53EF\u89C1\u8BE5\u51FD\u6570\u4EC5\u89E6\u53D1\u4E86\u4E00\u6B21";
      text.size(this.pageWidth, this.pageHeight);
      text.wordWrap = true;
      text.valign = "middle";
      text.align = "center";
      this.box2D.addChild(text);
    }
  };
  __name(Timer_CallLater, "Timer_CallLater");
  Timer_CallLater = __decorateClass([
    regClass73("8015ee44-a6c5-40c2-9aa1-5c1c2ac1bf28", "../src/2D/Timer/Timer_CallLater.ts")
  ], Timer_CallLater);

  // src/2D/Timer/Timer_DelayExcute.ts
  var Sprite42 = Laya.Sprite;
  var Event37 = Laya.Event;
  var { regClass: regClass74, property: property74 } = Laya;
  var Timer_DelayExcute = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var vGap = 100;
      this.button1 = this.createButton("\u70B9\u62113\u79D2\u4E4B\u540E alpha - 0.5");
      this.button1.x = (this.pageWidth - this.button1.width) / 2;
      this.button1.y = (this.pageHeight - this.button1.height - vGap) / 2;
      this.box2D.addChild(this.button1);
      this.button1.on(Event37.CLICK, this, this.onDecreaseAlpha1);
      this.button2 = this.createButton("\u70B9\u621160\u5E27\u4E4B\u540E alpha - 0.5");
      this.button2.pos(this.button1.x, this.button1.y + vGap);
      this.box2D.addChild(this.button2);
      this.button2.on(Event37.CLICK, this, this.onDecreaseAlpha2);
    }
    createButton(label) {
      var w = 300, h = 60;
      var button = new Sprite42();
      button.graphics.drawRect(0, 0, w, h, "#FF7F50");
      button.size(w, h);
      button.graphics.fillText(label, w / 2, 17, "20px simHei", "#ffffff", "center");
      return button;
    }
    onDecreaseAlpha1(e = null) {
      this.button1.off(Event37.CLICK, this, this.onDecreaseAlpha1);
      Laya.timer.once(3e3, this, this.onComplete1);
    }
    onDecreaseAlpha2(e = null) {
      this.button2.off(Event37.CLICK, this, this.onDecreaseAlpha2);
      Laya.timer.frameOnce(60, this, this.onComplete2);
    }
    onComplete1() {
      this.button1.alpha -= 0.5;
    }
    onComplete2() {
      this.button2.alpha -= 0.5;
    }
    onDestroy() {
      Laya.timer.clearAll(this);
    }
  };
  __name(Timer_DelayExcute, "Timer_DelayExcute");
  Timer_DelayExcute = __decorateClass([
    regClass74("d938c758-9e83-434b-b44d-d738431ec10e", "../src/2D/Timer/Timer_DelayExcute.ts")
  ], Timer_DelayExcute);

  // src/2D/Timer/Timer_Interval.ts
  var Text15 = Laya.Text;
  var { regClass: regClass75, property: property75 } = Laya;
  var Timer_Interval = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var vGap = 200;
      this.rotateTimeBasedText = this.createText("\u57FA\u4E8E\u65F6\u95F4\u65CB\u8F6C", this.pageWidth / 2, (this.pageHeight - vGap) / 2);
      this.rotateFrameRateBasedText = this.createText("\u57FA\u4E8E\u5E27\u9891\u65CB\u8F6C", this.rotateTimeBasedText.x, this.rotateTimeBasedText.y + vGap);
      Laya.timer.loop(200, this, this.animateTimeBased);
      Laya.timer.frameLoop(2, this, this.animateFrameRateBased);
    }
    createText(text, x, y) {
      var t = new Text15();
      t.text = text;
      t.fontSize = 30;
      t.color = "white";
      t.bold = true;
      t.pivot(t.width / 2, t.height / 2);
      t.pos(x, y);
      this.box2D.addChild(t);
      return t;
    }
    animateTimeBased() {
      this.rotateTimeBasedText.rotation += 1;
    }
    animateFrameRateBased() {
      this.rotateFrameRateBasedText.rotation += 1;
    }
    onDestroy() {
      Laya.timer.clear(this, this.animateTimeBased);
      Laya.timer.clear(this, this.animateFrameRateBased);
    }
  };
  __name(Timer_Interval, "Timer_Interval");
  Timer_Interval = __decorateClass([
    regClass75("4f4156a7-8544-449e-b9ed-0970bded88d8", "../src/2D/Timer/Timer_Interval.ts")
  ], Timer_Interval);

  // src/2D/Text/Text_AutoSize.ts
  var Text16 = Laya.Text;
  var { regClass: regClass76, property: property76 } = Laya;
  var Text_AutoSize = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var autoSizeText = this.createSampleText();
      autoSizeText.overflow = Text16.VISIBLE;
      autoSizeText.y = 50;
      var widthLimitText = this.createSampleText();
      widthLimitText.width = 100;
      widthLimitText.height = 70;
      widthLimitText.y = 180;
      widthLimitText.overflow = Text16.HIDDEN;
      var heightLimitText = this.createSampleText();
      heightLimitText.height = 20;
      heightLimitText.y = 320;
    }
    createSampleText() {
      var text = new Text16();
      text.overflow = Text16.HIDDEN;
      text.color = "#FFFFFF";
      text.font = "Impact";
      text.fontSize = 20;
      text.borderColor = "#FFFF00";
      text.x = 80;
      this.box2D.addChild(text);
      text.text = "A POWERFUL HTML5 ENGINE ON FLASH TECHNICAL\nA POWERFUL HTML5 ENGINE ON FLASH TECHNICAL\nA POWERFUL HTML5 ENGINE ON FLASH TECHNICAL";
      return text;
    }
  };
  __name(Text_AutoSize, "Text_AutoSize");
  Text_AutoSize = __decorateClass([
    regClass76("7637aa31-dad9-415a-bd87-059be135c04f", "../src/2D/Text/Text_AutoSize.ts")
  ], Text_AutoSize);

  // src/2D/Text/Text_BitmapFont.ts
  var Text17 = Laya.Text;
  var { regClass: regClass77, property: property77 } = Laya;
  var Text_BitmapFont = class extends BaseScript {
    constructor() {
      super();
      this.fontName = "diyFont";
    }
    onAwake() {
      super.base();
      this.loadFont();
    }
    loadFont() {
      Laya.loader.load("resources/res/bitmapFont/test.fnt", Laya.Loader.FONT).then((res) => {
        this.onFontLoaded(res);
      });
    }
    onFontLoaded(bitmapFont) {
      Text17.registerBitmapFont(this.fontName, bitmapFont);
      this.createText(this.fontName);
    }
    createText(font) {
      var txt = new Text17();
      txt.width = 250;
      txt.wordWrap = true;
      txt.text = "Do one thing at a time, and do well.";
      txt.font = font;
      txt.leading = 5;
      txt.x = this.pageWidth - txt.width >> 1;
      txt.y = this.pageHeight - txt.height >> 1;
      this.box2D.addChild(txt);
    }
  };
  __name(Text_BitmapFont, "Text_BitmapFont");
  Text_BitmapFont = __decorateClass([
    regClass77("f4e2bacf-0e7b-4cac-9278-13ce67fd9752", "../src/2D/Text/Text_BitmapFont.ts")
  ], Text_BitmapFont);

  // src/2D/Text/Text_ComplexStyle.ts
  var Text18 = Laya.Text;
  var { regClass: regClass78, property: property78 } = Laya;
  var Text_ComplexStyle = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createText();
    }
    createText() {
      var txt = new Text18();
      txt.text = "Layabox\u662F\u6027\u80FD\u6700\u5F3A\u7684HTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411Flash\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01";
      txt.width = 400;
      txt.wordWrap = true;
      txt.align = "center";
      txt.fontSize = 40;
      txt.font = "Microsoft YaHei";
      txt.color = "#ff0000";
      txt.bold = true;
      txt.leading = 5;
      txt.stroke = 2;
      txt.strokeColor = "#ffffff";
      txt.borderColor = "#00ff00";
      txt.x = (this.pageWidth - txt.textWidth) / 2;
      txt.y = (this.pageHeight - txt.textHeight) / 2;
      this.box2D.addChild(txt);
    }
  };
  __name(Text_ComplexStyle, "Text_ComplexStyle");
  Text_ComplexStyle = __decorateClass([
    regClass78("07534d14-3399-4525-9452-5ea65e8ab848", "../src/2D/Text/Text_ComplexStyle.ts")
  ], Text_ComplexStyle);

  // src/2D/Text/Text_Editable.ts
  var Input = Laya.Input;
  var { regClass: regClass79, property: property79 } = Laya;
  var Text_Editable = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createInput();
    }
    createInput() {
      var inputText = new Input();
      inputText.size(350, 100);
      inputText.x = this.pageWidth - inputText.width >> 1;
      inputText.y = this.pageHeight - inputText.height >> 1;
      inputText.text = "\u8FD9\u6BB5\u6587\u672C\u4E0D\u53EF\u7F16\u8F91\uFF0C\u4F46\u53EF\u590D\u5236";
      inputText.editable = false;
      inputText.bold = true;
      inputText.bgColor = "#666666";
      inputText.color = "#ffffff";
      inputText.fontSize = 20;
      this.box2D.addChild(inputText);
    }
  };
  __name(Text_Editable, "Text_Editable");
  Text_Editable = __decorateClass([
    regClass79("377ed9c2-39f1-4be3-af65-29f085445173", "../src/2D/Text/Text_Editable.ts")
  ], Text_Editable);

  // src/2D/Text/Text_HTML.ts
  var { regClass: regClass80, property: property80 } = Laya;
  var Text_HTML = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createParagraph();
    }
    createParagraph() {
      var t = new Laya.Text();
      t.html = true;
      t.fontSize = 50;
      t.zOrder = 9e4;
      t.text = "<font color=#e3d26a>\u4F7F\u7528</font><br/>";
      t.text += "<font color=#409ed7><b>\u6587\u672C\u7684</b>HTML</font><br/>";
      t.text += "<font color=#10d269><i>\u521B\u5EFA\u7684</i></font><br/>";
      t.text += "<font color=#dfbfc9><u>HTML\u5BCC\u6587\u672C</u></font>";
      this.box2D.addChild(t);
    }
  };
  __name(Text_HTML, "Text_HTML");
  Text_HTML = __decorateClass([
    regClass80("69205946-36a4-446a-a53a-337a95d28135", "../src/2D/Text/Text_HTML.ts")
  ], Text_HTML);

  // src/2D/Text/Text_InputMultiline.ts
  var Input2 = Laya.Input;
  var { regClass: regClass81, property: property81 } = Laya;
  var Text_InputMultiline = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createInput();
    }
    createInput() {
      var inputText = new Input2();
      inputText.prompt = "Type some word...";
      inputText.multiline = true;
      inputText.wordWrap = true;
      inputText.size(350, 100);
      inputText.x = this.pageWidth - inputText.width >> 1;
      inputText.y = this.pageHeight - inputText.height >> 1;
      inputText.padding = [2, 2, 2, 2];
      inputText.bgColor = "#666666";
      inputText.color = "#ffffff";
      inputText.fontSize = 20;
      this.box2D.addChild(inputText);
    }
  };
  __name(Text_InputMultiline, "Text_InputMultiline");
  Text_InputMultiline = __decorateClass([
    regClass81("41608eb0-8f61-40e4-bbb9-da03a8b26e24", "../src/2D/Text/Text_InputMultiline.ts")
  ], Text_InputMultiline);

  // src/2D/Text/Text_InputSingleline.ts
  var Input3 = Laya.Input;
  var { regClass: regClass82, property: property82 } = Laya;
  var Text_InputSingleline = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createInput();
    }
    createInput() {
      var inputText = new Input3();
      inputText.size(350, 100);
      inputText.x = this.pageWidth - inputText.width >> 1;
      inputText.y = this.pageHeight - inputText.height >> 1;
      inputText.prompt = "Type some word...";
      inputText.bold = true;
      inputText.bgColor = "#666666";
      inputText.color = "#ffffff";
      inputText.fontSize = 20;
      this.box2D.addChild(inputText);
    }
  };
  __name(Text_InputSingleline, "Text_InputSingleline");
  Text_InputSingleline = __decorateClass([
    regClass82("180d8844-d5a7-46e6-8d9b-0f882835324a", "../src/2D/Text/Text_InputSingleline.ts")
  ], Text_InputSingleline);

  // src/2D/Text/Text_MaxChars.ts
  var Input4 = Laya.Input;
  var { regClass: regClass83, property: property83 } = Laya;
  var Text_MaxChars = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createInput();
    }
    createInput() {
      var inputText = new Input4();
      inputText.size(350, 100);
      inputText.x = this.pageWidth - inputText.width >> 1;
      inputText.y = this.pageHeight - inputText.height >> 1;
      inputText.bold = true;
      inputText.bgColor = "#666666";
      inputText.color = "#ffffff";
      inputText.fontSize = 20;
      inputText.maxChars = 5;
      this.box2D.addChild(inputText);
    }
  };
  __name(Text_MaxChars, "Text_MaxChars");
  Text_MaxChars = __decorateClass([
    regClass83("5fc3f7f8-2fca-4d92-ad6b-d3721b169668", "../src/2D/Text/Text_MaxChars.ts")
  ], Text_MaxChars);

  // src/2D/Text/Text_Overflow.ts
  var Text19 = Laya.Text;
  var { regClass: regClass84, property: property84 } = Laya;
  var Text_Overflow = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createTexts();
    }
    createTexts() {
      var t1 = this.createText();
      t1.overflow = Text19.VISIBLE;
      t1.pos(10, 10);
      var t2 = this.createText();
      t2.overflow = Text19.SCROLL;
      t2.pos(10, 110);
      var t3 = this.createText();
      t3.overflow = Text19.HIDDEN;
      t3.pos(10, 210);
    }
    createText() {
      var txt = new Text19();
      txt.text = "Layabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01";
      txt.borderColor = "#FFFF00";
      txt.size(300, 50);
      txt.fontSize = 20;
      txt.color = "#ffffff";
      this.box2D.addChild(txt);
      return txt;
    }
  };
  __name(Text_Overflow, "Text_Overflow");
  Text_Overflow = __decorateClass([
    regClass84("20ea3e4f-cf7b-49f1-b427-189400071843", "../src/2D/Text/Text_Overflow.ts")
  ], Text_Overflow);

  // src/2D/Text/Text_Restrict.ts
  var Text20 = Laya.Text;
  var Input5 = Laya.Input;
  var { regClass: regClass85, property: property85 } = Laya;
  var Text_Restrict = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createTexts();
    }
    createTexts() {
      this.createLabel("\u53EA\u5141\u8BB8\u8F93\u5165\u6570\u5B57\uFF1A").pos(50, 20);
      var input = this.createInput();
      input.pos(50, 50);
      input.restrict = "0-9";
      this.createLabel("\u53EA\u5141\u8BB8\u8F93\u5165\u5B57\u6BCD\uFF1A").pos(50, 100);
      input = this.createInput();
      input.pos(50, 130);
      input.restrict = "a-zA-Z";
      this.createLabel("\u53EA\u5141\u8BB8\u8F93\u5165\u4E2D\u6587\u5B57\u7B26\uFF1A").pos(50, 180);
      input = this.createInput();
      input.pos(50, 210);
      input.restrict = "\u4E00-\u9FA5";
    }
    createLabel(text) {
      var label = new Text20();
      label.text = text;
      label.color = "white";
      label.fontSize = 20;
      this.box2D.addChild(label);
      return label;
    }
    createInput() {
      var input = new Input5();
      input.size(200, 30);
      input.borderColor = "#FFFF00";
      input.bold = true;
      input.fontSize = 20;
      input.color = "#FFFFFF";
      input.padding = [0, 4, 0, 4];
      this.box2D.addChild(input);
      return input;
    }
  };
  __name(Text_Restrict, "Text_Restrict");
  Text_Restrict = __decorateClass([
    regClass85("39106029-9ea6-4607-942f-68d6e10e4e5c", "../src/2D/Text/Text_Restrict.ts")
  ], Text_Restrict);

  // src/2D/Text/Text_Scroll.ts
  var Event38 = Laya.Event;
  var Text21 = Laya.Text;
  var { regClass: regClass86, property: property86 } = Laya;
  var Text_Scroll = class extends BaseScript {
    constructor() {
      super();
      this.prevX = 0;
      this.prevY = 0;
    }
    onAwake() {
      super.base();
      this.createText();
    }
    createText() {
      this.txt = new Text21();
      this.txt.overflow = Text21.SCROLL;
      this.txt.text = "Layabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01\nLayabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01";
      this.txt.size(200, 100);
      this.txt.x = this.pageWidth - this.txt.width >> 1;
      this.txt.y = this.pageHeight - this.txt.height >> 1;
      this.txt.borderColor = "#FFFF00";
      this.txt.fontSize = 20;
      this.txt.color = "#ffffff";
      this.box2D.addChild(this.txt);
      this.txt.on(Event38.MOUSE_DOWN, this, this.startScrollText);
    }
    /* 开始滚动文本 */
    startScrollText(e) {
      this.prevX = this.txt.mouseX;
      this.prevY = this.txt.mouseY;
      this.box2D.on(Event38.MOUSE_MOVE, this, this.scrollText);
      this.box2D.on(Event38.MOUSE_UP, this, this.finishScrollText);
    }
    /* 停止滚动文本 */
    finishScrollText(e) {
      this.box2D.off(Event38.MOUSE_MOVE, this, this.scrollText);
      this.box2D.off(Event38.MOUSE_UP, this, this.finishScrollText);
    }
    /* 鼠标滚动文本 */
    scrollText(e) {
      var nowX = this.txt.mouseX;
      var nowY = this.txt.mouseY;
      this.txt.scrollX += this.prevX - nowX;
      this.txt.scrollY += this.prevY - nowY;
      this.prevX = nowX;
      this.prevY = nowY;
    }
  };
  __name(Text_Scroll, "Text_Scroll");
  Text_Scroll = __decorateClass([
    regClass86("64bf6e22-81b3-42c1-a25c-646966e07a92", "../src/2D/Text/Text_Scroll.ts")
  ], Text_Scroll);

  // src/2D/Text/Text_UBB.ts
  var { regClass: regClass87, property: property87 } = Laya;
  var Text_UBB = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createParagraph();
    }
    createParagraph() {
      var t = new Laya.Text();
      t.ubb = true;
      t.fontSize = 50;
      t.zOrder = 9e4;
      t.text = "[color=#e3d26a]\u4F7F\u7528[/color]<br/>";
      t.text += "[color=#0bbd71]U[/color][color=#ff133c][u]B[/u][color][color=#409ed7][b]B[/b][/color]<br/>";
      t.text += "[color=#6ad2e3]\u521B\u5EFA\u7684[/color]<br/>";
      t.text += "[color=#d26ae3]UBB\u6587\u672C[/color]<br/>";
      this.box2D.addChild(t);
    }
  };
  __name(Text_UBB, "Text_UBB");
  Text_UBB = __decorateClass([
    regClass87("cde6d5b6-0518-414c-a63f-93d65985ead2", "../src/2D/Text/Text_UBB.ts")
  ], Text_UBB);

  // src/2D/Text/Text_Underline.ts
  var Text22 = Laya.Text;
  var { regClass: regClass88, property: property88 } = Laya;
  var Text_Underline = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createTexts();
    }
    createTexts() {
      this.createText("left", 1, null, 100, 10);
      this.createText("center", 2, "#00BFFF", 155, 150);
      this.createText("right", 3, "#FF7F50", 210, 290);
    }
    createText(align, underlineWidth, underlineColor, x, y) {
      var txt = new Text22();
      txt.text = "Layabox\n\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\n\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\n\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848";
      txt.size(300, 50);
      txt.fontSize = 20;
      txt.color = "#ffffff";
      txt.align = align;
      txt.underline = true;
      txt.underlineColor = underlineColor;
      txt.pos(x, y);
      this.box2D.addChild(txt);
      return txt;
    }
  };
  __name(Text_Underline, "Text_Underline");
  Text_Underline = __decorateClass([
    regClass88("63c38139-0fef-4bc6-b483-32a2c735aa0d", "../src/2D/Text/Text_Underline.ts")
  ], Text_Underline);

  // src/2D/Text/Text_WordWrap.ts
  var Text23 = Laya.Text;
  var { regClass: regClass89, property: property89 } = Laya;
  var Text_WordWrap = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.createText();
    }
    createText() {
      var txt = new Text23();
      txt.text = "Layabox\u662FHTML5\u5F15\u64CE\u6280\u672F\u63D0\u4F9B\u5546\u4E0E\u4F18\u79C0\u7684\u6E38\u620F\u53D1\u884C\u5546\uFF0C\u9762\u5411AS/JS/TS\u5F00\u53D1\u8005\u63D0\u4F9BHTML5\u5F00\u53D1\u6280\u672F\u65B9\u6848\uFF01";
      txt.width = 300;
      txt.fontSize = 40;
      txt.color = "#ffffff";
      txt.wordWrap = true;
      txt.x = this.pageWidth - txt.width >> 1;
      txt.y = this.pageHeight - txt.height >> 1;
      this.box2D.addChild(txt);
    }
  };
  __name(Text_WordWrap, "Text_WordWrap");
  Text_WordWrap = __decorateClass([
    regClass89("eb21fcf9-4f9b-44b9-8693-a1c6d99d55c6", "../src/2D/Text/Text_WordWrap.ts")
  ], Text_WordWrap);

  // src/2D/Tween/Tween_EaseFunctionsDemo.ts
  var Label4 = Laya.Label;
  var Sprite43 = Laya.Sprite;
  var Event39 = Laya.Event;
  var Input6 = Laya.Input;
  var List = Laya.List;
  var Handler10 = Laya.Handler;
  var Tween6 = Laya.Tween;
  var Box = Laya.Box;
  var Text24 = Laya.Text;
  var { regClass: regClass90, property: property90 } = Laya;
  var Tween_EaseFunctionsDemo = class extends BaseScript {
    constructor() {
      super();
      this.duration = 2e3;
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createCharacter();
      this.createEaseFunctionList();
      this.createDurationCrontroller();
    }
    createCharacter() {
      this.character = new Sprite43();
      this.character.loadImage("resources/res/cartoonCharacters/1.png");
      this.character.pos(100, 50);
      this.box2D.addChild(this.character);
    }
    createEaseFunctionList() {
      var easeFunctionsList = new List();
      easeFunctionsList.itemRender = ListItemRender;
      easeFunctionsList.pos(5, 5);
      easeFunctionsList.repeatX = 1;
      easeFunctionsList.repeatY = 20;
      easeFunctionsList.vScrollBarSkin = "";
      easeFunctionsList.selectEnable = true;
      easeFunctionsList.selectHandler = new Handler10(this, this.onEaseFunctionChange, [easeFunctionsList]);
      easeFunctionsList.renderHandler = new Handler10(this, this.renderList);
      this.box2D.addChild(easeFunctionsList);
      var data = [];
      data.push("backIn", "backOut", "backInOut");
      data.push("bounceIn", "bounceOut", "bounceInOut");
      data.push("circIn", "circOut", "circInOut");
      data.push("cubicIn", "cubicOut", "cubicInOut");
      data.push("elasticIn", "elasticOut", "elasticInOut");
      data.push("expoIn", "expoOut", "expoInOut");
      data.push("linearIn", "linearOut", "linearInOut");
      data.push("linearNone");
      data.push("QuadIn", "QuadOut", "QuadInOut");
      data.push("quartIn", "quartOut", "quartInOut");
      data.push("quintIn", "quintOut", "quintInOut");
      data.push("sineIn", "sineOut", "sineInOut");
      data.push("strongIn", "strongOut", "strongInOut");
      easeFunctionsList.array = data;
    }
    renderList(item, e = null) {
      item.setLabel(item.dataSource);
    }
    onEaseFunctionChange(list, e = null) {
      this.character.pos(100, 50);
      this.tween && this.tween.clear();
      this.tween = Tween6.to(this.character, { "x": 350, "y": 250 }, this.duration, Laya.Ease[list.selectedItem]);
    }
    createDurationCrontroller() {
      var durationInput = this.createInputWidthLabel("Duration:", "2000", 400, 10);
      durationInput.on(Event39.INPUT, this, () => {
        this.duration = parseInt(durationInput.text);
      });
    }
    createInputWidthLabel(label, prompt, x, y) {
      var text = new Text24();
      text.text = label;
      text.color = "white";
      this.box2D.addChild(text);
      text.pos(x, y);
      var input = new Input6();
      input.size(50, 20);
      input.text = prompt;
      input.align = "center";
      this.box2D.addChild(input);
      input.color = "#FFFFFF";
      input.borderColor = "#FFFFFF";
      input.pos(text.x + text.width + 10, text.y - 3);
      return input;
    }
    onDestroy() {
      if (this.tween) {
        this.tween.clear();
      }
    }
  };
  __name(Tween_EaseFunctionsDemo, "Tween_EaseFunctionsDemo");
  Tween_EaseFunctionsDemo = __decorateClass([
    regClass90("0ded21b8-caed-459a-852f-6f3777890a79", "../src/2D/Tween/Tween_EaseFunctionsDemo.ts")
  ], Tween_EaseFunctionsDemo);
  var _ListItemRender = class _ListItemRender extends Box {
    constructor() {
      super();
      this.size(100, 20);
      this.label = new Label4();
      this.label.fontSize = 12;
      this.label.color = "#FFFFFF";
      this.addChild(this.label);
    }
    setLabel(value) {
      this.label.text = value;
    }
  };
  __name(_ListItemRender, "ListItemRender");
  var ListItemRender = _ListItemRender;

  // src/2D/Tween/Tween_Letters.ts
  var Ease3 = Laya.Ease;
  var Tween7 = Laya.Tween;
  var Text25 = Laya.Text;
  var { regClass: regClass91, property: property91 } = Laya;
  var Tween_Letters = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var w = 400;
      var offset = this.pageWidth - w >> 1;
      var endY = this.pageHeight / 2 - 50;
      var demoString = "LayaBox";
      for (var i = 0, len = demoString.length; i < len; ++i) {
        var letterText = this.createLetter(demoString.charAt(i));
        letterText.x = w / len * i + offset;
        Tween7.to(letterText, { "y": endY }, 1e3, Ease3.elasticOut, null, i * 1e3);
      }
    }
    createLetter(char) {
      var letter = new Text25();
      letter.text = char;
      letter.color = "#FFFFFF";
      letter.font = "Impact";
      letter.fontSize = 110;
      this.box2D.addChild(letter);
      return letter;
    }
  };
  __name(Tween_Letters, "Tween_Letters");
  Tween_Letters = __decorateClass([
    regClass91("a52ef21b-df96-438e-9f53-765de9ce76e6", "../src/2D/Tween/Tween_Letters.ts")
  ], Tween_Letters);

  // src/2D/Tween/Tween_SimpleSample.ts
  var Sprite44 = Laya.Sprite;
  var Tween8 = Laya.Tween;
  var { regClass: regClass92, property: property92 } = Laya;
  var Tween_SimpleSample = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var terminalX = 200;
      var characterA = this.createCharacter("resources/res/cartoonCharacters/1.png");
      characterA.pivot(46.5, 50);
      characterA.y = 100;
      var characterB = this.createCharacter("resources/res/cartoonCharacters/2.png");
      characterB.pivot(34, 50);
      characterB.y = 250;
      this.box2D.graphics.drawLine(terminalX, 0, terminalX, this.pageHeight, "#FFFFFF");
      Tween8.to(characterA, { "x": terminalX }, 1e3);
      characterB.x = terminalX;
      Tween8.from(characterB, { "x": 0 }, 1e3);
    }
    createCharacter(skin) {
      var character = new Sprite44();
      character.loadImage(skin);
      this.box2D.addChild(character);
      return character;
    }
    onDestroy() {
      this.box2D.graphics.clear();
    }
  };
  __name(Tween_SimpleSample, "Tween_SimpleSample");
  Tween_SimpleSample = __decorateClass([
    regClass92("c38a5109-eee8-4781-b452-5c954d25542e", "../src/2D/Tween/Tween_SimpleSample.ts")
  ], Tween_SimpleSample);

  // src/2D/Tween/Tween_TimeLine.ts
  var Sprite45 = Laya.Sprite;
  var Event40 = Laya.Event;
  var TimeLine = Laya.TimeLine;
  var Keyboard = Laya.Keyboard;
  var { regClass: regClass93, property: property93 } = Laya;
  var Tween_TimeLine = class extends BaseScript {
    constructor() {
      super();
      this.timeLine = new TimeLine();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createApe();
      this.createTimerLine();
      this.box2D.on(Event40.KEY_DOWN, this, this.keyDown);
    }
    createApe() {
      this.target = new Sprite45();
      this.target.loadImage("resources/res/apes/monkey2.png");
      this.box2D.addChild(this.target);
      this.target.pivot(55, 72);
      this.target.pos(100, 100);
    }
    createTimerLine() {
      this.timeLine.addLabel("turnRight", 0).to(this.target, { "x": 450, "y": 100, "scaleX": 0.5, "scaleY": 0.5 }, 2e3, null, 0).addLabel("turnDown", 0).to(this.target, { "x": 450, "y": 300, "scaleX": 0.2, "scaleY": 1, "alpha": 1 }, 2e3, null, 0).addLabel("turnLeft", 0).to(this.target, { "x": 100, "y": 300, "scaleX": 1, "scaleY": 0.2, "alpha": 0.1 }, 2e3, null, 0).addLabel("turnUp", 0).to(this.target, { "x": 100, "y": 100, "scaleX": 1, "scaleY": 1, "alpha": 1 }, 2e3, null, 0);
      this.timeLine.play(0, true);
      this.timeLine.on(Event40.COMPLETE, this, this.onComplete);
      this.timeLine.on(Event40.LABEL, this, this.onLabel);
    }
    onComplete() {
      console.log("timeLine complete!!!!");
    }
    onLabel(label) {
      console.log("LabelName:" + label);
    }
    keyDown(e) {
      switch (e.keyCode) {
        case Keyboard.LEFT:
          this.timeLine.play("turnLeft");
          break;
        case Keyboard.RIGHT:
          this.timeLine.play("turnRight");
          break;
        case Keyboard.UP:
          this.timeLine.play("turnUp");
          break;
        case Keyboard.DOWN:
          this.timeLine.play("turnDown");
          break;
        case Keyboard.P:
          this.timeLine.pause();
          break;
        case Keyboard.R:
          this.timeLine.resume();
          break;
      }
    }
    onDestroy() {
      this.box2D.off(Event40.KEY_DOWN, this, this.keyDown);
      if (this.timeLine) {
        this.timeLine.on(Event40.COMPLETE, this, this.onComplete);
        this.timeLine.on(Event40.LABEL, this, this.onLabel);
        this.timeLine.destroy();
        this.timeLine = null;
      }
    }
  };
  __name(Tween_TimeLine, "Tween_TimeLine");
  Tween_TimeLine = __decorateClass([
    regClass93("d1768db0-3ab6-470a-9675-f0f2b83dc6fb", "../src/2D/Tween/Tween_TimeLine.ts")
  ], Tween_TimeLine);

  // src/2D/UI/UI_Button.ts
  var Button3 = Laya.Button;
  var { regClass: regClass94, property: property94 } = Laya;
  var UI_Button = class extends BaseScript {
    constructor() {
      super();
      this.COLUMNS = 2;
      this.BUTTON_WIDTH = 147;
      this.BUTTON_HEIGHT = 165 / 3;
      this.HORIZONTAL_SPACING = 200;
      this.VERTICAL_SPACING = 100;
    }
    onAwake() {
      super.base();
      this.skins = [
        "resources/res/ui/button-1.png",
        "resources/res/ui/button-2.png",
        "resources/res/ui/button-3.png",
        "resources/res/ui/button-4.png",
        "resources/res/ui/button-5.png",
        "resources/res/ui/button-6.png"
      ];
      this.xOffset = (this.pageWidth - this.HORIZONTAL_SPACING * (this.COLUMNS - 1) - this.BUTTON_WIDTH) / 2;
      this.yOffset = (this.pageHeight - this.VERTICAL_SPACING * (this.skins.length / this.COLUMNS - 1) - this.BUTTON_HEIGHT) / 2;
      Laya.loader.load(this.skins).then(() => {
        this.onUIAssetsLoaded();
      });
    }
    onUIAssetsLoaded(e = null) {
      for (var i = 0, len = this.skins.length; i < len; ++i) {
        var btn = this.createButton(this.skins[i]);
        var x = i % this.COLUMNS * this.HORIZONTAL_SPACING + this.xOffset;
        var y = (i / this.COLUMNS | 0) * this.VERTICAL_SPACING + this.yOffset;
        btn.pos(x, y);
        console.log(x, y);
      }
    }
    createButton(skin) {
      var btn = new Button3(skin);
      this.box2D.addChild(btn);
      return btn;
    }
  };
  __name(UI_Button, "UI_Button");
  UI_Button = __decorateClass([
    regClass94("0b46ea86-786c-4c5a-9fd6-062333649321", "../src/2D/UI/UI_Button.ts")
  ], UI_Button);

  // src/2D/UI/UI_CheckBox.ts
  var CheckBox = Laya.CheckBox;
  var { regClass: regClass95, property: property95 } = Laya;
  var UI_CheckBox = class extends BaseScript {
    constructor() {
      super();
      this.COL_AMOUNT = 2;
      this.ROW_AMOUNT = 3;
      this.HORIZONTAL_SPACING = 200;
      this.VERTICAL_SPACING = 100;
      this.X_OFFSET = 100;
      this.Y_OFFSET = 50;
    }
    onAwake() {
      super.base();
      this.skins = ["resources/res/ui/checkbox (1).png", "resources/res/ui/checkbox (2).png", "resources/res/ui/checkbox (3).png", "resources/res/ui/checkbox (4).png", "resources/res/ui/checkbox (5).png", "resources/res/ui/checkbox (6).png"];
      Laya.loader.load(this.skins).then(() => {
        this.onCheckBoxSkinLoaded();
      });
    }
    onCheckBoxSkinLoaded(e = null) {
      var cb;
      for (var i = 0; i < this.COL_AMOUNT; ++i) {
        for (var j = 0; j < this.ROW_AMOUNT; ++j) {
          cb = this.createCheckBox(this.skins[i * this.ROW_AMOUNT + j]);
          cb.selected = true;
          cb.x = this.HORIZONTAL_SPACING * i + this.X_OFFSET;
          cb.y += this.VERTICAL_SPACING * j + this.Y_OFFSET;
          if (i == 0) {
            cb.y += 20;
            cb.on("change", this, this.updateLabel, [cb]);
            this.updateLabel(cb);
          }
        }
      }
    }
    createCheckBox(skin) {
      var cb = new CheckBox(skin);
      this.box2D.addChild(cb);
      cb.labelColors = "white";
      cb.labelSize = 20;
      cb.labelFont = "Microsoft YaHei";
      cb.labelPadding = "3,0,0,5";
      return cb;
    }
    updateLabel(checkBox) {
      checkBox.label = checkBox.selected ? "\u5DF2\u9009\u4E2D" : "\u672A\u9009\u4E2D";
    }
  };
  __name(UI_CheckBox, "UI_CheckBox");
  UI_CheckBox = __decorateClass([
    regClass95("e4f64c8b-f814-4958-a2ff-ba1a0363c2fc", "../src/2D/UI/UI_CheckBox.ts")
  ], UI_CheckBox);

  // src/2D/UI/UI_Clip.ts
  var Image3 = Laya.Image;
  var Button4 = Laya.Button;
  var Clip = Laya.Clip;
  var { regClass: regClass96, property: property96 } = Laya;
  var UI_Clip = class extends BaseScript {
    constructor() {
      super();
      this.buttonSkin = "resources/res/ui/button-7.png";
      this.clipSkin = "resources/res/ui/num0-9.png";
      this.bgSkin = "resources/res/ui/coutDown.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load([this.buttonSkin, this.clipSkin, this.bgSkin]).then(() => {
        this.onSkinLoaded();
      });
    }
    onSkinLoaded(e = null) {
      this.showBg();
      this.createTimerAnimation();
      this.showTotalSeconds();
      this.createController();
    }
    showBg() {
      var bg = new Image3(this.bgSkin);
      bg.size(224, 302);
      bg.pos(this.pageWidth - bg.width >> 1, this.pageHeight - bg.height >> 1);
      this.box2D.addChild(bg);
    }
    createTimerAnimation() {
      this.counter = new Clip(this.clipSkin, 10, 1);
      this.counter.autoPlay = true;
      this.counter.interval = 1e3;
      this.counter.x = (this.pageWidth - this.counter.width) / 2 - 35;
      this.counter.y = (this.pageHeight - this.counter.height) / 2 - 40;
      this.box2D.addChild(this.counter);
    }
    showTotalSeconds() {
      var clip = new Clip(this.clipSkin, 10, 1);
      clip.index = clip.clipX - 1;
      clip.pos(this.counter.x + 60, this.counter.y);
      this.box2D.addChild(clip);
    }
    createController() {
      this.controller = new Button4(this.buttonSkin, "\u6682\u505C");
      this.controller.labelBold = true;
      this.controller.labelColors = "#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF";
      this.controller.size(84, 30);
      this.controller.on("click", this, this.onClipSwitchState);
      this.controller.x = (this.pageWidth - this.controller.width) / 2;
      this.controller.y = (this.pageHeight - this.controller.height) / 2 + 110;
      this.box2D.addChild(this.controller);
    }
    onClipSwitchState(e = null) {
      if (this.counter.isPlaying) {
        this.counter.stop();
        this.currFrame = this.counter.index;
        this.controller.label = "\u64AD\u653E";
      } else {
        this.counter.play();
        this.counter.index = this.currFrame;
        this.controller.label = "\u6682\u505C";
      }
    }
  };
  __name(UI_Clip, "UI_Clip");
  UI_Clip = __decorateClass([
    regClass96("5039f284-c862-4adf-bc29-0dabf734cba8", "../src/2D/UI/UI_Clip.ts")
  ], UI_Clip);

  // src/2D/UI/UI_ColorPicker.ts
  var ColorPicker = Laya.ColorPicker;
  var Handler11 = Laya.Handler;
  var { regClass: regClass97, property: property97 } = Laya;
  var UI_ColorPicker = class extends BaseScript {
    constructor() {
      super();
      this.skin = "resources/res/ui/colorPicker.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.skin).then(() => {
        this.onColorPickerSkinLoaded();
      });
    }
    onColorPickerSkinLoaded(e = null) {
      var colorPicker = new ColorPicker();
      colorPicker.selectedColor = "#ff0033";
      colorPicker.skin = this.skin;
      colorPicker.pos(100, 100);
      colorPicker.changeHandler = new Handler11(this, this.onChangeColor, [colorPicker]);
      this.box2D.addChild(colorPicker);
      this.onChangeColor(colorPicker);
    }
    onChangeColor(colorPicker, e = null) {
      console.log(colorPicker.selectedColor);
    }
  };
  __name(UI_ColorPicker, "UI_ColorPicker");
  UI_ColorPicker = __decorateClass([
    regClass97("26af1428-e015-4af4-9277-bb198c86e4d4", "../src/2D/UI/UI_ColorPicker.ts")
  ], UI_ColorPicker);

  // src/2D/UI/UI_ComboBox.ts
  var ComboBox = Laya.ComboBox;
  var Handler12 = Laya.Handler;
  var { regClass: regClass98, property: property98 } = Laya;
  var UI_ComboBox = class extends BaseScript {
    constructor() {
      super();
      this.skin = "resources/res/ui/combobox.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.skin).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      var cb = this.createComboBox(this.skin);
      cb.autoSize = true;
      cb.pos((this.pageWidth - cb.width) / 2, 100);
      cb.autoSize = false;
    }
    createComboBox(skin) {
      var comboBox = new ComboBox(skin, "item0,item1,item2,item3,item4,item5");
      comboBox.labelSize = 30;
      comboBox.itemSize = 25;
      comboBox.selectHandler = new Handler12(this, this.onSelect, [comboBox]);
      this.box2D.addChild(comboBox);
      return comboBox;
    }
    onSelect(cb, e = null) {
      console.log("\u9009\u4E2D\u4E86\uFF1A " + cb.selectedLabel);
    }
  };
  __name(UI_ComboBox, "UI_ComboBox");
  UI_ComboBox = __decorateClass([
    regClass98("6e79e33f-0a03-4cde-9adf-0e06ecb659c9", "../src/2D/UI/UI_ComboBox.ts")
  ], UI_ComboBox);

  // src/2D/UI/UI_Dialog.ts
  var Dialog = Laya.Dialog;
  var Image4 = Laya.Image;
  var Button5 = Laya.Button;
  var { regClass: regClass99, property: property99 } = Laya;
  var UI_Dialog = class extends BaseScript {
    constructor() {
      super();
      this.DIALOG_WIDTH = 220;
      this.DIALOG_HEIGHT = 275;
      this.CLOSE_BTN_WIDTH = 43;
      this.CLOSE_BTN_PADDING = 5;
    }
    onAwake() {
      super.base();
      this.assets = ["resources/res/ui/dialog (1).png", "resources/res/ui/close.png"];
      Laya.loader.load(this.assets).then(() => {
        this.onSkinLoadComplete();
      });
    }
    onSkinLoadComplete(e = null) {
      this.dialog = new Dialog();
      var bg = new Image4(this.assets[0]);
      this.dialog.addChild(bg);
      var button = new Button5(this.assets[1]);
      button.name = Dialog.CLOSE;
      button.pos(this.DIALOG_WIDTH - this.CLOSE_BTN_WIDTH - this.CLOSE_BTN_PADDING, this.CLOSE_BTN_PADDING);
      this.dialog.addChild(button);
      this.dialog.dragArea = "0,0," + this.DIALOG_WIDTH + "," + this.DIALOG_HEIGHT;
      this.dialog.show();
    }
    onDestroy() {
      if (this.dialog) {
        this.dialog.close();
      }
    }
  };
  __name(UI_Dialog, "UI_Dialog");
  UI_Dialog = __decorateClass([
    regClass99("6eb2789d-4f8f-449b-a054-057e0ab651ca", "../src/2D/UI/UI_Dialog.ts")
  ], UI_Dialog);

  // src/2D/UI/UI_FontClip.ts
  var FontClip = Laya.FontClip;
  var { regClass: regClass100, property: property100 } = Laya;
  var UI_FontClip = class extends BaseScript {
    constructor() {
      super();
      this.TestClipNum = "resources/res/ui/fontClip_num.png";
      this._ClipNum = "resources/res/ui/fontClip_num.png";
      this._ClipNum1 = "resources/res/ui/fontClip_num.png";
      this.TestFontClip = "resources/res/ui/fontClip.png";
      this._FontClip = "resources/res/ui/fontClip.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load([this.TestClipNum, this.TestFontClip, this._ClipNum, this._FontClip, this._ClipNum1]).then(() => {
        this.ShowContent();
      });
    }
    ShowContent() {
      var clipnum = new FontClip(this._ClipNum);
      var fontClip = new FontClip(this._FontClip);
      var testFontClip = new FontClip(this.TestFontClip);
      var testClipNum = new FontClip(this.TestClipNum);
      var clipnum1 = new FontClip(this._ClipNum1);
      clipnum.pos(240, 400);
      clipnum.size(250, 50);
      clipnum.sheet = "0123456789";
      clipnum.value = "114499";
      clipnum.spaceY = 10;
      testClipNum.pos(200, 300);
      testClipNum.sheet = "0123456789";
      testClipNum.value = "0123456789";
      clipnum1.pos(150, 100);
      clipnum1.direction = "vertical";
      clipnum1.sheet = "0123456789";
      clipnum1.value = "223388";
      fontClip.pos(240, 200);
      fontClip.sheet = "\u9F20\u725B\u864E\u5154\u9F99\u86C7\u9A6C\u7F8A \u7334\u9E21\u72D7\u732A\u5E74\u5FEB\u4E50";
      fontClip.value = "\u732A\u5E74\u5FEB\u4E50";
      fontClip.spaceY = 10;
      testFontClip.pos(200, 100);
      testFontClip.sheet = "\u9F20\u725B\u864E\u5154\u9F99\u86C7\u9A6C\u7F8A\u7334\u9E21\u72D7\u732A\u5E74\u5FEB\u4E50";
      testFontClip.value = "\u9F20\u725B\u864E\u5154\u9F99\u86C7\u9A6C\u7F8A\u7334\u9E21\u72D7\u732A\u5E74\u5FEB\u4E50";
      testFontClip.spaceY = 10;
      this.box2D.addChild(clipnum);
      this.box2D.addChild(fontClip);
      this.box2D.addChild(testFontClip);
      this.box2D.addChild(testClipNum);
      this.box2D.addChild(clipnum1);
    }
  };
  __name(UI_FontClip, "UI_FontClip");
  UI_FontClip = __decorateClass([
    regClass100("147094c0-1c15-46c1-98a4-b09d1fefac2c", "../src/2D/UI/UI_FontClip.ts")
  ], UI_FontClip);

  // src/2D/UI/UI_Image.ts
  var Image5 = Laya.Image;
  var { regClass: regClass101, property: property101 } = Laya;
  var UI_Image = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var dialog = new Image5("resources/res/ui/dialog (3).png");
      dialog.pos(165, 62.5);
      this.box2D.addChild(dialog);
    }
  };
  __name(UI_Image, "UI_Image");
  UI_Image = __decorateClass([
    regClass101("fbbe4b6b-30df-4768-8206-a4dfe5b4bac5", "../src/2D/UI/UI_Image.ts")
  ], UI_Image);

  // src/2D/UI/UI_Input.ts
  var TextInput = Laya.TextInput;
  var { regClass: regClass102, property: property102 } = Laya;
  var UI_Input = class extends BaseScript {
    constructor() {
      super();
      this.SPACING = 100;
      this.INPUT_WIDTH = 300;
      this.INPUT_HEIGHT = 50;
      this.Y_OFFSET = 50;
    }
    onAwake() {
      super.base();
      this.skins = ["resources/res/ui/input (1).png", "resources/res/ui/input (2).png", "resources/res/ui/input (3).png", "resources/res/ui/input (4).png"];
      Laya.loader.load(this.skins).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      for (var i = 0; i < this.skins.length; ++i) {
        var input = this.createInput(this.skins[i]);
        input.prompt = "Type:";
        input.x = (this.pageWidth - input.width) / 2;
        input.y = i * this.SPACING + this.Y_OFFSET;
      }
    }
    createInput(skin) {
      var ti = new TextInput();
      ti.skin = skin;
      ti.size(300, 50);
      ti.sizeGrid = "0,40,0,40";
      ti.font = "Arial";
      ti.fontSize = 30;
      ti.bold = true;
      ti.color = "#606368";
      this.box2D.addChild(ti);
      return ti;
    }
  };
  __name(UI_Input, "UI_Input");
  UI_Input = __decorateClass([
    regClass102("3a772291-31a0-4a47-b2ec-cc5ca8ca1146", "../src/2D/UI/UI_Input.ts")
  ], UI_Input);

  // src/2D/UI/UI_Label.ts
  var Label5 = Laya.Label;
  var { regClass: regClass103, property: property103 } = Laya;
  var UI_Label = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      this.createLabel("#FFFFFF", null).pos(30, 50);
      this.createLabel("#00FFFF", null).pos(290, 50);
      this.createLabel("#FFFF00", "#FFFFFF").pos(30, 100);
      this.createLabel("#000000", "#FFFFFF").pos(290, 100);
      this.createLabel("#FFFFFF", "#00FFFF").pos(30, 150);
      this.createLabel("#0080FF", "#00FFFF").pos(290, 150);
    }
    createLabel(color, strokeColor) {
      const STROKE_WIDTH = 4;
      var label = new Label5();
      label.font = "Microsoft YaHei";
      label.text = "SAMPLE DEMO";
      label.fontSize = 30;
      label.color = color;
      if (strokeColor) {
        label.stroke = STROKE_WIDTH;
        label.strokeColor = strokeColor;
      }
      this.box2D.addChild(label);
      return label;
    }
  };
  __name(UI_Label, "UI_Label");
  UI_Label = __decorateClass([
    regClass103("ff6e48bf-3722-4d14-a48b-c2f2295424f6", "../src/2D/UI/UI_Label.ts")
  ], UI_Label);

  // src/2D/UI/UI_List.ts
  var List2 = Laya.List;
  var { regClass: regClass104, property: property104 } = Laya;
  var UI_List = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var list = new List2();
      list.itemRender = Item;
      list.repeatX = 1;
      list.repeatY = 4;
      list.x = (this.pageWidth - Item.WID) / 2;
      list.y = (this.pageHeight - Item.HEI * list.repeatY) / 2;
      list.scrollType = Laya.ScrollType.Vertical;
      list.vScrollBarSkin = "";
      list.elasticEnabled = true;
      list.scrollBar.elasticBackTime = 300;
      list.scrollBar.elasticDistance = 50;
      list.selectEnable = true;
      list.selectHandler = new Laya.Handler(this, this.onSelect);
      list.renderHandler = new Laya.Handler(this, this.updateItem);
      this.box2D.addChild(list);
      var data = [];
      for (var i = 0; i < 10; ++i) {
        data.push("resources/res/ui/listskins/1.jpg");
        data.push("resources/res/ui/listskins/2.jpg");
        data.push("resources/res/ui/listskins/3.jpg");
        data.push("resources/res/ui/listskins/4.jpg");
        data.push("resources/res/ui/listskins/5.jpg");
      }
      list.array = data;
      this._list = list;
    }
    onMuseHandler(type, index) {
      console.log("type:" + type.type + "ddd--" + this._list.scrollBar.value + "---index:" + index);
      var curX, curY;
      if (type.type == "mousedown") {
        this._oldY = Laya.stage.mouseY;
        let itemBox = this._list.getCell(index);
        this._itemHeight = itemBox.height;
      } else if (type.type == "mouseout") {
        curY = Laya.stage.mouseY;
        var chazhiY = Math.abs(curY - this._oldY);
        var tempIndex = Math.ceil(chazhiY / this._itemHeight);
        console.log("----------tempIndex:" + tempIndex + "---_itemHeight:" + this._itemHeight + "---chazhiY:" + chazhiY);
        var newIndex;
      }
    }
    updateItem(cell, index) {
      cell.setImg(cell.dataSource);
    }
    onSelect(index) {
      console.log("\u5F53\u524D\u9009\u62E9\u7684\u7D22\u5F15\uFF1A" + index);
    }
  };
  __name(UI_List, "UI_List");
  UI_List = __decorateClass([
    regClass104("6dd768a8-4397-4d82-8148-22d00bf4baec", "../src/2D/UI/UI_List.ts")
  ], UI_List);
  var _Item = class _Item extends Laya.Box {
    constructor() {
      super();
      this.size(_Item.WID, _Item.HEI);
      this.img = new Laya.Image();
      this.addChild(this.img);
    }
    setImg(src) {
      this.img.skin = src;
    }
  };
  __name(_Item, "Item");
  _Item.WID = 373;
  _Item.HEI = 85;
  var Item = _Item;

  // src/2D/UI/UI_Panel.ts
  var Panel = Laya.Panel;
  var Image6 = Laya.Image;
  var { regClass: regClass105, property: property105 } = Laya;
  var UI_Panel = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      this.setup();
    }
    setup() {
      var panel = new Panel();
      panel.hScrollBarSkin = "resources/res/ui/hscroll.png";
      panel.hScrollBar.hide = true;
      panel.size(600, 275);
      panel.x = (this.pageWidth - panel.width) / 2;
      panel.y = (this.pageHeight - panel.height) / 2;
      this.box2D.addChild(panel);
      var img;
      for (var i = 0; i < 4; i++) {
        img = new Image6("resources/res/ui/dialog (1).png");
        img.x = i * 250;
        panel.addChild(img);
      }
    }
  };
  __name(UI_Panel, "UI_Panel");
  UI_Panel = __decorateClass([
    regClass105("d2b13fdb-ca9d-4c88-9728-1ca865c9f9b6", "../src/2D/UI/UI_Panel.ts")
  ], UI_Panel);

  // src/2D/UI/UI_ProgressBar.ts
  var ProgressBar = Laya.ProgressBar;
  var Handler13 = Laya.Handler;
  var { regClass: regClass106, property: property106 } = Laya;
  var UI_ProgressBar = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      Laya.loader.load(["resources/res/ui/progressBar.png", "resources/res/ui/progressBar$bar.png"]).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      this.progressBar = new ProgressBar("resources/res/ui/progressBar.png");
      this.progressBar.width = 400;
      this.progressBar.x = (this.pageWidth - this.progressBar.width) / 2;
      this.progressBar.y = this.pageHeight / 2;
      this.progressBar.sizeGrid = "5,5,5,5";
      this.progressBar.changeHandler = new Handler13(this, this.onChange);
      this.box2D.addChild(this.progressBar);
      Laya.timer.loop(100, this, this.changeValue);
    }
    changeValue() {
      if (this.progressBar.value >= 1)
        this.progressBar.value = 0;
      this.progressBar.value += 0.05;
    }
    onChange(value) {
      console.log("\u8FDB\u5EA6\uFF1A" + Math.floor(value * 100) + "%");
    }
  };
  __name(UI_ProgressBar, "UI_ProgressBar");
  UI_ProgressBar = __decorateClass([
    regClass106("c21a89ee-ebd6-49e1-a11a-6307700020ee", "../src/2D/UI/UI_ProgressBar.ts")
  ], UI_ProgressBar);

  // src/2D/UI/UI_RadioGroup.ts
  var RadioGroup = Laya.RadioGroup;
  var { regClass: regClass107, property: property107 } = Laya;
  var UI_RadioGroup = class extends BaseScript {
    constructor() {
      super();
      this.SPACING = 150;
      this.X_OFFSET = 200;
      this.Y_OFFSET = 80;
    }
    onAwake() {
      super.base();
      this.skins = ["resources/res/ui/radioButton (1).png", "resources/res/ui/radioButton (2).png", "resources/res/ui/radioButton (3).png"];
      Laya.loader.load(this.skins).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      for (var i = 0; i < this.skins.length; ++i) {
        var rg = this.createRadioGroup(this.skins[i]);
        rg.selectedIndex = i;
        rg.x = i * this.SPACING + this.X_OFFSET;
        rg.y = this.Y_OFFSET;
      }
    }
    createRadioGroup(skin) {
      var rg = new RadioGroup();
      rg.skin = skin;
      rg.space = 70;
      rg.direction = "v";
      rg.labels = "Item1, Item2, Item3";
      rg.labelColors = "#787878,#d3d3d3,#FFFFFF";
      rg.labelSize = 20;
      rg.labelBold = true;
      rg.labelPadding = "5,0,0,5";
      rg.selectHandler = new Laya.Handler(this, this.onSelectChange);
      this.box2D.addChild(rg);
      return rg;
    }
    onSelectChange(index) {
      console.log("\u4F60\u9009\u62E9\u4E86\u7B2C " + (index + 1) + " \u9879");
    }
  };
  __name(UI_RadioGroup, "UI_RadioGroup");
  UI_RadioGroup = __decorateClass([
    regClass107("a662a2ec-427c-49ca-86d1-73be27b23d88", "../src/2D/UI/UI_RadioGroup.ts")
  ], UI_RadioGroup);

  // src/2D/UI/UI_ScrollBar.ts
  var HScrollBar = Laya.HScrollBar;
  var VScrollBar = Laya.VScrollBar;
  var Handler14 = Laya.Handler;
  var { regClass: regClass108, property: property108 } = Laya;
  var UI_ScrollBar = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      var skins = [];
      skins.push("resources/res/ui/hscroll.png", "resources/res/ui/hscroll$bar.png", "resources/res/ui/hscroll$down.png", "resources/res/ui/hscroll$up.png");
      skins.push("resources/res/ui/vscroll.png", "resources/res/ui/vscroll$bar.png", "resources/res/ui/vscroll$down.png", "resources/res/ui/vscroll$up.png");
      Laya.loader.load(skins).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      this.placeHScroller();
      this.placeVScroller();
    }
    placeHScroller() {
      var hs = new HScrollBar();
      hs.skin = "resources/res/ui/hscroll.png";
      hs.width = 300;
      hs.pos(50, 170);
      hs.min = 0;
      hs.max = 100;
      hs.changeHandler = new Handler14(this, this.onChange);
      this.box2D.addChild(hs);
    }
    placeVScroller() {
      var vs = new VScrollBar();
      vs.skin = "resources/res/ui/vscroll.png";
      vs.height = 300;
      vs.pos(400, 50);
      vs.min = 0;
      vs.max = 100;
      vs.changeHandler = new Handler14(this, this.onChange);
      this.box2D.addChild(vs);
    }
    onChange(value) {
      console.log("\u6EDA\u52A8\u6761\u7684\u4F4D\u7F6E\uFF1A value=" + value);
    }
  };
  __name(UI_ScrollBar, "UI_ScrollBar");
  UI_ScrollBar = __decorateClass([
    regClass108("1d1ff0e3-a8b2-4595-b8fc-d4fa6b2d3b4a", "../src/2D/UI/UI_ScrollBar.ts")
  ], UI_ScrollBar);

  // src/2D/UI/UI_Slider.ts
  var HSlider = Laya.HSlider;
  var VSlider = Laya.VSlider;
  var Handler15 = Laya.Handler;
  var { regClass: regClass109, property: property109 } = Laya;
  var UI_Slider = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      var skins = [];
      skins.push("resources/res/ui/hslider.png", "resources/res/ui/hslider$bar.png");
      skins.push("resources/res/ui/vslider.png", "resources/res/ui/vslider$bar.png");
      Laya.loader.load(skins, Handler15.create(this, this.onLoadComplete));
    }
    onLoadComplete(e = null) {
      this.placeHSlider();
      this.placeVSlider();
    }
    placeHSlider() {
      var hs = new HSlider();
      hs.skin = "resources/res/ui/hslider.png";
      hs.width = 300;
      hs.pos(50, 170);
      hs.min = 0;
      hs.max = 100;
      hs.value = 50;
      hs.tick = 1;
      hs.changeHandler = new Handler15(this, this.onChange);
      this.box2D.addChild(hs);
    }
    placeVSlider() {
      var vs = new VSlider();
      vs.skin = "resources/res/ui/vslider.png";
      vs.height = 300;
      vs.pos(400, 50);
      vs.min = 0;
      vs.max = 100;
      vs.value = 50;
      vs.tick = 1;
      vs.changeHandler = new Handler15(this, this.onChange);
      this.box2D.addChild(vs);
    }
    onChange(value) {
      console.log("\u6ED1\u5757\u7684\u4F4D\u7F6E\uFF1A" + value);
    }
  };
  __name(UI_Slider, "UI_Slider");
  UI_Slider = __decorateClass([
    regClass109("65a9e444-8f55-40b8-a41f-0ad4418eab7d", "../src/2D/UI/UI_Slider.ts")
  ], UI_Slider);

  // src/2D/UI/UI_Tab.ts
  var Tab = Laya.Tab;
  var Handler16 = Laya.Handler;
  var { regClass: regClass110, property: property110 } = Laya;
  var UI_Tab = class extends BaseScript {
    constructor() {
      super();
      this.skins = ["resources/res/ui/tab1.png", "resources/res/ui/tab2.png"];
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.skins).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      var tabA = this.createTab(this.skins[0]);
      tabA.pos(40, 120);
      tabA.labelColors = "#000000,#d3d3d3,#333333";
      var tabB = this.createTab(this.skins[1]);
      tabB.pos(40, 220);
      tabB.labelColors = "#FFFFFF,#8FB299,#FFFFFF";
    }
    createTab(skin) {
      var tab = new Tab();
      tab.skin = skin;
      tab.labelBold = true;
      tab.labelSize = 20;
      tab.labelStrokeColor = "#000000";
      tab.labels = "Tab Control 1,Tab Control 2,Tab Control 3";
      tab.labelPadding = "0,0,0,0";
      tab.selectedIndex = 1;
      this.onSelect(tab.selectedIndex);
      tab.selectHandler = new Handler16(this, this.onSelect);
      this.box2D.addChild(tab);
      return tab;
    }
    onSelect(index) {
      console.log("\u5F53\u524D\u9009\u62E9\u7684\u6807\u7B7E\u9875\u7D22\u5F15\u4E3A " + index);
    }
  };
  __name(UI_Tab, "UI_Tab");
  UI_Tab = __decorateClass([
    regClass110("d0973bda-cd73-46f1-9970-92451a8979a6", "../src/2D/UI/UI_Tab.ts")
  ], UI_Tab);

  // src/2D/UI/UI_TextArea.ts
  var TextArea = Laya.TextArea;
  var { regClass: regClass111, property: property111 } = Laya;
  var UI_TextArea = class extends BaseScript {
    constructor() {
      super();
      this.skin = "resources/res/ui/textarea.png";
    }
    onAwake() {
      super.base();
      Laya.loader.load(this.skin).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      let ta = new TextArea("");
      ta.skin = this.skin;
      ta.font = "Arial";
      ta.fontSize = 18;
      ta.bold = true;
      ta.color = "#3d3d3d";
      ta.pos(100, 15);
      ta.size(375, 355);
      ta.padding = "70,8,8,8";
      this.owner.addChild(ta);
    }
  };
  __name(UI_TextArea, "UI_TextArea");
  UI_TextArea = __decorateClass([
    regClass111("072844be-64d9-497c-913e-dd853e6d633a", "../src/2D/UI/UI_TextArea.ts")
  ], UI_TextArea);

  // src/2D/UI/UI_Tree.ts
  var Label6 = Laya.Label;
  var Tree = Laya.Tree;
  var Box2 = Laya.Box;
  var Clip2 = Laya.Clip;
  var { regClass: regClass112, property: property112 } = Laya;
  var UI_Tree = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base();
      var res = [
        "resources/res/ui/vscroll.png",
        "resources/res/ui/vscroll$bar.png",
        "resources/res/ui/vscroll$down.png",
        "resources/res/ui/vscroll$up.png",
        "resources/res/ui/tree/clip_selectBox.png",
        "resources/res/ui/tree/clip_tree_folder.png",
        "resources/res/ui/tree/clip_tree_arrow.png"
      ];
      Laya.loader.load(res).then(() => {
        this.onLoadComplete();
      });
    }
    onLoadComplete(e = null) {
      var treeData = "<data>";
      for (var i = 0; i < 5; ++i) {
        treeData += "<item label='Directory " + (i + 1) + "' isOpen='true'>";
        for (var j = 0; j < 5; ++j) {
          treeData += "<leaf label='File " + (j + 1) + "'/>";
        }
        treeData += "</item>";
      }
      treeData += "</data>";
      var xml = new Laya.XML(treeData);
      var tree = new Tree();
      tree.scrollBarSkin = "resources/res/ui/vscroll.png";
      tree.itemRender = Item2;
      tree.xml = xml;
      tree.size(300, 300);
      tree.x = (this.pageWidth - tree.width) / 2;
      tree.y = (this.pageHeight - tree.height) / 2;
      this.box2D.addChild(tree);
    }
  };
  __name(UI_Tree, "UI_Tree");
  UI_Tree = __decorateClass([
    regClass112("d3bf77a4-0a1e-46cc-9048-1f898ae0c747", "../src/2D/UI/UI_Tree.ts")
  ], UI_Tree);
  var _Item2 = class _Item2 extends Box2 {
    constructor() {
      super();
      this.right = 0;
      this.left = 0;
      var selectBox = new Clip2("resources/res/ui/tree/clip_selectBox.png", 1, 2);
      selectBox.name = "selectBox";
      selectBox.height = 32;
      selectBox.x = 13;
      selectBox.left = 12;
      this.addChild(selectBox);
      var folder = new Clip2("resources/res/ui/tree/clip_tree_folder.png", 1, 3);
      folder.name = "folder";
      folder.x = 14;
      folder.y = 4;
      this.addChild(folder);
      var label = new Label6("treeItem");
      label.name = "label";
      label.fontSize = 20;
      label.color = "#FFFFFF";
      label.padding = "6,0,0,13";
      label.width = 150;
      label.height = 30;
      label.x = 33;
      label.y = 1;
      label.left = 33;
      label.right = 0;
      this.addChild(label);
      var arrow = new Clip2("resources/res/ui/tree/clip_tree_arrow.png", 1, 2);
      arrow.name = "arrow";
      arrow.x = 0;
      arrow.y = 5;
      this.addChild(arrow);
    }
  };
  __name(_Item2, "Item");
  var Item2 = _Item2;

  // src/3D/Animation/AnimatorDemo.ts
  var Sprite3D = Laya.Sprite3D;
  var Vector33 = Laya.Vector3;
  var Animator = Laya.Animator;
  var AnimatorState = Laya.AnimatorState;
  var Text26 = Laya.Text;
  var Button6 = Laya.Button;
  var Event41 = Laya.Event;
  var { regClass: regClass113, property: property113 } = Laya;
  var AnimatorDemo = class extends BaseScript {
    constructor() {
      super();
      this._PlayStopIndex = 0;
      this._curStateIndex = 0;
      this._text = new Text26();
      this._textName = new Text26();
      this._curActionName = null;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector33(0, 3, 5);
      this.camera.transform.rotate(new Vector33(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector33(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      Laya.loader.load("resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh").then((res) => {
        this.onLoadFinish(res);
      });
    }
    onLoadFinish(res) {
      var role = this.scene.addChild(new Sprite3D());
      var pangzi = role.addChild(res.create());
      this._animator = pangzi.getChildAt(0).getComponent(Animator);
      var state1 = new AnimatorState();
      state1.name = "hello";
      state1.clipStart = 296 / 581;
      state1.clipEnd = 346 / 581;
      state1.clip = this._animator.getDefaultState().clip;
      state1.clip.islooping = true;
      state1.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state1);
      var state2 = new AnimatorState();
      state2.name = "ride";
      state2.clipStart = 0 / 581;
      state2.clipEnd = 33 / 581;
      state2.clip = this._animator.getDefaultState().clip;
      state2.clip.islooping = true;
      state2.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state2);
      this._animator.speed = 0;
      var state3 = new AnimatorState();
      state3.name = "\u52A8\u4F5C\u72B6\u6001\u4E09";
      state3.clipStart = 34 / 581;
      state3.clipEnd = 100 / 581;
      state3.clip = this._animator.getDefaultState().clip;
      state3.clip.islooping = true;
      state3.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state3);
      this._animator.speed = 0;
      var state4 = new AnimatorState();
      state4.name = "\u52A8\u4F5C\u72B6\u6001\u56DB";
      state4.clipStart = 101 / 581;
      state4.clipEnd = 200 / 581;
      state4.clip = this._animator.getDefaultState().clip;
      state4.clip.islooping = true;
      state4.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state4);
      this._animator.speed = 0;
      var state5 = new AnimatorState();
      state5.name = "\u52A8\u4F5C\u72B6\u6001\u4E94";
      state5.clipStart = 201 / 581;
      state5.clipEnd = 295 / 581;
      state5.clip = this._animator.getDefaultState().clip;
      state5.clip.islooping = true;
      state5.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state5);
      this._animator.speed = 0;
      var state6 = new AnimatorState();
      state6.name = "\u52A8\u4F5C\u72B6\u6001\u516D";
      state6.clipStart = 345 / 581;
      state6.clipEnd = 581 / 581;
      state6.clip = this._animator.getDefaultState().clip;
      state6.clip.islooping = true;
      state6.addScript(CustomAnimatorStateScript);
      this._animator.getControllerLayer(0).addState(state6);
      this._animator.speed = 0;
      this.loadUI();
      this._textName.width = 300;
      this._textName.align = "center";
      this._textName.x = (this.pageWidth - this._textName.width) / 2;
      this._textName.y = 10;
      this._textName.overflow = Text26.HIDDEN;
      this._textName.color = "#FFFFFF";
      this._textName.fontSize = 16;
      this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A";
      this.owner.addChild(this._textName);
      this._text.width = 300;
      this._text.align = "center";
      this._text.x = (this.pageWidth - this._text.width) / 2;
      this._text.y = 50;
      this._text.overflow = Text26.HIDDEN;
      this._text.color = "#FFFFFF";
      this._text.fontSize = 16;
      this._text.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u8FDB\u5EA6\uFF1A";
      this.owner.addChild(this._text);
      Laya.timer.frameLoop(1, this, this.onFrame);
      this._curActionName = "hello";
      this._animator.play(this._curActionName);
    }
    loadUI() {
      this._changeActionButton = this.owner.addChild(new Button6("resources/image/img_btn_bg.png", "\u64AD\u653E\u52A8\u753B"));
      this._changeActionButton.size(150, 40);
      this._changeActionButton.labelSize = 16;
      this._changeActionButton.sizeGrid = "21,83,22,76";
      this._changeActionButton.stateNum = 1;
      this._changeActionButton.labelColors = "#ffffff";
      this._changeActionButton.pos(this.pageWidth / 2 - this._changeActionButton.width - 10, this.pageHeight - 50);
      this._changeActionButton.on(Event41.CLICK, this, this.stypeFun0);
      this._changeActionButton2 = this.owner.addChild(new Button6("resources/image/img_btn_bg.png", "\u5207\u6362\u52A8\u4F5C\u72B6\u6001"));
      this._changeActionButton2.size(150, 40);
      this._changeActionButton2.labelSize = 16;
      this._changeActionButton2.sizeGrid = "21,83,22,76";
      this._changeActionButton2.stateNum = 1;
      this._changeActionButton2.labelColors = "#ffffff";
      this._changeActionButton2.pos(this.pageWidth / 2 + 10, this.pageHeight - 50);
      this._changeActionButton2.on(Event41.CLICK, this, this.stypeFun1);
    }
    stypeFun0(label = "\u64AD\u653E\u52A8\u753B") {
      this._PlayStopIndex++;
      if (this._PlayStopIndex % 3 == 0) {
        this._changeActionButton.label = "\u64AD\u653E\u52A8\u753B";
        this._animator.speed = 0;
      } else if (this._PlayStopIndex % 3 == 1) {
        this._changeActionButton.label = "\u52A8\u753B\u878D\u5408";
        this._animator.play(this._curActionName);
        this._animator.speed = 1;
      } else if (this._PlayStopIndex % 3 == 2) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.crossFade(this._curActionName, 0.5);
        this._animator.speed = 1;
      }
      label = this._changeActionButton.label;
    }
    stypeFun1(curStateIndex = 0) {
      this._curStateIndex++;
      if (this._curStateIndex % 6 == 0) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("hello");
        this._curActionName = "hello";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1Ahello";
        this._animator.speed = 1;
      } else if (this._curStateIndex % 6 == 1) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("ride");
        this._curActionName = "ride";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1Aride";
        this._animator.speed = 1;
      } else if (this._curStateIndex % 6 == 2) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("\u52A8\u4F5C\u72B6\u6001\u4E09");
        this._curActionName = "\u52A8\u4F5C\u72B6\u6001\u4E09";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A\u52A8\u4F5C\u72B6\u6001\u4E09";
        this._animator.speed = 1;
      } else if (this._curStateIndex % 6 == 3) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("\u52A8\u4F5C\u72B6\u6001\u56DB");
        this._curActionName = "\u52A8\u4F5C\u72B6\u6001\u56DB";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A\u52A8\u4F5C\u72B6\u6001\u56DB";
        this._animator.speed = 1;
      } else if (this._curStateIndex % 6 == 4) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("\u52A8\u4F5C\u72B6\u6001\u4E94");
        this._curActionName = "\u52A8\u4F5C\u72B6\u6001\u4E94";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A\u52A8\u4F5C\u72B6\u6001\u4E94";
        this._animator.speed = 1;
      } else if (this._curStateIndex % 6 == 5) {
        this._changeActionButton.label = "\u6682\u505C\u52A8\u753B";
        this._animator.speed = 0;
        this._animator.play("\u52A8\u4F5C\u72B6\u6001\u516D");
        this._curActionName = "\u52A8\u4F5C\u72B6\u6001\u516D";
        this._textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A\u52A8\u4F5C\u72B6\u6001\u516D";
        this._animator.speed = 1;
      }
      curStateIndex = this._curStateIndex;
    }
    onFrame() {
      if (this._animator.speed > 0) {
        var curNormalizedTime = this._animator.getControllerLayer(0).getCurrentPlayState().normalizedTime.toFixed(2);
        this._text.text = "\u5F53\u524D\u52A8\u753B\u72B6\u6001\u8FDB\u5EA6\uFF1A" + curNormalizedTime;
      }
    }
  };
  __name(AnimatorDemo, "AnimatorDemo");
  __decorateClass([
    property113(Laya.Camera)
  ], AnimatorDemo.prototype, "camera", 2);
  __decorateClass([
    property113(Laya.Scene3D)
  ], AnimatorDemo.prototype, "scene", 2);
  __decorateClass([
    property113(Laya.Sprite3D)
  ], AnimatorDemo.prototype, "directionLight", 2);
  AnimatorDemo = __decorateClass([
    regClass113("9ee20e05-3a9e-495b-871d-8a273d7eb552", "../src/3D/Animation/AnimatorDemo.ts")
  ], AnimatorDemo);
  var _CustomAnimatorStateScript = class _CustomAnimatorStateScript extends Laya.AnimatorStateScript {
    constructor() {
      super();
    }
    /**
    * 动画状态开始时执行。
    */
    onStateEnter() {
      console.log("\u52A8\u753B\u5F00\u59CB\u64AD\u653E\u4E86");
    }
    /**
     * 动画状态运行中
     * @param normalizeTime 0-1动画播放状态
     */
    onStateUpdate(normalizeTime) {
      console.log("\u52A8\u753B\u72B6\u6001\u66F4\u65B0\u4E86");
    }
    /**
    * 动画状态退出时执行。
    */
    onStateExit() {
      console.log("\u52A8\u753B\u9000\u51FA\u4E86");
    }
  };
  __name(_CustomAnimatorStateScript, "CustomAnimatorStateScript");
  var CustomAnimatorStateScript = _CustomAnimatorStateScript;

  // src/3D/Animation/AnimatorStateScriptDemo.ts
  var Sprite3D2 = Laya.Sprite3D;
  var Vector34 = Laya.Vector3;
  var Animator2 = Laya.Animator;
  var AnimatorState2 = Laya.AnimatorState;
  var Text27 = Laya.Text;
  var AnimatorStateScript = Laya.AnimatorStateScript;
  var { regClass: regClass114, property: property114 } = Laya;
  var AnimatorStateScriptDemo = class extends BaseScript {
    constructor() {
      super();
      this.curStateIndex = 0;
      this.text = new Text27();
      this.textName = new Text27();
      this.curActionName = null;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector34(0, 3, 5);
      this.camera.transform.rotate(new Vector34(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector34(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      Laya.loader.load("resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh").then((res) => {
        this.onLoadFinish(res);
      });
    }
    onLoadFinish(res) {
      var role = this.scene.addChild(new Sprite3D2());
      var pangzi = role.addChild(res.create());
      this.animator = pangzi.getChildAt(0).getComponent(Animator2);
      var state1 = new AnimatorState2();
      state1.name = "hello";
      state1.clipStart = 296 / 581;
      state1.clipEnd = 346 / 581;
      state1.clip = this.animator.getDefaultState().clip;
      state1.clip.islooping = true;
      var asst1 = state1.addScript(AnimatorStateScriptTest);
      asst1.text = this.text;
      this.animator.speed = 0;
      this.animator.getControllerLayer(0).addState(state1);
      var state2 = new AnimatorState2();
      state2.name = "ride";
      state2.clipStart = 0 / 581;
      state2.clipEnd = 33 / 581;
      state2.clip = this.animator.getDefaultState().clip;
      state2.clip.islooping = true;
      var asst2 = state2.addScript(AnimatorStateScriptTest);
      asst2.text = this.text;
      this.animator.getControllerLayer(0).addState(state2);
      var state3 = new AnimatorState2();
      state3.name = "\u52A8\u4F5C\u72B6\u6001\u4E09";
      state3.clipStart = 34 / 581;
      state3.clipEnd = 100 / 581;
      state3.clip = this.animator.getDefaultState().clip;
      state3.clip.islooping = true;
      this.animator.speed = 0;
      var asst3 = state3.addScript(AnimatorStateScriptTest);
      asst3.text = this.text;
      this.animator.getControllerLayer(0).addState(state3);
      this.textName.width = 300;
      this.textName.align = "center";
      this.textName.x = (this.pageWidth - this.textName.width) / 2;
      this.textName.y = 10;
      this.textName.overflow = Text27.HIDDEN;
      this.textName.color = "#FFFFFF";
      this.textName.fontSize = 16;
      this.textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A";
      this.box2D.addChild(this.textName);
      this.text.width = 300;
      this.text.align = "center";
      this.text.x = (this.pageWidth - this.text.width) / 2;
      this.text.y = 50;
      this.text.overflow = Text27.HIDDEN;
      this.text.color = "#FFFFFF";
      this.text.fontSize = 16;
      this.text.text = "\u52A8\u753B\u72B6\u6001\uFF1A";
      this.box2D.addChild(this.text);
      super.addBottomButton(["\u5207\u6362\u52A8\u4F5C\u72B6\u6001", "\u5207\u6362\u52A8\u4F5C\u72B6\u6001", "\u5207\u6362\u52A8\u4F5C\u72B6\u6001"], this, [this.change, this.change, this.change]);
    }
    change() {
      this.curStateIndex++;
      if (this.curStateIndex % 3 == 0) {
        this.animator.speed = 0;
        this.animator.play("hello");
        this.textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1Ahello";
        this.animator.speed = 1;
      } else if (this.curStateIndex % 3 == 1) {
        this.animator.speed = 0;
        this.animator.play("ride");
        this.textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1Aride";
        this.animator.speed = 1;
      } else if (this.curStateIndex % 3 == 2) {
        this.animator.speed = 0;
        this.animator.play("\u52A8\u4F5C\u72B6\u6001\u4E09");
        this.textName.text = "\u5F53\u524D\u52A8\u4F5C\u72B6\u6001\u540D\u79F0\uFF1A\u52A8\u4F5C\u72B6\u6001\u4E09";
        this.animator.speed = 1;
      }
    }
  };
  __name(AnimatorStateScriptDemo, "AnimatorStateScriptDemo");
  __decorateClass([
    property114(Laya.Camera)
  ], AnimatorStateScriptDemo.prototype, "camera", 2);
  __decorateClass([
    property114(Laya.Scene3D)
  ], AnimatorStateScriptDemo.prototype, "scene", 2);
  __decorateClass([
    property114(Laya.Sprite3D)
  ], AnimatorStateScriptDemo.prototype, "directionLight", 2);
  AnimatorStateScriptDemo = __decorateClass([
    regClass114("0f5c142a-89d9-42b4-802b-9e4b33f5a077", "../src/3D/Animation/AnimatorStateScriptDemo.ts")
  ], AnimatorStateScriptDemo);
  var _AnimatorStateScriptTest = class _AnimatorStateScriptTest extends AnimatorStateScript {
    constructor() {
      super();
      this._text = null;
    }
    get text() {
      return this._text;
    }
    set text(value) {
      this._text = value;
    }
    /**
     * 动画状态开始时执行。
     */
    onStateEnter() {
      console.log("\u52A8\u753B\u5F00\u59CB\u64AD\u653E\u4E86");
      this._text.text = "\u52A8\u753B\u72B6\u6001\uFF1A\u52A8\u753B\u5F00\u59CB\u64AD\u653E";
    }
    /**
     * 动画状态运行中
     * @param normalizeTime 0-1动画播放状态
     */
    onStateUpdate(normalizeTime) {
      console.log("\u52A8\u753B\u72B6\u6001\u66F4\u65B0\u4E86");
      this._text.text = "\u52A8\u753B\u72B6\u6001\uFF1A\u52A8\u753B\u66F4\u65B0\u4E2D";
    }
    /**
    * 动画状态退出时执行。
    */
    onStateExit() {
      console.log("\u52A8\u753B\u9000\u51FA\u4E86");
      this._text.text = "\u52A8\u753B\u72B6\u6001\uFF1A\u52A8\u753B\u5F00\u59CB\u9000\u51FA";
    }
  };
  __name(_AnimatorStateScriptTest, "AnimatorStateScriptTest");
  var AnimatorStateScriptTest = _AnimatorStateScriptTest;

  // src/3D/Animation/BoneLinkSprite3D.ts
  var Sprite3D3 = Laya.Sprite3D;
  var Vector35 = Laya.Vector3;
  var Animator3 = Laya.Animator;
  var Quaternion2 = Laya.Quaternion;
  var AnimatorState3 = Laya.AnimatorState;
  var Handler17 = Laya.Handler;
  var Loader7 = Laya.Loader;
  var Button7 = Laya.Button;
  var Event42 = Laya.Event;
  var { regClass: regClass115, property: property115 } = Laya;
  var BoneLinkSprite3D = class extends BaseScript {
    constructor() {
      super();
      this._dragonScale = new Vector35(1.5, 1.5, 1.5);
      this._rotation = new Quaternion2(-0.5, -0.5, 0.5, -0.5);
      this._position = new Vector35(-0.2, 0, 0);
      this._scale = new Vector35(0.75, 0.75, 0.75);
      this._translate = new Vector35(0, 3, 5);
      this._rotation2 = new Vector35(-15, 0, 0);
      this._forward = new Vector35(-1, -1, -1);
      this.curStateIndex = 0;
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector35(0, 3, 5);
      this.camera.transform.rotate(new Vector35(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector35(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var resource = [
        "resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_H_001.lh",
        "resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_S_009.lh",
        "resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh"
      ];
      Laya.loader.load(resource, Handler17.create(this, this.onLoadFinish));
    }
    onLoadFinish() {
      this.role = this.scene.addChild(new Sprite3D3());
      this.pangzi = this.role.addChild(Loader7.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh"));
      this.animator = this.pangzi.getChildAt(0).getComponent(Animator3);
      var state1 = new AnimatorState3();
      state1.name = "hello";
      state1.clipStart = 296 / 581;
      state1.clipEnd = 346 / 581;
      state1.clip = this.animator.getDefaultState().clip;
      state1.clip.islooping = true;
      this.animator.getControllerLayer(0).addState(state1);
      this.animator.play("hello");
      var state2 = new AnimatorState3();
      state2.name = "ride";
      state2.clipStart = 3 / 581;
      state2.clipEnd = 33 / 581;
      state2.clip = this.animator.getDefaultState().clip;
      state2.clip.islooping = true;
      this.animator.getControllerLayer(0).addState(state2);
      this.dragon1 = Loader7.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_H_001.lh");
      this.dragon1.transform.localScale = this._dragonScale;
      this.aniSprte3D1 = this.dragon1.getChildAt(0);
      this.dragonAnimator1 = this.aniSprte3D1.getComponent(Animator3);
      var state3 = new AnimatorState3();
      state3.name = "run";
      state3.clipStart = 50 / 644;
      state3.clipEnd = 65 / 644;
      state3.clip = this.dragonAnimator1.getDefaultState().clip;
      state3.clip.islooping = true;
      this.dragonAnimator1.getControllerLayer(0).addState(state3);
      this.dragon2 = Loader7.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_S_009.lh");
      this.dragon2.transform.localScale = this._dragonScale;
      this.aniSprte3D2 = this.dragon2.getChildAt(0);
      this.dragonAnimator2 = this.aniSprte3D2.getComponent(Animator3);
      var state4 = new AnimatorState3();
      state4.name = "run";
      state4.clipStart = 50 / 550;
      state4.clipEnd = 65 / 550;
      state4.clip = this.dragonAnimator2.getDefaultState().clip;
      state4.clip.islooping = true;
      this.dragonAnimator2.getControllerLayer(0).addState(state4);
      this.loadUI();
    }
    loadUI() {
      Laya.loader.load(["resources/image/img_btn_bg.png"], Handler17.create(this, () => {
        this.changeActionButton = Laya.stage.addChild(new Button7("resources/image/img_btn_bg.png", "\u4E58\u9A91\u5750\u9A91"));
        this.changeActionButton.size(160, 40);
        this.changeActionButton.labelBold = true;
        this.changeActionButton.labelSize = 30;
        this.changeActionButton.sizeGrid = "4,4,4,4";
        this.changeActionButton.pos(this.pageWidth / 2 - this.changeActionButton.width / 2, this.pageHeight - 100);
        this.changeActionButton.on(Event42.CLICK, this, this.stypeFun0);
      }));
    }
    stypeFun0(label = "\u4E58\u9A91\u5750\u9A91") {
      this.curStateIndex++;
      if (this.curStateIndex % 3 == 1) {
        this.changeActionButton.label = "\u5207\u6362\u5750\u9A91";
        this.scene.addChild(this.dragon1);
        this.aniSprte3D1.addChild(this.role);
        this.animator.play("ride");
        this.dragonAnimator1.play("run");
        this.pangzi.transform.localRotation = this._rotation;
        this.pangzi.transform.localPosition = this._position;
        this.pangzi.transform.localScale = this._scale;
      } else if (this.curStateIndex % 3 == 2) {
        this.changeActionButton.label = "\u5378\u4E0B\u5750\u9A91";
        this.aniSprte3D1.removeChild(this.role);
        this.dragon1.removeSelf();
        this.scene.addChild(this.dragon2);
        this.aniSprte3D2.addChild(this.role);
        this.animator.play("ride");
        this.dragonAnimator2.play("run");
        this.pangzi.transform.localRotation = this._rotation;
        this.pangzi.transform.localPosition = this._position;
        this.pangzi.transform.localScale = this._scale;
      } else {
        this.changeActionButton.label = "\u4E58\u9A91\u5750\u9A91";
        this.aniSprte3D2.removeChild(this.role);
        this.dragon2.removeSelf();
        this.scene.addChild(this.role);
        this.animator.play("hello");
      }
      label = this.changeActionButton.label;
    }
  };
  __name(BoneLinkSprite3D, "BoneLinkSprite3D");
  __decorateClass([
    property115(Laya.Camera)
  ], BoneLinkSprite3D.prototype, "camera", 2);
  __decorateClass([
    property115(Laya.Scene3D)
  ], BoneLinkSprite3D.prototype, "scene", 2);
  __decorateClass([
    property115(Laya.Sprite3D)
  ], BoneLinkSprite3D.prototype, "directionLight", 2);
  BoneLinkSprite3D = __decorateClass([
    regClass115("7eb1f365-4358-4f60-b931-30ca03f975b6", "../src/3D/Animation/BoneLinkSprite3D.ts")
  ], BoneLinkSprite3D);

  // src/3D/Animation/CameraAnimation.ts
  var Animator4 = Laya.Animator;
  var AnimatorState4 = Laya.AnimatorState;
  var { regClass: regClass116, property: property116 } = Laya;
  var CameraAnimation = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this._animator = this.camera.getComponent(Animator4);
      this._animatorState = this._animator.getControllerLayer(0).getAnimatorState("a1");
      this._animatorClip = this._animatorState.clip;
      console.log(this._animatorClip);
      super.addBottomButton(["\u5207\u6362\u52A8\u753B", "\u5207\u6362\u52A8\u753B"], this, [this.changeAnimation2, this.changeAnimation1]);
      Laya.loader.load("resources/res/threeDimen/scene/cameraDonghua/Conventional/Assets/a2.lani").then((res) => {
        let clip = res;
        var state1 = new AnimatorState4();
        state1.name = "a2";
        state1.clip = clip;
        state1.clip.islooping = true;
        this._animator.getControllerLayer(0).addState(state1);
      });
    }
    changeAnimation2() {
      this._animator.play("a2");
    }
    changeAnimation1() {
      this._animator.play("a1");
    }
  };
  __name(CameraAnimation, "CameraAnimation");
  __decorateClass([
    property116(Laya.Camera)
  ], CameraAnimation.prototype, "camera", 2);
  CameraAnimation = __decorateClass([
    regClass116("50c4f116-02b5-4179-8360-c8c58b502952", "../src/3D/Animation/CameraAnimation.ts")
  ], CameraAnimation);

  // src/3D/Animation/MaterialAnimation.ts
  var Animator5 = Laya.Animator;
  var { regClass: regClass117, property: property117 } = Laya;
  var MaterialAnimation = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var cube = this.scene.getChildByName("Cube");
      this._animator = cube.getComponent(Animator5);
      this._animatorState = this._animator.getControllerLayer(0).getAnimatorState("Color");
      this._animatorClip = this._animatorState.clip;
      console.log(this._animatorClip);
    }
    // changeAnimation (): void {
    // 	this._animator.play("SpecularColor");
    // }    
  };
  __name(MaterialAnimation, "MaterialAnimation");
  __decorateClass([
    property117(Laya.Camera)
  ], MaterialAnimation.prototype, "camera", 2);
  __decorateClass([
    property117(Laya.Scene3D)
  ], MaterialAnimation.prototype, "scene", 2);
  MaterialAnimation = __decorateClass([
    regClass117("f2170105-c2c6-437f-8654-18d17eda81a1", "../src/3D/Animation/MaterialAnimation.ts")
  ], MaterialAnimation);

  // src/3D/Animation/RigidbodyAnimationDemo.ts
  var Animator6 = Laya.Animator;
  var AnimatorState5 = Laya.AnimatorState;
  var { regClass: regClass118, property: property118 } = Laya;
  var RigidbodyAnimationDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var cube = this.scene.getChildByName("Cube");
      this._animator = cube.getComponent(Animator6);
      this._animatorState = this._animator.getControllerLayer(0).getAnimatorState("a1");
      this._animatorClip = this._animatorState.clip;
      console.log(this._animatorClip);
      super.addBottomButton(["\u5207\u6362\u52A8\u753B", "\u5207\u6362\u52A8\u753B"], this, [this.changeAnimation2, this.changeAnimation1]);
      Laya.loader.load("resources/res/threeDimen/scene/LayaScene_RigidbodyAnimation/Conventional/Assets/LayaAir3D/a2.lani").then((res) => {
        let clip = res;
        var state1 = new AnimatorState5();
        state1.name = "a2";
        state1.clip = clip;
        state1.clip.islooping = true;
        this._animator.getControllerLayer(0).addState(state1);
      });
    }
    changeAnimation2() {
      this._animator.play("a2");
    }
    changeAnimation1() {
      this._animator.play("a1");
    }
  };
  __name(RigidbodyAnimationDemo, "RigidbodyAnimationDemo");
  __decorateClass([
    property118(Laya.Camera)
  ], RigidbodyAnimationDemo.prototype, "camera", 2);
  __decorateClass([
    property118(Laya.Scene3D)
  ], RigidbodyAnimationDemo.prototype, "scene", 2);
  RigidbodyAnimationDemo = __decorateClass([
    regClass118("289c86d4-758d-4782-8d77-1bb4ef606829", "../src/3D/Animation/RigidbodyAnimationDemo.ts")
  ], RigidbodyAnimationDemo);

  // src/3D/Animation/SimpleSkinAnimationInstance.ts
  var Vector36 = Laya.Vector3;
  var Animator7 = Laya.Animator;
  var Loader8 = Laya.Loader;
  var { regClass: regClass119, property: property119 } = Laya;
  var SimpleSkinAnimationInstance = class extends BaseScript {
    constructor() {
      super();
      this.animatorName = [
        ["PickUp", "PotionDrink", "BattleWalkRight", "VictoryStart", "DefendStart", "Die", "Interact", "VictoryMaintain"],
        ["DefendHit_SwordAndShield", "SwordAndShiled2", "Defend_SwordAndShield", "SwordAndShiled", "Attack04_Start_SwordAndShield", "Attack04_SwordAndShiled"]
      ];
      this.widthNums = 20;
      this.step = 2.5;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector36(-16.4, 2.96, 24.3);
      this.camera.transform.localRotationEuler = new Vector36(-7.5, -30, 0);
      this.directionLight.getComponent(Laya.DirectionLightCom).intensity = 0.5;
      var res = [
        "resources/res/threeDimen/texAnimation/Attack01/Attack01.lh",
        "resources/res/threeDimen/texAnimation/role/role.lh"
      ];
      Laya.loader.load(res).then(() => {
        this.oriSprite3D = Loader8.createNodes(res[0]);
        this.sceneBuild(0);
        this.oriSprite3D = Loader8.createNodes(res[1]);
        this.sceneBuild(1);
      });
    }
    cloneSprite(pos, quaterial, aniNameIndex) {
      var clonesprite = this.oriSprite3D.clone();
      this.scene.addChild(clonesprite);
      var animate = clonesprite.getComponent(Animator7);
      var nums = Math.round(Math.random() * 5);
      animate.play(this.animatorName[aniNameIndex][nums], 0, Math.random());
      clonesprite.transform.position = pos;
      clonesprite.transform.rotationEuler = quaterial;
    }
    sceneBuild(aniNameIndex) {
      var left = -0.5 * this.step * this.widthNums;
      var right = -1 * left;
      for (var i = left; i < right; i += this.step)
        for (var j = left; j < right; j += this.step) {
          var xchange = (Math.random() - 0.5) * 5;
          var zchange = (Math.random() - 0.5) * 5;
          var quaterial = new Vector36(0, Math.random() * 180, 0);
          this.cloneSprite(new Vector36(i + xchange, 0, j + zchange), quaterial, aniNameIndex);
        }
    }
  };
  __name(SimpleSkinAnimationInstance, "SimpleSkinAnimationInstance");
  __decorateClass([
    property119(Laya.Camera)
  ], SimpleSkinAnimationInstance.prototype, "camera", 2);
  __decorateClass([
    property119(Laya.Scene3D)
  ], SimpleSkinAnimationInstance.prototype, "scene", 2);
  __decorateClass([
    property119(Laya.Sprite3D)
  ], SimpleSkinAnimationInstance.prototype, "directionLight", 2);
  SimpleSkinAnimationInstance = __decorateClass([
    regClass119("0400feed-d633-46aa-a964-c2d558a53e84", "../src/3D/Animation/SimpleSkinAnimationInstance.ts")
  ], SimpleSkinAnimationInstance);

  // src/3D/Animation/SkeletonMask.ts
  var Scene3D = Laya.Scene3D;
  var Text28 = Laya.Text;
  var Handler18 = Laya.Handler;
  var Event43 = Laya.Event;
  var { regClass: regClass120, property: property120 } = Laya;
  var SkeletonMask = class extends BaseScript {
    constructor() {
      super();
      this.fontName = "fontClip";
    }
    onAwake() {
      super.base(this.camera);
      this.loadFont();
      Scene3D.load("resources/res/threeDimen/LayaScene_MaskModelTest/Conventional/MaskModelTest.ls", Handler18.create(this, (scene) => {
        this.scene.addChild(scene);
      }));
    }
    loadFont() {
      Laya.loader.load("resources/res/threeDimen/LayaScene_MaskModelTest/font/fontClip.fnt", Laya.Loader.FONT).then((res) => {
        this.onFontLoaded(res);
      });
    }
    onFontLoaded(bitmapFont) {
      Text28.registerBitmapFont(this.fontName, bitmapFont);
      this.createText(this.fontName);
      this.createText1(this.fontName);
      this.createText2(this.fontName);
    }
    createText(font) {
      var txt = new Text28();
      txt.width = 250;
      txt.wordWrap = true;
      txt.text = "\u5E26\u6709\u9AA8\u9ABC\u906E\u7F69\u7684\u52A8\u753B";
      txt.color = "#FFFFFFFF";
      txt.size(200, 300);
      txt.leading = 5;
      txt.fontSize = 15;
      txt.zOrder = 999999999;
      txt.pos(this.box2D.width / 2 - 50, this.box2D.height / 2);
      this.box2D.on(Event43.RESIZE, txt, () => {
        txt.pos(this.box2D.width / 2 - 50, this.box2D.height / 2);
      });
      this.box2D.addChild(txt);
    }
    createText1(font) {
      var txt = new Text28();
      txt.width = 250;
      txt.wordWrap = true;
      txt.text = "\u6B63\u5E38\u52A8\u753B\u4E00";
      txt.color = "#FFFFFFFF";
      txt.size(200, 300);
      txt.leading = 5;
      txt.fontSize = 15;
      txt.zOrder = 999999999;
      txt.pos(this.box2D.width / 2 - 240, this.box2D.height / 2);
      this.box2D.on(Event43.RESIZE, txt, () => {
        txt.pos(this.box2D.width / 2 - 240, this.box2D.height / 2);
      });
      this.box2D.addChild(txt);
    }
    createText2(font) {
      var txt = new Text28();
      txt.width = 250;
      txt.wordWrap = true;
      txt.text = "\u6B63\u5E38\u52A8\u753B\u4E8C";
      txt.color = "#FFFFFFFF";
      txt.size(200, 300);
      txt.leading = 5;
      txt.zOrder = 999999999;
      txt.fontSize = 15;
      txt.pos(this.box2D.width / 2 + 140, this.box2D.height / 2);
      this.box2D.on(Event43.RESIZE, txt, () => {
        txt.pos(this.box2D.width / 2 + 140, this.box2D.height / 2);
      });
      this.box2D.addChild(txt);
    }
  };
  __name(SkeletonMask, "SkeletonMask");
  __decorateClass([
    property120(Laya.Camera)
  ], SkeletonMask.prototype, "camera", 2);
  __decorateClass([
    property120(Laya.Scene3D)
  ], SkeletonMask.prototype, "scene", 2);
  SkeletonMask = __decorateClass([
    regClass120("2cee0d53-9d69-4900-9245-187a54b4e801", "../src/3D/Animation/SkeletonMask.ts")
  ], SkeletonMask);

  // src/3D/Advance/CommandBufferDemo/GlassShader.vs
  var GlassShader_default = '#define SHADER_NAME GlassShaderVS\r\n#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n#include "VertexCommon.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvarying vec4 v_ScreenTexcoord;\r\n\r\nvoid main() {\r\n	Vertex vertex;\r\n	getVertexParams(vertex);\r\n	mat4 worldMat = getWorldMatrix();\r\n	vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n	gl_Position = getPositionCS(positionWS);\r\n	gl_Position = remapPositionZ(gl_Position);\r\n	v_Texcoord0= transformUV(a_Texcoord0, u_TilingOffset);\r\n	//v_ScreenTexcoord =vec2((gl_Position.x/gl_Position.w+1.0)*0.5, (gl_Position.y/gl_Position.w+1.0)*0.5);\r\n	v_ScreenTexcoord = gl_Position*0.5;\r\n	v_ScreenTexcoord.xy = vec2(v_ScreenTexcoord.x,v_ScreenTexcoord.y)+v_ScreenTexcoord.w;\r\n	v_ScreenTexcoord.zw = gl_Position.zw;\r\n	\r\n}';

  // src/3D/Advance/CommandBufferDemo/GlassShader.fs
  var GlassShader_default2 = '#define SHADER_NAME GlassShaderFS\r\n\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvarying vec4 v_ScreenTexcoord;\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_screenTexture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n\r\n#ifdef Gamma_u_screenTexture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_tintTexure\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n	vec4 color;\r\n	vec4 screenTexColor = sampleMainTex(u_screenTexture,v_ScreenTexcoord.xy/v_ScreenTexcoord.w);\r\n	vec4 tintTexColor = sampleMainTex(u_tintTexure, v_Texcoord0);\r\n	color = mix(screenTexColor, tintTexColor,0.5);\r\n	gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}\r\n\r\n';

  // src/3D/Advance/CommandBufferDemo/GlassWithoutGrabMaterial.ts
  var _GlassWithoutGrabMaterial = class _GlassWithoutGrabMaterial extends Laya.Material {
    static init() {
      var attributeMap = {
        "a_Position": [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
        "a_Normal": [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
        "a_Texcoord0": [Laya.VertexMesh.MESH_TEXTURECOORDINATE0, Laya.ShaderDataType.Vector2],
        "a_Tangent0": [Laya.VertexMesh.MESH_TANGENT0, Laya.ShaderDataType.Vector4]
      };
      var uniformMap = {
        "u_tintTexure": Laya.ShaderDataType.Texture2D,
        "u_screenTexture": Laya.ShaderDataType.Texture2D,
        "u_normalTexture": Laya.ShaderDataType.Texture2D,
        "u_TilingOffset": Laya.ShaderDataType.Vector4,
        "u_tintAmount": Laya.ShaderDataType.Color
      };
      var shader = Laya.Shader3D.add("GlassShader", false);
      var subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      subShader.addShaderPass(GlassShader_default, GlassShader_default2);
      _GlassWithoutGrabMaterial.TINTTEXTURE = Laya.Shader3D.propertyNameToID("u_tintTexure");
      _GlassWithoutGrabMaterial.NORMALTEXTURE = Laya.Shader3D.propertyNameToID("u_normalTexture");
      _GlassWithoutGrabMaterial.TILINGOFFSET = Laya.Shader3D.propertyNameToID("u_TilingOffset");
      _GlassWithoutGrabMaterial.ALBEDOCOLOR = Laya.Shader3D.propertyNameToID("u_tintAmount");
    }
    /**
     * @param texture 
     */
    constructor(texture) {
      super();
      this.setShaderName("GlassShader");
      this.renderModeSet();
      this._shaderValues.setVector(_GlassWithoutGrabMaterial.TILINGOFFSET, new Laya.Vector4(1, 1, 0, 0));
      this._shaderValues.setTexture(_GlassWithoutGrabMaterial.TINTTEXTURE, texture);
    }
    /**
     * RenderMode
     */
    renderModeSet() {
      this.alphaTest = false;
      this.renderQueue = Laya.Material.RENDERQUEUE_TRANSPARENT;
      this.depthWrite = true;
      this.cull = Laya.RenderState.CULL_BACK;
      this.blend = Laya.RenderState.BLEND_DISABLE;
      this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
  };
  __name(_GlassWithoutGrabMaterial, "GlassWithoutGrabMaterial");
  var GlassWithoutGrabMaterial = _GlassWithoutGrabMaterial;

  // src/3D/Advance/BlurShader/Blur.vs
  var Blur_default = '#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/BlurShader/BlurHorizontal.fs
  var BlurHorizontal_default = '#define SHADER_NAME BlurHorizontal\r\nvarying vec2 v_Texcoord0;\r\n#include "Color.glsl";\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\n\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    vec2 uv = v_Texcoord0;\r\n    vec2 uvOffset = vec2(1.0,0.0)*u_MainTex_TexelSize.xy*u_DownSampleValue;\r\n    uv = uv - uvOffset*3.0;\r\n    //\u9AD8\u65AF\u53C2\u6570\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.324*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n\r\n    gl_FragColor = color;\r\n    gl_FragColor = outputTransform(gl_FragColor);\r\n\r\n    \r\n}';

  // src/3D/Advance/BlurShader/BlurVertical.fs
  var BlurVertical_default = '#define SHADER_NAME BlurVertical\r\nvarying vec2 v_Texcoord0;\r\n#include "Color.glsl";\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    vec2 uv = v_Texcoord0;\r\n    vec2 uvOffset = vec2(0.0,1.0)*u_MainTex_TexelSize.xy*u_DownSampleValue;\r\n    uv = uv - uvOffset*3.0;\r\n    //\u9AD8\u65AF\u53C2\u6570\r\n    color+=0.0205*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.324*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*texture2D(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0205*texture2D(u_MainTex,uv);\r\n\r\n    gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n    \r\n\r\n    \r\n}';

  // src/3D/Advance/BlurShader/BlurDownSample.fs
  var BlurDownSample_default = '#define SHADER_NAME BlurDownSample\r\nvarying vec2 v_Texcoord0;\r\n#include "Color.glsl";\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(1.0,0.0));\r\n	color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(-1.0,0.0));\r\n	color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(0.0,-1.0));\r\n    color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(0.0,1.0));\r\n    gl_FragColor = color/4.0;\r\n    gl_FragColor = outputTransform(gl_FragColor);\r\n\r\n}';

  // src/3D/Advance/BlurShader/BlurDownSample.vs
  var BlurDownSample_default2 = '#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/BlurShader/EdgeAdd.fs
  var EdgeAdd_default = '#define SHADER_NAME EdgeAdd\r\nvarying vec2 v_Texcoord0;\r\n#include "Color.glsl";\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n\r\n#ifdef Gamma_u_sourceTexture0\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_sourceTexture0\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec2 uv = v_Texcoord0;\r\n    vec4 mainColor = sampleMainTex(u_MainTex,uv);\r\n    vec4 sourceColor = sampleMainTex(u_sourceTexture0,uv);\r\n    float factor = step(sourceColor.x+sourceColor.y+sourceColor.z,0.001);\r\n    vec4 color = mix(sourceColor,mainColor,factor);\r\n    gl_FragColor =color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/Advance/BlurShader/EdgeSub.fs
  var EdgeSub_default = '#define SHADER_NAME EdgeSub\r\nvarying vec2 v_Texcoord0;\r\n#include "Color.glsl";\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_sourceTexture0\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_sourceTexture0\r\n\r\n#ifdef Gamma_u_sourceTexture1\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_sourceTexture1\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec2 uv = v_Texcoord0;\r\n    vec4 blurColor = sampleMainTex(u_sourceTexture0,uv);\r\n    vec4 clearColor = sampleMainTex(u_sourceTexture1,uv);\r\n    float factor = step(clearColor.x+clearColor.y+clearColor.z,0.001);\r\n    vec4 color = blurColor*factor;\r\n    color = (1.0-step(color.x+color.y+color.z,0.15))*vec4(1.0,0.0,0.0,1.0);\r\n    gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/Advance/BlurShader/BlurEffect.ts
  var _BlurEffect = class _BlurEffect extends Laya.PostProcessEffect {
    constructor() {
      super();
      /**@internal */
      this._shader = null;
      /**@internal */
      this._shaderData = Laya.LayaGL.renderOBJCreate.createShaderData(null);
      /**@internal */
      this._downSampleNum = 1;
      /**@internal */
      this._blurSpreadSize = 1;
      /**@internal */
      this._blurIterations = 2;
      /**@internal */
      this._texSize = new Laya.Vector4(1, 1, 1, 1);
      this._shader = Laya.Shader3D.find("blurEffect");
      this._tempRenderTexture = new Array(13);
    }
    static init() {
      _BlurEffect.SHADERVALUE_MAINTEX = Laya.Shader3D.propertyNameToID("u_MainTex");
      _BlurEffect.SHADERVALUE_TEXELSIZE = Laya.Shader3D.propertyNameToID("u_MainTex_TexelSize");
      _BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE = Laya.Shader3D.propertyNameToID("u_DownSampleValue");
      let attributeMap = {
        "a_PositionTexcoord": [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4]
      };
      let uniformMap = {
        "u_MainTex": Laya.ShaderDataType.Texture2D,
        "u_sourceTexture0": Laya.ShaderDataType.Texture2D,
        "u_sourceTexture1": Laya.ShaderDataType.Texture2D,
        "u_MainTex_TexelSize": Laya.ShaderDataType.Vector4,
        "u_DownSampleValue": Laya.ShaderDataType.Float
      };
      var shader = Laya.Shader3D.add("blurEffect");
      var subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      var shaderpass = subShader.addShaderPass(BlurDownSample_default2, BlurDownSample_default);
      var renderState = shaderpass.renderState;
      renderState.depthTest = Laya.RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = Laya.RenderState.CULL_NONE;
      renderState.blend = Laya.RenderState.BLEND_DISABLE;
      subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default, BlurVertical_default);
      renderState = shaderpass.renderState;
      renderState.depthTest = Laya.RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = Laya.RenderState.CULL_NONE;
      renderState.blend = Laya.RenderState.BLEND_DISABLE;
      subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default, BlurHorizontal_default);
      renderState = shaderpass.renderState;
      renderState.depthTest = Laya.RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = Laya.RenderState.CULL_NONE;
      renderState.blend = Laya.RenderState.BLEND_DISABLE;
      subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default, EdgeSub_default);
      renderState = shaderpass.renderState;
      renderState.depthTest = Laya.RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = Laya.RenderState.CULL_NONE;
      renderState.blend = Laya.RenderState.BLEND_DISABLE;
      subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default, EdgeAdd_default);
      renderState = shaderpass.renderState;
      renderState.depthTest = Laya.RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = Laya.RenderState.CULL_NONE;
      renderState.blend = Laya.RenderState.BLEND_DISABLE;
    }
    /**
     * @return 强度。
     */
    get downSampleNum() {
      return this._downSampleNum;
    }
    /**
     * 降采样,值范围为0-6。
     * @param value 强度。
     */
    set downSampleNum(value) {
      this._downSampleNum = Math.min(6, Math.max(value, 0));
    }
    /**
     * 采样间隔  过大会失真1-10
     * @return 。
     */
    get blurSpreadSize() {
      return this._blurSpreadSize;
    }
    /**
     * @param value 
     */
    set blurSpreadSize(value) {
      this._blurSpreadSize = Math.min(10, Math.max(value, 1));
    }
    /**
     * 迭代次数  越大性能消耗越大 效果越好
     * @return 。
     */
    get blurIterations() {
      return this._blurIterations;
    }
    /**
     * @param value。
     */
    set blurIterations(value) {
      this._blurIterations = Math.min(Math.max(value, 0), 6);
    }
    /**
     * @inheritDoc
     * @override
     * @internal
     */
    render(context) {
      var cmd = context.command;
      var viewport = context.camera.viewport;
      var scaleFactor = 1 / (1 << Math.floor(this._downSampleNum));
      var tw = Math.floor(viewport.width * scaleFactor);
      var th = Math.floor(viewport.height * scaleFactor);
      this._texSize.setValue(1 / tw, 1 / th, tw, th);
      this._shaderData.setNumber(_BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE, this.blurSpreadSize);
      this._shaderData.setVector(_BlurEffect.SHADERVALUE_TEXELSIZE, this._texSize);
      var downSampleTexture = Laya.RenderTexture.createFromPool(tw, th, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
      downSampleTexture.filterMode = Laya.FilterMode.Bilinear;
      this._tempRenderTexture[0] = downSampleTexture;
      var lastDownTexture = context.source;
      cmd.blitScreenTriangle(lastDownTexture, downSampleTexture, null, this._shader, this._shaderData, 0);
      lastDownTexture = downSampleTexture;
      for (var i = 0; i < this._blurIterations; i++) {
        var blurTexture = Laya.RenderTexture.createFromPool(tw, th, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
        blurTexture.filterMode = Laya.FilterMode.Bilinear;
        cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 1);
        lastDownTexture = blurTexture;
        this._tempRenderTexture[i * 2 + 1] = blurTexture;
        blurTexture = Laya.RenderTexture.createFromPool(tw, th, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
        blurTexture.filterMode = Laya.FilterMode.Bilinear;
        cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 2);
        lastDownTexture = blurTexture;
        this._tempRenderTexture[i * 2 + 2] = blurTexture;
      }
      context.source = lastDownTexture;
      cmd.blitScreenTriangle(context.source, context.destination);
      var maxTexture = this._blurIterations * 2 + 1;
      for (i = 0; i < maxTexture; i++) {
        Laya.RenderTexture.recoverToPool(this._tempRenderTexture[i]);
      }
      context.deferredReleaseTextures.push(lastDownTexture);
    }
  };
  __name(_BlurEffect, "BlurEffect");
  _BlurEffect.BLUR_TYPE_GaussianBlur = 0;
  _BlurEffect.BLUR_TYPE_Simple = 1;
  var BlurEffect = _BlurEffect;
  var _BlurMaterial = class _BlurMaterial extends Laya.Material {
    static __init__() {
      _BlurMaterial.SHADERVALUE_MAINTEX = Laya.Shader3D.propertyNameToID("u_MainTex");
      _BlurMaterial.SHADERVALUE_TEXELSIZE = Laya.Shader3D.propertyNameToID("u_MainTex_TexelSize");
      _BlurMaterial.SHADERVALUE_DOWNSAMPLEVALUE = Laya.Shader3D.propertyNameToID("u_DownSampleValue");
      _BlurMaterial.SHADERVALUE_SOURCETEXTURE0 = Laya.Shader3D.propertyNameToID("u_sourceTexture0");
      _BlurMaterial.ShADERVALUE_SOURCETEXTURE1 = Laya.Shader3D.propertyNameToID("u_sourceTexture1");
    }
    constructor(texelSize, offset) {
      super();
      _BlurMaterial.__init__();
      this.setShaderName("blurEffect");
      this.setIntByIndex(_BlurMaterial.SHADERVALUE_DOWNSAMPLEVALUE, offset);
      this.setVector4ByIndex(_BlurMaterial.SHADERVALUE_TEXELSIZE, texelSize);
    }
    sourceTexture(sourceTexture0, sourceTexture1) {
      this.setTextureByIndex(_BlurMaterial.SHADERVALUE_SOURCETEXTURE0, sourceTexture0);
      this.setTextureByIndex(_BlurMaterial.ShADERVALUE_SOURCETEXTURE1, sourceTexture1);
    }
  };
  __name(_BlurMaterial, "BlurMaterial");
  var BlurMaterial = _BlurMaterial;

  // src/3D/Advance/BlurryGlass.ts
  var Vector4 = Laya.Vector4;
  var { regClass: regClass121, property: property121 } = Laya;
  var BlurGlass = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      BlurEffect.init();
      GlassWithoutGrabMaterial.init();
      var scene = this.scene;
      var camera = this.camera;
      var glass01 = scene.getChildByName("glass01");
      var glass02 = scene.getChildByName("glass02");
      var pbrStandard = glass01.getComponent(Laya.MeshRenderer).sharedMaterial;
      var glassMaterial = new GlassWithoutGrabMaterial(pbrStandard.albedoTexture);
      glass01.getComponent(Laya.MeshRenderer).sharedMaterial = glassMaterial;
      glass02.getComponent(Laya.MeshRenderer).sharedMaterial = glassMaterial;
      this.mat = glassMaterial;
      this.createCommandBuffer(camera);
    }
    /**
     * 创建CommandBuffer命令缓存流
     * @param camera 
     */
    createCommandBuffer(camera) {
      camera.enableBuiltInRenderTexture = true;
      var buf = new Laya.CommandBuffer();
      var viewPort = camera.viewport;
      var renderTexture = Laya.RenderTexture.createFromPool(viewPort.width, viewPort.height, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
      this.texture = renderTexture;
      buf.blitScreenTriangle(null, renderTexture);
      var shader = Laya.Shader3D.find("blurEffect");
      var shaderValue = Laya.LayaGL.renderOBJCreate.createShaderData(null);
      var downSampleFactor = 4;
      var downSampleWidth = viewPort.width / downSampleFactor;
      var downSampleheigh = viewPort.height / downSampleFactor;
      var texSize = new Vector4(1 / viewPort.width, 1 / viewPort.height, viewPort.width, downSampleheigh);
      shaderValue.setNumber(BlurEffect.SHADERVALUE_DOWNSAMPLEVALUE, 1);
      shaderValue.setVector(BlurEffect.SHADERVALUE_TEXELSIZE, texSize);
      var downRenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
      buf.blitScreenTriangle(renderTexture, downRenderTexture, null, shader, shaderValue, 0);
      var blurTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.None, false, 1);
      blurTexture.filterMode = Laya.FilterMode.Bilinear;
      buf.blitScreenTriangle(downRenderTexture, blurTexture, null, shader, shaderValue, 1);
      buf.blitScreenTriangle(blurTexture, downRenderTexture, null, shader, shaderValue, 2);
      buf.blitScreenTriangle(downRenderTexture, blurTexture, null, shader, shaderValue, 1);
      buf.blitScreenTriangle(blurTexture, downRenderTexture, null, shader, shaderValue, 2);
      var globalUniformNameID = Laya.Shader3D.propertyNameToID("u_screenTexture");
      buf.setGlobalTexture(globalUniformNameID, downRenderTexture);
      camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, buf);
      Laya.RenderTexture.recoverToPool(downRenderTexture);
      Laya.RenderTexture.recoverToPool(blurTexture);
      return;
    }
  };
  __name(BlurGlass, "BlurGlass");
  __decorateClass([
    property121(Laya.Camera)
  ], BlurGlass.prototype, "camera", 2);
  __decorateClass([
    property121(Laya.Scene3D)
  ], BlurGlass.prototype, "scene", 2);
  BlurGlass = __decorateClass([
    regClass121("6a7bc5b7-ac78-40d1-975a-19b7d20e0e7b", "../src/3D/Advance/BlurryGlass.ts")
  ], BlurGlass);

  // src/3D/Advance/DepthNormalShader/DepthTextureTest.vs
  var DepthTextureTest_default = '#define SHADER_NAME DepthTextureTestVS\r\n\r\n#include "Color.glsl";\r\n\r\n#include "Scene.glsl";\r\n#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n\r\n#include "VertexCommon.glsl";\r\n\r\nvarying vec2 v_Texcoord0;\r\nvoid main() {\r\n    Vertex vertex;\r\n    getVertexParams(vertex);\r\n\r\n    v_Texcoord0 = vertex.texCoord0;\r\n    mat4 worldMat = getWorldMatrix();\r\n    vec3 PositionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n\r\n    gl_Position = getPositionCS(PositionWS);\r\n    gl_Position=remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/DepthNormalShader/DepthTextureTest.fs
  var DepthTextureTest_default2 = '#define SHADER_NAME DepthTextureTestFS\r\n#include "Color.glsl";\r\n#include "Camera.glsl";\r\n#include "DepthNormalUtil.glsl";\r\n\r\n\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main(){\r\n    vec4 col;\r\n    vec2 uv = vec2(v_Texcoord0.x,v_Texcoord0.y);\r\n    float depth = SAMPLE_DEPTH_TEXTURE(u_CameraDepthTexture, uv);\r\n    depth =Linear01Depth(depth,u_ZBufferParams);\r\n    col = vec4(depth,depth,depth,1.0);\r\n    gl_FragColor = col;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/Advance/DepthNormalShader/DepthMaterial.ts
  var _DepthMaterial = class _DepthMaterial extends Laya.Material {
    /**
     * init
     */
    static init() {
      var shader = Laya.Shader3D.add("DepthShader");
      var subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap);
      shader.addSubShader(subShader);
      subShader.addShaderPass(DepthTextureTest_default, DepthTextureTest_default2, "Forward");
    }
    /**
     * constuctor
     */
    constructor() {
      super();
      this.setShaderName("DepthShader");
      this.renderModeSet();
    }
    /**
     * render mode set
     */
    renderModeSet() {
      this.alphaTest = false;
      this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;
      this.depthWrite = true;
      this.cull = Laya.RenderState.CULL_BACK;
      this.blend = Laya.RenderState.BLEND_DISABLE;
      this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
  };
  __name(_DepthMaterial, "DepthMaterial");
  var DepthMaterial = _DepthMaterial;

  // src/3D/Advance/DepthNormalShader/DepthNormalsTextureTest.vs
  var DepthNormalsTextureTest_default = '#define SHADER_NAME DepthNormalTextureTestVS\r\n#include "Lighting.glsl";\r\n#include "Color.glsl";\r\n\r\n#include "Scene.glsl";\r\n#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n\r\n#include "VertexCommon.glsl";\r\n\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n   Vertex vertex;\r\n    getVertexParams(vertex);\r\n\r\n    v_Texcoord0 = vertex.texCoord0;\r\n    mat4 worldMat = getWorldMatrix();\r\n    vec3 PositionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n\r\n    gl_Position = getPositionCS(PositionWS);\r\n    gl_Position=remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/DepthNormalShader/DepthNormalsTextureTest.fs
  var DepthNormalsTextureTest_default2 = '#define SHADER_NAME DepthNormalTextureTestFS\r\n#include "Color.glsl";\r\n#include "Camera.glsl";\r\n#include "DepthNormalUtil.glsl";\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_CameraDepthNormalsTexture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main(){\r\n    vec2 uv = vec2(v_Texcoord0.x,v_Texcoord0.y);\r\n    vec4 col = sampleMainTex(u_CameraDepthNormalsTexture,uv);\r\n    vec3 normals;\r\n    float depth;\r\n    DecodeDepthNormal(col,depth,normals);\r\n    col = vec4(normals,1.0);\r\n    gl_FragColor = col;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/Advance/DepthNormalShader/DepthNormalsMaterial.ts
  var _DepthNormalsMaterial = class _DepthNormalsMaterial extends Laya.Material {
    static init() {
      var shader = Laya.Shader3D.add("DepthNormalShader", false, false);
      var subShader = new Laya.SubShader(Laya.SubShader.DefaultAttributeMap);
      shader.addSubShader(subShader);
      subShader.addShaderPass(DepthNormalsTextureTest_default, DepthNormalsTextureTest_default2, "Forward");
    }
    constructor() {
      super();
      this.setShaderName("DepthNormalShader");
      this.renderModeSet();
    }
    //渲染模式
    renderModeSet() {
      this.alphaTest = false;
      this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;
      this.depthWrite = true;
      this.cull = Laya.RenderState.CULL_BACK;
      this.blend = Laya.RenderState.BLEND_DISABLE;
      this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
  };
  __name(_DepthNormalsMaterial, "DepthNormalsMaterial");
  var DepthNormalsMaterial = _DepthNormalsMaterial;

  // src/3D/Advance/CameraDepthModeTextureDemo.ts
  var Vector37 = Laya.Vector3;
  var { regClass: regClass122, property: property122 } = Laya;
  var CameraDepthModeTextureDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      DepthMaterial.init();
      DepthNormalsMaterial.init();
      this.scene.ambientColor = new Laya.Color(0.858, 0.858, 0.858);
      this.depthNormalPlane = this.scene.getChildByName("depthNormalPlane");
      this.depthPlane = this.scene.getChildByName("depthNormalPlane1");
      this.depthPlane.transform.position = new Vector37(-11.12226, 11.76791, 11.90175);
      this.depthNormalPlane.transform.position = new Vector37(-6.32228, 11.76791, 11.90175);
      var camera = this.camera;
      camera.transform.position = new Vector37(-13.6097, 8.84349, 3.01193);
      camera.depthTextureMode |= Laya.DepthTextureMode.Depth;
      this.depthPlane.getComponent(Laya.MeshRenderer).sharedMaterial = new DepthMaterial();
      camera.depthTextureMode |= Laya.DepthTextureMode.DepthNormals;
      this.depthNormalPlane.getComponent(Laya.MeshRenderer).sharedMaterial = new DepthNormalsMaterial();
    }
  };
  __name(CameraDepthModeTextureDemo, "CameraDepthModeTextureDemo");
  __decorateClass([
    property122(Laya.Camera)
  ], CameraDepthModeTextureDemo.prototype, "camera", 2);
  __decorateClass([
    property122(Laya.Scene3D)
  ], CameraDepthModeTextureDemo.prototype, "scene", 2);
  CameraDepthModeTextureDemo = __decorateClass([
    regClass122("d6fc9519-a7a7-48d7-8431-50af8012c384", "../src/3D/Advance/CameraDepthModeTextureDemo.ts")
  ], CameraDepthModeTextureDemo);

  // src/3D/Advance/CameraInteraction.ts
  var Event44 = Laya.Event;
  var { regClass: regClass123, property: property123 } = Laya;
  var CameraInteraction = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera, false);
      this.keyboard = new Laya.Box();
      this.joystick = new Laya.Box();
      this.isQuaternion = true;
      this.isEuler = false;
      this.isMatrix = false;
      Laya.loader.load("resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var scene3D = res.create();
      this.scene.addChild(scene3D);
      this.camera.transform.position = new Laya.Vector3(57, 2.5, 58);
      this.camera.transform.rotationEuler = new Laya.Vector3(-10, 150, 0);
      this.camera.addComponent(CameraMoveQuaternion);
      this.camera.addComponent(CameraMoveEuler);
      this.camera.addComponent(CameraMoveMatrix);
      this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
      this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
      this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
      this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(0.6, 0.6, 0.6);
      this.directionLight.transform.worldMatrix.setForward(new Laya.Vector3(1, -1, 0));
      this.keyboard.addComponent(KeyBoard);
      this.keyboard.width = 400;
      this.keyboard.height = 300;
      this.keyboard.left = 20;
      this.keyboard.bottom = 20;
      this.keyboard.scale(0.5, 0.5);
      var q = new Laya.Sprite();
      var w = new Laya.Sprite();
      var e = new Laya.Sprite();
      var a = new Laya.Sprite();
      var s = new Laya.Sprite();
      var d = new Laya.Sprite();
      this.keyboard.addChild(q);
      this.keyboard.addChild(w);
      this.keyboard.addChild(e);
      this.keyboard.addChild(a);
      this.keyboard.addChild(s);
      this.keyboard.addChild(d);
      q.loadImage("resources/res/threeDimen/CameraInteraction/q.png");
      q.pos(0, 30);
      q.name = "q";
      w.loadImage("resources/res/threeDimen/CameraInteraction/w.png");
      w.pos(110, 30);
      w.name = "w";
      e.loadImage("resources/res/threeDimen/CameraInteraction/e.png");
      e.pos(220, 30);
      e.name = "e";
      a.loadImage("resources/res/threeDimen/CameraInteraction/a.png");
      a.pos(0, 140);
      a.name = "a";
      s.loadImage("resources/res/threeDimen/CameraInteraction/s.png");
      s.pos(110, 140);
      s.name = "s";
      d.loadImage("resources/res/threeDimen/CameraInteraction/d.png");
      d.pos(220, 140);
      d.name = "d";
      this.owner.addChild(this.keyboard);
      this.joystick.left = 0;
      this.joystick.right = 0;
      this.joystick.top = 0;
      this.joystick.bottom = 0;
      this.leftJoyStick = new Laya.Box();
      this.joystick.addChild(this.leftJoyStick);
      this.leftJoyStick.name = "leftJoyStick";
      this.leftJoyStick.addComponent(JoyStick);
      this.leftJoyStick.width = 215;
      this.leftJoyStick.height = 215;
      this.leftJoyStick.left = 50;
      this.leftJoyStick.bottom = 50;
      var bg = new Laya.Sprite();
      this.leftJoyStick.addChild(bg);
      bg.loadImage("resources/res/threeDimen/CameraInteraction/joystick_bg.png");
      bg.width = 215;
      bg.height = 215;
      bg.name = "bg";
      var axis = new Laya.Sprite();
      this.leftJoyStick.addChild(axis);
      axis.loadImage("resources/res/threeDimen/CameraInteraction/joystick_axis.png");
      axis.width = 78;
      axis.height = 78;
      axis.name = "axis";
      axis.pos(70, 70);
      this.rightJoyStick = new Laya.Box();
      this.joystick.addChild(this.rightJoyStick);
      this.rightJoyStick.name = "rightJoyStick";
      this.rightJoyStick.addComponent(JoyStick);
      this.rightJoyStick.width = 215;
      this.rightJoyStick.height = 215;
      this.rightJoyStick.right = 50;
      this.rightJoyStick.bottom = 50;
      var bg = new Laya.Sprite();
      this.rightJoyStick.addChild(bg);
      bg.loadImage("resources/res/threeDimen/CameraInteraction/joystick_bg.png");
      bg.width = 215;
      bg.height = 215;
      bg.name = "bg";
      var axis = new Laya.Sprite();
      this.rightJoyStick.addChild(axis);
      axis.loadImage("resources/res/threeDimen/CameraInteraction/joystick_axis.png");
      axis.width = 78;
      axis.height = 78;
      axis.name = "axis";
      axis.pos(70, 70);
      this.owner.addChild(this.joystick);
      this.camera.getComponent(CameraMoveQuaternion).moveRocker = this.leftJoyStick.getComponent(JoyStick);
      this.camera.getComponent(CameraMoveQuaternion).rotationRocker = this.rightJoyStick.getComponent(JoyStick);
      this.camera.getComponent(CameraMoveEuler).moveRocker = this.leftJoyStick.getComponent(JoyStick);
      this.camera.getComponent(CameraMoveEuler).rotationRocker = this.rightJoyStick.getComponent(JoyStick);
      this.camera.getComponent(CameraMoveMatrix).moveRocker = this.leftJoyStick.getComponent(JoyStick);
      this.camera.getComponent(CameraMoveMatrix).rotationRocker = this.rightJoyStick.getComponent(JoyStick);
      this.switchBtn = this.owner.addChild(new Laya.Button("resources/image/img_btn_bg.png", "\u5207\u6362\u5230\u6B27\u62C9\u89D2\u53D8\u6362\u6A21\u5F0F"));
      this.switchBtn.size(300, 30);
      this.switchBtn.labelSize = 16;
      this.switchBtn.sizeGrid = "21,83,22,76";
      this.switchBtn.stateNum = 1;
      this.switchBtn.labelColors = "#ffffff";
      this.switchBtn.pos(this.pageWidth / 2 - this.switchBtn.width / 2, 10);
      this.switchBtn.on(Laya.Event.CLICK, this, this.switchScript);
      if (Laya.Browser.onPC) {
        this.keyboard.visible = true;
        this.joystick.visible = false;
        var text = new Laya.Label();
        text.pos(this.pageWidth / 2 - this.switchBtn.width / 2, 60);
        text.overflow = Laya.Text.HIDDEN;
        text.color = "#ea4335";
        text.font = "Impact";
        text.fontSize = 20;
        text.borderColor = "#ea4335";
        text.text = "\u6447\u6746\u6A21\u5F0F\u8BF7\u626B\u4E8C\u7EF4\u7801\u9884\u89C8\uFF01";
        this.owner.addChild(text);
      } else {
        this.keyboard.visible = false;
        this.joystick.visible = true;
      }
    }
    switchScript() {
      if (this.isQuaternion) {
        this.isEuler = true;
        this.isQuaternion = false;
        this.isMatrix = false;
        this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
        this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
        this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
        this.switchBtn.label = "\u5207\u6362\u5230\u77E9\u9635\u53D8\u6362\u6A21\u5F0F";
      } else if (this.isEuler) {
        this.isEuler = false;
        this.isQuaternion = false;
        this.isMatrix = true;
        this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
        this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
        this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
        this.switchBtn.label = "\u5207\u6362\u5230\u56DB\u5143\u6570\u53D8\u6362\u6A21\u5F0F";
      } else if (this.isMatrix) {
        this.isEuler = false;
        this.isQuaternion = true;
        this.isMatrix = false;
        this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
        this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
        this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
        this.switchBtn.label = "\u5207\u6362\u5230\u6B27\u62C9\u89D2\u53D8\u6362\u6A21\u5F0F";
      }
    }
  };
  __name(CameraInteraction, "CameraInteraction");
  __decorateClass([
    property123(Laya.Camera)
  ], CameraInteraction.prototype, "camera", 2);
  __decorateClass([
    property123(Laya.Scene3D)
  ], CameraInteraction.prototype, "scene", 2);
  __decorateClass([
    property123(Laya.Sprite3D)
  ], CameraInteraction.prototype, "directionLight", 2);
  CameraInteraction = __decorateClass([
    regClass123("7a2191ac-590d-4a34-aa9f-7714eead7c62", "../src/3D/Advance/CameraInteraction.ts")
  ], CameraInteraction);
  var _KeyBoard = class _KeyBoard extends Laya.Script {
    // 键盘按键e
    constructor() {
      super();
    }
    onEnable() {
      this.w = this.owner.getChildByName("w");
      this.a = this.owner.getChildByName("a");
      this.s = this.owner.getChildByName("s");
      this.d = this.owner.getChildByName("d");
      this.q = this.owner.getChildByName("q");
      this.e = this.owner.getChildByName("e");
      Laya.stage.on(Event44.KEY_DOWN, this, this.onKeyDown);
      Laya.stage.on(Event44.KEY_UP, this, this.onKeyUp);
    }
    onKeyDown(e) {
      switch (e.keyCode) {
        case 87:
        case 38:
          this.w.visible = false;
          break;
        case 65:
        case 37:
          this.a.visible = false;
          break;
        case 69:
          this.e.visible = false;
          break;
        case 81:
          this.q.visible = false;
          break;
        case 83:
        case 40:
          this.s.visible = false;
          break;
        case 68:
        case 39:
          this.d.visible = false;
          break;
      }
    }
    onKeyUp() {
      this.w.visible = true;
      this.a.visible = true;
      this.s.visible = true;
      this.d.visible = true;
      this.q.visible = true;
      this.e.visible = true;
    }
    onDisable() {
    }
  };
  __name(_KeyBoard, "KeyBoard");
  var KeyBoard = _KeyBoard;
  var _JoyStick = class _JoyStick extends Laya.Script {
    constructor() {
      super();
      // 摇杆中心坐标
      this.centerX = 0;
      this.centerY = 0;
      // 是否移动
      this.isMoving = false;
      this.touchId = 0;
      // 触摸点标识
      this.angle = -1;
      // 角度
      this.radians = -1;
      // 弧度
      // 摇杆轴心最大距离
      this.maxDistance = 0;
      this.maxDistanceSpr = 0;
      // 位移
      this.deltaX = 0;
      this.deltaY = 0;
      // 用来计算位移与轴节点位置
      this.tempV2_1 = new Laya.Point(0, 0);
      this.tempV2_2 = new Laya.Point(0, 0);
    }
    onAwake() {
      this.RockerPad = this.owner;
      this.Rocker = this.RockerPad.getChildByName("axis");
      this.centerX = this.Rocker.x;
      this.centerY = this.Rocker.y;
      !this.maxDistance && (this.maxDistance = (this.RockerPad.width - this.Rocker.width) / 2);
      this.maxDistanceSpr = this.maxDistance * this.maxDistance;
    }
    onEnable() {
      this.owner.parent.on(Laya.Event.MOUSE_DOWN, this, this.MouseDown);
      this.owner.parent.on(Laya.Event.MOUSE_UP, this, this.MouseUp);
      this.owner.parent.on(Laya.Event.MOUSE_MOVE, this, this.MouseMove);
    }
    MouseDown(e) {
      e.stopPropagation();
      if (e.target.mouseX > this.RockerPad.x && e.target.mouseX < this.RockerPad.x + this.RockerPad.width && e.target.mouseY > this.RockerPad.y && e.target.mouseY < this.RockerPad.y + this.RockerPad.height) {
        this.isMoving = true;
        this.touchId = e.touchId;
      }
    }
    MouseUp(e) {
      e.stopPropagation();
      if (e.touchId != this.touchId) {
        return;
      }
      this.isMoving = false;
      this.Rocker.pos(this.centerX, this.centerY);
      this.radians = this.angle = -1;
    }
    MouseMove(e) {
      e.stopPropagation();
      if (e.touchId != this.touchId) {
        return;
      }
      if (this.isMoving) {
        this.tempV2_1.x = e.target.mouseX;
        this.tempV2_1.y = e.target.mouseY;
        this.tempV2_2 = this.RockerPad.globalToLocal(this.tempV2_1, false);
        this.deltaX = this.tempV2_2.x - this.centerX;
        this.deltaY = this.tempV2_2.y - this.centerY;
        this.angle = Math.atan2(this.deltaX, this.deltaY) * 180 / Math.PI;
        if (this.angle < 0) {
          this.angle += 360;
        }
        this.angle = Math.round(this.angle);
        this.radians = Math.PI / 180 * this.angle;
        var distanceSqr = this.getDistanceSqr(this.centerX, this.centerY, this.tempV2_2.x, this.tempV2_2.y);
        if (distanceSqr > this.maxDistanceSpr) {
          var x = Math.floor(Math.sin(this.radians) * this.maxDistance + this.centerX);
          var y = Math.floor(Math.cos(this.radians) * this.maxDistance + this.centerY);
          this.Rocker.pos(x, y);
        } else {
          this.Rocker.pos(this.tempV2_2.x, this.tempV2_2.y);
        }
      }
    }
    onDisable() {
      this.owner.parent.off(Laya.Event.MOUSE_DOWN, this, this.MouseDown);
      this.owner.parent.off(Laya.Event.MOUSE_UP, this, this.MouseUp);
      this.owner.parent.off(Laya.Event.MOUSE_MOVE, this, this.MouseMove);
    }
    getDistanceSqr(centerX, centerY, mouseX, mouseY) {
      var dx = centerX - mouseX;
      var dy = centerY - mouseY;
      var distance = dx * dx + dy * dy;
      return distance;
    }
  };
  __name(_JoyStick, "JoyStick");
  var JoyStick = _JoyStick;
  var _CameraMoveEuler = class _CameraMoveEuler extends Laya.Script {
    constructor() {
      super();
      // 位移向量
      this._tempVector3 = new Laya.Vector3();
      // 旋转角度
      this.yawPitchRoll = new Laya.Vector3();
      // 按键下的旋转速度
      this.rotaionSpeed = 4e-3;
      // 摇杆下的旋转速度
      this.rockerRotationSpeed = 5e-4;
      // 移动速度
      this.moveSpeed = 25e-4;
      // 鼠标上个位置x，用来计算鼠标的位移
      this.lastMouseX = 0;
      // 鼠标上个位置y
      this.lastMouseY = 0;
      // 是否按下
      this.isMouseDown = false;
    }
    onEnable() {
      Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
      this.camera = this.owner;
    }
    onDisable() {
      console.log("camera euler script is disable :" + this.enabled);
      Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    onUpdate() {
      var elapsedTime = Laya.timer.delta;
      if (Laya.Browser.onPC) {
        if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
          Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);
          if (this.isMouseDown) {
            var offsetX = Laya.stage.mouseX - this.lastMouseX;
            var offsetY = Laya.stage.mouseY - this.lastMouseY;
            this.camera.transform.localRotationEulerX -= offsetY * this.rotaionSpeed * elapsedTime;
            this.camera.transform.localRotationEulerY -= offsetX * this.rotaionSpeed * elapsedTime;
            console.log("Use Euler Script!");
          }
        }
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
      } else {
        if (this.moveRocker.angle != -1) {
          var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          this._tempVector3.setValue(speedX, 0, speedZ);
          this.camera.transform.translate(this._tempVector3, true);
        }
        if (this.rotationRocker.angle != -1) {
          var offsetX = this.rotationRocker.deltaX;
          var offsetY = this.rotationRocker.deltaY;
          this.camera.transform.localRotationEulerX -= offsetY * this.rockerRotationSpeed * elapsedTime;
          this.camera.transform.localRotationEulerY -= offsetX * this.rockerRotationSpeed * elapsedTime;
          console.log("Use Euler Script!");
        }
      }
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
    /**
     * 向前移动。
     */
    moveForward(distance) {
      this._tempVector3.x = 0;
      this._tempVector3.y = 0;
      this._tempVector3.z = distance;
      this.camera.transform.translate(this._tempVector3, true);
    }
    /**
     * 向右移动。
     */
    moveRight(distance) {
      this._tempVector3.y = 0;
      this._tempVector3.z = 0;
      this._tempVector3.x = distance;
      this.camera.transform.translate(this._tempVector3, true);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance) {
      this._tempVector3.x = this._tempVector3.z = 0;
      this._tempVector3.y = distance;
      this.camera.transform.translate(this._tempVector3, false);
    }
  };
  __name(_CameraMoveEuler, "CameraMoveEuler");
  var CameraMoveEuler = _CameraMoveEuler;
  var _CameraMoveQuaternion = class _CameraMoveQuaternion extends Laya.Script {
    constructor() {
      super();
      // 移动向量
      this._tempVector3 = new Laya.Vector3();
      // 摄像机旋转角度
      this.yawPitchRoll = new Laya.Vector3();
      // 摄像机角度四元数
      this.tempRotationZ = new Laya.Quaternion();
      // 按键下的旋转速度
      this.rotaionSpeed = 12e-5;
      // 摇杆下的旋转速度
      this.rockerRotationSpeed = 1e-5;
      // 移动速度
      this.moveSpeed = 25e-4;
      // 鼠标上个位置x
      this.lastMouseX = 0;
      // 鼠标上个位置y
      this.lastMouseY = 0;
      // 按下
      this.isMouseDown = false;
    }
    onEnable() {
      Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
      this.camera = this.owner;
    }
    onDisable() {
      console.log("camera quaternion script is disable :" + this.enabled);
      Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    onUpdate() {
      var elapsedTime = Laya.timer.delta;
      if (Laya.Browser.onPC) {
        if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
          Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);
          if (this.isMouseDown) {
            var offsetX = Laya.stage.mouseX - this.lastMouseX;
            var offsetY = Laya.stage.mouseY - this.lastMouseY;
            var yprElem = this.yawPitchRoll;
            yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
            yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
            this.updateRotation();
            console.log("Use Quaternion Script!");
          }
        }
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
      } else {
        if (this.moveRocker.angle != -1) {
          var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          this._tempVector3.setValue(speedX, 0, speedZ);
          this.camera.transform.translate(this._tempVector3, true);
        }
        if (this.rotationRocker.angle != -1) {
          var offsetX = this.rotationRocker.deltaX;
          var offsetY = this.rotationRocker.deltaY;
          var yprElem = this.yawPitchRoll;
          yprElem.x -= offsetX * this.rockerRotationSpeed * elapsedTime;
          yprElem.y -= offsetY * this.rockerRotationSpeed * elapsedTime;
          this.updateRotation();
          console.log("Use Quaternion Script!");
        }
      }
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
    /**
     * 向前移动。
     */
    moveForward(distance) {
      this._tempVector3.x = 0;
      this._tempVector3.y = 0;
      this._tempVector3.z = distance;
      this.camera.transform.translate(this._tempVector3, true);
    }
    /**
     * 向右移动。
     */
    moveRight(distance) {
      this._tempVector3.y = 0;
      this._tempVector3.z = 0;
      this._tempVector3.x = distance;
      this.camera.transform.translate(this._tempVector3, true);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance) {
      this._tempVector3.x = this._tempVector3.z = 0;
      this._tempVector3.y = distance;
      this.camera.transform.translate(this._tempVector3, false);
    }
    /**
     * 基于俯仰角转换为四元数的旋转
     */
    updateRotation() {
      if (Math.abs(this.yawPitchRoll.y) < 1.5) {
        Laya.Quaternion.createFromYawPitchRoll(this.yawPitchRoll.x, this.yawPitchRoll.y, this.yawPitchRoll.z, this.tempRotationZ);
        this.tempRotationZ.cloneTo(this.camera.transform.localRotation);
        this.camera.transform.localRotation = this.camera.transform.localRotation;
      }
    }
  };
  __name(_CameraMoveQuaternion, "CameraMoveQuaternion");
  var CameraMoveQuaternion = _CameraMoveQuaternion;
  var _CameraMoveMatrix = class _CameraMoveMatrix extends Laya.Script {
    constructor() {
      super();
      // 位移
      this._tempVector3 = new Laya.Vector3();
      // 各轴旋转角度
      this.yawPitchRoll = new Laya.Vector3();
      // 旋转矩阵
      this.rotateMatrix = new Laya.Matrix4x4();
      // 按键旋转速度
      this.rotaionSpeed = 12e-5;
      // 摇杆旋转速度
      this.rockerRotationSpeed = 1e-5;
      // 移动速度
      this.moveSpeed = 25e-4;
      // 鼠标上个位置x，位移计算
      this.lastMouseX = 0;
      // 鼠标上个位置y
      this.lastMouseY = 0;
      // 是否按下
      this.isMouseDown = false;
    }
    onEnable() {
      Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
      this.camera = this.owner;
    }
    onDisable() {
      console.log("camera matrix script is disable :" + this.enabled);
      Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
      Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    onUpdate() {
      var elapsedTime = Laya.timer.delta;
      if (Laya.Browser.onPC) {
        if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
          Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);
          Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);
          if (this.isMouseDown) {
            var offsetX = Laya.stage.mouseX - this.lastMouseX;
            var offsetY = Laya.stage.mouseY - this.lastMouseY;
            var yprElem = this.yawPitchRoll;
            yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
            yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
            Laya.Matrix4x4.createRotationYawPitchRoll(yprElem.x, yprElem.y, yprElem.z, this.rotateMatrix);
            var moveMatrix = new Laya.Matrix4x4();
            Laya.Matrix4x4.createTranslate(new Laya.Vector3(this.camera.transform.position.x, this.camera.transform.position.y, this.camera.transform.position.z), moveMatrix);
            Laya.Matrix4x4.multiply(moveMatrix, this.rotateMatrix, this.rotateMatrix);
            this.camera.transform.localMatrix = this.rotateMatrix;
            console.log("Use Matrix Script!");
          }
        }
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
      } else {
        if (this.moveRocker.angle != -1) {
          var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
          this._tempVector3.setValue(speedX, 0, speedZ);
          this.camera.transform.translate(this._tempVector3, true);
        }
        if (this.rotationRocker.angle != -1) {
          var offsetX = this.rotationRocker.deltaX;
          var offsetY = this.rotationRocker.deltaY;
          var yprElem = this.yawPitchRoll;
          yprElem.x -= offsetX * this.rockerRotationSpeed * elapsedTime;
          yprElem.y -= offsetY * this.rockerRotationSpeed * elapsedTime;
          Laya.Matrix4x4.createRotationYawPitchRoll(yprElem.x, yprElem.y, yprElem.z, this.rotateMatrix);
          var moveMatrix = new Laya.Matrix4x4();
          Laya.Matrix4x4.createTranslate(new Laya.Vector3(this.camera.transform.position.x, this.camera.transform.position.y, this.camera.transform.position.z), moveMatrix);
          Laya.Matrix4x4.multiply(moveMatrix, this.rotateMatrix, this.rotateMatrix);
          this.camera.transform.localMatrix = this.rotateMatrix;
          console.log("Use Matrix Script!");
        }
      }
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
    /**
     * 向前移动。
     */
    moveForward(distance) {
      this._tempVector3.x = 0;
      this._tempVector3.y = 0;
      this._tempVector3.z = distance;
      this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向右移动。
     */
    moveRight(distance) {
      this._tempVector3.y = 0;
      this._tempVector3.z = 0;
      this._tempVector3.x = distance;
      this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance) {
      this._tempVector3.x = this._tempVector3.z = 0;
      this._tempVector3.y = distance;
      this.camera.transform.translate(this._tempVector3, false);
    }
  };
  __name(_CameraMoveMatrix, "CameraMoveMatrix");
  var CameraMoveMatrix = _CameraMoveMatrix;

  // src/3D/Advance/DrawCustomInstanceDemo/customInstance.vs
  var customInstance_default = '#define SHADER_NAME CustomInstanceVS\r\n#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n\r\n#include "VertexCommon.glsl";\r\n#include "Color.glsl";\r\nvarying vec4 v_Color;\r\nvoid main() {\r\n	Vertex vertex;\r\n	getVertexParams(vertex);\r\n	mat4 worldMat = getWorldMatrix();\r\n	vec3 positionWS = (worldMat *vec4(vertex.positionOS, 1.0)).xyz; \r\n	gl_Position = getPositionCS(positionWS);\r\n	\r\n    #ifdef GPU_INSTANCE\r\n		v_Color = gammaToLinear(a_InstanceColor);\r\n	#else\r\n		v_Color = gammaToLinear(vec4(1.0,1.0,1.0,1.0));\r\n	#endif\r\n	v_Color = vec4(vertex.positionOS, 1.0);\r\n	gl_Position=remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/DrawCustomInstanceDemo/customInstance.fs
  var customInstance_default2 = '#define SHADER_NAME CustomInstanceFS\r\n#include "Color.glsl";\r\n#include "Scene.glsl"\r\n\r\nvarying vec4 v_Color;\r\n\r\nvoid main()\r\n{\r\n	vec4 color =  v_Color;\r\n	gl_FragColor.rgb = color.rgb;\r\n	gl_FragColor = vec4(sin(u_Time), cos(u_Time), 0.0, 1.0);\r\n}\r\n\r\n';

  // src/3D/Advance/DrawCustomInstanceDemo/CustomInstanceMaterial.ts
  var _CustomInstanceMaterial = class _CustomInstanceMaterial extends Laya.Material {
    static init() {
      var attributeMap = {
        "a_Position": [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
        "a_Normal": [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
        "a_Texcoord0": [Laya.VertexMesh.MESH_TEXTURECOORDINATE0, Laya.ShaderDataType.Vector2],
        "a_Tangent0": [Laya.VertexMesh.MESH_TANGENT0, Laya.ShaderDataType.Vector4],
        "a_WorldMat": [Laya.VertexMesh.MESH_WORLDMATRIX_ROW0, Laya.ShaderDataType.Matrix4x4],
        "a_InstanceColor": [Laya.VertexMesh.MESH_CUSTOME0, Laya.ShaderDataType.Color]
      };
      var uniformMap = {};
      var shader = Laya.Shader3D.add("CustomInstanceMat", false);
      var subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      subShader.addShaderPass(customInstance_default, customInstance_default2, "Forward");
    }
    constructor() {
      super();
      this.setShaderName("CustomInstanceMat");
      this.renderModeSet();
    }
    //渲染模式
    renderModeSet() {
      this.alphaTest = true;
      this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;
      this.depthWrite = true;
      this.cull = Laya.RenderState.CULL_BACK;
      this.blend = Laya.RenderState.BLEND_DISABLE;
      this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
    }
  };
  __name(_CustomInstanceMaterial, "CustomInstanceMaterial");
  var CustomInstanceMaterial = _CustomInstanceMaterial;

  // src/3D/Advance/CommandBuffer_DrawCustomInstance.ts
  var Vector38 = Laya.Vector3;
  var Quaternion3 = Laya.Quaternion;
  var Vector42 = Laya.Vector4;
  var { regClass: regClass124, property: property124 } = Laya;
  var CommandBuffer_DrawCustomInstance = class extends BaseScript {
    constructor() {
      super();
      this.matrixs = [];
      this.matrixs1 = [];
      this.colors = [];
      this.colors1 = [];
      this.currentColor = [];
      this.currentMatrix = [];
      this.timer = 0;
      this.delta = 0.01;
    }
    onAwake() {
      super.base(this.camera);
      CustomInstanceMaterial.init();
      var scene = this.scene;
      var camera = this.camera;
      camera.transform.position = new Vector38(14.85, 17.08, 35.89);
      camera.transform.rotation = new Quaternion3(0, 0, 0, 1);
      camera.clearColor = new Laya.Color(0.8, 0.4, 0.2, 1);
      this.mat = new CustomInstanceMaterial();
      this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(1, 1, 1, 0);
      let mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector38(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.createCommandBuffer(camera);
      Laya.timer.frameLoop(1, this, this.changetwoon);
    }
    createCommandBuffer(camera) {
      let buf = new Laya.CommandBuffer();
      this.createMatrixArray();
      this.materialBlock = new Laya.MaterialInstancePropertyBlock();
      this.materialBlock.setVectorArray("a_InstanceColor", this.colors1, Laya.InstanceLocation.CUSTOME0);
      this.instanceCMD = buf.drawMeshInstance(Laya.PrimitiveMesh.createSphere(0.5), 0, this.matrixs1, this.mat, 0, this.materialBlock, 900);
      camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, buf);
      return;
    }
    createMatrixArray() {
      for (let i = 0; i < 30; i++) {
        for (let j = 0; j < 30; j++) {
          let ind = j * 30 + i;
          if (ind > 1023)
            break;
          this.matrixs[ind] = new Laya.Matrix4x4();
          this.matrixs1[ind] = new Laya.Matrix4x4();
          this.currentMatrix[ind] = new Laya.Matrix4x4();
          Laya.Matrix4x4.createTranslate(new Vector38(i, j, 0), this.matrixs[ind]);
          Laya.Matrix4x4.createTranslate(new Vector38(ind % 10 + 10, Math.floor(ind / 100) + 10, Math.floor(ind / 10) % 10 - 5), this.matrixs1[ind]);
          this.colors[ind] = new Vector42(1 - i / 30, 1 - j / 30, 1, 1);
          this.colors1[ind] = new Vector42(1 - i / 30, 1 - j / 30, 0, 1);
          this.currentColor[ind] = new Vector42();
        }
      }
      return null;
    }
    changePositionColor(sourceColor, sourceMatrix, destColor, destMatrix, lerp) {
      var lep = lerp;
      var invert = 1 - lerp;
      for (let i = 0; i < 30; i++) {
        for (let j = 0; j < 30; j++) {
          let ind = j * 30 + i;
          this.currentColor[ind].setValue(sourceColor[ind].x * lep + destColor[ind].x * invert, sourceColor[ind].y * lep + destColor[ind].y * invert, sourceColor[ind].z * lep + destColor[ind].z * invert, 1);
          var mat = this.currentMatrix[ind].elements;
          var sourcemat = sourceMatrix[ind].elements;
          var destmat = destMatrix[ind].elements;
          mat[12] = sourcemat[12] * lep + destmat[12] * invert;
          mat[13] = sourcemat[13] * lep + destmat[13] * invert;
          mat[14] = sourcemat[14] * lep + destmat[14] * invert;
        }
      }
    }
    changetwoon() {
      this.timer += this.delta;
      if (this.timer < 0 || this.timer > 1) {
        this.timer = Math.round(this.timer);
        return;
      }
      this.changePositionColor(this.colors, this.matrixs, this.colors1, this.matrixs1, this.timer);
      this.instanceCMD.setWorldMatrix(this.currentMatrix);
      this.materialBlock.setVectorArray("a_InstanceColor", this.currentColor, Laya.InstanceLocation.CUSTOME0);
    }
  };
  __name(CommandBuffer_DrawCustomInstance, "CommandBuffer_DrawCustomInstance");
  __decorateClass([
    property124(Laya.Camera)
  ], CommandBuffer_DrawCustomInstance.prototype, "camera", 2);
  __decorateClass([
    property124(Laya.Scene3D)
  ], CommandBuffer_DrawCustomInstance.prototype, "scene", 2);
  __decorateClass([
    property124(Laya.Sprite3D)
  ], CommandBuffer_DrawCustomInstance.prototype, "directionLight", 2);
  CommandBuffer_DrawCustomInstance = __decorateClass([
    regClass124("309fd40c-2253-4850-b066-7c34fad9be09", "../src/3D/Advance/CommandBuffer_DrawCustomInstance.ts")
  ], CommandBuffer_DrawCustomInstance);

  // src/3D/Advance/CommandBuffer_Outline.ts
  var Vector43 = Laya.Vector4;
  var { regClass: regClass125, property: property125 } = Laya;
  var CommandBuffer_Outline = class extends BaseScript {
    constructor() {
      super();
      this.cameraEventFlag = Laya.CameraEventFlags.BeforeImageEffect;
      this.enableCommandBuffer = false;
    }
    onAwake() {
      super.base(this.camera);
      var scene = this.scene;
      var camera = this.camera;
      BlurEffect.init();
      var unlitMaterial = new Laya.UnlitMaterial();
      unlitMaterial.albedoColor = new Laya.Color(255, 0, 0, 255);
      var shurikenMaterial = new Laya.ShurikenParticleMaterial();
      shurikenMaterial.color = new Laya.Color(255, 0, 0, 255);
      var renders = [];
      var materials = [];
      renders.push(scene.getChildByName("Cube").getComponent(Laya.MeshRenderer));
      materials.push(unlitMaterial);
      renders.push(scene.getChildByName("Particle").getComponent(Laya.ShurikenParticleRenderer));
      materials.push(shurikenMaterial);
      renders.push(scene.getChildByName("LayaMonkey").getChildByName("LayaMonkey").getComponent(Laya.SkinnedMeshRenderer));
      materials.push(unlitMaterial);
      this.commandBuffer = this.createDrawMeshCommandBuffer(camera, renders, materials);
      camera.addCommandBuffer(this.cameraEventFlag, this.commandBuffer);
    }
    createDrawMeshCommandBuffer(camera, renders, materials) {
      var buf = new Laya.CommandBuffer();
      camera.enableBuiltInRenderTexture = true;
      var viewPort = camera.viewport;
      var renderTexture = Laya.RenderTexture.createFromPool(viewPort.width, viewPort.height, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.STENCIL_8);
      buf.setRenderTarget(renderTexture);
      buf.clearRenderTarget(true, false, new Laya.Color(0, 0, 0, 0));
      for (var i = 0, n = renders.length; i < n; i++) {
        buf.drawRender(renders[i], materials[i], 0);
      }
      var subRendertexture = Laya.RenderTexture.createFromPool(viewPort.width, viewPort.height, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.STENCIL_8);
      buf.blitScreenQuad(renderTexture, subRendertexture);
      var downSampleFactor = 2;
      var downSampleWidth = viewPort.width / downSampleFactor;
      var downSampleheigh = viewPort.height / downSampleFactor;
      var texSize = new Vector43(1 / viewPort.width, 1 / viewPort.height, viewPort.width, downSampleheigh);
      var blurMaterial = new BlurMaterial(texSize, 1);
      var downRenderTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.STENCIL_8);
      buf.blitScreenQuadByMaterial(renderTexture, downRenderTexture, null, blurMaterial, 0);
      var blurTexture = Laya.RenderTexture.createFromPool(downSampleWidth, downSampleheigh, Laya.RenderTargetFormat.R8G8B8, Laya.RenderTargetFormat.STENCIL_8);
      blurTexture.filterMode = Laya.FilterMode.Bilinear;
      buf.blitScreenQuadByMaterial(downRenderTexture, blurTexture, null, blurMaterial, 1);
      buf.blitScreenQuadByMaterial(blurTexture, downRenderTexture, null, blurMaterial, 2);
      buf.blitScreenQuadByMaterial(downRenderTexture, blurTexture, null, blurMaterial, 1);
      buf.blitScreenQuadByMaterial(blurTexture, downRenderTexture, null, blurMaterial, 2);
      buf.setShaderDataTexture(blurMaterial._shaderValues, BlurMaterial.SHADERVALUE_SOURCETEXTURE0, downRenderTexture);
      buf.setShaderDataTexture(blurMaterial._shaderValues, BlurMaterial.ShADERVALUE_SOURCETEXTURE1, subRendertexture);
      buf.blitScreenQuadByMaterial(blurTexture, renderTexture, null, blurMaterial, 3);
      buf.setShaderDataTexture(blurMaterial._shaderValues, BlurMaterial.SHADERVALUE_SOURCETEXTURE0, renderTexture);
      buf.blitScreenQuadByMaterial(null, subRendertexture, null, blurMaterial, 4);
      buf.blitScreenQuadByMaterial(subRendertexture, null);
      return buf;
    }
  };
  __name(CommandBuffer_Outline, "CommandBuffer_Outline");
  __decorateClass([
    property125(Laya.Camera)
  ], CommandBuffer_Outline.prototype, "camera", 2);
  __decorateClass([
    property125(Laya.Scene3D)
  ], CommandBuffer_Outline.prototype, "scene", 2);
  CommandBuffer_Outline = __decorateClass([
    regClass125("c7b9e97b-dab7-4d49-9974-6722b5ba39ee", "../src/3D/Advance/CommandBuffer_Outline.ts")
  ], CommandBuffer_Outline);

  // src/3D/Advance/grassDemo/GrassCellInfo.ts
  var _GrassCellInfo = class _GrassCellInfo {
    constructor(maxGrassNums, cellSize, privotPos) {
      /**草皮原始位置 */
      this.privotPos = new Laya.Vector3();
      this.grassHight = 5;
      this.posArray = new Float32Array(maxGrassNums * 3);
      this.size = cellSize;
      this.privotPos = privotPos;
      this.updateGrassPos();
      this.bound = new Laya.BoundBox(new Laya.Vector3(this.privotPos.x - this.size / 2, this.privotPos.y, this.privotPos.z - this.size / 2), new Laya.Vector3(this.privotPos.x + this.size / 2, this.privotPos.y + this.grassHight, this.privotPos.z + this.size / 2));
    }
    /**
     * 更新最大草量的位置
     */
    updateGrassPos() {
      let array = this.posArray;
      let orix = this.privotPos.x;
      let oriy = this.privotPos.y;
      let oriz = this.privotPos.z;
      let size = this.size / 2;
      for (let i = 0, n = this.posArray.length / 3; i < n; i += 3) {
        var x = (Math.random() * 2 - 1) * size;
        var z = (Math.random() * 2 - 1) * size;
        array[i] = x + orix;
        array[i + 1] = oriy;
        array[i + 2] = z + oriz;
      }
    }
    /**
     * 设置绘画等级
     */
    setDrawLevel(level) {
      this.drawlevelRatio = Math.max(1 - level, 0);
    }
    setGrassCellData(drawArray, offset) {
      let setLength = Math.floor(this.posArray.length / 3 * this.drawlevelRatio) * 3;
      drawArray.set(this.posArray, offset);
      return setLength + offset;
    }
  };
  __name(_GrassCellInfo, "GrassCellInfo");
  var GrassCellInfo = _GrassCellInfo;

  // src/3D/Advance/grassDemo/shader/GrassShaderVS.vs
  var GrassShaderVS_default = `#define SHADER_NAME GRASSVS\r
\r
    // include\r
    #include "Color.glsl";\r
    #include "Camera.glsl";\r
    #include "VertexCommon.glsl";\r
    #include "Scene.glsl";\r
    #include "SceneFogInput.glsl";    \r
\r
    // varying\r
    varying vec4 v_Color;\r
\r
    // main\r
    void main() {\r
        // Vertex vertex;\r
        // getVertexParams(vertex);\r
        \r
        // uniform\r
        vec3 baseColor = vec3(0.1, 0.5, 0.1);\r
        float boundSize = 70.71067811865476;\r
\r
        // const\r
        float minHeight = 2.0;\r
        float maxHeight = 5.0;\r
\r
\r
        vec4 aposition = getVertexPosition();\r
        vec3 perGrassPivotPosWS = a_privotPosition;\r
        float perGrassHeight = mix(minHeight, maxHeight, (sin(perGrassPivotPosWS.x * 23.4643 + perGrassPivotPosWS.z) * 0.45 + 0.55)) * u_grassHeight;\r
\r
\r
        vec3 cameraUpWS = normalize(u_CameraUp);\r
        vec3 cameraForwardWS = normalize(u_CameraDirection);\r
        vec3 cameraRightWS = normalize(cross(cameraForwardWS, cameraUpWS));\r
\r
        //BlillBoard x\r
        vec3 positionOS = aposition.x * cameraRightWS * u_grassWidth * (sin(perGrassPivotPosWS.x * 95.4643 + perGrassPivotPosWS.z) * 0.45 + 0.55);\r
        //BillBoard y\r
        positionOS += aposition.y * cameraUpWS;\r
\r
        // \u6BCF\u6839\u8349 \u9AD8\u5EA6\r
        positionOS.y *= perGrassHeight;\r
\r
\r
        float wind = 0.0;\r
        wind += (sin(u_Time * u_WindAFrequency + perGrassPivotPosWS.x * u_WindATiling.x + perGrassPivotPosWS.z * u_WindATiling.y)*u_WindAWrap.x+u_WindAWrap.y) * u_WindAIntensity; //windA\r
        wind += (sin(u_Time * u_WindBFrequency + perGrassPivotPosWS.x * u_WindBTiling.x + perGrassPivotPosWS.z * u_WindBTiling.y)*u_WindBWrap.x+u_WindBWrap.y) * u_WindBIntensity; //windB\r
        wind += (sin(u_Time * u_WindCFrequency + perGrassPivotPosWS.x * u_WindCTiling.x + perGrassPivotPosWS.z * u_WindCTiling.y)*u_WindCWrap.x+u_WindCWrap.y) * u_WindCIntensity; //windC\r
        wind *= a_Position.y; //wind only affect top region, don't affect root region\r
        vec3 windOffset = cameraRightWS * wind; //swing using billboard left right direction\r
        //\u98CE\u7684\u5F71\u54CD\r
        positionOS += windOffset;\r
\r
\r
        vec3 viewWS = u_CameraPos - perGrassPivotPosWS;\r
        float viewWSLength = length(viewWS);\r
        positionOS += cameraRightWS * aposition.x * max(0.0, viewWSLength * 0.02225);\r
\r
        vec3 positionWS = positionOS + perGrassPivotPosWS;\r
        vec4 position = u_ViewProjection * vec4(positionWS, 1.0);\r
\r
\r
        //reset Texture \r
        vec2 uv = (positionWS.xz-u_BoundSize.xy)/u_BoundSize.zw;\r
        baseColor = texture2D(u_albedoTexture, uv).rgb;\r
        \r
        vec3 albedo = mix(u_GroundColor.xyz, baseColor, a_Position.y);\r
        v_Color = vec4(albedo, 1.0);\r
\r
        gl_Position = position;\r
        gl_Position=remapPositionZ(gl_Position);\r
    #ifdef FOG\r
        FogHandle(gl_Position.z);\r
    #endif\r
    }`;

  // src/3D/Advance/grassDemo/shader/GrassShaderFS.fs
  var GrassShaderFS_default = '#if defined(GL_FRAGMENT_PRECISION_HIGH)//\xA0\u539F\u6765\u7684\u5199\u6CD5\u4F1A\u88AB\u6211\u4EEC\u81EA\u5DF1\u7684\u89E3\u6790\u6D41\u7A0B\u5904\u7406\uFF0C\u800C\u6211\u4EEC\u7684\u89E3\u6790\u662F\u4E0D\u8BA4\u5185\u7F6E\u5B8F\u7684\uFF0C\u5BFC\u81F4\u88AB\u5220\u6389\uFF0C\u6240\u4EE5\u6539\u6210\xA0if\xA0defined\xA0\u4E86\r\n	precision highp float;\r\n#else\r\n	precision mediump float;\r\n#endif\r\n#include "Color.glsl";\r\n#include "Scene.glsl"\r\n#include "SceneFog.glsl"\r\n\r\nvarying vec4 v_Color;\r\n\r\nvoid main() {\r\n\r\n    vec4 color = v_Color;\r\n	#ifdef FOG\r\n		// float lerpFact=clamp((1.0/gl_FragCoord.w-u_FogStart)/u_FogRange,0.0,1.0);\r\n		// gl_FragColor.rgb=mix(gl_FragColor.rgb,u_FogColor.rgb,lerpFact);\r\n		color.rgb = scenUnlitFog(color.rgb);\r\n	#endif\r\n	gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/Advance/grassDemo/GrassMaterial.ts
  var _GrassMaterial = class _GrassMaterial extends Laya.Material {
    static __init__() {
      _GrassMaterial.WINDAINTENSITY = Laya.Shader3D.propertyNameToID("u_WindAIntensity");
      _GrassMaterial.WINDAFREQUECY = Laya.Shader3D.propertyNameToID("u_WindAFrequency");
      _GrassMaterial.WINDATILING = Laya.Shader3D.propertyNameToID("u_WindATiling");
      _GrassMaterial.WINDAWRAP = Laya.Shader3D.propertyNameToID("u_WindAWrap");
      _GrassMaterial.WINDBINTENSITY = Laya.Shader3D.propertyNameToID("u_WindBIntensity");
      _GrassMaterial.WINDBFREQUECY = Laya.Shader3D.propertyNameToID("u_WindBFrequency");
      _GrassMaterial.WINDBTILING = Laya.Shader3D.propertyNameToID("u_WindBTiling");
      _GrassMaterial.WINDBWRAP = Laya.Shader3D.propertyNameToID("u_WindBWrap");
      _GrassMaterial.WINDCINTENSITY = Laya.Shader3D.propertyNameToID("u_WindCIntensity");
      _GrassMaterial.WINDCFREQUECY = Laya.Shader3D.propertyNameToID("u_WindCFrequency");
      _GrassMaterial.WINDCTILING = Laya.Shader3D.propertyNameToID("u_WindCTiling");
      _GrassMaterial.WINDCWRAP = Laya.Shader3D.propertyNameToID("u_WindCWrap");
      _GrassMaterial.GRASSHEIGHT = Laya.Shader3D.propertyNameToID("u_grassHeight");
      _GrassMaterial.GRASSWIDTH = Laya.Shader3D.propertyNameToID("u_grassWidth");
      _GrassMaterial.GRASSBOUND = Laya.Shader3D.propertyNameToID("u_BoundSize");
      _GrassMaterial.GROUNDCOLOR = Laya.Shader3D.propertyNameToID("u_GroundColor");
      _GrassMaterial.ALBEDOTEXTURE = Laya.Shader3D.propertyNameToID("u_albedoTexture");
      var attributeMap = {
        "a_Position": [Laya.VertexMesh.MESH_POSITION0, Laya.ShaderDataType.Vector4],
        "a_Normal": [Laya.VertexMesh.MESH_NORMAL0, Laya.ShaderDataType.Vector3],
        "a_privotPosition": [Laya.VertexMesh.MESH_CUSTOME0, Laya.ShaderDataType.Vector3]
      };
      var uniformMap = {
        "u_WindAIntensity": Laya.ShaderDataType.Float,
        "u_WindAFrequency": Laya.ShaderDataType.Float,
        "u_WindATiling": Laya.ShaderDataType.Vector2,
        "u_WindAWrap": Laya.ShaderDataType.Vector2,
        "u_WindBIntensity": Laya.ShaderDataType.Float,
        "u_WindBFrequency": Laya.ShaderDataType.Float,
        "u_WindBTiling": Laya.ShaderDataType.Vector2,
        "u_WindBWrap": Laya.ShaderDataType.Vector2,
        "u_WindCIntensity": Laya.ShaderDataType.Float,
        "u_WindCFrequency": Laya.ShaderDataType.Float,
        "u_WindCTiling": Laya.ShaderDataType.Vector2,
        "u_WindCWrap": Laya.ShaderDataType.Vector2,
        //grass
        "u_grassHeight": Laya.ShaderDataType.Float,
        "u_grassWidth": Laya.ShaderDataType.Float,
        "u_BoundSize": Laya.ShaderDataType.Vector4,
        "u_GroundColor": Laya.ShaderDataType.Vector3,
        "u_albedoTexture": Laya.ShaderDataType.Texture2D
      };
      var shader = Laya.Shader3D.add("GrassShader", false, false);
      var subShader = new Laya.SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      var pass = subShader.addShaderPass(GrassShaderVS_default, GrassShaderFS_default, "Forward");
      pass.renderState.cull = Laya.RenderState.CULL_BACK;
    }
    constructor() {
      if (!_GrassMaterial.hasInited) {
        _GrassMaterial.__init__();
        _GrassMaterial.hasInited = true;
      }
      super();
      this.setShaderName("GrassShader");
      this.alphaTest = false;
      this.renderQueue = Laya.Material.RENDERQUEUE_OPAQUE;
      this.depthWrite = true;
      this.cull = Laya.RenderState.CULL_BACK;
      this.blend = Laya.RenderState.BLEND_DISABLE;
      this.depthTest = Laya.RenderState.DEPTHTEST_LESS;
      this.setWindA(1.77, 4, new Laya.Vector2(0.1, 0.1), new Laya.Vector2(0.5, 0.5));
      this.setWindB(0.25, 7.7, new Laya.Vector2(0.37, 3), new Laya.Vector2(0.5, 0.5));
      this.setWindC(0.125, 11.7, new Laya.Vector2(0.77, 3), new Laya.Vector2(0.5, 0.5));
      this.grassHight = 1;
      this.grassWidth = 1;
      this.grassGroundColor = new Laya.Vector3(0.25, 0.49, 0.23);
      this.grassBoundSize = new Laya.Vector4(-105, -105, 210, 210);
      Laya.loader.load("resources/res/InstancedIndirectGrassVertexColor.jpg").then((res) => {
        this.albedoTexture = res;
      });
    }
    setWindA(windIntensity, windFrequency, windTiling, windWrap) {
      this._shaderValues.setNumber(_GrassMaterial.WINDAINTENSITY, windIntensity);
      this._shaderValues.setNumber(_GrassMaterial.WINDAFREQUECY, windFrequency);
      this._shaderValues.setVector2(_GrassMaterial.WINDATILING, windTiling);
      this._shaderValues.setVector2(_GrassMaterial.WINDAWRAP, windWrap);
    }
    setWindB(windIntensity, windFrequency, windTiling, windWrap) {
      this._shaderValues.setNumber(_GrassMaterial.WINDBINTENSITY, windIntensity);
      this._shaderValues.setNumber(_GrassMaterial.WINDBFREQUECY, windFrequency);
      this._shaderValues.setVector2(_GrassMaterial.WINDBTILING, windTiling);
      this._shaderValues.setVector2(_GrassMaterial.WINDBWRAP, windWrap);
    }
    setWindC(windIntensity, windFrequency, windTiling, windWrap) {
      this._shaderValues.setNumber(_GrassMaterial.WINDCINTENSITY, windIntensity);
      this._shaderValues.setNumber(_GrassMaterial.WINDCFREQUECY, windFrequency);
      this._shaderValues.setVector2(_GrassMaterial.WINDCTILING, windTiling);
      this._shaderValues.setVector2(_GrassMaterial.WINDCWRAP, windWrap);
    }
    set grassHight(value) {
      this._shaderValues.setNumber(_GrassMaterial.GRASSHEIGHT, value);
    }
    set grassWidth(value) {
      this._shaderValues.setNumber(_GrassMaterial.GRASSWIDTH, value);
    }
    set grassGroundColor(value) {
      this._shaderValues.setVector3(_GrassMaterial.GROUNDCOLOR, value);
    }
    set grassBoundSize(value) {
      this._shaderValues.setVector(_GrassMaterial.GRASSBOUND, value);
    }
    set albedoTexture(value) {
      this._shaderValues.setTexture(_GrassMaterial.ALBEDOTEXTURE, value);
    }
  };
  __name(_GrassMaterial, "GrassMaterial");
  _GrassMaterial.hasInited = false;
  var GrassMaterial = _GrassMaterial;

  // src/3D/Advance/grassDemo/GrassRender.ts
  var _GlassRender = class _GlassRender {
    constructor(manager, camera) {
      this.grassManager = manager;
      this.createCommandBuffer();
      this.camera = camera;
    }
    /**
     * @internal
     */
    creatGrassMesh() {
      var vertexArray = new Float32Array(3 * 3);
      vertexArray[0] = -0.25;
      vertexArray[3] = 0.25;
      vertexArray[7] = 1;
      var indexArray = new Uint16Array([2, 1, 0]);
      var vertexDeclaration = Laya.VertexMesh.getVertexDeclaration("POSITION");
      var mesh = Laya.PrimitiveMesh._createMesh(vertexDeclaration, vertexArray, indexArray);
      return mesh;
    }
    /**
     * @internal
     */
    createMaterial() {
      var mat = new GrassMaterial();
      this.grassMaterial = mat;
      return mat;
    }
    /**
     * 创建CommandBuffer命令缓存流
     * @param camera 
     */
    createCommandBuffer() {
      Laya.DrawMeshInstancedCMD.maxInstanceCount = 1e6;
      this.buf = new Laya.CommandBuffer();
      this.materialBlock = new Laya.MaterialInstancePropertyBlock();
      this.materialBlock.setVector3Array("a_privotPosition", this.grassManager.dataArrayBuffer, Laya.InstanceLocation.CUSTOME0);
      this.instanceCMD = this.buf.drawMeshInstance(this.creatGrassMesh(), 0, null, this.createMaterial(), 0, this.materialBlock, this.grassManager.drawArrayLength);
      return;
    }
    removeCommandBuffer() {
      this.camera.removeCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, this.buf);
    }
    addCommandBuffer() {
      this.camera.addCommandBuffer(Laya.CameraEventFlags.BeforeTransparent, this.buf);
    }
    changeDrawNums() {
      this.materialBlock.setVector3Array("a_privotPosition", this.grassManager.dataArrayBuffer, Laya.InstanceLocation.CUSTOME0);
      this.instanceCMD.setDrawNums(this.grassManager.drawArrayLength);
    }
  };
  __name(_GlassRender, "GlassRender");
  var GlassRender = _GlassRender;

  // src/3D/Advance/grassDemo/GrassRenderManager.ts
  var _GrassRenderManager = class _GrassRenderManager {
    /**
     * 草坪渲染管理
     */
    constructor(camera) {
      //----------config-----------
      //最大Instance数  也是密度
      this.instanceCount = 1e6;
      //设置草皮大小
      this.grassCellsize = 10;
      //设置草皮最大草量
      this.cellMaxGrassNum = 1e3;
      //设置草量的级数
      this.cellMipmapByDistance = 10;
      //裁剪最近距离
      this.DrawDistance = 150;
      //是否开启草地分级优化
      this.enableLevelDraw = true;
      //每降低一个等级草量减少百分比
      this.subGrassByLevel = 0.1;
      /**草皮Map*/
      this.grassMap = [];
      //更新绘画个数
      this.drawArrayLength = 0;
      this.drawGrassCellLeverlArray = [];
      this.drawGrassCellLeverlArray.length = this.cellMipmapByDistance;
      for (let index = 0; index < this.cellMipmapByDistance; index++) {
        this.drawGrassCellLeverlArray[index] = [];
      }
      this.drawGrassLevelNums = [];
      this.drawGrassLevelNums.length = this.cellMipmapByDistance;
      this.dataArrayBuffer = new Float32Array(this.instanceCount * 3);
      this.glassRender = new GlassRender(this, camera);
    }
    set enable(value) {
      if (value)
        this.glassRender.addCommandBuffer();
      else
        this.glassRender.removeCommandBuffer();
    }
    /**
     * 草皮裁剪
     */
    frustumCulling(camera) {
      for (let j = 0; j < this.drawGrassLevelNums.length; j++) {
        this.drawGrassLevelNums[j] = 0;
      }
      this.drawGrassCellNums = 0;
      let distance = this.DrawDistance;
      let levelDistance = this.DrawDistance / this.cellMipmapByDistance;
      let boundFrustum = camera.boundFrustum;
      let cameraPos = camera.transform.position;
      for (let i = 0, n = this.grassMap.length; i < n; i++) {
        let grasscell = this.grassMap[i];
        let grassDistance = Laya.Vector3.distance(grasscell.privotPos, cameraPos);
        if (grassDistance < distance) {
          if (boundFrustum.intersects(grasscell.bound)) {
            if (this.enableLevelDraw) {
              let leval = Math.floor(grassDistance / levelDistance);
              grasscell.setDrawLevel(leval * this.subGrassByLevel);
              this.drawGrassCellLeverlArray[leval] || (this.drawGrassCellLeverlArray[leval] = {});
              this.drawGrassCellLeverlArray[leval][this.drawGrassLevelNums[leval]] = i;
              this.drawGrassLevelNums[leval] += 1;
            } else {
              grasscell.setDrawLevel(0);
              this.drawGrassCellLeverlArray[0][this.drawGrassLevelNums[0]] = i;
              this.drawGrassLevelNums[0] += 1;
            }
            this.drawGrassCellNums++;
          }
        }
      }
    }
    /**
     * 增加草坪块
     */
    addGrassCell(grassPrivot) {
      let grassCell = new GrassCellInfo(this.cellMaxGrassNum, this.grassCellsize, grassPrivot);
      this.grassMap.push(grassCell);
    }
    /**
     * 删除草坪块
     */
    removeGrassCell(grassCell) {
      let index = this.grassMap.indexOf(grassCell);
      let lastIndex = this.grassMap.length - 1;
      this.grassMap[index] = this.grassMap[lastIndex];
      this.grassMap.length = lastIndex;
    }
    update(caemra) {
      this.frustumCulling(caemra);
      let offset = 0;
      for (let i = 0, n = this.drawGrassLevelNums.length; i < n; i++) {
        let drawnums = this.drawGrassLevelNums[i];
        var array = this.drawGrassCellLeverlArray[i];
        for (var j = 0; j < drawnums; j++) {
          offset = this.grassMap[array[j]].setGrassCellData(this.dataArrayBuffer, offset);
        }
      }
      this.drawArrayLength = offset / 3;
      this.glassRender.changeDrawNums();
    }
  };
  __name(_GrassRenderManager, "GrassRenderManager");
  var GrassRenderManager = _GrassRenderManager;

  // src/3D/Advance/GrassDemo.ts
  var Vector39 = Laya.Vector3;
  var { regClass: regClass126, property: property126 } = Laya;
  var GrassDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.initScene();
      this.grassManager = new GrassRenderManager(this.camera);
      var grasssize = this.grassManager.grassCellsize;
      for (let x = -100; x < 100; x += grasssize) {
        for (let z = -100; z < 100; z += grasssize) {
          this.grassManager.addGrassCell(new Vector39(x, 0, z));
        }
      }
      this.grassManager.enable = true;
      Laya.timer.loop(1, this, this.update, [this.camera]);
    }
    update(camera) {
      this.grassManager.update(camera);
    }
    initScene() {
      this.camera.clearColor = new Laya.Color(0.5, 1, 0.5);
      this.camera.transform.position = new Vector39(-45.56605299366802, 7.79715240971953, 9.329663960933718);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector39(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
    }
  };
  __name(GrassDemo, "GrassDemo");
  __decorateClass([
    property126(Laya.Camera)
  ], GrassDemo.prototype, "camera", 2);
  __decorateClass([
    property126(Laya.Scene3D)
  ], GrassDemo.prototype, "scene", 2);
  __decorateClass([
    property126(Laya.Sprite3D)
  ], GrassDemo.prototype, "directionLight", 2);
  GrassDemo = __decorateClass([
    regClass126("d5231def-e006-48c3-9255-c53a9d98e2db", "../src/3D/Advance/GrassDemo.ts")
  ], GrassDemo);

  // src/3D/Advance/Laya3DCombineHtml.ts
  var Vector310 = Laya.Vector3;
  var SpriteUtils4 = Laya.SpriteUtils;
  var { regClass: regClass127, property: property127 } = Laya;
  var Laya3DCombineHtml = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.div = document.createElement("div");
      this.div.innerHTML = "<h1 style='color: red;'>\u6B64\u5185\u5BB9\u6765\u6E90\u4E8EHTML\u7F51\u9875, \u53EF\u76F4\u63A5\u5728html\u4EE3\u7801\u4E2D\u4E66\u5199 - h1\u6807\u7B7E</h1>";
      this.div.style = "position:absolute;z-order:99";
      document.body.appendChild(this.div);
      if (Index.curPage)
        SpriteUtils4.fitDOMElementInArea(this.div, this.box2D, Index.pagePos.x, Index.pagePos.y, this.pageWidth, this.pageHeight);
      this.camera.transform.position = new Vector310(0, 0.5, 1);
      this.camera.transform.rotationEuler = new Vector310(-15, 0, 0);
      this.directionLight.color = new Laya.Color(1, 1, 1, 1);
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        this.scene.addChild(res.create());
      });
    }
    onDestroy() {
      document.body.removeChild(this.div);
    }
  };
  __name(Laya3DCombineHtml, "Laya3DCombineHtml");
  __decorateClass([
    property127(Laya.Camera)
  ], Laya3DCombineHtml.prototype, "camera", 2);
  __decorateClass([
    property127(Laya.Scene3D)
  ], Laya3DCombineHtml.prototype, "scene", 2);
  __decorateClass([
    property127(Laya.DirectionLightCom)
  ], Laya3DCombineHtml.prototype, "directionLight", 2);
  Laya3DCombineHtml = __decorateClass([
    regClass127("f0a5c24b-f6a4-4272-a7a2-ad8ea4dd8cdf", "../src/3D/Advance/Laya3DCombineHtml.ts")
  ], Laya3DCombineHtml);

  // src/3D/Advance/ReflectionProbe.ts
  var { regClass: regClass128, property: property128 } = Laya;
  var ReflectionProbe = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
    }
  };
  __name(ReflectionProbe, "ReflectionProbe");
  __decorateClass([
    property128(Laya.Camera)
  ], ReflectionProbe.prototype, "camera", 2);
  __decorateClass([
    property128(Laya.Scene3D)
  ], ReflectionProbe.prototype, "scene", 2);
  ReflectionProbe = __decorateClass([
    regClass128("9e38f354-1eda-4e06-8ff9-e6cc6f2e7b02", "../src/3D/Advance/ReflectionProbe.ts")
  ], ReflectionProbe);

  // src/3D/Advance/Scene2DPlayer3D.ts
  var Camera = Laya.Camera;
  var Sprite3D4 = Laya.Sprite3D;
  var Vector311 = Laya.Vector3;
  var InputManager2 = Laya.InputManager;
  var Image7 = Laya.Image;
  var Handler19 = Laya.Handler;
  var Color = Laya.Color;
  var Sprite46 = Laya.Sprite;
  var RenderTexture = Laya.RenderTexture;
  var RenderTargetFormat2 = Laya.RenderTargetFormat;
  var Texture3 = Laya.Texture;
  var Keyboard2 = Laya.Keyboard;
  var Label7 = Laya.Label;
  var { regClass: regClass129, property: property129 } = Laya;
  var Scene2DPlayer3D = class extends BaseScript {
    constructor() {
      super();
      this.orthographicPos = new Vector311(0, 0, 0);
      /** 当前所处的旋转方位 */
      this._rotation = new Vector311(0, 0, 0);
      this.rotationW = new Vector311(0, 0, 0);
      this.rotationS = new Vector311(0, 180, 0);
      this.rotationA = new Vector311(0, 90, 0);
      this.rotationD = new Vector311(0, -90, 0);
      this.sp3Role = new Sprite3D4();
      this.spRole = new Sprite46();
      /** 拖尾的节点精灵 */
      this.spTrail = new Sprite46();
      /** 拖尾的当前转向 */
      this.turnLeft = true;
    }
    onAwake() {
      super.base(this.camera);
      this.create2D();
      Laya.timer.frameOnce(5, this, () => {
        this.sp3ToTexture("resources/res/threeDimen/skinModel/dude/dude.lh", this.spRole, 2, true);
        this.spRole.pos(285, 50);
        this.sp3ToTexture("resources/res/threeDimen/trail/Cube.lh", this.spTrail, 3);
        this.spTrail.pos(100, 100);
      });
      Laya.timer.frameLoop(1, this, this.onKeyDown);
    }
    /** 创建2D相关 */
    create2D() {
      let sceneBackGround = new Image7("resources/res/threeDimen/secne.jpg");
      sceneBackGround.scale(0.5, 0.5);
      this.owner.addChild(sceneBackGround);
      sceneBackGround.addChild(this.spRole);
      sceneBackGround.addChild(this.spTrail);
      let _label = new Label7();
      this.owner.addChild(_label);
      _label.text = "\u70B9\u51FB\u5C4F\u5E55\u540E\uFF0C\u4F7F\u7528\u952E\u76D8 WSAD \u53EF\u4EE5\u63A7\u5236\u524D\u540E\u5DE6\u53F3\u79FB\u52A8";
      _label.font = "SimHei";
      _label.fontSize = 25;
      _label.color = "#FFFFFF";
      _label.top = 10;
      _label.align = "center";
      _label.x = 300;
    }
    /** 加载3D精灵画到2D Texture上 
     * @param lh 模型的字符串路径
     * @param sp 2D精灵节点，用于画3D的texture
     * @param layer 手动指定层ID
     * @param isRole 是否是可以被控制的主角
    */
    sp3ToTexture(lh, sp, layer, isRole = false) {
      Sprite3D4.load(lh, Handler19.create(this, (sp3) => {
        this.scene.addChild(sp3);
        var _camera = new Camera(0, 0.1, 1e3);
        this.scene.addChild(_camera);
        _camera.transform.rotationEuler = new Vector311(-45, 0, 0);
        _camera.orthographic = true;
        _camera.orthographicVerticalSize = 10;
        _camera.clearColor = new Color(0, 0, 0, 0);
        _camera.convertScreenCoordToOrthographicCoord(new Vector311(800, 500, 0), this.orthographicPos);
        sp3.transform.position = this.orthographicPos;
        console.log(sp3.transform.position);
        sp3.transform.localScale = new Vector311(1, 1, 1);
        _camera.removeAllLayers();
        _camera.addLayer(layer);
        sp3.getChildAt(0).getChildAt(0).layer = layer;
        _camera.renderTarget = new RenderTexture(512, 512, RenderTargetFormat2.R16G16B16A16, RenderTargetFormat2.DEPTHSTENCIL_24_8, false, 4);
        sp.texture = new Texture3(_camera.renderTarget);
        isRole && (this.sp3Role = sp3);
      }));
    }
    /** 在每帧的循环里帧听键盘事件并作出对应的操作逻辑 */
    onKeyDown() {
      if (this.spTrail.x < 20 && this.turnLeft)
        this.turnLeft = false;
      else if (this.spTrail.x > this.pageWidth - 300 && !this.turnLeft)
        this.turnLeft = true;
      if (this.turnLeft)
        this.spTrail.x -= 1;
      else
        this.spTrail.x += 1;
      if (InputManager2.hasKeyDown(Keyboard2.W)) {
        this.spRole.y -= 1;
        this.rotateRole(this.rotationW);
      } else if (InputManager2.hasKeyDown(Keyboard2.S)) {
        this.spRole.y += 1;
        this.rotateRole(this.rotationS);
      } else if (InputManager2.hasKeyDown(Keyboard2.A)) {
        this.spRole.x -= 1;
        this.rotateRole(this.rotationA);
      } else if (InputManager2.hasKeyDown(Keyboard2.D)) {
        this.spRole.x += 1;
        this.rotateRole(this.rotationD);
      }
    }
    /** 改变角色的朝向 
     * @param r Vector3旋转值
     */
    rotateRole(r) {
      if (r === this._rotation)
        return;
      this.sp3Role.transform.rotationEuler = r;
      this._rotation = r;
    }
  };
  __name(Scene2DPlayer3D, "Scene2DPlayer3D");
  __decorateClass([
    property129(Laya.Camera)
  ], Scene2DPlayer3D.prototype, "camera", 2);
  __decorateClass([
    property129(Laya.Scene3D)
  ], Scene2DPlayer3D.prototype, "scene", 2);
  Scene2DPlayer3D = __decorateClass([
    regClass129("b1a8ad5f-4f94-4a9e-a459-06d520ac09f3", "../src/3D/Advance/Scene2DPlayer3D.ts")
  ], Scene2DPlayer3D);

  // src/3D/Advance/Secne3DPlayer2D.ts
  var { regClass: regClass130, property: property130 } = Laya;
  var Secne3DPlayer2D = class extends BaseScript {
    constructor() {
      super();
      this._position = new Laya.Vector3();
      this._outPos = new Laya.Vector4();
      this.scaleDelta = 0;
      this.clientScaleX = 0;
      this.clientScaleY = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.clientScaleY = Laya.stage.clientScaleX;
      this.clientScaleX = Laya.stage.clientScaleY;
      this.camera.transform.position = new Laya.Vector3(0, 0.75, 1.2);
      this.camera.transform.rotationEuler = new Laya.Vector3(-30, 0, 0);
      Laya.loader.load("resources/res/threeDimen/staticModel/grid/plane.lh").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var grid = this.scene.addChild(res.create());
      this.layaMonkey2D = this.owner.addChild(new Laya.Image("resources/res/threeDimen/monkey.png"));
      this.layaMonkey2D.anchorX = 0.5;
      this.layaMonkey2D.scale(0.5, 0.5);
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      this._position.x = Math.sin(this.scaleDelta += 0.01);
      this.camera.viewport.project(this._position, this.camera.projectionViewMatrix, this._outPos);
      let x = 0;
      let y = 0;
      if (Index.curPage && Laya.Browser.onPC) {
        x = this._outPos.x * Index.pageWidth / Laya.Browser.clientWidth;
        y = this._outPos.y * Index.pageHeight / Laya.Browser.clientHeight;
      } else {
        x = this._outPos.x / this.clientScaleX;
        y = this._outPos.y / this.clientScaleY;
      }
      this.layaMonkey2D.pos(x, y);
    }
  };
  __name(Secne3DPlayer2D, "Secne3DPlayer2D");
  __decorateClass([
    property130(Laya.Camera)
  ], Secne3DPlayer2D.prototype, "camera", 2);
  __decorateClass([
    property130(Laya.Scene3D)
  ], Secne3DPlayer2D.prototype, "scene", 2);
  Secne3DPlayer2D = __decorateClass([
    regClass130("4980a528-7cac-4b04-8b52-e276f98d4dc2", "../src/3D/Advance/Secne3DPlayer2D.ts")
  ], Secne3DPlayer2D);

  // src/3D/Advance/SeparableSSSRender/shader/SeparableSSS_GasBlur.fs
  var SeparableSSS_GasBlur_default = `#define SHADER_NAME SeparableSSSGasFS\r
const int StepRange = 3;\r
const int SamplerNum = 17;\r
uniform vec4 u_kernel[SamplerNum];\r
#include "Color.glsl";\r
\r
//uv\r
varying vec2 v_Texcoord0;\r
\r
vec4 sampleMainTex(sampler2D tex, vec2 uv)\r
{\r
    vec4 mainSampler = texture2D(tex, uv);\r
#ifdef Gamma_u_texture\r
    mainSampler = gammaToLinear(mainSampler);\r
#endif // Gamma_u_MainTex\r
    return mainSampler;\r
}\r
\r
vec4 Sample17Nums(vec2 finalStep,vec4 colorBlurred,float depthM,vec4 colorM){\r
      for (int i = 1; i < SamplerNum; i++) {\r
        // Fetch color and depth for current sample:\r
        vec2 offset = v_Texcoord0 + u_kernel[i].a * finalStep;\r
        vec4 color = sampleMainTex(u_MainTex, offset);\r
\r
            // // If the difference in depth is huge, we lerp color back to "colorM"://\u6DF1\u5EA6\u5DEE\u5F02\u8FC7\u5927 \u6211\u4EEC\u628A\u989C\u8272\u8FD8\u539F\u4E3A\u539F\u8272\r
             float depth = texture2D(u_depthTex, offset).r;\r
             float s = clamp(300.0 * abs(depthM - depth),0.0,1.0);\r
            color.rgb = mix(color.rgb, colorM.rgb, s);\r
\r
        // Accumulate:\r
        colorBlurred.rgb += u_kernel[i].rgb * color.rgb;\r
       \r
    }\r
     return colorBlurred;\r
}\r
\r
\r
void main()\r
{\r
    vec4 colorM = texture2D(u_MainTex,v_Texcoord0);\r
\r
    //   if (initStencil) // (Checked in compile time, it's optimized away)\u5982\u679C\u6A21\u5177\u7F13\u51B2\u533A\u4E0D\u53EF\u7528\uFF0C\u8BF7\u521D\u59CB\u5316\u8BE5\u7F13\u51B2\u533A\uFF1A\r
    //     if (SSSS_STREGTH_SOURCE == 0.0) discard;\r
\r
    float depthM = texture2D(u_depthTex,v_Texcoord0).r;\r
    //\u8BA1\u7B97\u968F\u7740depth\u7684\u53D8\u5316ssswidth\u7684\u6BD4\u4F8B\r
    float scale = u_distanceToProjectionWindow/depthM;\r
    //\u8BA1\u7B97\u50CF\u7D20\u91C7\u6837\u6B65\u957F\r
    vec2 finalStep = u_sssWidth *scale* u_blurDir;\r
    finalStep *=colorM.a* 0.2;\r
\r
    vec4 colorBlurred = colorM;\r
\r
    colorBlurred.rgb*=u_kernel[0].rgb;\r
    colorBlurred = Sample17Nums(finalStep,colorBlurred,depthM,colorM);\r
    //\u7D2F\u8BA1\u5176\u4ED6\u91C7\u6837\r
    //   for (int i = 1; i < SSSS_N_SAMPLES; i++) {\r
    //     // Fetch color and depth for current sample:\r
    //     float2 offset = texcoord + kernel[i].a * finalStep;\r
    //     float4 color = SSSSSample(colorTex, offset);\r
\r
    //     #if SSSS_FOLLOW_SURFACE == 1\r
    //     // If the difference in depth is huge, we lerp color back to "colorM":\r
    //     float depth = SSSSSample(depthTex, offset).r;\r
    //     float s = SSSSSaturate(300.0f * distanceToProjectionWindow *\r
    //                            sssWidth * abs(depthM - depth));\r
    //     color.rgb = SSSSLerp(color.rgb, colorM.rgb, s);\r
    //     #endif\r
\r
    //     // Accumulate:\r
    //     colorBlurred.rgb += kernel[i].rgb * color.rgb;\r
    // }\r
    gl_FragColor = colorBlurred;\r
	gl_FragColor = outputTransform(gl_FragColor);\r
}\r
\r
`;

  // src/3D/Advance/SeparableSSSRender/shader/SeparableSSS_GasBlur.vs
  var SeparableSSS_GasBlur_default2 = '#define SHADER_NAME SeparableSSSGasVS\r\n#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {	\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}';

  // src/3D/Advance/SeparableSSSRender/Material/SeparableSSS_BlitMaterial.ts
  var Material = Laya.Material;
  var ShaderDataType = Laya.ShaderDataType;
  var Vector312 = Laya.Vector3;
  var Shader3D = Laya.Shader3D;
  var RenderState = Laya.RenderState;
  var SubShader = Laya.SubShader;
  var VertexMesh = Laya.VertexMesh;
  var Vector44 = Laya.Vector4;
  var MathUtils3D = Laya.MathUtils3D;
  var _SeparableSSS_BlitMaterial = class _SeparableSSS_BlitMaterial extends Material {
    constructor() {
      super();
      this.setShaderName("SeparableSSS");
      this._fallOff = new Vector312(1, 0.37, 0.3);
      this._strength = new Vector312(0.48, 0.41, 0.28);
      this._nSampler = 17;
      this.sssWidth = 12e-4;
      this.kenel = this.calculateKernel(this._nSampler, this._strength, this._fallOff);
    }
    static init() {
      _SeparableSSS_BlitMaterial.SHADERVALUE_COLORTEX = Shader3D.propertyNameToID("u_MainTex");
      _SeparableSSS_BlitMaterial.SHADERVALUE_DEPTHTEX = Shader3D.propertyNameToID("u_depthTex");
      _SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR = Shader3D.propertyNameToID("u_blurDir");
      _SeparableSSS_BlitMaterial.SHADERVALUE_SSSWIDTH = Shader3D.propertyNameToID("u_sssWidth");
      _SeparableSSS_BlitMaterial.SHADERVALUE_DISTANCETOPROJECTIONWINDOW = Shader3D.propertyNameToID("u_distanceToProjectionWindow");
      _SeparableSSS_BlitMaterial.SHADERVALUE_KENEL = Shader3D.propertyNameToID("u_kernel");
      var attributeMap = {
        "a_PositionTexcoord": [VertexMesh.MESH_POSITION0, ShaderDataType.Vector4]
      };
      var uniformMap = {
        "u_MainTex": ShaderDataType.Texture2D,
        "u_depthTex": ShaderDataType.Texture2D,
        "u_blurDir": ShaderDataType.Vector2,
        "u_sssWidth": ShaderDataType.Float,
        "u_distanceToProjectionWindow": ShaderDataType.Float
      };
      var shader = Shader3D.add("SeparableSSS", true, true);
      var subShader = new SubShader(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      var shaderpass = subShader.addShaderPass(SeparableSSS_GasBlur_default2, SeparableSSS_GasBlur_default);
      var renderState = shaderpass.renderState;
      renderState = shaderpass.renderState;
      renderState.depthTest = RenderState.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState.CULL_NONE;
      renderState.blend = RenderState.BLEND_DISABLE;
    }
    /**
     * 设置diffuse光照图片
     */
    set colorTex(value) {
      this.shaderData.setTexture(_SeparableSSS_BlitMaterial.SHADERVALUE_COLORTEX, value);
    }
    //模糊采样方向  一般是horizontal一次 vertical一次
    set blurDir(value) {
      this.shaderData.setVector2(_SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR, value);
    }
    //深度贴图
    set depthTex(value) {
      this.shaderData.setTexture(_SeparableSSS_BlitMaterial.SHADERVALUE_DEPTHTEX, value);
    }
    //采样宽度,限制再0-0.025
    set sssWidth(value) {
      value = Math.max(value, 0);
      value = Math.min(value, 0.025);
      this.shaderData.setNumber(_SeparableSSS_BlitMaterial.SHADERVALUE_SSSWIDTH, value);
    }
    //设置核算法变量
    set kenel(value) {
      let shaderval = new Float32Array(value.length * 4);
      for (let i = 0, n = value.length; i < n; i++) {
        let ind = i * 4;
        shaderval[ind] = value[i].x;
        shaderval[ind + 1] = value[i].y;
        shaderval[ind + 2] = value[i].z;
        shaderval[ind + 3] = value[i].w;
      }
      this.shaderData.setBuffer(_SeparableSSS_BlitMaterial.SHADERVALUE_KENEL, shaderval);
    }
    //衰减
    set falloff(value) {
      Vector312.max(value, Vector312.ZERO, value);
      Vector312.min(value, Vector312.ONE, value);
      this._fallOff = value;
      this.kenel = this.calculateKernel(this._nSampler, this._fallOff, this._strength);
    }
    //强度
    set strength(value) {
      Vector312.max(value, Vector312.ZERO, value);
      Vector312.min(value, Vector312.ONE, value);
      this._strength = value;
      this.kenel = this.calculateKernel(this._nSampler, this._fallOff, this._strength);
    }
    //采样数
    set nSamples(value) {
      this._nSampler = value;
      this.kenel = this.calculateKernel(this._nSampler, this._fallOff, this._strength);
    }
    //camera的view角度
    set cameraFiledOfView(value) {
      let distanceToProject = 1 / Math.tan(0.5 * value * MathUtils3D.Deg2Rad);
      this._shaderValues.setNumber(_SeparableSSS_BlitMaterial.SHADERVALUE_DISTANCETOPROJECTIONWINDOW, distanceToProject);
    }
    /**
     * @internal  计算高度模拟近似的核算法函数
     * @param nSamples 
     * @param strength 
     * @param falloff 
     */
    calculateKernel(nSamples, strength, falloff) {
      let range = nSamples > 20 ? 3 : 2;
      let exponent = 2;
      let Kernel = new Array(nSamples);
      let step = 2 * range / (nSamples - 1);
      for (let i2 = 0; i2 < nSamples; i2++) {
        let o = -range + i2 * step;
        let sign = o < 0 ? -1 : 1;
        Kernel[i2] = new Vector44();
        Kernel[i2].w = range * sign * Math.abs(Math.pow(o, exponent)) / Math.pow(range, exponent);
      }
      for (let i2 = 0; i2 < nSamples; i2++) {
        let w0 = i2 > 0 ? Math.abs(Kernel[i2].w - Kernel[i2 - 1].w) : 0;
        let w1 = i2 < nSamples - 1 ? Math.abs(Kernel[i2].w - Kernel[i2 + 1].w) : 0;
        let area = (w0 + w1) / 2;
        let t2 = this.prefile(Kernel[i2].w, falloff);
        Vector312.scale(t2, area, t2);
        Kernel[i2].x = t2.x;
        Kernel[i2].y = t2.y;
        Kernel[i2].z = t2.z;
      }
      let t = Kernel[Math.floor(nSamples / 2)];
      for (var i = Math.floor(nSamples / 2); i > 0; i--) {
        Kernel[i] = Kernel[i - 1];
      }
      Kernel[0] = t;
      let sum = new Vector312(0, 0, 0);
      for (let i2 = 0; i2 < nSamples; i2++) {
        sum.x += Kernel[i2].x;
        sum.y += Kernel[i2].y;
        sum.z += Kernel[i2].z;
      }
      for (let i2 = 0; i2 < nSamples; i2++) {
        Kernel[i2].x /= sum.x;
        Kernel[i2].y /= sum.y;
        Kernel[i2].z /= sum.z;
      }
      Kernel[0].x = 1 - strength.x + strength.x * Kernel[0].x;
      Kernel[0].y = 1 - strength.y + strength.y * Kernel[0].y;
      Kernel[0].z = 1 - strength.z + strength.z * Kernel[0].z;
      for (let i2 = 1; i2 < nSamples; i2++) {
        Kernel[i2].x *= strength.x;
        Kernel[i2].y *= strength.y;
        Kernel[i2].z *= strength.z;
      }
      return Kernel;
    }
    /**
     * @internal
     * @param r 
     * @param falloff 
     */
    prefile(r, falloff) {
      let falloffArray = [falloff.x, falloff.y, falloff.z];
      let v1 = this.gaussian(0.0484, r, falloffArray);
      Vector312.scale(v1, 0.1, v1);
      let v2 = this.gaussian(0.187, r, falloffArray);
      Vector312.scale(v2, 0.118, v2);
      let v3 = this.gaussian(0.567, r, falloffArray);
      Vector312.scale(v3, 0.113, v3);
      let v4 = this.gaussian(1.99, r, falloffArray);
      Vector312.scale(v4, 0.358, v4);
      let v5 = this.gaussian(7.41, r, falloffArray);
      Vector312.scale(v5, 0.078, v5);
      let vec3 = new Vector312(
        v1.x + v2.x + v3.x + v4.x + v5.x,
        v1.y + v2.y + v3.y + v4.y + v5.y,
        v1.z + v2.z + v3.z + v4.z + v5.z
      );
      return vec3;
    }
    /**
     * 高斯函数
     * @param variance 
     * @param r 
     * @param falloff 
     */
    gaussian(variance, r, falloff) {
      let g = new Vector312();
      let gg = new Array();
      for (let i = 0; i < 3; i++) {
        let rr = r / (falloff[i] + 1e-3);
        gg[i] = Math.exp(-(rr * rr) / (2 * variance)) / (2 * 3.14 * variance);
      }
      g.setValue(gg[0], gg[1], gg[2]);
      return g;
    }
  };
  __name(_SeparableSSS_BlitMaterial, "SeparableSSS_BlitMaterial");
  var SeparableSSS_BlitMaterial = _SeparableSSS_BlitMaterial;

  // src/3D/Advance/SeparableSSSRender/shader/SeparableSSS_Render.vs
  var SeparableSSS_Render_default = '#define SHADER_NAME SeparableSSSRenderVS\r\n#include "Camera.glsl";\r\n#include "VertexCommon.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n\r\nvarying vec2 v_Texcoord0;\r\nvarying vec4 v_ScreenTexcoord;\r\n\r\nvoid main() {\r\n	Vertex vertex;\r\n	getVertexParams(vertex);\r\n	mat4 worldMat = getWorldMatrix();\r\n	vec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\n	gl_Position = getPositionCS(positionWS);\r\n	gl_Position= remapPositionZ(gl_Position);\r\n	v_Texcoord0= transformUV(a_Texcoord0, u_TilingOffset);\r\n	//v_ScreenTexcoord =vec2((gl_Position.x/gl_Position.w+1.0)*0.5, (gl_Position.y/gl_Position.w+1.0)*0.5);\r\n	v_ScreenTexcoord = gl_Position*0.5;\r\n	v_ScreenTexcoord.xy = vec2(v_ScreenTexcoord.x,v_ScreenTexcoord.y)+v_ScreenTexcoord.w;\r\n	v_ScreenTexcoord.zw = gl_Position.zw;\r\n}';

  // src/3D/Advance/SeparableSSSRender/shader/SeparableSSS_Render.fs
  var SeparableSSS_Render_default2 = '#define SHADER_NAME SeparableSSSRenderFS\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvarying vec4 v_ScreenTexcoord;\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_sssssDiffuseTexture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n	vec4 color;\r\n	color =sampleMainTex(sssssDiffuseTexture,v_ScreenTexcoord.xy/v_ScreenTexcoord.w)+texture2D(sssssSpecularTexture, v_ScreenTexcoord.xy/v_ScreenTexcoord.w);\r\n\r\n	gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}\r\n\r\n';

  // src/3D/Advance/SeparableSSSRender/Material/SeparableSSS_RenderMaterial.ts
  var Material2 = Laya.Material;
  var ShaderDataType2 = Laya.ShaderDataType;
  var Shader3D2 = Laya.Shader3D;
  var RenderState2 = Laya.RenderState;
  var SubShader2 = Laya.SubShader;
  var VertexMesh2 = Laya.VertexMesh;
  var Vector45 = Laya.Vector4;
  var _SeparableSSSRenderMaterial = class _SeparableSSSRenderMaterial extends Material2 {
    static init() {
      _SeparableSSSRenderMaterial.SSSSDIFUSETEX = Shader3D2.propertyNameToID("sssssDiffuseTexture");
      _SeparableSSSRenderMaterial.SSSSSPECULARTEX = Shader3D2.propertyNameToID("sssssSpecularTexture");
      _SeparableSSSRenderMaterial.TILINGOFFSET = Shader3D2.propertyNameToID("u_TilingOffset");
      var shader = Shader3D2.add("SeparableRender", false, true);
      var attributeMap = {
        "a_Position": [VertexMesh2.MESH_POSITION0, ShaderDataType2.Vector4],
        "a_Normal": [VertexMesh2.MESH_NORMAL0, ShaderDataType2.Vector3],
        "a_Texcoord0": [VertexMesh2.MESH_TEXTURECOORDINATE0, ShaderDataType2.Vector2],
        "a_Tangent0": [VertexMesh2.MESH_TANGENT0, ShaderDataType2.Vector4]
      };
      var uniformMap = {
        "sssssDiffuseTexture": ShaderDataType2.Texture2D,
        "sssssSpecularTexture": ShaderDataType2.Texture2D,
        "u_TilingOffset": ShaderDataType2.Vector4,
        "u_MvpMatrix": ShaderDataType2.Matrix4x4
      };
      var subShader = new SubShader2(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      subShader.addShaderPass(SeparableSSS_Render_default, SeparableSSS_Render_default2, "Forward");
    }
    constructor() {
      super();
      this.setShaderName("SeparableRender");
      this.renderModeSet();
      this._shaderValues.setVector(_SeparableSSSRenderMaterial.TILINGOFFSET, new Vector45(1, 1, 0, 0));
    }
    //渲染模式
    renderModeSet() {
      this.alphaTest = false;
      this.renderQueue = Material2.RENDERQUEUE_TRANSPARENT;
      this.depthWrite = true;
      this.cull = RenderState2.CULL_BACK;
      this.blend = RenderState2.BLEND_DISABLE;
      this.depthTest = RenderState2.DEPTHTEST_LESS;
    }
  };
  __name(_SeparableSSSRenderMaterial, "SeparableSSSRenderMaterial");
  var SeparableSSSRenderMaterial = _SeparableSSSRenderMaterial;

  // src/3D/Advance/SeparableSSS_RenderDemo.ts
  var CameraEventFlags = Laya.CameraEventFlags;
  var Shader3D3 = Laya.Shader3D;
  var BlinnPhongMaterial = Laya.BlinnPhongMaterial;
  var Vector46 = Laya.Vector4;
  var MeshRenderer = Laya.MeshRenderer;
  var MeshFilter = Laya.MeshFilter;
  var CommandBuffer = Laya.CommandBuffer;
  var RenderTexture2 = Laya.RenderTexture;
  var RenderTargetFormat3 = Laya.RenderTargetFormat;
  var Vector2 = Laya.Vector2;
  var FilterMode = Laya.FilterMode;
  var Color2 = Laya.Color;
  var DepthTextureMode = Laya.DepthTextureMode;
  var { regClass: regClass131, property: property131 } = Laya;
  var SeparableSSS_RenderDemo = class extends BaseScript {
    //reference:https://github.com/iryoku/separable-sss 
    //流程：分别渲染皮肤Mesh的漫反射部分以及渲染皮肤Mesh的高光部分,分别存储在不同的FrameBuffer中
    //进行两次根据kenerl的高斯采样模拟多极子光照模型
    //再将高光部分与模糊好的地方重新相加
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      Shader3D3.debugMode = true;
      this.camera.depthTextureMode = DepthTextureMode.Depth;
      SeparableSSS_BlitMaterial.init();
      SeparableSSSRenderMaterial.init();
      this.sssssBlitMaterail = new SeparableSSS_BlitMaterial();
      this.sssssRenderMaterial = new SeparableSSSRenderMaterial();
      Laya.loader.load("resources/res/threeDimen/LayaScene_separable-sss/Conventional/HeadBlinnphong.lh").then((res) => {
        this.onPreLoadFinish(res);
      });
    }
    onPreLoadFinish(res) {
      this.blinnphongCharacter = res.create();
      this.characterBlinnphongMaterial = this.blinnphongCharacter.getComponent(MeshRenderer).sharedMaterial.clone();
      let buf = this.createCommandBuffer(this.camera, this.blinnphongCharacter.getComponent(MeshFilter).sharedMesh);
      this.camera.addCommandBuffer(CameraEventFlags.BeforeForwardOpaque, buf);
      this.sssssBlitMaterail.cameraFiledOfView = this.camera.fieldOfView;
      this.SSSSSCharacter = this.blinnphongCharacter.clone();
      this.SSSSSCharacter.getComponent(MeshRenderer).sharedMaterial = this.sssssRenderMaterial;
      this.scene.addChild(this.SSSSSCharacter);
      this.scene.addChild(this.blinnphongCharacter);
      this.blinnphongCharacter.active = true;
      this.SSSSSCharacter.active = false;
    }
    createCommandBuffer(camera, character) {
      let oriColor = this.characterBlinnphongMaterial.albedoColor;
      let oriSpec = this.characterBlinnphongMaterial.specularColor;
      let buf = new CommandBuffer();
      let viewPort = camera.viewport;
      let depthTexture = RenderTexture2.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat3.R8G8B8A8, RenderTargetFormat3.DEPTH_16, false, 1, true, true);
      buf.setRenderTarget(depthTexture);
      buf.clearRenderTarget(true, true, new Color2(0.5, 0.5, 0.5, 1));
      buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0, 0);
      depthTexture = depthTexture.depthStencilTexture;
      let diffuseRenderTexture = RenderTexture2.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat3.R8G8B8A8, RenderTargetFormat3.DEPTH_16, false, 1, true, true);
      buf.setRenderTarget(diffuseRenderTexture);
      buf.clearRenderTarget(true, true, new Color2(0.5, 0.5, 0.5, 1));
      buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.ALBEDOCOLOR, oriColor);
      buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.MATERIALSPECULAR, new Color2(0, 0, 0, 0));
      buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0, 0);
      let specRrenderTexture = RenderTexture2.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat3.R8G8B8A8, RenderTargetFormat3.DEPTH_16, false, 1, true, true);
      buf.setRenderTarget(specRrenderTexture);
      buf.clearRenderTarget(true, true, new Color2(1, 0, 0, 0));
      buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.MATERIALSPECULAR, oriSpec);
      buf.setShaderDataColor(this.characterBlinnphongMaterial.shaderData, BlinnPhongMaterial.ALBEDOCOLOR, new Color2(0, 0, 0, 0));
      buf.drawMesh(character, this.blinnphongCharacter.transform.worldMatrix, this.characterBlinnphongMaterial, 0, 0);
      buf.setShaderDataTexture(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_DEPTHTEX, depthTexture);
      let blurRenderTexture = RenderTexture2.createFromPool(viewPort.width, viewPort.height, RenderTargetFormat3.R8G8B8A8, RenderTargetFormat3.None, false, 1, false, true);
      buf.setShaderDataVector2(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR, new Vector2(10, 0));
      buf.blitScreenQuadByMaterial(diffuseRenderTexture, blurRenderTexture, new Vector46(0, 0, 1, 1), this.sssssBlitMaterail, 0);
      buf.setShaderDataVector2(this.sssssBlitMaterail.shaderData, SeparableSSS_BlitMaterial.SHADERVALUE_BLURDIR, new Vector2(0, 10));
      buf.blitScreenQuadByMaterial(blurRenderTexture, diffuseRenderTexture, new Vector46(0, 0, 0, 0), this.sssssBlitMaterail, 0);
      buf.setGlobalTexture(Shader3D3.propertyNameToID("sssssDiffuseTexture"), diffuseRenderTexture);
      this.sssssRenderMaterial.shaderData.setTexture(Shader3D3.propertyNameToID("sssssSpecularTexture"), specRrenderTexture);
      diffuseRenderTexture.filterMode = FilterMode.Point;
      specRrenderTexture.filterMode = FilterMode.Point;
      return buf;
    }
  };
  __name(SeparableSSS_RenderDemo, "SeparableSSS_RenderDemo");
  __decorateClass([
    property131(Laya.Camera)
  ], SeparableSSS_RenderDemo.prototype, "camera", 2);
  __decorateClass([
    property131(Laya.Scene3D)
  ], SeparableSSS_RenderDemo.prototype, "scene", 2);
  SeparableSSS_RenderDemo = __decorateClass([
    regClass131("3c9bc866-29a5-4bec-a511-58ef2b18c156", "../src/3D/Advance/SeparableSSS_RenderDemo.ts")
  ], SeparableSSS_RenderDemo);

  // src/3D/Advance/showFont.ts
  var Vector313 = Laya.Vector3;
  var { regClass: regClass132, property: property132 } = Laya;
  var showFont = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var scene = this.scene;
      var camera = this.camera;
      camera.transform.position = new Vector313(0, 0, 15);
      camera.transform.rotate(new Vector313(0, 0, 0), true, false);
      camera.clearColor = new Laya.Color(0.2, 0.2, 0.2, 1);
      this.plane = new Laya.MeshSprite3D(Laya.PrimitiveMesh.createPlane(10, 10));
      this.plane.transform.rotate(new Vector313(-90, 0, 0), true, false);
      scene.addChild(this.plane);
      this.mat = new Laya.UnlitMaterial();
      this.plane.meshRenderer.sharedMaterial = this.mat;
      this.cav = Laya.Browser.createElement("canvas");
      var cxt = this.cav.getContext("2d");
      this.cav.width = 256;
      this.cav.height = 256;
      cxt.fillStyle = "rgb(132,240,109)";
      cxt.font = "bold 50px \u5B8B\u4F53";
      cxt.textAlign = "center";
      cxt.textBaseline = "center";
      cxt.fillText("LayaAir", 100, 50, 200);
      cxt.strokeStyle = "rgb(200,125,0)";
      cxt.font = "bold 40px \u9ED1\u4F53";
      cxt.strokeText("runtime", 100, 100, 200);
      cxt.strokeStyle = "rgb(255,240,109)";
      cxt.font = "bold 30px \u9ED1\u4F53";
      cxt.fillText("LayaBox", 100, 150, 200);
      cxt.strokeStyle = "yellow";
      cxt.font = "bold 30px \u9ED1\u4F53";
      cxt.strokeText("LayaBox", 100, 150, 200);
      this.texture2D = new Laya.Texture2D(256, 256, Laya.TextureFormat.R8G8B8A8, false, true, true);
      this.texture2D.setImageData(this.cav, true, true);
      this.mat.materialRenderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
      this.mat.albedoTexture = this.texture2D;
      this.plane.meshRenderer.sharedMaterial.cull = Laya.RenderState.CULL_NONE;
      var rotate = new Vector313(0, 0, 1);
      Laya.timer.frameLoop(1, this, () => {
        this.plane.transform.rotate(rotate, true, false);
      });
    }
  };
  __name(showFont, "showFont");
  __decorateClass([
    property132(Laya.Camera)
  ], showFont.prototype, "camera", 2);
  __decorateClass([
    property132(Laya.Scene3D)
  ], showFont.prototype, "scene", 2);
  showFont = __decorateClass([
    regClass132("44e834ee-b3dc-4126-82dd-23c7705c857f", "../src/3D/Advance/showFont.ts")
  ], showFont);

  // src/3D/Advance/UI3D.ts
  var Sprite3D5 = Laya.Sprite3D;
  var Loader9 = Laya.Loader;
  var { regClass: regClass133, property: property133 } = Laya;
  var UI3D = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var Resource2 = [
        //可以直接加载已经在IDE里制作好的lh
        { url: "resources/res/threeDimen/fbx/Danding.lh", type: Loader9.HIERARCHY },
        { url: "resources/res/ui/prefab/ui3d.lh", type: Loader9.HIERARCHY },
        { url: "resources/res/ui/prefab/ui3dpage.lh", type: Loader9.HIERARCHY }
      ];
      Laya.loader.load(Resource2).then((res) => {
        var dude = this.scene.addChild(res[0].create());
        dude.transform.position = new Laya.Vector3(0, 0, 0);
        let sprite3D = new Sprite3D5();
        dude.addChild(sprite3D);
        let ui3dComponent = sprite3D.addComponent(Laya.UI3D);
        ui3dComponent.prefab = res[1];
        ui3dComponent.renderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
        ui3dComponent.resolutionRate = 256;
        ui3dComponent.billboard = true;
        ui3dComponent.enableHit = false;
        sprite3D.transform.localPositionY = 2.7;
        let sprite3DUI = new Sprite3D5();
        dude.addChild(sprite3DUI);
        let ui3dComponent_ui = sprite3DUI.addComponent(Laya.UI3D);
        ui3dComponent_ui.prefab = res[2];
        ui3dComponent_ui.renderMode = Laya.MaterialRenderMode.RENDERMODE_TRANSPARENT;
        ui3dComponent_ui.resolutionRate = 256;
        ui3dComponent_ui.scale = new Laya.Vector2(2, 2);
        ui3dComponent_ui.billboard = true;
        ui3dComponent_ui.enableHit = true;
        sprite3DUI.transform.position = new Laya.Vector3(-2, 1.5, 0);
      });
    }
  };
  __name(UI3D, "UI3D");
  __decorateClass([
    property133(Laya.Camera)
  ], UI3D.prototype, "camera", 2);
  __decorateClass([
    property133(Laya.Scene3D)
  ], UI3D.prototype, "scene", 2);
  UI3D = __decorateClass([
    regClass133("cb83f637-7a02-4212-b171-61f071ef5675", "../src/3D/Advance/UI3D.ts")
  ], UI3D);
  var _UIScript = class _UIScript extends Laya.Script {
    constructor() {
      super();
    }
    onStart() {
      let tab = this.owner.getChildByName("Tab");
      tab.selectHandler = new Laya.Handler(this, (index) => {
      });
    }
  };
  __name(_UIScript, "UIScript");
  var UIScript = _UIScript;

  // src/3D/Advance/VideoPlayIn3DWorld.ts
  var VideoTexture = Laya.VideoTexture;
  var UnlitMaterial = Laya.UnlitMaterial;
  var Camera2 = Laya.Camera;
  var MeshRenderer2 = Laya.MeshRenderer;
  var RenderTexture3 = Laya.RenderTexture;
  var Script = Laya.Script;
  var RenderTargetFormat4 = Laya.RenderTargetFormat;
  var Matrix4x4 = Laya.Matrix4x4;
  var Vector314 = Laya.Vector3;
  var Color3 = Laya.Color;
  var Vector47 = Laya.Vector4;
  var { regClass: regClass134, property: property134 } = Laya;
  var VideoPlayIn3DWorld = class extends BaseScript {
    constructor() {
      super();
      this.isoneVideo = false;
      this.index = 0;
      this.videoTexture = new VideoTexture();
    }
    onAwake() {
      super.base(this.camera);
      var mirrorFloor = this.camera.addComponent(ChinarMirrorPlane);
      mirrorFloor.onlyMainCamera = this.camera;
      mirrorFloor.mirrorPlane = this.scene.getChildByName("reflectionPlan");
      this.videoPlane = this.scene.getChildByName("moveclip");
      this.createVideo("resources/res/av/mov_bbb.mp4");
      super.addBottomButton(["\u5207\u6362ogg", "\u5207\u6362webm", "\u5207\u6362mp4"], this, [this.setType, this.setType, this.setType]);
    }
    onDestroy() {
      this.videoTexture.pause();
      this.videoTexture.destroy();
    }
    createVideo(url) {
      if (!this.isoneVideo) {
        this.videoTexture.source = url;
        this.videoTexture.play();
        this.videoTexture.loop = true;
        let mat = new UnlitMaterial();
        mat.albedoTexture = this.videoTexture;
        this.videoPlane.getComponent(MeshRenderer2).sharedMaterial = mat;
        this.isoneVideo = true;
      }
    }
    //支持三种类型的视频文件
    setType() {
      this.isoneVideo = false;
      this.index++;
      if (this.index % 3 === 1) {
        this.createVideo("resources/res/av/mov_bbb.ogg");
      } else if (this.index % 3 === 2) {
        this.createVideo("resources/res/av/mov_bbb.webm");
      } else {
        this.createVideo("resources/res/av/mov_bbb.mp4");
      }
    }
  };
  __name(VideoPlayIn3DWorld, "VideoPlayIn3DWorld");
  __decorateClass([
    property134(Laya.Camera)
  ], VideoPlayIn3DWorld.prototype, "camera", 2);
  __decorateClass([
    property134(Laya.Scene3D)
  ], VideoPlayIn3DWorld.prototype, "scene", 2);
  VideoPlayIn3DWorld = __decorateClass([
    regClass134("6af74c14-698e-40a9-906d-f667109ae8f0", "../src/3D/Advance/VideoPlayIn3DWorld.ts")
  ], VideoPlayIn3DWorld);
  var _ChinarMirrorPlane = class _ChinarMirrorPlane extends Script {
    constructor() {
      super();
      this.mirrorCamera = new Camera2();
      // 镜像摄像机
      this.renderTexture = RenderTexture3.createFromPool(1024, 1024, RenderTargetFormat4.R8G8B8, RenderTargetFormat4.DEPTH_16, false, 1);
      this.estimateViewFrustum = true;
      this.setNearClipPlane = true;
      this.nearClipDistanceOffset = -0.01;
      this.vn = new Vector314();
      //镜像摄像机的远剪切面的距离
      this.pa = new Vector314();
      //世界坐标系的左下角
      this.pb = new Vector314();
      //世界坐标系的右下角
      this.pc = new Vector314();
      //世界坐标系的左上角
      this.pe = new Vector314();
      //镜像观察角度的世界坐标位置
      this.va = new Vector314();
      //从镜像摄像机到左下角
      this.vb = new Vector314();
      //从镜像摄像机到右下角
      this.vc = new Vector314();
      //从镜像摄像机到左上角
      this.vr = new Vector314();
      //屏幕的右侧旋转轴
      this.vu = new Vector314();
      //屏幕的上侧旋转轴
      this.p = new Matrix4x4();
      this.rm = new Matrix4x4();
      this.tm = new Matrix4x4();
    }
    set mirrorPlane(value) {
      this._mirrorPlane = value;
      var material = new UnlitMaterial();
      let value1 = value;
      value1.getComponent(MeshRenderer2).sharedMaterial = material;
      material.albedoTexture = this.renderTexture;
      material.tilingOffset = new Vector47(-1, 1, 0, 0);
    }
    set onlyMainCamera(value) {
      value.scene.addChild(this.mirrorCamera);
      this.mainCamera = value;
    }
    onStart() {
      this.mirrorCamera.renderTarget = this.renderTexture;
      this.mirrorCamera.clearColor = new Color3(0, 0, 0, 1);
    }
    onUpdate() {
      if (this.mirrorCamera == null || this._mirrorPlane == null || this.mainCamera == null) {
        return;
      }
      this._mirrorPlane.transform.worldMatrix.invert(_ChinarMirrorPlane.tempMat);
      Vector314.transformV3ToV3(this.mainCamera.transform.position, _ChinarMirrorPlane.tempMat, _ChinarMirrorPlane.tempV3);
      _ChinarMirrorPlane.tempV3.y = -_ChinarMirrorPlane.tempV3.y;
      Vector314.transformV3ToV3(_ChinarMirrorPlane.tempV3, this._mirrorPlane.transform.worldMatrix, _ChinarMirrorPlane.tempV3);
      this.mirrorCamera.transform.position = _ChinarMirrorPlane.tempV3;
      Vector314.transformV3ToV3(_ChinarMirrorPlane.oriPa, this._mirrorPlane.transform.worldMatrix, this.pa);
      Vector314.transformV3ToV3(_ChinarMirrorPlane.oriPb, this._mirrorPlane.transform.worldMatrix, this.pb);
      Vector314.transformV3ToV3(_ChinarMirrorPlane.oriPc, this._mirrorPlane.transform.worldMatrix, this.pc);
      this.pe = this.mirrorCamera.transform.position;
      this.n = this.mirrorCamera.nearPlane;
      this.f = this.mirrorCamera.farPlane;
      Vector314.subtract(this.pa, this.pe, this.va);
      Vector314.subtract(this.pb, this.pe, this.vb);
      Vector314.subtract(this.pc, this.pe, this.vc);
      Vector314.subtract(this.pb, this.pa, this.vr);
      Vector314.subtract(this.pc, this.pa, this.vu);
      Vector314.cross(this.va, this.vc, _ChinarMirrorPlane.tempV3);
      if (Vector314.dot(_ChinarMirrorPlane.tempV3, this.vb) < 0) {
        Vector314.scale(this.vu, -1, this.vu);
        this.pc.cloneTo(this.pa);
        Vector314.add(this.pa, this.vr, this.pb);
        Vector314.add(this.pa, this.vu, this.pc);
        Vector314.subtract(this.pa, this.pe, this.va);
        Vector314.subtract(this.pb, this.pe, this.vb);
        Vector314.subtract(this.pc, this.pe, this.vc);
      }
      Vector314.normalize(this.vr, this.vr);
      Vector314.normalize(this.vu, this.vu);
      Vector314.cross(this.vr, this.vu, _ChinarMirrorPlane.tempV3);
      Vector314.normalize(_ChinarMirrorPlane.tempV3, this.vn);
      this.d = Vector314.dot(this.va, this.vn);
      if (this.setNearClipPlane) {
        this.n = this.d + this.nearClipDistanceOffset;
        this.mirrorCamera.nearPlane = this.n;
      }
      this.l = Vector314.dot(this.vr, this.va) * this.n / this.d;
      this.r = Vector314.dot(this.vr, this.vb) * this.n / this.d;
      this.b = Vector314.dot(this.vu, this.va) * this.n / this.d;
      this.t = Vector314.dot(this.vu, this.vc) * this.n / this.d;
      this.p.elements[0] = 2 * this.n / (this.r - this.l);
      this.p.elements[4] = 0;
      this.p.elements[8] = (this.r + this.l) / (this.r - this.l);
      this.p.elements[12] = 0;
      this.p.elements[1] = 0;
      this.p.elements[5] = 2 * this.n / (this.t - this.b);
      this.p.elements[9] = (this.t + this.b) / (this.t - this.b);
      this.p.elements[13] = 0;
      this.p.elements[2] = 0;
      this.p.elements[6] = 0;
      this.p.elements[10] = (this.f + this.n) / (this.n - this.f);
      this.p.elements[14] = 2 * this.f * this.n / (this.n - this.f) / 2;
      this.p.elements[3] = 0;
      this.p.elements[7] = 0;
      this.p.elements[11] = -1;
      this.p.elements[15] = 0;
      this.p.elements[0] *= -1;
      this.p.elements[5] *= -1;
      this.p.elements[14] *= -1;
      this.rm.elements[0] = this.vr.x;
      this.rm.elements[4] = this.vr.y;
      this.rm.elements[8] = this.vr.z;
      this.rm.elements[12] = this.pe.x;
      this.rm.elements[1] = this.vu.x;
      this.rm.elements[5] = this.vu.y;
      this.rm.elements[9] = this.vu.z;
      this.rm.elements[13] = this.pe.z;
      this.rm.elements[2] = this.vn.x;
      this.rm.elements[6] = this.vn.y;
      this.rm.elements[10] = this.vn.z;
      this.rm.elements[14] = this.pe.y;
      this.rm.elements[3] = 0;
      this.rm.elements[7] = 0;
      this.rm.elements[11] = 0;
      this.rm.elements[15] = 1;
      this.mirrorCamera.projectionMatrix = this.p;
      this.rm.invert(_ChinarMirrorPlane.tempMat);
      this.mirrorCamera.transform.worldMatrix = _ChinarMirrorPlane.tempMat;
      if (!this.estimateViewFrustum)
        return;
    }
  };
  __name(_ChinarMirrorPlane, "ChinarMirrorPlane");
  //这里的mesh必须是-5-5的plane板，修改了mesh的话需要修改这里
  _ChinarMirrorPlane.oriPa = new Vector314(5, 0, -5);
  _ChinarMirrorPlane.oriPb = new Vector314(-5, 0, -5);
  _ChinarMirrorPlane.oriPc = new Vector314(5, 0, 5);
  _ChinarMirrorPlane.tempMat = new Matrix4x4();
  _ChinarMirrorPlane.tempV3 = new Vector314();
  var ChinarMirrorPlane = _ChinarMirrorPlane;

  // src/3D/Camera/CameraDemo.ts
  var MeshSprite3D = Laya.MeshSprite3D;
  var Vector315 = Laya.Vector3;
  var BlinnPhongMaterial2 = Laya.BlinnPhongMaterial;
  var PrimitiveMesh = Laya.PrimitiveMesh;
  var CameraClearFlags = Laya.CameraClearFlags;
  var SkyBox = Laya.SkyBox;
  var Loader10 = Laya.Loader;
  var { regClass: regClass135, property: property135 } = Laya;
  var CameraDemo = class extends BaseScript {
    constructor() {
      super();
      this._translate = new Vector315(0, 0.7, 5);
      this._rotation = new Vector315(-15, 0, 0);
      this._rotation2 = new Vector315(-3.14 / 3, 0, 0);
      this._rotation3 = new Vector315(0, 45, 0);
    }
    onAwake() {
      super.base(this.camera);
      var resource = ["resources/res/threeDimen/texture/layabox.png", "resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat"];
      Laya.loader.load(resource).then((res) => {
        this.onPreLoadFinish(res);
      });
    }
    onPreLoadFinish(res) {
      this.camera.transform.translate(this._translate);
      this.camera.transform.rotate(this._rotation, true, false);
      this.camera.useOcclusionCulling = false;
      this.camera.clearFlag = CameraClearFlags.SolidColor;
      this.camera.fieldOfView = 60;
      this.scene.addChild(this.camera);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      this.directionLight.transform.rotate(this._rotation2);
      var box = this.scene.addChild(new MeshSprite3D(PrimitiveMesh.createBox(0.5, 0.5, 0.5)));
      box.transform.position = new Vector315(0, 2.7, 5);
      box.transform.rotate(this._rotation3, false, false);
      var materialBill = new BlinnPhongMaterial2();
      box.meshRenderer.material = materialBill;
      materialBill.albedoTexture = res[0];
      ;
      super.addBottomButton(["\u5207\u6362\u80CC\u666F", "\u5207\u6362\u80CC\u666F"], this, [this.setSkybox, this.setSolidColor]);
    }
    setSolidColor() {
      this.camera.clearFlag = CameraClearFlags.SolidColor;
    }
    setSkybox() {
      this.camera.clearFlag = CameraClearFlags.Sky;
      var skyboxMaterial = Loader10.getRes("resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat");
      var skyRenderer = this.camera.skyRenderer;
      skyRenderer.mesh = SkyBox.instance;
      skyRenderer.material = skyboxMaterial;
    }
  };
  __name(CameraDemo, "CameraDemo");
  __decorateClass([
    property135(Laya.Camera)
  ], CameraDemo.prototype, "camera", 2);
  __decorateClass([
    property135(Laya.Scene3D)
  ], CameraDemo.prototype, "scene", 2);
  __decorateClass([
    property135(Laya.Sprite3D)
  ], CameraDemo.prototype, "directionLight", 2);
  CameraDemo = __decorateClass([
    regClass135("3ea79b10-8ea8-4553-9cab-cef8f959d4ec", "../src/3D/Camera/CameraDemo.ts")
  ], CameraDemo);

  // src/3D/Camera/CameraLayer.ts
  var Sprite3D6 = Laya.Sprite3D;
  var MeshSprite3D2 = Laya.MeshSprite3D;
  var Vector316 = Laya.Vector3;
  var Quaternion4 = Laya.Quaternion;
  var { regClass: regClass136, property: property136 } = Laya;
  var CameraLayer = class extends BaseScript {
    constructor() {
      super();
      this.layerIndex = 0;
      this._translate = new Vector316(0, 1.7, 3);
      this._rotation3 = new Quaternion4(0.7071068, 0, 0, -0.7071067);
      this._rotation4 = new Vector316(0, 60, 0);
      this._position = new Vector316(0, 0, 0.5);
    }
    onAwake() {
      super.base(this.camera);
      super.setCameraDirectionLight(this.camera, this.directionLight);
      this.camera.removeAllLayers();
      this.camera.addLayer(5);
      var resource = [
        "resources/res/threeDimen/staticModel/grid/plane.lh",
        "resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm",
        "resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var grid = this.scene.addChild(res[0].create());
      grid.getChildAt(0).meshRenderer.receiveShadow = true;
      grid.getChildAt(0).layer = 5;
      var staticLayaMonkey = this.scene.addChild(new MeshSprite3D2(res[1]));
      staticLayaMonkey.meshRenderer.material = res[2];
      staticLayaMonkey.layer = 1;
      staticLayaMonkey.transform.position = new Vector316(0, 0, 0.5);
      staticLayaMonkey.transform.localScale = new Vector316(0.3, 0.3, 0.3);
      staticLayaMonkey.transform.rotation = this._rotation3;
      staticLayaMonkey.meshRenderer.castShadow = true;
      var layaMonkey_clone1 = Sprite3D6.instantiate(staticLayaMonkey, this.scene, false, this._position);
      var layaMonkey_clone2 = Sprite3D6.instantiate(staticLayaMonkey, this.scene, false, this._position);
      var layaMonkey_clone3 = Sprite3D6.instantiate(staticLayaMonkey, this.scene, false, this._position);
      layaMonkey_clone1.layer = 2;
      layaMonkey_clone2.layer = 3;
      layaMonkey_clone3.layer = 0;
      this._translate.setValue(1.5, 0, 0);
      layaMonkey_clone1.transform.translate(this._translate);
      this._translate.setValue(-1.5, 0, 0);
      layaMonkey_clone2.transform.translate(this._translate);
      this._translate.setValue(2.5, 0, 0);
      layaMonkey_clone3.transform.translate(this._translate);
      layaMonkey_clone2.transform.rotate(this._rotation4, false, false);
      layaMonkey_clone3.transform.localScale = new Vector316(0.1, 0.1, 0.1);
      super.addBottomButton(["\u5207\u6362\u56FE\u5C42", "\u5207\u6362\u56FE\u5C42", "\u5207\u6362\u56FE\u5C42"], this, [this.setLayer, this.setLayer, this.setLayer]);
    }
    setLayer() {
      this.camera.removeAllLayers();
      this.layerIndex++;
      this.camera.addLayer(this.layerIndex % 3);
      this.camera.addLayer(5);
    }
  };
  __name(CameraLayer, "CameraLayer");
  __decorateClass([
    property136(Laya.Camera)
  ], CameraLayer.prototype, "camera", 2);
  __decorateClass([
    property136(Laya.Scene3D)
  ], CameraLayer.prototype, "scene", 2);
  __decorateClass([
    property136(Laya.Sprite3D)
  ], CameraLayer.prototype, "directionLight", 2);
  CameraLayer = __decorateClass([
    regClass136("51179047-4ec6-47d8-a8a9-ea1a987f1bb1", "../src/3D/Camera/CameraLayer.ts")
  ], CameraLayer);

  // src/3D/Camera/CameraLookAt.ts
  var Sprite3D7 = Laya.Sprite3D;
  var MeshSprite3D3 = Laya.MeshSprite3D;
  var Vector317 = Laya.Vector3;
  var BlinnPhongMaterial3 = Laya.BlinnPhongMaterial;
  var PrimitiveMesh2 = Laya.PrimitiveMesh;
  var CameraClearFlags2 = Laya.CameraClearFlags;
  var Loader11 = Laya.Loader;
  var { regClass: regClass137, property: property137 } = Laya;
  var CameraLookAt = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
      this._translate = new Vector317(0, 0.7, 5);
      this._rotation = new Vector317(-15, 0, 0);
      this._rotation2 = new Vector317(-3.14 / 3, 0, 0);
      this._rotation3 = new Vector317(0, 45, 0);
      this._position = new Vector317(1.5, 0, 2);
      this._position2 = new Vector317(-1.5, 0, 2);
      this._position3 = new Vector317(0, 0, 2);
      this._up = new Vector317(0, 1, 0);
    }
    onAwake() {
      super.base(this.camera);
      Laya.loader.load("resources/res/threeDimen/texture/layabox.png").then(() => {
        this.onPreLoadFinish();
      });
    }
    onPreLoadFinish() {
      this.camera.transform.position = this._translate;
      this.camera.transform.rotate(this._rotation, true, false);
      this.camera.clearFlag = CameraClearFlags2.SolidColor;
      this.camera.fieldOfView = 60;
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      this.directionLight.transform.rotate(this._rotation2);
      var sprite = new Sprite3D7();
      this.scene.addChild(sprite);
      this.box = sprite.addChild(new MeshSprite3D3(PrimitiveMesh2.createBox(0.5, 0.5, 0.5)));
      this.box.transform.position = this._position;
      this.box.transform.rotate(this._rotation3, false, false);
      this.capsule = new MeshSprite3D3(PrimitiveMesh2.createCapsule(0.25, 1, 10, 20));
      this.capsule.transform.position = this._position2;
      sprite.addChild(this.capsule);
      this.cylinder = new MeshSprite3D3(PrimitiveMesh2.createCylinder(0.25, 1, 20));
      this.cylinder.transform.position = this._position3;
      sprite.addChild(this.cylinder);
      var materialBill = new BlinnPhongMaterial3();
      this.box.meshRenderer.material = materialBill;
      this.capsule.meshRenderer.material = materialBill;
      this.cylinder.meshRenderer.material = materialBill;
      var tex = Loader11.getTexture2D("resources/res/threeDimen/texture/layabox.png");
      materialBill.albedoTexture = tex;
      super.addBottomButton(["\u5207\u6362\u6CE8\u89C6", "\u5207\u6362\u6CE8\u89C6", "\u5207\u6362\u6CE8\u89C6"], this, [this.setLookAt, this.setLookAt, this.setLookAt]);
      this.camera.transform.lookAt(this.cylinder.transform.position, this._up);
    }
    setLookAt(index = 0) {
      this.index++;
      if (this.index % 3 === 1) {
        this.camera.transform.lookAt(this.box.transform.position, this._up);
      } else if (this.index % 3 === 2) {
        this.camera.transform.lookAt(this.cylinder.transform.position, this._up);
      } else {
        this.camera.transform.lookAt(this.capsule.transform.position, this._up);
      }
    }
  };
  __name(CameraLookAt, "CameraLookAt");
  __decorateClass([
    property137(Laya.Camera)
  ], CameraLookAt.prototype, "camera", 2);
  __decorateClass([
    property137(Laya.Scene3D)
  ], CameraLookAt.prototype, "scene", 2);
  __decorateClass([
    property137(Laya.Sprite3D)
  ], CameraLookAt.prototype, "directionLight", 2);
  CameraLookAt = __decorateClass([
    regClass137("50cce2c0-484a-4f78-9669-e9153e3d9dce", "../src/3D/Camera/CameraLookAt.ts")
  ], CameraLookAt);

  // src/3D/Camera/CameraMSAADemo.ts
  var Sprite3D8 = Laya.Sprite3D;
  var MeshSprite3D4 = Laya.MeshSprite3D;
  var Vector318 = Laya.Vector3;
  var BlinnPhongMaterial4 = Laya.BlinnPhongMaterial;
  var PrimitiveMesh3 = Laya.PrimitiveMesh;
  var { regClass: regClass138, property: property138 } = Laya;
  var CameraMSAADemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera, true, true);
      this.camera.transform.position = new Vector318(0, 1, 3);
      this.camera.transform.rotate(new Vector318(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.5, 0.5, 0.5, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector318(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.addObjectInScene(this.scene);
      this.setMsaaOn();
      super.addBottomButton(["\u5173\u95EDMSAA", "\u5F00\u542FMSAA"], this, [this.setMsaaOff, this.setMsaaOn]);
    }
    setMsaaOn() {
      this.camera.msaa = true;
      if (Index.curPage) {
        this.renderTarget2 = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTH_32, false, 4);
        this.camera.renderTarget = this.renderTarget2;
        Index.curPage.texture = new Laya.Texture(this.camera.renderTarget);
      }
    }
    setMsaaOff() {
      this.camera.msaa = false;
      if (Index.curPage) {
        this.renderTarget1 = new Laya.RenderTexture(Index.pageWidth * 2, Index.pageHeight * 2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTH_32, false, 1);
        this.camera.renderTarget = this.renderTarget1;
        Index.curPage.texture = new Laya.Texture(this.camera.renderTarget);
      }
    }
    addObjectInScene(scene) {
      let sprite = new Sprite3D8();
      scene.addChild(sprite);
      let planeMesh = PrimitiveMesh3.createPlane(10, 10, 1, 1);
      let plane = new MeshSprite3D4(planeMesh);
      scene.addChild(plane);
      let cubeMesh = PrimitiveMesh3.createBox();
      let sphere = PrimitiveMesh3.createSphere(0.3);
      let cube0 = new MeshSprite3D4(cubeMesh);
      let cube1 = new MeshSprite3D4(cubeMesh);
      let cube2 = new MeshSprite3D4(cubeMesh);
      let cube3 = new MeshSprite3D4(cubeMesh);
      let sphere0 = new MeshSprite3D4(sphere);
      let sphere1 = new MeshSprite3D4(sphere);
      let sphere2 = new MeshSprite3D4(sphere);
      let sphere3 = new MeshSprite3D4(sphere);
      cube0.meshRenderer.sharedMaterial = new BlinnPhongMaterial4();
      sprite.addChild(cube0);
      sprite.addChild(cube1);
      sprite.addChild(cube2);
      sprite.addChild(cube3);
      sprite.addChild(sphere0);
      sprite.addChild(sphere1);
      sprite.addChild(sphere2);
      sprite.addChild(sphere3);
      cube1.transform.position = new Vector318(-1, 0, 0);
      cube2.transform.position = new Vector318(-1, 0, 1);
      cube3.transform.position = new Vector318(-1, 1, 0);
      sphere0.transform.position = new Vector318(-3, 0, 0);
      sphere1.transform.position = new Vector318(2, 0, 0);
      sphere2.transform.position = new Vector318(2, 0.5, 0);
      sphere3.transform.position = new Vector318(-1, 0, 2);
    }
    onDestroy() {
      this.renderTarget1.destroy();
      this.renderTarget2.destroy();
    }
  };
  __name(CameraMSAADemo, "CameraMSAADemo");
  __decorateClass([
    property138(Laya.Camera)
  ], CameraMSAADemo.prototype, "camera", 2);
  __decorateClass([
    property138(Laya.Scene3D)
  ], CameraMSAADemo.prototype, "scene", 2);
  __decorateClass([
    property138(Laya.Sprite3D)
  ], CameraMSAADemo.prototype, "directionLight", 2);
  CameraMSAADemo = __decorateClass([
    regClass138("ff58303b-019f-43f7-91f6-0c9138cf7968", "../src/3D/Camera/CameraMSAADemo.ts")
  ], CameraMSAADemo);

  // src/3D/Camera/CameraRay.ts
  var MeshSprite3D5 = Laya.MeshSprite3D;
  var Vector319 = Laya.Vector3;
  var BlinnPhongMaterial5 = Laya.BlinnPhongMaterial;
  var Event45 = Laya.Event;
  var Rigidbody3D = Laya.Rigidbody3D;
  var PrimitiveMesh4 = Laya.PrimitiveMesh;
  var BoxColliderShape = Laya.BoxColliderShape;
  var PhysicsCollider = Laya.PhysicsCollider;
  var Vector48 = Laya.Vector4;
  var Vector22 = Laya.Vector2;
  var Ray = Laya.Ray;
  var { regClass: regClass139, property: property139 } = Laya;
  var CameraRay = class extends BaseScript {
    constructor() {
      super();
      this.outs = [];
      this.point = new Vector22();
      this._forward = new Vector319(-1, -1, -1);
      this._tilingOffset = new Vector48(10, 10, 0, 0);
      this.tmpVector = new Vector319(0, 0, 0);
      this.tmpVector2 = new Vector319(0, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      super.setCameraDirectionLight(this.camera, this.scene.getChildByName("Direction Light"));
      var plane = this.scene.addChild(new MeshSprite3D5(PrimitiveMesh4.createPlane(10, 10, 10, 10)));
      var planeMat = new BlinnPhongMaterial5();
      Laya.loader.load("resources/res/threeDimen/Physics/grass.png").then((tex) => {
        planeMat.albedoTexture = tex;
      });
      planeMat.tilingOffset = this._tilingOffset;
      plane.meshRenderer.material = planeMat;
      var planeStaticCollider = plane.addComponent(PhysicsCollider);
      var planeShape = new BoxColliderShape(10, 0, 10);
      planeStaticCollider.colliderShape = planeShape;
      planeStaticCollider.friction = 2;
      planeStaticCollider.restitution = 0.3;
      this._ray = new Ray(new Vector319(0, 0, 0), new Vector319(0, 0, 0));
      this.owner.on(Event45.MOUSE_DOWN, this, this.onMouseDown);
    }
    addBoxXYZ(x, y, z) {
      var sX = Math.random() * 0.5;
      var sY = Math.random() * 0.5;
      var sZ = Math.random() * 0.5;
      var box = this.scene.addChild(new MeshSprite3D5(PrimitiveMesh4.createBox(sX, sY, sZ)));
      this.tmpVector.setValue(x, y, z);
      box.transform.position = this.tmpVector;
      this.tmpVector2.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      box.transform.rotationEuler = this.tmpVector2;
      var rigidBody = box.addComponent(Rigidbody3D);
      var boxShape = new BoxColliderShape(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    onMouseDown(e) {
      if (Index.curPage) {
        this.point.x = e.target.mouseX * Index.screenWidth / Index.pageWidth;
        this.point.y = e.target.mouseY * Index.screenHeight / Index.pageHeight;
      } else {
        this.point.x = e.target.mouseX;
        this.point.y = e.target.mouseY;
      }
      console.log(e.target.mouseX, e.target.mouseY);
      this.camera.viewportPointToRay(this.point, this._ray);
      this.scene.physicsSimulation.rayCastAll(this._ray, this.outs);
      if (this.outs.length != 0) {
        for (var i = 0; i < this.outs.length; i++) {
          this.addBoxXYZ(this.outs[i].point.x, this.outs[i].point.y, this.outs[i].point.z);
        }
      }
    }
  };
  __name(CameraRay, "CameraRay");
  __decorateClass([
    property139(Laya.Camera)
  ], CameraRay.prototype, "camera", 2);
  __decorateClass([
    property139(Laya.Scene3D)
  ], CameraRay.prototype, "scene", 2);
  CameraRay = __decorateClass([
    regClass139("3cda26cf-5b90-48c6-91bd-41a7b4e78f79", "../src/3D/Camera/CameraRay.ts")
  ], CameraRay);

  // src/3D/Camera/D3SpaceToD2Space.ts
  var { regClass: regClass140, property: property140 } = Laya;
  var D3SpaceToD2Space = class extends BaseScript {
    constructor() {
      super();
      this._position = new Laya.Vector3();
      this._outPos = new Laya.Vector4();
      this.scaleDelta = 0;
      this.clientScaleX = 0;
      this.clientScaleY = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.clientScaleY = Laya.stage.clientScaleX;
      this.clientScaleX = Laya.stage.clientScaleY;
      this.camera.transform.position = new Laya.Vector3(0, 0.75, 1.2);
      this.camera.transform.rotationEuler = new Laya.Vector3(-30, 0, 0);
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      this.layaMonkey3D = res.create();
      this.scene.addChild(this.layaMonkey3D);
      this.layaMonkey2D = this.owner.addChild(new Laya.Image("resources/res/threeDimen/monkey.png"));
      this.layaMonkey2D.anchorX = 0.5;
      this.layaMonkey2D.scale(0.5, 0.5);
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      this._position.x = Math.sin(this.scaleDelta += 0.01);
      this.layaMonkey3D.transform.position = this._position;
      this.camera.viewport.project(this.layaMonkey3D.transform.position, this.camera.projectionViewMatrix, this._outPos);
      let x = 0;
      let y = 0;
      if (Index.curPage && !Laya.Browser.PLATFORM_PC) {
        x = this._outPos.x / this.clientScaleX;
        y = this._outPos.y / this.clientScaleY;
      } else if (Index.curPage) {
        x = this._outPos.x * Index.pageWidth * Index.scaleWidth / Laya.Browser.clientWidth;
        y = this._outPos.y * Index.pageHeight * Index.scaleHeight / Laya.Browser.clientHeight;
      } else {
        x = this._outPos.x / this.clientScaleX;
        y = this._outPos.y / this.clientScaleY;
      }
      this.layaMonkey2D.pos(x, y);
    }
  };
  __name(D3SpaceToD2Space, "D3SpaceToD2Space");
  __decorateClass([
    property140(Laya.Camera)
  ], D3SpaceToD2Space.prototype, "camera", 2);
  __decorateClass([
    property140(Laya.Scene3D)
  ], D3SpaceToD2Space.prototype, "scene", 2);
  D3SpaceToD2Space = __decorateClass([
    regClass140("c6d2764b-c444-41f0-8f03-8530525d9f01", "../src/3D/Camera/D3SpaceToD2Space.ts")
  ], D3SpaceToD2Space);

  // src/3D/Camera/MultiCamera.ts
  var Camera3 = Laya.Camera;
  var Vector320 = Laya.Vector3;
  var CameraClearFlags3 = Laya.CameraClearFlags;
  var SkyBox2 = Laya.SkyBox;
  var Color4 = Laya.Color;
  var Viewport = Laya.Viewport;
  var { regClass: regClass141, property: property141 } = Laya;
  var MultiCamera = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector320(0, 0.5, 1.5);
      this.camera.clearColor = new Color4(0.3, 0.3, 0.3, 1);
      this.camera.normalizedViewport = new Viewport(0, 0, 0.5, 1);
      var camera2 = this.scene.addChild(new Camera3(0, 0.1, 100));
      camera2.transform.position = new Vector320(0, 0.5, 1.5);
      camera2.transform.rotationEuler = new Vector320(-15, 0, 0);
      camera2.normalizedViewport = new Viewport(0.5, 0, 0.5, 1);
      camera2.clearFlag = CameraClearFlags3.Sky;
      camera2.renderTarget = Index.rt;
      Laya.loader.load("resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat").then((mat) => {
        var skyRenderer = camera2.skyRenderer;
        skyRenderer.mesh = SkyBox2.instance;
        skyRenderer.material = mat;
      });
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        this.scene.addChild(res.create());
      });
    }
  };
  __name(MultiCamera, "MultiCamera");
  __decorateClass([
    property141(Laya.Camera)
  ], MultiCamera.prototype, "camera", 2);
  __decorateClass([
    property141(Laya.Scene3D)
  ], MultiCamera.prototype, "scene", 2);
  MultiCamera = __decorateClass([
    regClass141("8a04c2c6-169d-435f-9e41-4829041370b4", "../src/3D/Camera/MultiCamera.ts")
  ], MultiCamera);

  // src/3D/Camera/OrthographicCamera.ts
  var Vector321 = Laya.Vector3;
  var CameraClearFlags4 = Laya.CameraClearFlags;
  var { regClass: regClass142, property: property142 } = Laya;
  var Orthographicthiscamera = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector321(0, 0.2, 0.7);
      this.camera.orthographic = true;
      this.camera.orthographicVerticalSize = 3;
      this.camera.clearFlag = CameraClearFlags4.SolidColor;
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        let layaMonkey = res.create();
        this.scene.addChild(layaMonkey);
        layaMonkey.transform.position = new Vector321(0, 0, 0);
      });
      super.addBottomButton(["\u5173\u95ED\u6B63\u4EA4\u6295\u5F71", "\u5F00\u542F\u6B63\u4EA4\u6295\u5F71"], this, [this.setOrthographic1, this.setOrthographic2]);
    }
    setOrthographic1() {
      this.camera.orthographic = false;
    }
    setOrthographic2() {
      this.camera.orthographic = true;
      this.camera.orthographicVerticalSize = 3;
    }
  };
  __name(Orthographicthiscamera, "Orthographicthiscamera");
  __decorateClass([
    property142(Laya.Camera)
  ], Orthographicthiscamera.prototype, "camera", 2);
  __decorateClass([
    property142(Laya.Scene3D)
  ], Orthographicthiscamera.prototype, "scene", 2);
  Orthographicthiscamera = __decorateClass([
    regClass142("87d9c5a0-6c51-4c1b-8e9a-65f2426d4939", "../src/3D/Camera/OrthographicCamera.ts")
  ], Orthographicthiscamera);

  // src/3D/Camera/PickPixel.ts
  var Vector322 = Laya.Vector3;
  var Text29 = Laya.Text;
  var RenderTargetFormat5 = Laya.RenderTargetFormat;
  var RenderTexture4 = Laya.RenderTexture;
  var Ray2 = Laya.Ray;
  var { regClass: regClass143, property: property143 } = Laya;
  var PickPixel = class extends BaseScript {
    constructor() {
      super();
      this.text = new Text29();
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake() {
      super.base(this.camera);
      this.ray = new Ray2(new Vector322(0, 0, 0), new Vector322(0, 0, 0));
      Laya.loader.load("resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      this.scene1 = res.create();
      this.scene.addChild(this.scene1);
      var stageWidth = this.pageWidth;
      var stageHeight = this.pageHeight;
      if (Index.curPage) {
        stageWidth = Index.pageWidth;
        stageHeight = Index.pageHeight;
      }
      this.camera2.renderTarget = RenderTexture4.createFromPool(stageWidth, stageHeight, RenderTargetFormat5.R8G8B8A8, RenderTargetFormat5.DEPTH_16, false, 1, false, true);
      this.camera2.renderingOrder = -1;
      this.text.width = 200;
      this.text.align = "center";
      this.text.x = (this.pageWidth - this.text.width) / 2;
      this.text.y = 50;
      this.text.overflow = Text29.HIDDEN;
      this.text.color = "#FFFFFF";
      this.text.fontSize = 20;
      this.text.text = "\u9009\u4E2D\u7684\u989C\u8272\uFF1A";
      this.owner.addChild(this.text);
    }
    onMouseDown(e) {
      var posX = e.target.mouseX;
      var posY = e.target.mouseY;
      var out = new Uint8Array(4);
      this.camera2.renderTarget.getData(posX, posY, 1, 1, out);
      this.text.text = out[0] + " " + out[1] + " " + out[2] + " " + out[3];
    }
  };
  __name(PickPixel, "PickPixel");
  __decorateClass([
    property143(Laya.Camera)
  ], PickPixel.prototype, "camera", 2);
  __decorateClass([
    property143(Laya.Scene3D)
  ], PickPixel.prototype, "scene", 2);
  __decorateClass([
    property143(Laya.Camera)
  ], PickPixel.prototype, "camera2", 2);
  PickPixel = __decorateClass([
    regClass143("d3e98771-5917-4850-ac70-8ee068dca896", "../src/3D/Camera/PickPixel.ts")
  ], PickPixel);

  // src/3D/Interaction/MouseInteraction.ts
  var Sprite3D9 = Laya.Sprite3D;
  var MeshSprite3D6 = Laya.MeshSprite3D;
  var Vector323 = Laya.Vector3;
  var Event46 = Laya.Event;
  var Text30 = Laya.Text;
  var Quaternion5 = Laya.Quaternion;
  var HitResult = Laya.HitResult;
  var Vector23 = Laya.Vector2;
  var Ray3 = Laya.Ray;
  var MeshFilter2 = Laya.MeshFilter;
  var MeshColliderShape = Laya.MeshColliderShape;
  var PhysicsCollider2 = Laya.PhysicsCollider;
  var Loader12 = Laya.Loader;
  var { regClass: regClass144, property: property144 } = Laya;
  var MouseInteraction = class extends BaseScript {
    constructor() {
      super();
      this._outHitResult = new HitResult();
      this.point = new Vector23();
      this.text = new Text30();
      this.tmpVector = new Vector323(0, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector323(0, 0.7, 5);
      this.camera.transform.rotate(new Vector323(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      this.directionLight.transform.rotate(new Vector323(-3.14 / 3, 0, 0));
      Laya.loader.load(["resources/res/threeDimen/staticModel/grid/plane.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"]).then(() => {
        this.onComplete();
      });
    }
    onComplete() {
      var grid = this.scene.addChild(Loader12.createNodes("resources/res/threeDimen/staticModel/grid/plane.lh"));
      grid.layer = 10;
      var staticLayaMonkey = this.scene.addChild(new MeshSprite3D6(Loader12.getRes("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm")));
      staticLayaMonkey.meshRenderer.material = Loader12.getRes("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat");
      staticLayaMonkey.transform.position = new Vector323(0, 0, 0.5);
      staticLayaMonkey.transform.localScale = new Vector323(0.3, 0.3, 0.3);
      staticLayaMonkey.transform.rotation = new Quaternion5(0.7071068, 0, 0, -0.7071067);
      this.tmpVector.setValue(0, 0, 0.5);
      var layaMonkey_clone1 = Sprite3D9.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector);
      var layaMonkey_clone2 = Sprite3D9.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector);
      var layaMonkey_clone3 = Sprite3D9.instantiate(staticLayaMonkey, this.scene, false, this.tmpVector);
      staticLayaMonkey.name = "\u5927\u718A";
      layaMonkey_clone1.name = "\u4E8C\u718A";
      layaMonkey_clone2.name = "\u4E09\u718A";
      layaMonkey_clone3.name = "\u5C0F\u718A";
      this.tmpVector.setValue(1.5, 0, 0);
      layaMonkey_clone1.transform.translate(this.tmpVector);
      this.tmpVector.setValue(-1.5, 0, 0);
      layaMonkey_clone2.transform.translate(this.tmpVector);
      this.tmpVector.setValue(2.5, 0, 0);
      layaMonkey_clone3.transform.translate(this.tmpVector);
      this.tmpVector.setValue(0, 60, 0);
      layaMonkey_clone2.transform.rotate(this.tmpVector, false, false);
      this.tmpVector.setValue(0.1, 0.1, 0.1);
      var scale = new Vector323(0.1, 0.1, 0.1);
      layaMonkey_clone3.transform.localScale = this.tmpVector;
      var meshCollider = staticLayaMonkey.addComponent(PhysicsCollider2);
      var meshShape = new MeshColliderShape();
      meshShape.mesh = staticLayaMonkey.meshFilter.sharedMesh;
      meshCollider.colliderShape = meshShape;
      var meshCollider1 = layaMonkey_clone1.addComponent(PhysicsCollider2);
      var meshShape1 = new MeshColliderShape();
      meshShape1.mesh = layaMonkey_clone1.getComponent(MeshFilter2).sharedMesh;
      meshCollider1.colliderShape = meshShape1;
      var meshCollider2 = layaMonkey_clone2.addComponent(PhysicsCollider2);
      var meshShape2 = new MeshColliderShape();
      meshShape2.mesh = layaMonkey_clone2.getComponent(MeshFilter2).sharedMesh;
      meshCollider2.colliderShape = meshShape2;
      var meshCollider3 = layaMonkey_clone3.addComponent(PhysicsCollider2);
      var meshShape3 = new MeshColliderShape();
      meshShape3.mesh = layaMonkey_clone3.getComponent(MeshFilter2).sharedMesh;
      meshCollider3.colliderShape = meshShape3;
      this.text.y = 50;
      this._ray = new Ray3(new Vector323(0, 0, 0), new Vector323(0, 0, 0));
      this.addMouseEvent();
      this.text.name = "text";
      this.text.overflow = Text30.HIDDEN;
      this.text.color = "#FFFFFF";
      this.text.font = "Impact";
      this.text.fontSize = 20;
      this.text.x = this.pageWidth / 2 - 60;
      this.owner.addChild(this.text);
      staticLayaMonkey.addComponent(SceneScript);
      layaMonkey_clone1.addComponent(SceneScript);
      layaMonkey_clone2.addComponent(SceneScript);
      layaMonkey_clone3.addComponent(SceneScript);
      this.infoText = new Laya.Label();
      this.infoText.x = this.pageWidth / 2;
      this.infoText.y = 10;
      this.infoText.width = this.pageWidth;
      this.infoText.anchorX = 0.5;
      this.infoText.align = "center";
      this.infoText.text = "\u70B9\u51FB\u6BCF\u4E2A\u5BF9\u8C61";
      this.infoText.overflow = Laya.Text.HIDDEN;
      this.infoText.color = "#FFFFFF";
      this.infoText.font = "Impact";
      this.infoText.fontSize = 25;
      this.owner.addChild(this.infoText);
    }
    addMouseEvent() {
      this.owner.on(Event46.MOUSE_DOWN, this, this.onStageMouseDown);
    }
    onStageMouseDown(e) {
      this.point.x = e.target.mouseX;
      this.point.y = e.target.mouseY;
      if (Index.curPage) {
        this.point.x = this.point.x * Index.screenWidth / Index.pageWidth;
        this.point.y = this.point.y * Index.screenHeight / Index.pageHeight;
      } else {
      }
      let point1 = new Laya.Point(this.point.x, this.point.y);
      console.log(e.target.mouseX, e.target.mouseY);
      this.point.x = point1.x;
      this.point.y = point1.y;
      this.camera.viewportPointToRay(this.point, this._ray);
      this.scene.physicsSimulation.rayCast(this._ray, this._outHitResult);
      if (this._outHitResult.succeeded) {
        this.text.text = "\u78B0\u649E\u5230\u4E86" + this._outHitResult.collider.owner.name;
        console.log("\u78B0\u649E\u5230\u7269\u4F53\uFF01\uFF01");
      }
    }
  };
  __name(MouseInteraction, "MouseInteraction");
  __decorateClass([
    property144(Laya.Camera)
  ], MouseInteraction.prototype, "camera", 2);
  __decorateClass([
    property144(Laya.Scene3D)
  ], MouseInteraction.prototype, "scene", 2);
  __decorateClass([
    property144(Laya.Sprite3D)
  ], MouseInteraction.prototype, "directionLight", 2);
  MouseInteraction = __decorateClass([
    regClass144("5ccea1d7-4091-4a5b-8b15-2abdaed39d1a", "../src/3D/Interaction/MouseInteraction.ts")
  ], MouseInteraction);
  var _SceneScript = class _SceneScript extends Laya.Script {
    constructor() {
      super();
      this._albedoColor = new Laya.Color(0, 0, 0, 1);
    }
    onAwake() {
      this.meshSprite = this.owner;
      this.text = this.owner.getChildByName("text");
    }
    /**
     * 覆写组件更新方法（相当于帧循环）
     */
    onUpdate() {
    }
    //物体必须拥有碰撞组件（Collider）
    //当被鼠标点击
    onMouseDown() {
      this.text.text = "\u78B0\u649E\u5230\u4E86" + this.owner.name;
    }
    //当产生碰撞
    onCollisionEnter(collision) {
      this.meshSprite.meshRenderer.sharedMaterial.albedoColor = this._albedoColor;
    }
  };
  __name(_SceneScript, "SceneScript");
  var SceneScript = _SceneScript;

  // src/3D/Interaction/MultiTouch.ts
  var Vector324 = Laya.Vector3;
  var Text31 = Laya.Text;
  var Vector24 = Laya.Vector2;
  var Label8 = Laya.Label;
  var { regClass: regClass145, property: property145 } = Laya;
  var MultiTouch = class extends BaseScript {
    constructor() {
      super();
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector324(0, 0.8, 1.5);
      this.camera.transform.rotate(new Vector324(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      this.directionLight.transform.rotate(new Vector324(-3.14 / 3, 0, 0));
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var monkey = res.create();
      monkey.addComponent(MonkeyScript);
      this.scene.addChild(monkey);
      this.camera.transform.lookAt(monkey.transform.position, new Vector324(0, 1, 0));
      MultiTouch.text = new Label8();
      MultiTouch.text.text = "\u89E6\u63A7\u70B9\u5F52\u96F6";
      MultiTouch.text.name = "ceshi";
      MultiTouch.text.width = this.pageWidth;
      MultiTouch.text.align = "center";
      MultiTouch.text.anchorX = 0.5;
      MultiTouch.text.overflow = Text31.HIDDEN;
      MultiTouch.text.color = "#FFFFFF";
      MultiTouch.text.font = "Impact";
      MultiTouch.text.fontSize = 25;
      MultiTouch.text.x = this.pageWidth / 2;
      MultiTouch.text.y = 70;
      this.owner.addChild(MultiTouch.text);
      this.infoText = new Laya.Label();
      this.infoText.x = this.pageWidth / 2;
      this.infoText.y = 20;
      this.infoText.width = this.pageWidth;
      this.infoText.anchorX = 0.5;
      this.infoText.align = "center";
      this.infoText.text = "\u5355\u6307\u65CB\u8F6C\uFF0C\u53CC\u6307\u7F29\u653E(\u8BF7\u4F7F\u7528\u624B\u673A\u8BBE\u5907)";
      this.infoText.overflow = Laya.Text.HIDDEN;
      this.infoText.color = "#FFFFFF";
      this.infoText.font = "Impact";
      this.infoText.fontSize = 25;
      this.owner.addChild(this.infoText);
    }
  };
  __name(MultiTouch, "MultiTouch");
  __decorateClass([
    property145(Laya.Camera)
  ], MultiTouch.prototype, "camera", 2);
  __decorateClass([
    property145(Laya.Scene3D)
  ], MultiTouch.prototype, "scene", 2);
  __decorateClass([
    property145(Laya.Sprite3D)
  ], MultiTouch.prototype, "directionLight", 2);
  MultiTouch = __decorateClass([
    regClass145("dd06ebfc-04a2-4fd3-8c94-6ccfdb89ffd4", "../src/3D/Interaction/MultiTouch.ts")
  ], MultiTouch);
  var _MonkeyScript = class _MonkeyScript extends Laya.Script {
    constructor() {
      super(...arguments);
      this.rotation = new Vector324(0, 0.01, 0);
      this.lastPosition = new Vector24(0, 0);
      this.distance = 0;
      this.disVector1 = new Vector24(0, 0);
      this.disVector2 = new Vector24(0, 0);
      this.isTwoTouch = false;
      this.first = true;
      this.twoFirst = true;
      this.tmpVector = new Vector324(0, 0, 0);
    }
    onAwake() {
    }
    onStart() {
      this._scene = this.owner.parent;
      this._text = MultiTouch.text;
      this._camera = this._scene.getChildByName("Main Camera");
    }
    onUpdate() {
      var touchCount = Laya.InputManager.touchCount;
      if (1 === touchCount) {
        if (this.isTwoTouch) {
          return;
        }
        this._text.text = "\u89E6\u63A7\u70B9\u4E3A1";
        var touch = Laya.InputManager.touches[0];
        if (this.first) {
          this.lastPosition.x = touch.pos.x;
          this.lastPosition.y = touch.pos.y;
          this.first = false;
        } else {
          var deltaY = touch.pos.y - this.lastPosition.y;
          var deltaX = touch.pos.x - this.lastPosition.x;
          this.lastPosition.x = touch.pos.x;
          this.lastPosition.y = touch.pos.y;
          this.tmpVector.setValue(1 * deltaY / 2, 1 * deltaX / 2, 0);
          this.owner.transform.rotate(this.tmpVector, true, false);
        }
      } else if (2 === touchCount) {
        this._text.text = "\u89E6\u63A7\u70B9\u4E3A2";
        this.isTwoTouch = true;
        var touch = Laya.InputManager.touches[0];
        var touch2 = Laya.InputManager.touches[1];
        if (this.twoFirst) {
          this.disVector1.x = touch.pos.x - touch2.pos.x;
          this.disVector1.y = touch.pos.y - touch2.pos.y;
          this.distance = Vector24.scalarLength(this.disVector1);
          this.twoFirst = false;
        } else {
          this.disVector2.x = touch.pos.x - touch2.pos.x;
          this.disVector2.y = touch.pos.y - touch2.pos.y;
          var distance2 = Vector24.scalarLength(this.disVector2);
          this.tmpVector.setValue(0, 0, -0.01 * (distance2 - this.distance));
          this._camera.transform.translate(this.tmpVector);
          this.distance = distance2;
        }
      } else if (0 === touchCount) {
        this._text.text = "\u89E6\u63A7\u70B9\u5F52\u96F6";
        this.first = true;
        this.twoFirst = true;
        this.lastPosition.x = 0;
        this.lastPosition.y = 0;
        this.isTwoTouch = false;
      }
    }
    onLateUpdate() {
    }
  };
  __name(_MonkeyScript, "MonkeyScript");
  var MonkeyScript = _MonkeyScript;

  // src/3D/Light/DirectionLightDemo.ts
  var Vector325 = Laya.Vector3;
  var Quaternion6 = Laya.Quaternion;
  var { regClass: regClass146, property: property146 } = Laya;
  var DirectionLightDemo = class extends BaseScript {
    constructor() {
      super();
      this._quaternion = new Quaternion6();
      this._direction = new Vector325();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector325(0, 0.7, 1.3);
      this.camera.transform.rotate(new Vector325(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector325(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var resource = [
        "resources/res/threeDimen/staticModel/grid/plane.lh",
        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
      ];
      Laya.loader.load(resource).then((res) => {
        this.scene.addChild(res[0].create());
        this.scene.addChild(res[1].create());
        Laya.timer.frameLoop(1, this, this.roll);
      });
    }
    roll() {
      Quaternion6.createFromYawPitchRoll(0.025, 0, 0, this._quaternion);
      this.directionLight.transform.worldMatrix.getForward(this._direction);
      Vector325.transformQuat(this._direction, this._quaternion, this._direction);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(this._direction);
      this.directionLight.transform.worldMatrix = mat;
    }
    onDestroy() {
      Laya.timer.clear(this, this.roll);
    }
  };
  __name(DirectionLightDemo, "DirectionLightDemo");
  __decorateClass([
    property146(Laya.Camera)
  ], DirectionLightDemo.prototype, "camera", 2);
  __decorateClass([
    property146(Laya.Scene3D)
  ], DirectionLightDemo.prototype, "scene", 2);
  __decorateClass([
    property146(Laya.Sprite3D)
  ], DirectionLightDemo.prototype, "directionLight", 2);
  DirectionLightDemo = __decorateClass([
    regClass146("c62a7d01-a001-47e8-b09e-9735cf9150db", "../src/3D/Light/DirectionLightDemo.ts")
  ], DirectionLightDemo);

  // src/3D/Light/MultiLight.ts
  var Vector326 = Laya.Vector3;
  var SpotLight = Laya.SpotLight;
  var PointLight = Laya.PointLight;
  var { regClass: regClass147, property: property147 } = Laya;
  var MultiLight = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var moveScript = this.camera.addComponent(LightMoveScript);
      var moverLights = moveScript.lights;
      var offsets = moveScript.offsets;
      var moveRanges = moveScript.moveRanges;
      moverLights.length = 15;
      for (var i = 0; i < 15; i++) {
        var pointLight = this.scene.addChild(new PointLight());
        pointLight.range = 2 + Math.random() * 8;
        pointLight.color.setValue(Math.random(), Math.random(), Math.random(), 1);
        pointLight.intensity = 6 + Math.random() * 8;
        moverLights[i] = pointLight;
        offsets[i] = new Vector326((Math.random() - 0.5) * 10, pointLight.range * 0.75, (Math.random() - 0.5) * 10);
        moveRanges[i] = new Vector326((Math.random() - 0.5) * 40, 0, (Math.random() - 0.5) * 40);
      }
      var spotLight = this.scene.addChild(new SpotLight());
      spotLight.transform.localPosition = new Vector326(0, 9, -35);
      spotLight.transform.localRotationEuler = new Vector326(-15, 180, 0);
      spotLight.color.setValue(Math.random(), Math.random(), Math.random(), 1);
      spotLight.range = 50;
      spotLight.intensity = 15;
      spotLight.spotAngle = 60;
    }
  };
  __name(MultiLight, "MultiLight");
  __decorateClass([
    property147(Laya.Camera)
  ], MultiLight.prototype, "camera", 2);
  __decorateClass([
    property147(Laya.Scene3D)
  ], MultiLight.prototype, "scene", 2);
  MultiLight = __decorateClass([
    regClass147("e3509569-515c-4fcd-b7b0-cdf89dc01af5", "../src/3D/Light/MultiLight.ts")
  ], MultiLight);
  var _LightMoveScript = class _LightMoveScript extends Laya.Script {
    constructor() {
      super(...arguments);
      this.forward = new Vector326();
      this.lights = [];
      this.offsets = [];
      this.moveRanges = [];
    }
    onUpdate() {
      var seed = Laya.timer.currTimer * 2e-3;
      for (var i = 0, n = this.lights.length; i < n; i++) {
        var transform = this.lights[i].transform;
        var pos = transform.localPosition;
        var off = this.offsets[i];
        var ran = this.moveRanges[i];
        pos.x = off.x + Math.sin(seed) * ran.x;
        pos.y = off.y + Math.sin(seed) * ran.y;
        pos.z = off.z + Math.sin(seed) * ran.z;
        transform.localPosition = pos;
      }
    }
  };
  __name(_LightMoveScript, "LightMoveScript");
  var LightMoveScript = _LightMoveScript;

  // src/3D/Light/PointLightDemo.ts
  var Vector327 = Laya.Vector3;
  var Quaternion7 = Laya.Quaternion;
  var PointLight2 = Laya.PointLight;
  var Color5 = Laya.Color;
  var { regClass: regClass148, property: property148 } = Laya;
  var PointLightDemo = class extends BaseScript {
    constructor() {
      super();
      this._temp_position = new Vector327();
      this._temp_quaternion = new Quaternion7();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector327(0, 0.7, 1.3);
      this.camera.transform.rotate(new Vector327(-15, 0, 0), true, false);
      this.directionLight.active = false;
      this.scene.ambientColor = new Color5(0.1, 0.1, 0.1);
      var pointLight = this.scene.addChild(new PointLight2());
      pointLight.color = new Color5(1, 0.5, 0, 1);
      pointLight.transform.position = new Vector327(0.4, 0.4, 0);
      pointLight.range = 3;
      var resource = [
        "resources/res/threeDimen/staticModel/grid/plane.lh",
        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
      ];
      Laya.loader.load(resource).then((res) => {
        this.scene.addChild(res[0].create());
        this.scene.addChild(res[1].create());
        Laya.timer.frameLoop(1, this, () => {
          Quaternion7.createFromYawPitchRoll(0.025, 0, 0, this._temp_quaternion);
          Vector327.transformQuat(pointLight.transform.position, this._temp_quaternion, this._temp_position);
          pointLight.transform.position = this._temp_position;
        });
      });
    }
  };
  __name(PointLightDemo, "PointLightDemo");
  __decorateClass([
    property148(Laya.Camera)
  ], PointLightDemo.prototype, "camera", 2);
  __decorateClass([
    property148(Laya.Scene3D)
  ], PointLightDemo.prototype, "scene", 2);
  __decorateClass([
    property148(Laya.Sprite3D)
  ], PointLightDemo.prototype, "directionLight", 2);
  PointLightDemo = __decorateClass([
    regClass148("0b10d4a8-5e80-476f-b4ad-26659ca00747", "../src/3D/Light/PointLightDemo.ts")
  ], PointLightDemo);

  // src/3D/Light/RealTimeShadow.ts
  var MeshSprite3D7 = Laya.MeshSprite3D;
  var Vector328 = Laya.Vector3;
  var PBRStandardMaterial = Laya.PBRStandardMaterial;
  var PrimitiveMesh5 = Laya.PrimitiveMesh;
  var ShadowCascadesMode = Laya.ShadowCascadesMode;
  var ShadowMode = Laya.ShadowMode;
  var Loader13 = Laya.Loader;
  var { regClass: regClass149, property: property149 } = Laya;
  var RealTimeShadow = class extends BaseScript {
    constructor() {
      super();
      /** Roation speed. */
      this.autoRotateSpeed = new Vector328(0, 0.05, 0);
      /** If roation. */
      this.rotation = true;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector328(0, 1.5, 2);
      this.camera.transform.rotate(new Vector328(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.85, 0.85, 0.8, 1);
      Laya.loader.load([
        "resources/res/threeDimen/staticModel/grid/plane.lh",
        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
      ]).then(() => {
        this.onComplete();
      });
    }
    onComplete() {
      this.directionLight.transform.rotate(new Vector328(-Math.PI / 3, 0, 0));
      this.directionLight.getComponent(Laya.DirectionLightCom).shadowMode = ShadowMode.SoftLow;
      this.directionLight.getComponent(Laya.DirectionLightCom).shadowDistance = 50;
      this.directionLight.getComponent(Laya.DirectionLightCom).shadowCascadesMode = ShadowCascadesMode.FourCascades;
      this.directionLight.getComponent(Laya.DirectionLightCom).shadowNormalBias = 1;
      this.rotationScript = this.directionLight.addComponent(RotationScript);
      var grid = this.scene.addChild(Loader13.getRes("resources/res/threeDimen/staticModel/grid/plane.lh").create());
      grid.getChildAt(0).meshRenderer.receiveShadow = true;
      var layaMonkey = this.scene.addChild(Loader13.getRes("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").create());
      layaMonkey.transform.setWorldLossyScale(new Vector328(3.3, 3.3, 3.3));
      layaMonkey.getChildAt(0).getChildAt(1).skinnedMeshRenderer.castShadow = true;
      var sphereSprite = this.addPBRSphere(PrimitiveMesh5.createSphere(0.1), new Vector328(0, 0.2, 0.5), this.scene);
      sphereSprite.meshRenderer.castShadow = true;
      super.addBottomButton(["\u505C\u6B62\u65CB\u8F6C", "\u5F00\u59CB\u65CB\u8F6C"], this, [this.Rotation, this.Rotation]);
    }
    /**
     * Add one with smoothness and metallic sphere.
     */
    addPBRSphere(sphereMesh, position, scene) {
      var mat = new PBRStandardMaterial();
      mat.smoothness = 0.2;
      var meshSprite = new MeshSprite3D7(sphereMesh);
      meshSprite.meshRenderer.sharedMaterial = mat;
      var transform = meshSprite.transform;
      transform.localPosition = position;
      scene.addChild(meshSprite);
      return meshSprite;
    }
    Rotation() {
      if (this.rotationScript.rotation) {
        this.rotationScript.rotation = false;
      } else {
        this.rotationScript.rotation = true;
      }
    }
  };
  __name(RealTimeShadow, "RealTimeShadow");
  __decorateClass([
    property149(Laya.Camera)
  ], RealTimeShadow.prototype, "camera", 2);
  __decorateClass([
    property149(Laya.Scene3D)
  ], RealTimeShadow.prototype, "scene", 2);
  __decorateClass([
    property149(Laya.Sprite3D)
  ], RealTimeShadow.prototype, "directionLight", 2);
  RealTimeShadow = __decorateClass([
    regClass149("c0342e29-ea97-4912-b2a1-7b242ff73181", "../src/3D/Light/RealTimeShadow.ts")
  ], RealTimeShadow);
  var _RotationScript = class _RotationScript extends Laya.Script3D {
    constructor() {
      super(...arguments);
      /** Roation speed. */
      this.autoRotateSpeed = new Vector328(0, 0.05, 0);
      /** If roation. */
      this.rotation = true;
    }
    onUpdate() {
      if (this.rotation)
        this.owner.transform.rotate(this.autoRotateSpeed, false);
    }
  };
  __name(_RotationScript, "RotationScript");
  var RotationScript = _RotationScript;

  // src/3D/Light/SpotLightDemo.ts
  var Vector329 = Laya.Vector3;
  var Color6 = Laya.Color;
  var { regClass: regClass150, property: property150 } = Laya;
  var SpotLightDemo = class extends BaseScript {
    constructor() {
      super();
      this._quaternion = new Laya.Quaternion();
      this._direction = new Laya.Vector3();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector329(0, 0.7, 1.3);
      this.camera.transform.rotate(new Vector329(-15, 0, 0), true, false);
      this.directionLight.active = false;
      this.scene.ambientColor = new Color6(0.1, 0.1, 0.1);
      var spotLight = this.scene.addChild(new Laya.SpotLight());
      spotLight.color = new Laya.Color(1, 1, 0);
      spotLight.transform.position = new Laya.Vector3(0, 1.2, 0);
      var mat = spotLight.transform.worldMatrix;
      mat.setForward(new Laya.Vector3(0.15, -1, 0));
      spotLight.transform.worldMatrix = mat;
      spotLight.range = 6;
      spotLight.spotAngle = 32;
      var resource = [
        "resources/res/threeDimen/staticModel/grid/plane.lh",
        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
      ];
      Laya.loader.load(resource).then((res) => {
        this.scene.addChild(res[0].create());
        this.scene.addChild(res[1].create());
        Laya.timer.frameLoop(1, this, () => {
          Laya.Quaternion.createFromYawPitchRoll(0.025, 0, 0, this._quaternion);
          spotLight.transform.worldMatrix.getForward(this._direction);
          Laya.Vector3.transformQuat(this._direction, this._quaternion, this._direction);
          var mat2 = spotLight.transform.worldMatrix;
          mat2.setForward(this._direction);
          spotLight.transform.worldMatrix = mat2;
        });
      });
    }
  };
  __name(SpotLightDemo, "SpotLightDemo");
  __decorateClass([
    property150(Laya.Camera)
  ], SpotLightDemo.prototype, "camera", 2);
  __decorateClass([
    property150(Laya.Scene3D)
  ], SpotLightDemo.prototype, "scene", 2);
  __decorateClass([
    property150(Laya.Sprite3D)
  ], SpotLightDemo.prototype, "directionLight", 2);
  SpotLightDemo = __decorateClass([
    regClass150("8191f8b7-bd56-41d1-bf6e-724ee1cdbe6d", "../src/3D/Light/SpotLightDemo.ts")
  ], SpotLightDemo);

  // src/3D/Light/SpotLightShadowMap.ts
  var MeshRenderer3 = Laya.MeshRenderer;
  var ShadowMode2 = Laya.ShadowMode;
  var SpotLight2 = Laya.SpotLight;
  var { regClass: regClass151, property: property151 } = Laya;
  var SpotLightShadowMap = class extends BaseScript {
    constructor() {
      super();
    }
    onStart() {
      super.base(this.camera);
      var spotLight = this.scene.addChild(new Laya.SpotLight());
      spotLight.color = new Laya.Color(1, 1, 0);
      spotLight.transform.position = new Laya.Vector3(-0.13, 7.86, 0.23);
      spotLight.transform.rotationEuler = new Laya.Vector3(-90, 180, 0);
      spotLight.range = 10;
      spotLight.spotAngle = 53;
      this.receaveRealShadow(this.scene);
    }
    receaveRealShadow(scene3d) {
      var childLength = scene3d.numChildren;
      for (var i = 0; i < childLength; i++) {
        var childSprite = scene3d.getChildAt(i);
        if (childSprite instanceof SpotLight2) {
          childSprite.shadowMode = ShadowMode2.Hard;
          childSprite.shadowDistance = 3;
          childSprite.shadowResolution = 512;
          childSprite.shadowDepthBias = 1;
        } else {
          console.log(childSprite.name);
          if (childSprite.getComponent(MeshRenderer3)) {
            childSprite.getComponent(MeshRenderer3).receiveShadow = true;
            childSprite.getComponent(MeshRenderer3).castShadow = true;
          }
        }
      }
    }
  };
  __name(SpotLightShadowMap, "SpotLightShadowMap");
  __decorateClass([
    property151(Laya.Camera)
  ], SpotLightShadowMap.prototype, "camera", 2);
  __decorateClass([
    property151(Laya.Scene3D)
  ], SpotLightShadowMap.prototype, "scene", 2);
  SpotLightShadowMap = __decorateClass([
    regClass151("d2730298-3464-4561-b69e-ac6f409e1038", "../src/3D/Light/SpotLightShadowMap.ts")
  ], SpotLightShadowMap);

  // src/3D/Material/BlinnPhongMaterialLoad.ts
  var MeshSprite3D8 = Laya.MeshSprite3D;
  var Vector330 = Laya.Vector3;
  var Quaternion8 = Laya.Quaternion;
  var { regClass: regClass152, property: property152 } = Laya;
  var BlinnPhongMaterialLoad = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector330(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((res) => {
        var layaMonkey = this.scene.addChild(new MeshSprite3D8(res));
        layaMonkey.transform.localScale = new Vector330(0.3, 0.3, 0.3);
        layaMonkey.transform.rotation = new Quaternion8(0.7071068, 0, 0, -0.7071067);
        Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/Materials/T_Diffuse.lmat").then((mat) => {
          layaMonkey.meshRenderer.material = mat;
        });
        Laya.timer.frameLoop(1, this, () => {
          layaMonkey.transform.rotate(this.rotation, false);
        });
      });
    }
  };
  __name(BlinnPhongMaterialLoad, "BlinnPhongMaterialLoad");
  __decorateClass([
    property152(Laya.Camera)
  ], BlinnPhongMaterialLoad.prototype, "camera", 2);
  __decorateClass([
    property152(Laya.Scene3D)
  ], BlinnPhongMaterialLoad.prototype, "scene", 2);
  BlinnPhongMaterialLoad = __decorateClass([
    regClass152("54227be2-84b8-4d3f-968a-33281d39294f", "../src/3D/Material/BlinnPhongMaterialLoad.ts")
  ], BlinnPhongMaterialLoad);

  // src/3D/Material/BlinnPhong_DiffuseMap.ts
  var MeshSprite3D9 = Laya.MeshSprite3D;
  var Vector331 = Laya.Vector3;
  var BlinnPhongMaterial6 = Laya.BlinnPhongMaterial;
  var PrimitiveMesh6 = Laya.PrimitiveMesh;
  var { regClass: regClass153, property: property153 } = Laya;
  var BlinnPhong_DiffuseMap = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector331(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector331(0, 0, 2);
      this.camera.transform.rotate(new Vector331(0, 0, 0), true, false);
      var sphereMesh = PrimitiveMesh6.createSphere();
      var earth1 = this.scene.addChild(new MeshSprite3D9(sphereMesh));
      earth1.transform.position = new Vector331(-0.6, 0, 0);
      var earth2 = this.scene.addChild(new MeshSprite3D9(sphereMesh));
      earth2.transform.position = new Vector331(0.6, 0, 0);
      var material = new BlinnPhongMaterial6();
      Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture) => {
        material.albedoTexture = texture;
      });
      earth2.meshRenderer.material = material;
      Laya.timer.frameLoop(1, this, () => {
        earth1.transform.rotate(this.rotation, false);
        earth2.transform.rotate(this.rotation, false);
      });
      this.addSlider(300, 0.01, 4, 1, 0.01, (value) => {
        material.albedoIntensity = value;
      });
    }
    addSlider(width, min, max, value, tick, changeFunc) {
      let slider = this.owner.addChild(new Laya.HSlider("resources/res/ui/hslider.png"));
      slider.width = width;
      slider.min = min;
      slider.max = max;
      slider.value = value;
      slider.tick = tick;
      slider.anchorX = 0.5;
      slider.x = this.pageWidth / 2;
      slider.y = this.pageHeight - 50;
      slider.changeHandler = Laya.Handler.create(this, changeFunc, [], false);
      let text = new Laya.Label("\u53CD\u7167\u7387\u5F3A\u5EA6");
      text.color = "#FFFFFF";
      text.fontSize = 16;
      text.width = 100;
      text.anchorX = 0.5;
      text.align = "center";
      text.x = slider.width / 2;
      text.y = 20;
      slider.addChild(text);
    }
  };
  __name(BlinnPhong_DiffuseMap, "BlinnPhong_DiffuseMap");
  __decorateClass([
    property153(Laya.Camera)
  ], BlinnPhong_DiffuseMap.prototype, "camera", 2);
  __decorateClass([
    property153(Laya.Scene3D)
  ], BlinnPhong_DiffuseMap.prototype, "scene", 2);
  BlinnPhong_DiffuseMap = __decorateClass([
    regClass153("61db83bc-6e33-4c07-b303-5a7de873bee3", "../src/3D/Material/BlinnPhong_DiffuseMap.ts")
  ], BlinnPhong_DiffuseMap);

  // src/3D/Material/BlinnPhong_NormalMap.ts
  var MeshRenderer4 = Laya.MeshRenderer;
  var Sprite3D10 = Laya.Sprite3D;
  var Vector332 = Laya.Vector3;
  var { regClass: regClass154, property: property154 } = Laya;
  var BlinnPhong_NormalMap = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector332(0, 0.01, 0);
      this.normalMapUrl = [
        "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizardeye_norm.png",
        "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png",
        "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/rock_norm.png"
      ];
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector332(0, 0.6, 1.1);
      this.camera.transform.rotate(new Vector332(-30, 0, 0), true, false);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector332(0, -0.8, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      Laya.loader.load("resources/res/threeDimen/staticModel/lizard/lizard.lh").then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var monster1 = this.scene.addChild(res.create());
      monster1.transform.position = new Vector332(-0.6, 0, 0);
      monster1.transform.localScale = new Vector332(0.075, 0.075, 0.075);
      var monster2 = Sprite3D10.instantiate(monster1, this.scene, false, new Vector332(0.6, 0, 0));
      monster2.transform.localScale = new Vector332(0.075, 0.075, 0.075);
      for (var i = 0; i < monster2.getChildByName("lizard").numChildren; i++) {
        var meshSprite3D = monster2.getChildByName("lizard").getChildAt(i);
        var material = meshSprite3D.getComponent(MeshRenderer4).material;
        Laya.loader.load(this.normalMapUrl[i]).then((texture) => {
          material.normalTexture = texture;
        });
      }
      Laya.timer.frameLoop(1, this, () => {
        monster1.transform.rotate(this.rotation);
        monster2.transform.rotate(this.rotation);
      });
    }
  };
  __name(BlinnPhong_NormalMap, "BlinnPhong_NormalMap");
  __decorateClass([
    property154(Laya.Camera)
  ], BlinnPhong_NormalMap.prototype, "camera", 2);
  __decorateClass([
    property154(Laya.Scene3D)
  ], BlinnPhong_NormalMap.prototype, "scene", 2);
  __decorateClass([
    property154(Laya.Sprite3D)
  ], BlinnPhong_NormalMap.prototype, "directionLight", 2);
  BlinnPhong_NormalMap = __decorateClass([
    regClass154("8fb78f89-ddaf-487f-a02b-cbfbc870d08a", "../src/3D/Material/BlinnPhong_NormalMap.ts")
  ], BlinnPhong_NormalMap);

  // src/3D/Material/BlinnPhong_SpecularMap.ts
  var Vector333 = Laya.Vector3;
  var SkinnedMeshRenderer = Laya.SkinnedMeshRenderer;
  var { regClass: regClass155, property: property155 } = Laya;
  var BlinnPhong_SpecularMap = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Laya.Vector3(0, 0.01, 0);
      this.specularMapUrl = [
        "resources/res/threeDimen/skinModel/dude/Assets/dude/headS.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/jacketS.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/pantsS.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyS.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyS.png"
      ];
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector333(0, 3, 5);
      this.camera.transform.rotate(new Vector333(-15, 0, 0), true, false);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector333(0, -0.8, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then((res) => {
        var dude1 = this.scene.addChild(res.create());
        dude1.transform.position = new Laya.Vector3(-1.5, 0, 0);
        var dude2 = Laya.Sprite3D.instantiate(dude1, this.scene, false, new Laya.Vector3(1.5, 0, 0));
        var skinnedMeshSprite3d = dude2.getChildAt(0).getChildAt(0);
        for (var i = 0; i < skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials.length; i++) {
          var material = skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials[i];
          Laya.loader.load(this.specularMapUrl[i]).then((texture) => {
            material.specularTexture = texture;
          });
        }
        Laya.timer.frameLoop(1, this, () => {
          dude1.transform.rotate(this.rotation);
          dude2.transform.rotate(this.rotation);
        });
        this.addSlider(300, 0.01, 1, 0.07, 0.01, (value) => {
          for (var i2 = 0; i2 < skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials.length; i2++) {
            var material2 = skinnedMeshSprite3d.getComponent(SkinnedMeshRenderer).materials[i2];
            material2.shininess = value;
          }
        });
      });
    }
    addSlider(width, min, max, value, tick, changeFunc) {
      let slider = this.owner.addChild(new Laya.HSlider("resources/res/ui/hslider.png"));
      slider.width = width;
      slider.min = min;
      slider.max = max;
      slider.value = value;
      slider.tick = tick;
      slider.anchorX = 0.5;
      slider.x = this.pageWidth / 2;
      slider.y = this.pageHeight - 50;
      slider.changeHandler = Laya.Handler.create(this, changeFunc, [], false);
      let text = new Laya.Label("\u9AD8\u5149\u4EAE\u5EA6");
      text.color = "#FFFFFF";
      text.fontSize = 16;
      text.width = 100;
      text.anchorX = 0.5;
      text.align = "center";
      text.x = slider.width / 2;
      text.y = 20;
      slider.addChild(text);
    }
  };
  __name(BlinnPhong_SpecularMap, "BlinnPhong_SpecularMap");
  __decorateClass([
    property155(Laya.Camera)
  ], BlinnPhong_SpecularMap.prototype, "camera", 2);
  __decorateClass([
    property155(Laya.Scene3D)
  ], BlinnPhong_SpecularMap.prototype, "scene", 2);
  __decorateClass([
    property155(Laya.Sprite3D)
  ], BlinnPhong_SpecularMap.prototype, "directionLight", 2);
  BlinnPhong_SpecularMap = __decorateClass([
    regClass155("70b4a5ec-a309-479e-8321-159ab6f342a6", "../src/3D/Material/BlinnPhong_SpecularMap.ts")
  ], BlinnPhong_SpecularMap);

  // src/3D/Material/Blinnphong_Transmission.ts
  var MeshRenderer5 = Laya.MeshRenderer;
  var Vector334 = Laya.Vector3;
  var Color7 = Laya.Color;
  var Loader14 = Laya.Loader;
  var { regClass: regClass156, property: property156 } = Laya;
  var Blinnphong_Transmission = class extends BaseScript {
    constructor() {
      super();
      this.resource = [
        "resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/monkeyThinkness.png",
        "resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/rabbitthickness.jpg"
      ];
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector334(9.48667, -0.10189, 6.16654);
      this.camera.transform.rotate(new Vector334(-4.645, -17.161, 0), true, false);
      Laya.loader.load("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/TransmissionScene.ls").then((res) => {
        let scene = this.scene.addChild(res.create());
        this.rabbitMaterial = scene.getChildByName("rabbit").getComponent(MeshRenderer5).sharedMaterial;
        this.monkeyMaterial = scene.getChildByName("monkey").getComponent(MeshRenderer5).sharedMaterial;
        this.loadThinkNessTexture();
      });
    }
    loadThinkNessTexture() {
      Laya.loader.load(this.resource).then(() => {
        this.onPreLoadFinish();
      });
    }
    onPreLoadFinish() {
      this.monkeyMaterial.thinknessTexture = Loader14.getRes("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/monkeyThinkness.png");
      this.rabbitMaterial.thinknessTexture = Loader14.getRes("resources/res/threeDimen/LayaScene_TransmissionScene/Conventional/Assets/rabbitthickness.jpg");
      this.rabbitMaterial.enableTransmission = true;
      this.rabbitMaterial.transmissionRata = 0;
      this.rabbitMaterial.backDiffuse = 4.88;
      this.rabbitMaterial.transmissionColor = new Color7(1, 1, 1, 1);
      this.rabbitMaterial.backScale = 1;
      this.monkeyMaterial.enableTransmission = true;
      this.monkeyMaterial.transmissionRata = 0;
      this.monkeyMaterial.backDiffuse = 1;
      this.monkeyMaterial.transmissionColor = new Color7(0.2, 1, 0, 1);
      this.monkeyMaterial.backScale = 1;
    }
  };
  __name(Blinnphong_Transmission, "Blinnphong_Transmission");
  __decorateClass([
    property156(Laya.Camera)
  ], Blinnphong_Transmission.prototype, "camera", 2);
  __decorateClass([
    property156(Laya.Scene3D)
  ], Blinnphong_Transmission.prototype, "scene", 2);
  Blinnphong_Transmission = __decorateClass([
    regClass156("de772b6a-4e10-4c52-9378-621b23e856fa", "../src/3D/Material/Blinnphong_Transmission.ts")
  ], Blinnphong_Transmission);

  // src/3D/Material/EffectMaterialDemo.ts
  var MeshSprite3D10 = Laya.MeshSprite3D;
  var Vector335 = Laya.Vector3;
  var PrimitiveMesh7 = Laya.PrimitiveMesh;
  var CameraClearFlags5 = Laya.CameraClearFlags;
  var EffectMaterial = Laya.EffectMaterial;
  var Color8 = Laya.Color;
  var { regClass: regClass157, property: property157 } = Laya;
  var EffectMaterialDemo = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector335(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector335(0, 0, 2);
      this.camera.transform.rotate(new Vector335(0, 0, 0), true, false);
      this.camera.clearFlag = CameraClearFlags5.Sky;
      var earth = this.scene.addChild(new MeshSprite3D10(PrimitiveMesh7.createSphere()));
      earth.transform.position = new Vector335(0, 0, 0);
      var material = new EffectMaterial();
      Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture) => {
        material.texture = texture;
        material.color = new Color8(1, 1, 1, 1);
      });
      earth.meshRenderer.material = material;
      Laya.timer.frameLoop(1, this, () => {
        earth.transform.rotate(this.rotation, false);
      });
    }
  };
  __name(EffectMaterialDemo, "EffectMaterialDemo");
  __decorateClass([
    property157(Laya.Camera)
  ], EffectMaterialDemo.prototype, "camera", 2);
  __decorateClass([
    property157(Laya.Scene3D)
  ], EffectMaterialDemo.prototype, "scene", 2);
  EffectMaterialDemo = __decorateClass([
    regClass157("87076eac-d1a3-472c-8c27-2bdba6ccaa32", "../src/3D/Material/EffectMaterialDemo.ts")
  ], EffectMaterialDemo);

  // src/3D/Material/MaterialDemo.ts
  var MeshRenderer6 = Laya.MeshRenderer;
  var PBRStandardMaterial2 = Laya.PBRStandardMaterial;
  var Loader15 = Laya.Loader;
  var { regClass: regClass158, property: property158 } = Laya;
  var MaterialDemo = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      Laya.loader.load("resources/res/threeDimen/texture/earth.png").then(() => {
        this.onPreLoadFinish();
      });
    }
    onPreLoadFinish() {
      this.sphere = this.scene.getChildByName("Sphere");
      this.billinMaterial = this.sphere.getComponent(MeshRenderer6).material;
      this.pbrStandardMaterial = new PBRStandardMaterial2();
      this.pbrTexture = Loader15.getTexture2D("resources/res/threeDimen/texture/earth.png");
      this.pbrStandardMaterial.albedoTexture = this.pbrTexture;
      super.addBottomButton(["\u5207\u6362\u6750\u8D28", "\u5207\u6362\u6750\u8D28"], this, [this.change, this.change]);
    }
    change() {
      this.index++;
      if (this.index % 2 === 1) {
        this.sphere.getComponent(MeshRenderer6).material = this.pbrStandardMaterial;
      } else {
        this.sphere.getComponent(MeshRenderer6).material = this.billinMaterial;
      }
    }
  };
  __name(MaterialDemo, "MaterialDemo");
  __decorateClass([
    property158(Laya.Camera)
  ], MaterialDemo.prototype, "camera", 2);
  __decorateClass([
    property158(Laya.Scene3D)
  ], MaterialDemo.prototype, "scene", 2);
  MaterialDemo = __decorateClass([
    regClass158("c1827786-5bfe-44a2-9cb6-75d7084f93b2", "../src/3D/Material/MaterialDemo.ts")
  ], MaterialDemo);

  // src/3D/Material/PBRCoatMaterialDemo.ts
  var MeshSprite3D11 = Laya.MeshSprite3D;
  var Vector336 = Laya.Vector3;
  var PrimitiveMesh8 = Laya.PrimitiveMesh;
  var PBRStandardMaterial3 = Laya.PBRStandardMaterial;
  var Color9 = Laya.Color;
  var { regClass: regClass159, property: property159 } = Laya;
  var PBRCoatMaterialDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var sphereMesh = PrimitiveMesh8.createSphere(0.25, 32, 32);
      const row = 6;
      this.addSpheresSmoothnessMetallic(sphereMesh, new Vector336(0, 1.5, 0), this.scene, 2, 6, new Color9(186 / 255, 110 / 255, 64 / 255, 1), 1);
      var label = new Laya.Label();
    }
    /**
     * Add one with smoothness and metallic sphere.
     */
    addPBRSphere(sphereMesh, position, scene, color, smoothness, metallic, coat, coatR, state) {
      var mat = new PBRStandardMaterial3();
      mat.albedoColor = color;
      mat.smoothness = smoothness;
      mat.metallic = metallic;
      mat.clearCoatEnable = state;
      if (state) {
        mat.clearCoat = coat;
        mat.clearCoatRoughness = coatR;
      }
      var meshSprite = new MeshSprite3D11(sphereMesh);
      meshSprite.meshRenderer.sharedMaterial = mat;
      var transform = meshSprite.transform;
      transform.localPosition = position;
      scene.addChild(meshSprite);
      return mat;
    }
    /**
     * Add some different smoothness and metallic sphere.
     */
    addSpheresSmoothnessMetallic(sphereMesh, offset, scene, row, col, color) {
      const width = col * 0.5;
      const height = row * 0.5;
      for (var i = 0, n = col; i < n; i++) {
        for (var j = 0, m = row; j < m; j++) {
          var smoothness = 0;
          var metallic = 1;
          if (j == 1) {
            var state = true;
            var coat = i / (m - 1) * (1 / col);
            var coatR = 0;
          } else {
            var state = false;
            var coat = 0;
            var coatR = 0;
          }
          var pos = PBRCoatMaterialDemo._tempPos;
          pos.setValue(-width / 2 + i * width / (n - 1), height / 2 - j * height / (m - 1), 3);
          Vector336.add(offset, pos, pos);
          this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic, coat, coatR, state);
        }
      }
    }
  };
  __name(PBRCoatMaterialDemo, "PBRCoatMaterialDemo");
  PBRCoatMaterialDemo._tempPos = new Vector336();
  __decorateClass([
    property159(Laya.Camera)
  ], PBRCoatMaterialDemo.prototype, "camera", 2);
  __decorateClass([
    property159(Laya.Scene3D)
  ], PBRCoatMaterialDemo.prototype, "scene", 2);
  PBRCoatMaterialDemo = __decorateClass([
    regClass159("89f380ef-a603-42b1-bea4-0a77880435de", "../src/3D/Material/PBRCoatMaterialDemo.ts")
  ], PBRCoatMaterialDemo);

  // src/3D/Material/PBRMaterialDemo.ts
  var MeshSprite3D12 = Laya.MeshSprite3D;
  var Vector337 = Laya.Vector3;
  var PrimitiveMesh9 = Laya.PrimitiveMesh;
  var PBRStandardMaterial4 = Laya.PBRStandardMaterial;
  var Color10 = Laya.Color;
  var { regClass: regClass160, property: property160 } = Laya;
  var PBRMaterialDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var sphereMesh = PrimitiveMesh9.createSphere(0.25, 32, 32);
      const row = 6;
      this.addSpheresSpecialMetallic(sphereMesh, new Vector337(0, 1.5, 0), this.scene, row, new Color10(186 / 255, 110 / 255, 64 / 255, 1), 1);
      this.addSpheresSmoothnessMetallic(sphereMesh, new Vector337(0, 0, 0), this.scene, 3, row, new Color10(1, 1, 1, 1));
      this.addSpheresSpecialMetallic(sphereMesh, new Vector337(0, -1.5, 0), this.scene, row, new Color10(0, 0, 0, 1), 0);
    }
    /**
     * Add one with smoothness and metallic sphere.
     */
    addPBRSphere(sphereMesh, position, scene, color, smoothness, metallic) {
      var mat = new PBRStandardMaterial4();
      mat.albedoColor = color;
      mat.smoothness = smoothness;
      mat.metallic = metallic;
      var meshSprite = new MeshSprite3D12(sphereMesh);
      meshSprite.meshRenderer.sharedMaterial = mat;
      var transform = meshSprite.transform;
      transform.localPosition = position;
      scene.addChild(meshSprite);
      return mat;
    }
    /**
     * Add some different smoothness and metallic sphere.
     */
    addSpheresSmoothnessMetallic(sphereMesh, offset, scene, row, col, color) {
      const width = col * 0.5;
      const height = row * 0.5;
      for (var i = 0, n = col; i < n; i++) {
        for (var j = 0, m = row; j < m; j++) {
          var smoothness = i / (n - 1);
          var metallic = 1 - j / (m - 1);
          var pos = PBRMaterialDemo._tempPos;
          pos.setValue(-width / 2 + i * width / (n - 1), height / 2 - j * height / (m - 1), 3);
          Vector337.add(offset, pos, pos);
          this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic);
        }
      }
    }
    /**
     * Add some different smoothness with special metallic sphere.
     */
    addSpheresSpecialMetallic(sphereMesh, offset, scene, col, color, metallic = 0) {
      const width = col * 0.5;
      for (var i = 0, n = col; i < n; i++) {
        var smoothness = i / (n - 1);
        var pos = PBRMaterialDemo._tempPos;
        pos.setValue(-width / 2 + i * width / (n - 1), 0, 3);
        Vector337.add(offset, pos, pos);
        this.addPBRSphere(sphereMesh, pos, scene, color, smoothness, metallic);
      }
    }
  };
  __name(PBRMaterialDemo, "PBRMaterialDemo");
  PBRMaterialDemo._tempPos = new Vector337();
  __decorateClass([
    property160(Laya.Camera)
  ], PBRMaterialDemo.prototype, "camera", 2);
  __decorateClass([
    property160(Laya.Scene3D)
  ], PBRMaterialDemo.prototype, "scene", 2);
  PBRMaterialDemo = __decorateClass([
    regClass160("05d3d54e-0e48-467e-ad79-dd0e9eb95d46", "../src/3D/Material/PBRMaterialDemo.ts")
  ], PBRMaterialDemo);

  // src/3D/Material/StencilDemo.ts
  var Material3 = Laya.Material;
  var MeshRenderer7 = Laya.MeshRenderer;
  var Vector338 = Laya.Vector3;
  var RenderTargetFormat6 = Laya.RenderTargetFormat;
  var Loader16 = Laya.Loader;
  var Color11 = Laya.Color;
  var UnlitMaterial2 = Laya.UnlitMaterial;
  var RenderState3 = Laya.RenderState;
  var { regClass: regClass161, property: property161 } = Laya;
  var StencilDemo = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.depthTextureFormat = RenderTargetFormat6.DEPTHSTENCIL_24_8;
      var resource = ["resources/res/threeDimen/texture/earth.png"];
      Laya.loader.load(resource).then(() => {
        this.onPreLoadFinish();
      });
    }
    onPreLoadFinish() {
      this.sphere = this.scene.getChildByName("Sphere");
      let sphereClone = this.sphere.clone();
      this.scene.addChild(sphereClone);
      let matW = this.sphere.getComponent(MeshRenderer7).sharedMaterial;
      matW.stencilRef = 2;
      matW.stencilWrite = true;
      matW.stencilTest = RenderState3.STENCILTEST_ALWAYS;
      matW.renderQueue = Material3.RENDERQUEUE_OPAQUE;
      Vector338.scale(sphereClone.transform.localScale, 1.5, sphereClone.transform.localScale);
      sphereClone.transform.localScale = sphereClone.transform.localScale;
      let mat = new UnlitMaterial2();
      mat.albedoColor = new Color11(0.8, 0.5, 0.1);
      mat.albedoTexture = Loader16.getTexture2D("resources/res/threeDimen/texture/earth.png");
      sphereClone.getComponent(MeshRenderer7).sharedMaterial = mat;
      mat.stencilRef = 0;
      mat.stencilWrite = false;
      mat.stencilTest = RenderState3.STENCILTEST_GEQUAL;
      mat.renderQueue = Material3.RENDERQUEUE_OPAQUE + 1;
      this.stencilMat = mat;
      super.addBottomButton(["Stencil\u5173\u95ED", "Stencil\u5F00\u542F"], this, [this.setStencilTest, this.setStencilTest]);
    }
    setStencilTest() {
      this.index++;
      if (this.index % 2 === 1) {
        this.stencilMat.stencilTest = RenderState3.STENCILTEST_OFF;
      } else {
        this.stencilMat.stencilTest = RenderState3.STENCILTEST_GEQUAL;
      }
    }
  };
  __name(StencilDemo, "StencilDemo");
  __decorateClass([
    property161(Laya.Camera)
  ], StencilDemo.prototype, "camera", 2);
  __decorateClass([
    property161(Laya.Scene3D)
  ], StencilDemo.prototype, "scene", 2);
  StencilDemo = __decorateClass([
    regClass161("41105c5b-6fc2-4b4c-b2ce-3ef3b9a36ab2", "../src/3D/Material/StencilDemo.ts")
  ], StencilDemo);

  // src/3D/Material/UnlitMaterialDemo.ts
  var MeshSprite3D13 = Laya.MeshSprite3D;
  var Vector339 = Laya.Vector3;
  var BlinnPhongMaterial7 = Laya.BlinnPhongMaterial;
  var PrimitiveMesh10 = Laya.PrimitiveMesh;
  var UnlitMaterial3 = Laya.UnlitMaterial;
  var CameraClearFlags6 = Laya.CameraClearFlags;
  var { regClass: regClass162, property: property162 } = Laya;
  var UnlitMaterialDemo = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector339(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector339(0, 0, 2);
      this.camera.transform.rotate(new Vector339(0, 0, 0), true, false);
      this.camera.clearFlag = CameraClearFlags6.Sky;
      var sphereMesh = PrimitiveMesh10.createSphere();
      var earth1 = this.scene.addChild(new MeshSprite3D13(sphereMesh));
      earth1.transform.position = new Vector339(-0.6, 0, 0);
      var earth2 = this.scene.addChild(new MeshSprite3D13(sphereMesh));
      earth2.transform.position = new Vector339(0.6, 0, 0);
      var material = new BlinnPhongMaterial7();
      Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture) => {
        material.albedoTexture = texture;
      });
      earth1.meshRenderer.material = material;
      var material2 = new UnlitMaterial3();
      Laya.loader.load("resources/res/threeDimen/texture/earth.png").then((texture) => {
        material2.albedoTexture = texture;
      });
      earth2.meshRenderer.material = material2;
      Laya.timer.frameLoop(1, this, () => {
        earth1.transform.rotate(this.rotation, false);
        earth2.transform.rotate(this.rotation, false);
      });
    }
  };
  __name(UnlitMaterialDemo, "UnlitMaterialDemo");
  __decorateClass([
    property162(Laya.Camera)
  ], UnlitMaterialDemo.prototype, "camera", 2);
  __decorateClass([
    property162(Laya.Scene3D)
  ], UnlitMaterialDemo.prototype, "scene", 2);
  UnlitMaterialDemo = __decorateClass([
    regClass162("7c325942-90e6-468a-866c-dafa3682719e", "../src/3D/Material/UnlitMaterialDemo.ts")
  ], UnlitMaterialDemo);

  // src/3D/Mesh/BlendShape.ts
  var Sprite3D11 = Laya.Sprite3D;
  var Vector340 = Laya.Vector3;
  var { regClass: regClass163, property: property163 } = Laya;
  var MeshLoad = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector340(0, 0.01, 0);
      this.curStateIndex = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector340(0, 0.8, 1.5);
      this.camera.transform.rotate(new Vector340(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.sprite3D = this.scene.addChild(new Sprite3D11());
      this.lineSprite3D = this.scene.addChild(new Sprite3D11());
      Laya.loader.load("resources/gltf/monster.glb", Laya.Loader.HIERARCHY).then((res) => {
        this.sprite3D = res.create();
        var ani = this.sprite3D.getComponent(Laya.Animator);
        ani.speed = 0;
        this.scene.addChild(this.sprite3D);
        this.initSlider();
      });
    }
    initSlider() {
      var skins = [];
      skins.push("resources/image/hslider.png", "resources/image/hslider$bar.png");
      Laya.loader.load(skins, Laya.Handler.create(this, this.onLoadComplete));
    }
    onLoadComplete(e = null) {
      this.placeHSlider();
      this.placeHSlider1();
    }
    placeHSlider() {
      var hs = new Laya.HSlider();
      var label = new Laya.Label("target 20");
      label.fontSize = 15;
      label.pos(this.pageWidth - 350, 170);
      hs.skin = "resources/image/hslider.png";
      hs.width = 300;
      hs.pos(this.pageWidth - 350, 190);
      hs.min = 0;
      hs.max = 1;
      hs.value = 0.1;
      hs.tick = 0.01;
      hs.changeHandler = new Laya.Handler(this, this.onChange);
      this.box2D.addChild(hs);
      this.box2D.addChild(label);
    }
    placeHSlider1() {
      var hs1 = new Laya.HSlider();
      var label1 = new Laya.Label("target 26");
      label1.fontSize = 15;
      label1.pos(this.pageWidth - 350, 210);
      hs1.skin = "resources/image/hslider.png";
      hs1.width = 300;
      hs1.pos(this.pageWidth - 350, 230);
      hs1.min = 0;
      hs1.max = 1;
      hs1.value = 0.1;
      hs1.tick = 0.01;
      hs1.changeHandler = new Laya.Handler(this, this.onChange1);
      this.box2D.addChild(hs1);
      this.box2D.addChild(label1);
    }
    onChange(value) {
      var skin = this.sprite3D.getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0);
      var skinRender = skin.getComponent(Laya.SkinnedMeshRenderer);
      skinRender.setMorphChannelWeight("target_20", value);
    }
    onChange1(value) {
      var skin = this.sprite3D.getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0).getChildAt(0);
      var skinRender = skin.getComponent(Laya.SkinnedMeshRenderer);
      skinRender.setMorphChannelWeight("target_26", value);
    }
  };
  __name(MeshLoad, "MeshLoad");
  __decorateClass([
    property163(Laya.Camera)
  ], MeshLoad.prototype, "camera", 2);
  __decorateClass([
    property163(Laya.Scene3D)
  ], MeshLoad.prototype, "scene", 2);
  __decorateClass([
    property163(Laya.Sprite3D)
  ], MeshLoad.prototype, "directionLight", 2);
  MeshLoad = __decorateClass([
    regClass163("3b0cde81-33ee-4c51-9e5f-19f8ee9bac28", "../src/3D/Mesh/BlendShape.ts")
  ], MeshLoad);

  // src/3D/Mesh/ChangeMesh.ts
  var Vector341 = Laya.Vector3;
  var PrimitiveMesh11 = Laya.PrimitiveMesh;
  var MeshFilter3 = Laya.MeshFilter;
  var { regClass: regClass164, property: property164 } = Laya;
  var ChangeMesh = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.rotate(new Vector341(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector341(-3.14 / 3, 0, 0));
      this.sphere = this.scene.getChildByName("Sphere");
      this.sphereMesh = this.sphere.getComponent(MeshFilter3).sharedMesh;
      super.addBottomButton(["\u5207\u6362mesh", "\u5207\u6362mesh", "\u5207\u6362mesh"], this, [this.setMesh, this.setMesh, this.setMesh]);
    }
    setMesh() {
      this.index++;
      if (this.index % 3 === 1) {
        this.box = PrimitiveMesh11.createBox(0.5, 0.5, 0.5);
        this.sphere.getComponent(MeshFilter3).sharedMesh = this.box;
      } else if (this.index % 3 === 2) {
        this.capsule = PrimitiveMesh11.createCapsule(0.25, 1, 10, 20);
        this.sphere.getComponent(MeshFilter3).sharedMesh = this.capsule;
      } else {
        this.sphere.getComponent(MeshFilter3).sharedMesh = this.sphereMesh;
      }
    }
  };
  __name(ChangeMesh, "ChangeMesh");
  __decorateClass([
    property164(Laya.Camera)
  ], ChangeMesh.prototype, "camera", 2);
  __decorateClass([
    property164(Laya.Scene3D)
  ], ChangeMesh.prototype, "scene", 2);
  __decorateClass([
    property164(Laya.Sprite3D)
  ], ChangeMesh.prototype, "directionLight", 2);
  ChangeMesh = __decorateClass([
    regClass164("7a9f3e82-8383-4e45-84ce-8900012ca076", "../src/3D/Mesh/ChangeMesh.ts")
  ], ChangeMesh);

  // src/3D/Mesh/CustomMesh.ts
  var Sprite3D12 = Laya.Sprite3D;
  var MeshSprite3D14 = Laya.MeshSprite3D;
  var Vector342 = Laya.Vector3;
  var PrimitiveMesh12 = Laya.PrimitiveMesh;
  var Color12 = Laya.Color;
  var PixelLineSprite3D = Laya.PixelLineSprite3D;
  var { regClass: regClass165, property: property165 } = Laya;
  var CustomMesh = class extends BaseScript {
    constructor() {
      super();
      this.curStateIndex = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector342(0, 0.8, 1.5);
      this.camera.transform.rotate(new Vector342(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.sprite3D = this.scene.addChild(new Sprite3D12());
      this.lineSprite3D = this.scene.addChild(new Sprite3D12());
      var box = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createBox(0.5, 0.5, 0.5)));
      box.transform.position = new Vector342(2, 0.25, 0);
      box.transform.rotate(new Vector342(0, 45, 0), false, false);
      var boxLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(100));
      Tool.linearModel(box, boxLineSprite3D, Color12.GREEN);
      var sphere = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createSphere(0.25, 20, 20)));
      sphere.transform.position = new Vector342(1, 0.25, 0);
      var sphereLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(3500));
      Tool.linearModel(sphere, sphereLineSprite3D, Color12.GREEN);
      var cylinder = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createCylinder(0.25, 1, 20)));
      cylinder.transform.position = new Vector342(0, 0.5, 0);
      var cylinderLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(1e3));
      Tool.linearModel(cylinder, cylinderLineSprite3D, Color12.GREEN);
      var capsule = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createCapsule(0.25, 1, 10, 20)));
      capsule.transform.position = new Vector342(-1, 0.5, 0);
      var capsuleLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(3e3));
      Tool.linearModel(capsule, capsuleLineSprite3D, Color12.GREEN);
      var cone = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createCone(0.25, 0.75)));
      cone.transform.position = new Vector342(-2, 0.375, 0);
      var coneLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(500));
      Tool.linearModel(cone, coneLineSprite3D, Color12.GREEN);
      var plane = this.sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createPlane(6, 6, 10, 10)));
      var planeLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D(1e3));
      Tool.linearModel(plane, planeLineSprite3D, Color12.GRAY);
      this.lineSprite3D.active = false;
      super.addBottomButton(["\u7F51\u683C\u6A21\u5F0F", "\u6B63\u5E38\u6A21\u5F0F"], this, [this.setMesh, this.setMesh]);
    }
    setMesh() {
      if (++this.curStateIndex % 2 == 1) {
        this.sprite3D.active = false;
        this.lineSprite3D.active = true;
      } else {
        this.sprite3D.active = true;
        this.lineSprite3D.active = false;
      }
    }
  };
  __name(CustomMesh, "CustomMesh");
  __decorateClass([
    property165(Laya.Camera)
  ], CustomMesh.prototype, "camera", 2);
  __decorateClass([
    property165(Laya.Scene3D)
  ], CustomMesh.prototype, "scene", 2);
  __decorateClass([
    property165(Laya.Sprite3D)
  ], CustomMesh.prototype, "directionLight", 2);
  CustomMesh = __decorateClass([
    regClass165("4c9dc53e-0e5b-43ef-8b01-430008da119e", "../src/3D/Mesh/CustomMesh.ts")
  ], CustomMesh);
  var _Tool = class _Tool {
    static linearModel(sprite3D, lineSprite3D, color) {
      if (sprite3D instanceof MeshSprite3D14) {
        var meshSprite3D = sprite3D;
        var mesh = meshSprite3D.meshFilter.sharedMesh;
        var positions = [];
        mesh.getPositions(positions);
        var indices = mesh.getSubMesh(0).getIndices();
        for (var i = 0; i < indices.length; i += 3) {
          var vertex0 = positions[indices[i]];
          var vertex1 = positions[indices[i + 1]];
          var vertex2 = positions[indices[i + 2]];
          Vector342.transformCoordinate(vertex0, meshSprite3D.transform.worldMatrix, this.transVertex0);
          Vector342.transformCoordinate(vertex1, meshSprite3D.transform.worldMatrix, this.transVertex1);
          Vector342.transformCoordinate(vertex2, meshSprite3D.transform.worldMatrix, this.transVertex2);
          lineSprite3D.addLine(this.transVertex0, this.transVertex1, color, color);
          lineSprite3D.addLine(this.transVertex1, this.transVertex2, color, color);
          lineSprite3D.addLine(this.transVertex2, this.transVertex0, color, color);
        }
      }
      for (var i = 0, n = sprite3D.numChildren; i < n; i++)
        _Tool.linearModel(sprite3D.getChildAt(i), lineSprite3D, color);
    }
    static DrawBoundingBox(sprite3D, sprite, color) {
      sprite3D.meshRenderer.bounds.getCorners(_Tool.corners);
      var rotate = new Vector342(0, 0, 90);
      _Tool.DrawTwelveLines(_Tool.corners[0], _Tool.corners[1], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[1], _Tool.corners[2], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool.DrawTwelveLines(_Tool.corners[2], _Tool.corners[3], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[3], _Tool.corners[0], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool.DrawTwelveLines(_Tool.corners[4], _Tool.corners[5], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[5], _Tool.corners[6], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool.DrawTwelveLines(_Tool.corners[6], _Tool.corners[7], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[7], _Tool.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[0], _Tool.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[1], _Tool.corners[5], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[2], _Tool.corners[6], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool.DrawTwelveLines(_Tool.corners[3], _Tool.corners[7], rotate, sprite);
    }
    static DrawTwelveLines(start, end, rotate, sprite3D) {
      var length = Vector342.distance(start, end);
      var cylinder = sprite3D.addChild(new MeshSprite3D14(PrimitiveMesh12.createCylinder(4e-3, length, 3)));
      cylinder.transform.rotate(rotate, true, false);
      var cylPos = cylinder.transform.position;
      var x = start.x + end.x;
      var y = start.y + end.y;
      var z = start.z + end.z;
      cylPos.setValue(x / 2, y / 2, z / 2);
      cylinder.transform.position = cylPos;
    }
    constructor() {
    }
  };
  __name(_Tool, "Tool");
  _Tool.transVertex0 = new Vector342();
  _Tool.transVertex1 = new Vector342();
  _Tool.transVertex2 = new Vector342();
  _Tool.corners = [];
  var Tool = _Tool;

  // src/3D/Mesh/MeshLoad.ts
  var Sprite3D13 = Laya.Sprite3D;
  var MeshSprite3D15 = Laya.MeshSprite3D;
  var Vector343 = Laya.Vector3;
  var Quaternion9 = Laya.Quaternion;
  var PrimitiveMesh13 = Laya.PrimitiveMesh;
  var Color13 = Laya.Color;
  var PixelLineSprite3D2 = Laya.PixelLineSprite3D;
  var { regClass: regClass166, property: property166 } = Laya;
  var MeshLoad2 = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector343(0, 0.01, 0);
      this.curStateIndex = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector343(0, 0.8, 1.5);
      this.camera.transform.rotate(new Vector343(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.sprite3D = this.scene.addChild(new Sprite3D13());
      this.lineSprite3D = this.scene.addChild(new Sprite3D13());
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((mesh) => {
        var layaMonkey = this.sprite3D.addChild(new MeshSprite3D15(mesh));
        layaMonkey.transform.localScale = new Vector343(0.3, 0.3, 0.3);
        layaMonkey.transform.rotation = new Quaternion9(0.7071068, 0, 0, -0.7071067);
        var layaMonkeyLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D2(5e3));
        Tool2.linearModel(layaMonkey, layaMonkeyLineSprite3D, Color13.GREEN);
        var plane = this.sprite3D.addChild(new MeshSprite3D15(PrimitiveMesh13.createPlane(6, 6, 10, 10)));
        plane.transform.position = new Vector343(0, 0, -1);
        var planeLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D2(1e3));
        Tool2.linearModel(plane, planeLineSprite3D, Color13.GRAY);
        Laya.timer.frameLoop(1, this, () => {
          layaMonkeyLineSprite3D.transform.rotate(this.rotation, false);
          layaMonkey.transform.rotate(this.rotation, false);
        });
        this.lineSprite3D.active = false;
        super.addBottomButton(["\u7F51\u683C\u6A21\u5F0F", "\u6B63\u5E38\u6A21\u5F0F"], this, [this.setMesh, this.setMesh]);
      });
    }
    setMesh() {
      if (++this.curStateIndex % 2 == 1) {
        this.sprite3D.active = false;
        this.lineSprite3D.active = true;
      } else {
        this.sprite3D.active = true;
        this.lineSprite3D.active = false;
      }
    }
  };
  __name(MeshLoad2, "MeshLoad");
  __decorateClass([
    property166(Laya.Camera)
  ], MeshLoad2.prototype, "camera", 2);
  __decorateClass([
    property166(Laya.Scene3D)
  ], MeshLoad2.prototype, "scene", 2);
  __decorateClass([
    property166(Laya.Sprite3D)
  ], MeshLoad2.prototype, "directionLight", 2);
  MeshLoad2 = __decorateClass([
    regClass166("24ca5702-da0a-4d0b-bb44-8e1bd939c940", "../src/3D/Mesh/MeshLoad.ts")
  ], MeshLoad2);
  var _Tool2 = class _Tool2 {
    static linearModel(sprite3D, lineSprite3D, color) {
      if (sprite3D instanceof MeshSprite3D15) {
        var meshSprite3D = sprite3D;
        var mesh = meshSprite3D.meshFilter.sharedMesh;
        var positions = [];
        mesh.getPositions(positions);
        var indices = mesh.getSubMesh(0).getIndices();
        for (var i = 0; i < indices.length; i += 3) {
          var vertex0 = positions[indices[i]];
          var vertex1 = positions[indices[i + 1]];
          var vertex2 = positions[indices[i + 2]];
          Vector343.transformCoordinate(vertex0, meshSprite3D.transform.worldMatrix, this.transVertex0);
          Vector343.transformCoordinate(vertex1, meshSprite3D.transform.worldMatrix, this.transVertex1);
          Vector343.transformCoordinate(vertex2, meshSprite3D.transform.worldMatrix, this.transVertex2);
          lineSprite3D.addLine(this.transVertex0, this.transVertex1, color, color);
          lineSprite3D.addLine(this.transVertex1, this.transVertex2, color, color);
          lineSprite3D.addLine(this.transVertex2, this.transVertex0, color, color);
        }
      }
      for (var i = 0, n = sprite3D.numChildren; i < n; i++)
        _Tool2.linearModel(sprite3D.getChildAt(i), lineSprite3D, color);
    }
    static DrawBoundingBox(sprite3D, sprite, color) {
      sprite3D.meshRenderer.bounds.getCorners(_Tool2.corners);
      var rotate = new Vector343(0, 0, 90);
      _Tool2.DrawTwelveLines(_Tool2.corners[0], _Tool2.corners[1], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[1], _Tool2.corners[2], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool2.DrawTwelveLines(_Tool2.corners[2], _Tool2.corners[3], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[3], _Tool2.corners[0], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool2.DrawTwelveLines(_Tool2.corners[4], _Tool2.corners[5], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[5], _Tool2.corners[6], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool2.DrawTwelveLines(_Tool2.corners[6], _Tool2.corners[7], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[7], _Tool2.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[0], _Tool2.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[1], _Tool2.corners[5], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[2], _Tool2.corners[6], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool2.DrawTwelveLines(_Tool2.corners[3], _Tool2.corners[7], rotate, sprite);
    }
    static DrawTwelveLines(start, end, rotate, sprite3D) {
      var length = Vector343.distance(start, end);
      var cylinder = sprite3D.addChild(new MeshSprite3D15(PrimitiveMesh13.createCylinder(4e-3, length, 3)));
      cylinder.transform.rotate(rotate, true, false);
      var cylPos = cylinder.transform.position;
      var x = start.x + end.x;
      var y = start.y + end.y;
      var z = start.z + end.z;
      cylPos.setValue(x / 2, y / 2, z / 2);
      cylinder.transform.position = cylPos;
    }
    constructor() {
    }
  };
  __name(_Tool2, "Tool");
  _Tool2.transVertex0 = new Vector343();
  _Tool2.transVertex1 = new Vector343();
  _Tool2.transVertex2 = new Vector343();
  _Tool2.corners = [];
  var Tool2 = _Tool2;

  // src/3D/PerformanceTest/DynamicBatchTest.ts
  var Matrix4x42 = Laya.Matrix4x4;
  var PrimitiveMesh14 = Laya.PrimitiveMesh;
  var MeshSprite3D16 = Laya.MeshSprite3D;
  var Vector344 = Laya.Vector3;
  var BlinnPhongMaterial8 = Laya.BlinnPhongMaterial;
  var { regClass: regClass167, property: property167 } = Laya;
  var DynamicBatchTest = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector344(0, 6.2, 10.5);
      this.camera.transform.rotationEuler = new Vector344(-40, 0, 0);
      Laya.loader.load("resources/res/threeDimen/layabox.png").then((tex) => {
        var radius = new Vector344(0, 0, 1);
        var radMatrix = new Matrix4x42();
        var circleCount = 50;
        var boxMesh = PrimitiveMesh14.createBox(0.02, 0.02, 0.02);
        var boxMat = new BlinnPhongMaterial8();
        boxMat.albedoTexture = tex;
        for (var i = 0; i < circleCount; i++) {
          radius.z = 1 + i * 0.15;
          radius.y = i * 0.03;
          var oneCircleCount = 100 + i * 15;
          for (var j = 0; j < oneCircleCount; j++) {
            var boxSprite = new MeshSprite3D16(boxMesh);
            boxSprite.meshRenderer.sharedMaterial = boxMat;
            var localPos = boxSprite.transform.localPosition;
            var rad = Math.PI * 2 / oneCircleCount * j;
            Matrix4x42.createRotationY(rad, radMatrix);
            Vector344.transformCoordinate(radius, radMatrix, localPos);
            boxSprite.transform.localPosition = localPos;
            this.scene.addChild(boxSprite);
          }
        }
      });
    }
  };
  __name(DynamicBatchTest, "DynamicBatchTest");
  __decorateClass([
    property167(Laya.Camera)
  ], DynamicBatchTest.prototype, "camera", 2);
  __decorateClass([
    property167(Laya.Scene3D)
  ], DynamicBatchTest.prototype, "scene", 2);
  DynamicBatchTest = __decorateClass([
    regClass167("05b00a16-ebe7-459a-81d3-ba04127e4f17", "../src/3D/PerformanceTest/DynamicBatchTest.ts")
  ], DynamicBatchTest);

  // src/3D/PerformanceTest/StaticBatchingTest.ts
  var { regClass: regClass168, property: property168 } = Laya;
  var StaticBatchingTest = class extends BaseScript {
    constructor() {
      super();
    }
    /**
     * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake() {
      super.base(this.camera);
    }
  };
  __name(StaticBatchingTest, "StaticBatchingTest");
  __decorateClass([
    property168(Laya.Camera)
  ], StaticBatchingTest.prototype, "camera", 2);
  StaticBatchingTest = __decorateClass([
    regClass168("0b1e65a6-6e00-4885-b58a-54ae9acbda08", "../src/3D/PerformanceTest/StaticBatchingTest.ts")
  ], StaticBatchingTest);

  // src/3D/PhysicsWorld/PhysicsWorld_BaseCollider.ts
  var SphereColliderShape = Laya.SphereColliderShape;
  var MeshSprite3D17 = Laya.MeshSprite3D;
  var Vector345 = Laya.Vector3;
  var BlinnPhongMaterial9 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape = Laya.CapsuleColliderShape;
  var CylinderColliderShape = Laya.CylinderColliderShape;
  var Rigidbody3D2 = Laya.Rigidbody3D;
  var ConeColliderShape = Laya.ConeColliderShape;
  var PrimitiveMesh15 = Laya.PrimitiveMesh;
  var BoxColliderShape2 = Laya.BoxColliderShape;
  var PhysicsCollider3 = Laya.PhysicsCollider;
  var Vector49 = Laya.Vector4;
  var { regClass: regClass169, property: property169 } = Laya;
  var PhysicsWorld_BaseCollider = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector345(0, 6, 9.5);
      this.camera.transform.rotate(new Vector345(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector345(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector345(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var resource = [
        "resources/res/threeDimen/Physics/rocks.jpg",
        "resources/res/threeDimen/Physics/plywood.jpg",
        "resources/res/threeDimen/Physics/wood.jpg",
        "resources/res/threeDimen/Physics/steel2.jpg",
        "resources/res/threeDimen/Physics/steel.jpg"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var plane = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial9();
      planeMat.albedoTexture = res[2];
      planeMat.tilingOffset = new Vector49(2, 2, 0, 0);
      plane.meshRenderer.material = planeMat;
      var planeStaticCollider = plane.addComponent(PhysicsCollider3);
      var planeShape = new BoxColliderShape2(10, 0, 10);
      planeStaticCollider.colliderShape = planeShape;
      planeStaticCollider.friction = 2;
      planeStaticCollider.restitution = 0.3;
      this.addBox();
      this.randomAddPhysicsSprite();
    }
    randomAddPhysicsSprite() {
      Laya.timer.loop(1e3, this, () => {
        var random = Math.floor(Math.random() * 5) % 5;
        switch (random) {
          case 0:
            this.addBox();
            break;
          case 1:
            this.addSphere();
            break;
          case 2:
            this.addCapsule();
            break;
          case 3:
            this.addCone();
            break;
          case 4:
            this.addCylinder();
            break;
          default:
            break;
        }
      });
    }
    addBox() {
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D17(PrimitiveMesh15.createBox(sX, sY, sZ)));
      box.meshRenderer.material = new BlinnPhongMaterial9();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res) => {
        box.meshRenderer.material.albedoTexture = res;
      });
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = box.addComponent(Rigidbody3D2);
      var boxShape = new BoxColliderShape2(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    addSphere() {
      var radius = Math.random() * 0.2 + 0.2;
      var sphere = this.scene.addChild(new MeshSprite3D17(PrimitiveMesh15.createSphere(radius)));
      sphere.meshRenderer.material = new BlinnPhongMaterial9();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res) => {
        sphere.meshRenderer.material.albedoTexture = res;
      });
      var pos = sphere.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D2);
      var sphereShape = new SphereColliderShape(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
    addCapsule() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D17(PrimitiveMesh15.createCapsule(raidius, height)));
      capsule.meshRenderer.material = new BlinnPhongMaterial9();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        capsule.meshRenderer.material.albedoTexture = res;
      });
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D2);
      var sphereShape = new CapsuleColliderShape(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
    addCone() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var cone = new MeshSprite3D17(PrimitiveMesh15.createCone(raidius, height));
      this.scene.addChild(cone);
      cone.meshRenderer.material = new BlinnPhongMaterial9();
      Laya.loader.load("resources/res/threeDimen/Physics/steel2.jpg").then((res) => {
        cone.meshRenderer.material.albedoTexture = res;
      });
      var pos = cone.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      cone.transform.position = pos;
      var rigidBody = cone.addComponent(Rigidbody3D2);
      var coneShape = new ConeColliderShape(raidius, height);
      rigidBody.colliderShape = coneShape;
      rigidBody.mass = 10;
    }
    addCylinder() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var cylinder = new MeshSprite3D17(PrimitiveMesh15.createCylinder(raidius, height));
      this.scene.addChild(cylinder);
      cylinder.meshRenderer.material = new BlinnPhongMaterial9();
      Laya.loader.load("resources/res/threeDimen/Physics/steel.jpg").then((res) => {
        cylinder.meshRenderer.material.albedoTexture = res;
      });
      var transform = cylinder.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = cylinder.addComponent(Rigidbody3D2);
      var cylinderShape = new CylinderColliderShape(raidius, height);
      rigidBody.colliderShape = cylinderShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_BaseCollider, "PhysicsWorld_BaseCollider");
  __decorateClass([
    property169(Laya.Camera)
  ], PhysicsWorld_BaseCollider.prototype, "camera", 2);
  __decorateClass([
    property169(Laya.Scene3D)
  ], PhysicsWorld_BaseCollider.prototype, "scene", 2);
  __decorateClass([
    property169(Laya.Sprite3D)
  ], PhysicsWorld_BaseCollider.prototype, "directionLight", 2);
  PhysicsWorld_BaseCollider = __decorateClass([
    regClass169("3f74ca02-f4fc-4548-8292-63f8adf9ccde", "../src/3D/PhysicsWorld/PhysicsWorld_BaseCollider.ts")
  ], PhysicsWorld_BaseCollider);

  // src/3D/PhysicsWorld/PhysicsWorld_BuildingBlocks.ts
  var Event47 = Laya.Event;
  var MeshSprite3D18 = Laya.MeshSprite3D;
  var Vector346 = Laya.Vector3;
  var BlinnPhongMaterial10 = Laya.BlinnPhongMaterial;
  var HitResult2 = Laya.HitResult;
  var Vector25 = Laya.Vector2;
  var Rigidbody3D3 = Laya.Rigidbody3D;
  var Ray4 = Laya.Ray;
  var PrimitiveMesh16 = Laya.PrimitiveMesh;
  var BoxColliderShape3 = Laya.BoxColliderShape;
  var PhysicsCollider4 = Laya.PhysicsCollider;
  var Vector410 = Laya.Vector4;
  var { regClass: regClass170, property: property170 } = Laya;
  var PhysicsWorld_BuildingBlocks = class extends BaseScript {
    constructor() {
      super();
      this.ray = new Ray4(new Vector346(0, 0, 0), new Vector346(0, 0, 0));
      this.point = new Vector25();
      this._outHitResult = new HitResult2();
      this.ZERO = new Vector346(0, 0, 0);
      this.ONE = new Vector346(1, 1, 1);
    }
    onAwake() {
      super.base(this.camera);
      var resource = [
        "resources/res/threeDimen/Physics/wood.jpg",
        "resources/res/threeDimen/Physics/plywood.jpg"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      this.camera.transform.position = new Vector346(4.5, 6, 4.5);
      this.camera.transform.rotate(new Vector346(-30, 45, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector346(-1, -1, 1));
      this.directionLight.transform.worldMatrix = mat;
      var plane = this.scene.addChild(new MeshSprite3D18(PrimitiveMesh16.createPlane(13, 13, 10, 10)));
      var planeMat = new BlinnPhongMaterial10();
      planeMat.albedoTexture = res[0];
      planeMat.tilingOffset = new Vector410(2, 2, 0, 0);
      plane.meshRenderer.material = planeMat;
      plane.meshRenderer.receiveShadow = true;
      this.mesh1 = PrimitiveMesh16.createBox(2, 0.33, 0.5);
      this.mesh2 = PrimitiveMesh16.createBox(0.5, 0.33, 2);
      this.mat = new BlinnPhongMaterial10();
      this.mat.albedoTexture = res[1];
      var rigidBody = plane.addComponent(PhysicsCollider4);
      var boxShape = new BoxColliderShape3(13, 0, 13);
      rigidBody.colliderShape = boxShape;
      this.addMouseEvent();
      this.addBox();
    }
    addBox() {
      for (var i = 0; i < 8; i++) {
        this.addVerticalBox(-0.65, 0.165 + i * 0.33 * 2, 0);
        this.addVerticalBox(0, 0.165 + i * 0.33 * 2, 0);
        this.addVerticalBox(0.65, 0.165 + i * 0.33 * 2, 0);
        this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, -0.65);
        this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, 0);
        this.addHorizontalBox(0, 0.165 + 0.33 + i * 0.33 * 2, 0.65);
      }
    }
    addHorizontalBox(x, y, z) {
      var box = this.scene.addChild(new MeshSprite3D18(this.mesh1));
      box.meshRenderer.material = this.mat;
      box.meshRenderer.castShadow = true;
      box.meshRenderer.receiveShadow = true;
      box.transform.position = new Vector346(x, y, z);
      var rigidBody = box.addComponent(Rigidbody3D3);
      rigidBody.mass = 10;
      rigidBody.friction = 0.4;
      rigidBody.restitution = 0.2;
      var boxShape = new BoxColliderShape3(2, 0.33, 0.5);
      rigidBody.colliderShape = boxShape;
    }
    addVerticalBox(x, y, z) {
      var box = this.scene.addChild(new MeshSprite3D18(this.mesh2));
      box.meshRenderer.material = this.mat;
      box.meshRenderer.castShadow = true;
      box.meshRenderer.receiveShadow = true;
      box.transform.position = new Vector346(x, y, z);
      var rigidBody = box.addComponent(Rigidbody3D3);
      rigidBody.mass = 10;
      rigidBody.friction = 0.4;
      rigidBody.restitution = 0.2;
      var boxShape = new BoxColliderShape3(0.5, 0.33, 2);
      rigidBody.colliderShape = boxShape;
    }
    addMouseEvent() {
      this.owner.on(Event47.MOUSE_DOWN, this, this.onMouseDown);
      this.owner.on(Event47.MOUSE_UP, this, this.onMouseUp);
      this.owner.on(Event47.MOUSE_OUT, this, this.onMouseOut);
    }
    onMouseDown(e) {
      this.posX = this.point.x = e.target.mouseX * Index.screenWidth / Index.pageWidth;
      this.posY = this.point.y = e.target.mouseY * Index.screenHeight / Index.pageHeight;
      this.camera.viewportPointToRay(this.point, this.ray);
      this.scene.physicsSimulation.rayCast(this.ray, this._outHitResult);
      if (this._outHitResult.succeeded) {
        var collider = this._outHitResult.collider;
        this.hasSelectedSprite = collider.owner;
        this.hasSelectedRigidBody = collider;
        collider.angularFactor = this.ZERO;
        collider.angularVelocity = this.ZERO;
        collider.linearFactor = this.ZERO;
        collider.linearVelocity = this.ZERO;
      }
      this.owner.on(Event47.MOUSE_MOVE, this, this.onMouseMove);
    }
    onMouseMove(e) {
      this.delX = e.target.mouseX * Index.screenWidth / Index.pageWidth - this.posX;
      this.delY = e.target.mouseY * Index.screenHeight / Index.pageHeight - this.posY;
      if (this.hasSelectedSprite) {
        this.hasSelectedRigidBody.linearVelocity = new Vector346(this.delX / 4, 0, this.delY / 4);
      }
      this.posX = e.target.mouseX * Index.screenWidth / Index.pageWidth;
      this.posY = e.target.mouseY * Index.screenHeight / Index.pageHeight;
    }
    onMouseUp(e) {
      this.owner.off(Event47.MOUSE_MOVE, this, this.onMouseMove);
      if (this.hasSelectedSprite) {
        this.hasSelectedRigidBody.angularFactor = this.ONE;
        this.hasSelectedRigidBody.linearFactor = this.ONE;
        this.hasSelectedSprite = null;
      }
    }
    onMouseOut(e) {
      this.owner.off(Event47.MOUSE_MOVE, this, this.onMouseMove);
      if (this.hasSelectedSprite) {
        this.hasSelectedRigidBody.angularFactor = this.ONE;
        this.hasSelectedRigidBody.linearFactor = this.ONE;
        this.hasSelectedSprite = null;
      }
    }
  };
  __name(PhysicsWorld_BuildingBlocks, "PhysicsWorld_BuildingBlocks");
  __decorateClass([
    property170(Laya.Camera)
  ], PhysicsWorld_BuildingBlocks.prototype, "camera", 2);
  __decorateClass([
    property170(Laya.Scene3D)
  ], PhysicsWorld_BuildingBlocks.prototype, "scene", 2);
  __decorateClass([
    property170(Laya.Sprite3D)
  ], PhysicsWorld_BuildingBlocks.prototype, "directionLight", 2);
  PhysicsWorld_BuildingBlocks = __decorateClass([
    regClass170("bff20f3d-f89d-431c-a225-c6962910008d", "../src/3D/PhysicsWorld/PhysicsWorld_BuildingBlocks.ts")
  ], PhysicsWorld_BuildingBlocks);

  // src/3D/PhysicsWorld/PhysicsWorld_Character.ts
  var Vector347 = Laya.Vector3;
  var { regClass: regClass171, property: property171 } = Laya;
  var PhysicsWorld_Character = class extends BaseScript {
    constructor() {
      super();
      this.translateW = new Vector347(0, 0, -0.2);
      this.translateS = new Vector347(0, 0, 0.2);
      this.translateA = new Vector347(-0.2, 0, 0);
      this.translateD = new Vector347(0.2, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector347(0, 6, 9.5);
      this.camera.transform.rotate(new Vector347(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector347(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector347(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var resource = [
        "resources/res/threeDimen/Physics/plywood.jpg",
        "resources/res/threeDimen/Physics/wood.jpg",
        "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      this.mat1 = new Laya.BlinnPhongMaterial();
      this.mat2 = new Laya.BlinnPhongMaterial();
      this.mat1.albedoTexture = res[0];
      this.mat2.albedoTexture = res[1];
      var plane = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createPlane(20, 20, 10, 10)));
      var planeMat = new Laya.BlinnPhongMaterial();
      planeMat.albedoTexture = res[1];
      planeMat.tilingOffset = new Laya.Vector4(2, 2, 0, 0);
      plane.meshRenderer.material = planeMat;
      var rigidBody = plane.addComponent(Laya.PhysicsCollider);
      var boxShape = new Laya.BoxColliderShape(20, 0, 20);
      rigidBody.colliderShape = boxShape;
      for (var i = 0; i < 60; i++) {
        this.addBox();
        this.addCapsule();
      }
      this.addCharacter(res[2]);
    }
    addCharacter(res) {
      let monkey = res.create();
      this.scene.addChild(monkey);
      monkey.getChildAt(0).transform.localScale = new Laya.Vector3(1, 1, 1);
      var character = monkey.addComponent(Laya.CharacterController);
      var sphereShape = new Laya.CapsuleColliderShape(1, 3.4);
      sphereShape.localOffset = new Laya.Vector3(0, 1.7, 0);
      character.colliderShape = sphereShape;
      this.kinematicSphere = monkey;
      Laya.timer.frameLoop(1, this, this.onKeyDown);
    }
    onKeyDown() {
      var character = this.kinematicSphere.getComponent(Laya.CharacterController);
      Laya.InputManager.hasKeyDown(87) && character.move(this.translateW);
      Laya.InputManager.hasKeyDown(83) && character.move(this.translateS);
      Laya.InputManager.hasKeyDown(65) && character.move(this.translateA);
      Laya.InputManager.hasKeyDown(68) && character.move(this.translateD);
      Laya.InputManager.hasKeyDown(69) && character.jump();
    }
    addBox() {
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(sX, sY, sZ)));
      box.meshRenderer.material = this.mat1;
      box.transform.position = new Laya.Vector3(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      box.transform.rotationEuler = new Laya.Vector3(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      var rigidBody = box.addComponent(Laya.Rigidbody3D);
      var boxShape = new Laya.BoxColliderShape(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    addCapsule() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createCapsule(raidius, height)));
      capsule.meshRenderer.material = this.mat2;
      capsule.transform.position = new Laya.Vector3(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      capsule.transform.rotationEuler = new Laya.Vector3(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      var rigidBody = capsule.addComponent(Laya.Rigidbody3D);
      var sphereShape = new Laya.CapsuleColliderShape(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_Character, "PhysicsWorld_Character");
  __decorateClass([
    property171(Laya.Camera)
  ], PhysicsWorld_Character.prototype, "camera", 2);
  __decorateClass([
    property171(Laya.Scene3D)
  ], PhysicsWorld_Character.prototype, "scene", 2);
  __decorateClass([
    property171(Laya.Sprite3D)
  ], PhysicsWorld_Character.prototype, "directionLight", 2);
  PhysicsWorld_Character = __decorateClass([
    regClass171("20248bc4-a0e2-43b8-aa4c-b90c988dfbdf", "../src/3D/PhysicsWorld/PhysicsWorld_Character.ts")
  ], PhysicsWorld_Character);

  // src/3D/PhysicsWorld/PhysicsWorld_CollisionFiflter.ts
  var Color14 = Laya.Color;
  var InputManager3 = Laya.InputManager;
  var SphereColliderShape2 = Laya.SphereColliderShape;
  var MeshSprite3D19 = Laya.MeshSprite3D;
  var Vector348 = Laya.Vector3;
  var BlinnPhongMaterial11 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape2 = Laya.CapsuleColliderShape;
  var CylinderColliderShape2 = Laya.CylinderColliderShape;
  var Rigidbody3D4 = Laya.Rigidbody3D;
  var ConeColliderShape2 = Laya.ConeColliderShape;
  var PrimitiveMesh17 = Laya.PrimitiveMesh;
  var BoxColliderShape4 = Laya.BoxColliderShape;
  var PhysicsCollider5 = Laya.PhysicsCollider;
  var Vector411 = Laya.Vector4;
  var Physics3DUtils = Laya.Physics3DUtils;
  var { regClass: regClass172, property: property172 } = Laya;
  var PhysicsWorld_CollisionFiflter = class extends BaseScript {
    constructor() {
      super();
      this.translateW = new Vector348(0, 0, -0.2);
      this.translateS = new Vector348(0, 0, 0.2);
      this.translateA = new Vector348(-0.2, 0, 0);
      this.translateD = new Vector348(0.2, 0, 0);
      this.translateQ = new Vector348(-0.01, 0, 0);
      this.translateE = new Vector348(0.01, 0, 0);
      this._albedoColor = new Color14(1, 0, 0, 1);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector348(0, 6, 9.5);
      this.camera.transform.rotate(new Vector348(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector348(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector348(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.plane = this.scene.addChild(new MeshSprite3D19(PrimitiveMesh17.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex) => {
        planeMat.albedoTexture = tex;
      });
      planeMat.tilingOffset = new Vector411(2, 2, 0, 0);
      this.plane.meshRenderer.material = planeMat;
      var staticCollider = this.plane.addComponent(PhysicsCollider5);
      var boxShape = new BoxColliderShape4(20, 0, 20);
      staticCollider.colliderShape = boxShape;
      this.addKinematicSphere();
      for (var i = 0; i < 20; i++) {
        this.addBox();
        this.addCapsule();
        this.addCone();
        this.addCylinder();
        this.addSphere();
      }
    }
    addKinematicSphere() {
      var mat2 = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((tex) => {
        mat2.albedoTexture = tex;
      });
      mat2.albedoColor = this._albedoColor;
      var radius = 0.8;
      var sphere = this.scene.addChild(new MeshSprite3D19(PrimitiveMesh17.createSphere(radius)));
      sphere.meshRenderer.material = mat2;
      var pos = sphere.transform.position;
      pos.setValue(0, 0.8, 0);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D4);
      var sphereShape = new SphereColliderShape2(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 60;
      rigidBody.isKinematic = true;
      rigidBody.canCollideWith = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER1 | Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER3 | Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER5;
      this.kinematicSphere = sphere;
      Laya.timer.frameLoop(1, this, this.onKeyDown);
    }
    onKeyDown() {
      InputManager3.hasKeyDown(87) && this.kinematicSphere.transform.translate(this.translateW);
      InputManager3.hasKeyDown(83) && this.kinematicSphere.transform.translate(this.translateS);
      InputManager3.hasKeyDown(65) && this.kinematicSphere.transform.translate(this.translateA);
      InputManager3.hasKeyDown(68) && this.kinematicSphere.transform.translate(this.translateD);
      InputManager3.hasKeyDown(81) && this.plane.transform.translate(this.translateQ);
      InputManager3.hasKeyDown(69) && this.plane.transform.translate(this.translateE);
    }
    addBox() {
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D19(PrimitiveMesh17.createBox(sX, sY, sZ)));
      box.meshRenderer.material = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res) => {
        box.meshRenderer.material.albedoTexture = res;
      });
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 16 - 8, sY / 2, Math.random() * 16 - 8);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(0, Math.random() * 360, 0);
      transform.rotationEuler = rotationEuler;
      var rigidBody = box.addComponent(Rigidbody3D4);
      var boxShape = new BoxColliderShape4(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
      rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER1;
    }
    addCapsule() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D19(PrimitiveMesh17.createCapsule(raidius, height)));
      capsule.meshRenderer.material = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        capsule.meshRenderer.material.albedoTexture = res;
      });
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D4);
      var sphereShape = new CapsuleColliderShape2(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
      rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER2;
    }
    addCone() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var cone = new MeshSprite3D19(PrimitiveMesh17.createCone(raidius, height));
      this.scene.addChild(cone);
      cone.meshRenderer.material = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/steel2.jpg").then((res) => {
        cone.meshRenderer.material.albedoTexture = res;
      });
      var transform = cone.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rigidBody = cone.addComponent(Rigidbody3D4);
      var coneShape = new ConeColliderShape2(raidius, height);
      rigidBody.colliderShape = coneShape;
      rigidBody.mass = 10;
      rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER3;
    }
    addCylinder() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var cylinder = new MeshSprite3D19(PrimitiveMesh17.createCylinder(raidius, height));
      this.scene.addChild(cylinder);
      cylinder.meshRenderer.material = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/steel.jpg").then((res) => {
        cylinder.meshRenderer.material.albedoTexture = res;
      });
      var transform = cylinder.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = cylinder.addComponent(Rigidbody3D4);
      var cylinderShape = new CylinderColliderShape2(raidius, height);
      rigidBody.colliderShape = cylinderShape;
      rigidBody.mass = 10;
      rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER4;
    }
    addSphere() {
      var radius = Math.random() * 0.2 + 0.2;
      var sphere = this.scene.addChild(new MeshSprite3D19(PrimitiveMesh17.createSphere(radius)));
      sphere.meshRenderer.material = new BlinnPhongMaterial11();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res) => {
        sphere.meshRenderer.material.albedoTexture = res;
      });
      var pos = sphere.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D4);
      var sphereShape = new SphereColliderShape2(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
      rigidBody.collisionGroup = Physics3DUtils.COLLISIONFILTERGROUP_CUSTOMFILTER5;
    }
  };
  __name(PhysicsWorld_CollisionFiflter, "PhysicsWorld_CollisionFiflter");
  __decorateClass([
    property172(Laya.Camera)
  ], PhysicsWorld_CollisionFiflter.prototype, "camera", 2);
  __decorateClass([
    property172(Laya.Scene3D)
  ], PhysicsWorld_CollisionFiflter.prototype, "scene", 2);
  __decorateClass([
    property172(Laya.Sprite3D)
  ], PhysicsWorld_CollisionFiflter.prototype, "directionLight", 2);
  PhysicsWorld_CollisionFiflter = __decorateClass([
    regClass172("a45b1a31-9a36-4154-b987-246e1b1fb8b3", "../src/3D/PhysicsWorld/PhysicsWorld_CollisionFiflter.ts")
  ], PhysicsWorld_CollisionFiflter);

  // src/3D/PhysicsWorld/PhysicsWorld_CompoundCollider.ts
  var SphereColliderShape3 = Laya.SphereColliderShape;
  var MeshSprite3D20 = Laya.MeshSprite3D;
  var Vector349 = Laya.Vector3;
  var BlinnPhongMaterial12 = Laya.BlinnPhongMaterial;
  var CompoundColliderShape = Laya.CompoundColliderShape;
  var Rigidbody3D5 = Laya.Rigidbody3D;
  var PrimitiveMesh18 = Laya.PrimitiveMesh;
  var BoxColliderShape5 = Laya.BoxColliderShape;
  var PhysicsCollider6 = Laya.PhysicsCollider;
  var Vector412 = Laya.Vector4;
  var { regClass: regClass173, property: property173 } = Laya;
  var PhysicsWorld_CompoundCollider = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector349(0, 6, 9.5);
      this.camera.transform.rotate(new Vector349(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector349(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector349(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var plane = this.scene.addChild(new MeshSprite3D20(PrimitiveMesh18.createPlane(20, 20, 20, 10)));
      var planeMat = new BlinnPhongMaterial12();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex) => {
        planeMat.albedoTexture = tex;
      });
      planeMat.tilingOffset = new Vector412(2, 2, 0, 0);
      plane.meshRenderer.material = planeMat;
      plane.meshRenderer.receiveShadow = true;
      var staticCollider = plane.addComponent(PhysicsCollider6);
      var planeShape = new BoxColliderShape5(13, 0, 13);
      staticCollider.colliderShape = planeShape;
      staticCollider.friction = 2;
      this.randomAddPhysicsSprite();
    }
    randomAddPhysicsSprite() {
      Laya.timer.loop(1e3, this, () => {
        var random = Math.floor(Math.random() * 2) % 2;
        switch (random) {
          case 0:
            this.addTable();
            break;
          case 1:
            this.addObject();
            break;
          default:
            break;
        }
      });
    }
    addTable() {
      var mat = new BlinnPhongMaterial12();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex) => {
        mat.albedoTexture = tex;
      });
      mat.shininess = 1;
      Laya.loader.load("resources/res/threeDimen/Physics/table.lm").then((res) => {
        var table = this.scene.addChild(new MeshSprite3D20(res));
        table.meshRenderer.material = mat;
        var transform = table.transform;
        var pos = transform.position;
        pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
        transform.position = pos;
        var rotationEuler = transform.rotationEuler;
        rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
        transform.rotationEuler = rotationEuler;
        var scale = transform.getWorldLossyScale();
        scale.setValue(3, 3, 3);
        transform.setWorldLossyScale(scale);
        var rigidBody = table.addComponent(Rigidbody3D5);
        rigidBody.mass = 10;
        rigidBody.friction = 1;
        var compoundShape = new CompoundColliderShape();
        var boxShape = new BoxColliderShape5(0.5, 0.4, 0.045);
        var localOffset = boxShape.localOffset;
        localOffset.setValue(0, 0, 0.125);
        boxShape.localOffset = localOffset;
        compoundShape.addChildShape(boxShape);
        var boxShape1 = new BoxColliderShape5(0.1, 0.1, 0.3);
        boxShape1.localOffset = new Vector349(-0.2, -0.148, -0.048);
        compoundShape.addChildShape(boxShape1);
        var boxShape2 = new BoxColliderShape5(0.1, 0.1, 0.3);
        var localOffset2 = boxShape2.localOffset;
        localOffset2.setValue(0.2, -0.148, -0.048);
        boxShape2.localOffset = localOffset2;
        compoundShape.addChildShape(boxShape2);
        var boxShape3 = new BoxColliderShape5(0.1, 0.1, 0.3);
        var localOffset3 = boxShape3.localOffset;
        localOffset3.setValue(-0.2, 0.153, -0.048);
        boxShape3.localOffset = localOffset3;
        compoundShape.addChildShape(boxShape3);
        var boxShape4 = new BoxColliderShape5(0.1, 0.1, 0.3);
        var localOffset4 = boxShape4.localOffset;
        localOffset4.setValue(0.2, 0.153, -0.048);
        boxShape4.localOffset = localOffset3;
        compoundShape.addChildShape(boxShape4);
        rigidBody.colliderShape = compoundShape;
      });
    }
    addObject() {
      var mat = new BlinnPhongMaterial12();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((tex) => {
        mat.albedoTexture = tex;
      });
      Laya.loader.load("resources/res/threeDimen/Physics/object.lm").then((res) => {
        var object = this.scene.addChild(new MeshSprite3D20(res));
        var transform = object.transform;
        var pos = transform.position;
        pos.setValue(Math.random() * 4 - 2, 5, Math.random() * 4 - 2);
        transform.position = pos;
        var rotationEuler = transform.rotationEuler;
        rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
        transform.rotationEuler = rotationEuler;
        var scale = transform.getWorldLossyScale();
        scale.setValue(0.01, 0.01, 0.01);
        transform.setWorldLossyScale(scale);
        object.meshRenderer.material = mat;
        var rigidBody = object.addComponent(Rigidbody3D5);
        rigidBody.mass = 3;
        rigidBody.friction = 0.3;
        var compoundShape = new CompoundColliderShape();
        var boxShape = new BoxColliderShape5(40, 40, 40);
        var boxLocalOffset = boxShape.localOffset;
        boxLocalOffset.setValue(0, 0, -20);
        boxShape.localOffset = boxLocalOffset;
        compoundShape.addChildShape(boxShape);
        var sphereShape = new SphereColliderShape3(25);
        var sphereLocalOffset = sphereShape.localOffset;
        sphereLocalOffset.setValue(0, 0, 24);
        sphereShape.localOffset = sphereLocalOffset;
        compoundShape.addChildShape(sphereShape);
        rigidBody.colliderShape = compoundShape;
      });
    }
  };
  __name(PhysicsWorld_CompoundCollider, "PhysicsWorld_CompoundCollider");
  __decorateClass([
    property173(Laya.Camera)
  ], PhysicsWorld_CompoundCollider.prototype, "camera", 2);
  __decorateClass([
    property173(Laya.Scene3D)
  ], PhysicsWorld_CompoundCollider.prototype, "scene", 2);
  __decorateClass([
    property173(Laya.Sprite3D)
  ], PhysicsWorld_CompoundCollider.prototype, "directionLight", 2);
  PhysicsWorld_CompoundCollider = __decorateClass([
    regClass173("16ff281f-5149-414e-b707-2cfd0d770f48", "../src/3D/PhysicsWorld/PhysicsWorld_CompoundCollider.ts")
  ], PhysicsWorld_CompoundCollider);

  // src/3D/PhysicsWorld/PhysicsWorld_ConfigurableJoint.ts
  var Color15 = Laya.Color;
  var ConfigurableConstraint = Laya.ConfigurableConstraint;
  var SphereColliderShape4 = Laya.SphereColliderShape;
  var MeshSprite3D21 = Laya.MeshSprite3D;
  var Vector350 = Laya.Vector3;
  var BlinnPhongMaterial13 = Laya.BlinnPhongMaterial;
  var Rigidbody3D6 = Laya.Rigidbody3D;
  var PrimitiveMesh19 = Laya.PrimitiveMesh;
  var BoxColliderShape6 = Laya.BoxColliderShape;
  var { regClass: regClass174, property: property174 } = Laya;
  var PhysicsWorld_ConfigurableJoint = class extends BaseScript {
    constructor() {
      super();
    }
    /**
     * 注意，只有在onStart方法中才能生效
     */
    onStart() {
      super.base(this.camera);
      this.camera.transform.position = new Vector350(0, 6, 15);
      this.camera.transform.rotate(new Vector350(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector350(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector350(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var plane = this.scene.addChild(new MeshSprite3D21(PrimitiveMesh19.createPlane(40, 40, 40, 40)));
      plane.transform.position = new Vector350(0, -2, 0);
      var planeMat = new BlinnPhongMaterial13();
      Laya.loader.load("resources/res/threeDimen/Physics/grass.png").then((tex) => {
        planeMat.albedoTexture = tex;
      });
      var tilingOffset = planeMat.tilingOffset;
      tilingOffset.setValue(5, 5, 0, 0);
      planeMat.tilingOffset = tilingOffset;
      plane.meshRenderer.material = planeMat;
      this.springTest();
      this.bounceTest();
      this.alongZAixs();
      this.freeRotate();
      this.rotateAngularX();
      this.rotateAngularPoint();
    }
    springTest() {
      var boxA = this.addRigidBodySphere(new Vector350(7, 3, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      boxARigid.overrideGravity = true;
      boxARigid.isKinematic = true;
      var boxB = this.addRigidBodyBox(new Vector350(10, 0, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -3, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minLinearLimit = new Vector350(-3, 0, 0);
      configurableJoint.maxLinearLimit = new Vector350(3, 0, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.linearLimitSpring = new Vector350(100, 0, 0);
      configurableJoint.linearDamp = new Vector350(0, 0, 0);
    }
    bounceTest() {
      var boxA = this.addRigidBodySphere(new Vector350(7, 3, 3), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(7, 0, 3), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -3, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minLinearLimit = new Vector350(-2, 0, 0);
      configurableJoint.maxLinearLimit = new Vector350(2, 0, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.linearBounce = new Vector350(0.5, 0, 0);
      boxBRigid.applyImpulse(new Vector350(100, 0, 0));
    }
    bounceTestY() {
      var boxA = this.addRigidBodySphere(new Vector350(0, 4, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(0, 2, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -2, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minLinearLimit = new Vector350(0, -2, 0);
      configurableJoint.maxLinearLimit = new Vector350(0, 10, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
    }
    rotateAngularX() {
      var boxA = this.addRigidBodySphere(new Vector350(-2, 3, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(-2, 1, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -2, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minAngularLimit = new Vector350(-2, 0, 0);
      configurableJoint.maxAngularLimit = new Vector350(2, 0, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_FREE;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      boxBRigid.angularVelocity = new Vector350(5, 0, 0);
    }
    rotateAngularZ() {
      var boxA = this.addRigidBodySphere(new Vector350(-7, 6, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(-7, 4, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -2, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minAngularLimit = new Vector350(0, 0, -1);
      configurableJoint.maxAngularLimit = new Vector350(0, 0, 1);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      boxBRigid.angularVelocity = new Vector350(0, 0, 0.5);
    }
    rotateAngularY() {
      var boxA = this.addRigidBodySphere(new Vector350(-5, 6, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(-5, 4, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -2, 0);
      configurableJoint.connectAnchor = new Vector350(0, 0, 0);
      configurableJoint.minAngularLimit = new Vector350(0, -1, 0);
      configurableJoint.maxAngularLimit = new Vector350(0, 1, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      boxBRigid.angularVelocity = new Vector350(0, 0.5, 0);
    }
    freeRotate() {
      var boxA = this.addRigidBodySphere(new Vector350(-6, 3, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(-6, 1, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, -1, 0);
      configurableJoint.connectAnchor = new Vector350(0, 1, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_FREE;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_FREE;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_FREE;
      boxBRigid.angularVelocity = new Vector350(20, 2, 10);
    }
    rotateAngularPoint() {
      var boxA = this.addRigidBodySphere(new Vector350(0, 10, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(6, 10, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, 0, 0);
      configurableJoint.connectAnchor = new Vector350(-6, 0, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_FREE;
    }
    alongXAixs() {
      var boxA = this.addRigidBodySphere(new Vector350(0, 0, -4), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(5, 0, -4), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, 0, 0);
      configurableJoint.connectAnchor = new Vector350(-5, 0, 0);
      configurableJoint.minLinearLimit = new Vector350(-2, 0, 0);
      configurableJoint.maxLinearLimit = new Vector350(2, 0, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      boxBRigid.linearVelocity = new Vector350(1, 0, 0);
    }
    alongYAixs() {
      var boxA = this.addRigidBodySphere(new Vector350(0, 0, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(5, 0, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, 0, 0);
      configurableJoint.connectAnchor = new Vector350(-5, 0, 0);
      configurableJoint.minLinearLimit = new Vector350(0, -3, 0);
      configurableJoint.maxLinearLimit = new Vector350(0, 3, 0);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      boxBRigid.linearVelocity = new Vector350(0, 1, 0);
    }
    alongZAixs() {
      var boxA = this.addRigidBodySphere(new Vector350(2, 3, 0), 1);
      var boxARigid = boxA.getComponent(Rigidbody3D6);
      var boxB = this.addRigidBodyBox(new Vector350(2, 0, 0), 1);
      boxB.meshRenderer.material.albedoColor = new Color15(1, 0, 0, 1);
      var boxBRigid = boxB.getComponent(Rigidbody3D6);
      var configurableJoint = boxA.addComponent(ConfigurableConstraint);
      configurableJoint.setConnectRigidBody(boxARigid, boxBRigid);
      configurableJoint.anchor = new Vector350(0, 0, 0);
      configurableJoint.connectAnchor = new Vector350(0, 3, 0);
      configurableJoint.minLinearLimit = new Vector350(0, 0, -4);
      configurableJoint.maxLinearLimit = new Vector350(0, 0, 4);
      configurableJoint.XMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.YMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.ZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LIMITED;
      configurableJoint.angularXMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularYMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      configurableJoint.angularZMotion = ConfigurableConstraint.CONFIG_MOTION_TYPE_LOCKED;
      boxBRigid.linearVelocity = new Vector350(0, 0, 4);
    }
    addRigidBodyBox(pos, scale) {
      var box = this.scene.addChild(new MeshSprite3D21(PrimitiveMesh19.createBox(scale, scale, scale)));
      box.transform.position = pos;
      var mat = new BlinnPhongMaterial13();
      box.meshRenderer.material = mat;
      var rigidBody = box.addComponent(Rigidbody3D6);
      var boxShape = new BoxColliderShape6(scale, scale, scale);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 1;
      rigidBody.friction = 0.5;
      rigidBody.restitution = 10;
      return box;
    }
    addRigidBodySphere(pos, scale) {
      var sphere = this.scene.addChild(new MeshSprite3D21(PrimitiveMesh19.createSphere(0.2)));
      sphere.transform.position = pos;
      var mat = new BlinnPhongMaterial13();
      mat.albedoColor = new Color15(0, 1, 0, 1);
      sphere.meshRenderer.material = mat;
      var rigidBody = sphere.addComponent(Rigidbody3D6);
      var boxShape = new SphereColliderShape4(0.2);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 1;
      rigidBody.friction = 0.5;
      rigidBody.restitution = 0;
      rigidBody.isKinematic = true;
      return sphere;
    }
  };
  __name(PhysicsWorld_ConfigurableJoint, "PhysicsWorld_ConfigurableJoint");
  __decorateClass([
    property174(Laya.Camera)
  ], PhysicsWorld_ConfigurableJoint.prototype, "camera", 2);
  __decorateClass([
    property174(Laya.Scene3D)
  ], PhysicsWorld_ConfigurableJoint.prototype, "scene", 2);
  __decorateClass([
    property174(Laya.Sprite3D)
  ], PhysicsWorld_ConfigurableJoint.prototype, "directionLight", 2);
  PhysicsWorld_ConfigurableJoint = __decorateClass([
    regClass174("8a0ef41e-764f-4da2-976d-16a30f0f7618", "../src/3D/PhysicsWorld/PhysicsWorld_ConfigurableJoint.ts")
  ], PhysicsWorld_ConfigurableJoint);

  // src/3D/PhysicsWorld/PhysicsWorld_ConstraintFixedJoint.ts
  var MeshSprite3D22 = Laya.MeshSprite3D;
  var Vector351 = Laya.Vector3;
  var BlinnPhongMaterial14 = Laya.BlinnPhongMaterial;
  var Rigidbody3D7 = Laya.Rigidbody3D;
  var PrimitiveMesh20 = Laya.PrimitiveMesh;
  var BoxColliderShape7 = Laya.BoxColliderShape;
  var FixedConstraint = Laya.FixedConstraint;
  var { regClass: regClass175, property: property175 } = Laya;
  var PhysicsWorld_ConstraintFixedJoint = class extends BaseScript {
    constructor() {
      super();
    }
    /**
     * 注意，只有在onStart方法中才能生效
     */
    onStart() {
      super.base(this.camera);
      this.camera.transform.position = new Vector351(0, 6, 9.5);
      this.camera.transform.rotate(new Vector351(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector351(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector351(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.addbox();
    }
    addbox() {
      var box = this.scene.addChild(new MeshSprite3D22(PrimitiveMesh20.createBox(1, 1, 1)));
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(0, 5, 0);
      transform.position = pos;
      box.meshRenderer.sharedMaterial = new BlinnPhongMaterial14();
      var rigidBody = box.addComponent(Rigidbody3D7);
      var boxShape = new BoxColliderShape7(1, 1, 1);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
      rigidBody.isKinematic = true;
      var box2 = this.scene.addChild(new MeshSprite3D22(PrimitiveMesh20.createBox(1, 1, 1)));
      var transform2 = box2.transform;
      var pos2 = transform2.position;
      pos2.setValue(0, 3, 0);
      transform2.position = pos2;
      box2.meshRenderer.sharedMaterial = new BlinnPhongMaterial14();
      var rigidBody2 = box2.addComponent(Rigidbody3D7);
      var boxShape2 = new BoxColliderShape7(1, 1, 1);
      rigidBody2.colliderShape = boxShape2;
      rigidBody2.mass = 10;
      Laya.loader.load("resources/res/threeDimen/texture/layabox.png").then((tex) => {
        var blinnMat = new BlinnPhongMaterial14();
        blinnMat.albedoTexture = tex;
        box.meshRenderer.material = blinnMat;
        box2.meshRenderer.material = blinnMat;
      });
      var fixedConstraint = box.addComponent(FixedConstraint);
      fixedConstraint.anchor = new Vector351(0, 0, 0);
      fixedConstraint.connectAnchor = new Vector351(0, 2, 0);
      box.addComponent(FixedEventTest);
      fixedConstraint.setConnectRigidBody(rigidBody, rigidBody2);
    }
  };
  __name(PhysicsWorld_ConstraintFixedJoint, "PhysicsWorld_ConstraintFixedJoint");
  __decorateClass([
    property175(Laya.Camera)
  ], PhysicsWorld_ConstraintFixedJoint.prototype, "camera", 2);
  __decorateClass([
    property175(Laya.Scene3D)
  ], PhysicsWorld_ConstraintFixedJoint.prototype, "scene", 2);
  __decorateClass([
    property175(Laya.Sprite3D)
  ], PhysicsWorld_ConstraintFixedJoint.prototype, "directionLight", 2);
  PhysicsWorld_ConstraintFixedJoint = __decorateClass([
    regClass175("1e8563cf-8f4b-4799-a982-ac5f521833f1", "../src/3D/PhysicsWorld/PhysicsWorld_ConstraintFixedJoint.ts")
  ], PhysicsWorld_ConstraintFixedJoint);
  var _FixedEventTest = class _FixedEventTest extends Laya.Script {
    onStart() {
      this.fixedConstraint = this.owner.getComponent(FixedConstraint);
      this.fixedConstraint.breakForce = 1e3;
    }
    onUpdate() {
      if (this.fixedConstraint) {
        var mass = this.fixedConstraint.connectedBody.mass;
        this.fixedConstraint.connectedBody.mass = mass + 1;
      }
    }
    onJointBreak() {
      console.log("duanle");
    }
  };
  __name(_FixedEventTest, "FixedEventTest");
  var FixedEventTest = _FixedEventTest;

  // src/3D/PhysicsWorld/PhysicsWorld_ContinueCollisionDetection.ts
  var SphereColliderShape5 = Laya.SphereColliderShape;
  var MeshSprite3D23 = Laya.MeshSprite3D;
  var Vector352 = Laya.Vector3;
  var BlinnPhongMaterial15 = Laya.BlinnPhongMaterial;
  var Rigidbody3D8 = Laya.Rigidbody3D;
  var PrimitiveMesh21 = Laya.PrimitiveMesh;
  var BoxColliderShape8 = Laya.BoxColliderShape;
  var PhysicsCollider7 = Laya.PhysicsCollider;
  var Vector413 = Laya.Vector4;
  var { regClass: regClass176, property: property176 } = Laya;
  var PhysicsWorld_ContinueCollisionDetection = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector352(0, 6, 9.5);
      this.camera.transform.rotate(new Vector352(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector352(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector352(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var resource = [
        "resources/res/threeDimen/Physics/wood.jpg",
        "resources/res/threeDimen/Physics/plywood.jpg"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var plane = this.scene.addChild(new MeshSprite3D23(PrimitiveMesh21.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial15();
      planeMat.albedoTexture = res[0];
      planeMat.tilingOffset = new Vector413(2, 2, 0, 0);
      plane.meshRenderer.material = planeMat;
      var planeStaticCollider = plane.addComponent(PhysicsCollider7);
      var planeShape = new BoxColliderShape8(10, 0, 10);
      planeStaticCollider.colliderShape = planeShape;
      planeStaticCollider.friction = 2;
      planeStaticCollider.restitution = 0.3;
      Laya.timer.loop(200, this, () => {
        this.addSphere();
      });
    }
    addSphere() {
      var radius = Math.random() * 0.2 + 0.2;
      var sphere = this.scene.addChild(new MeshSprite3D23(PrimitiveMesh21.createSphere(radius)));
      sphere.meshRenderer.material = new BlinnPhongMaterial15();
      sphere.meshRenderer.material.albedoTexture = Laya.Loader.getRes("resources/res/threeDimen/Physics/plywood.jpg");
      var pos = sphere.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D8);
      var sphereShape = new SphereColliderShape5(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
      rigidBody.ccdSweptSphereRadius = radius;
      rigidBody.ccdMotionThreshold = 1e-4;
    }
  };
  __name(PhysicsWorld_ContinueCollisionDetection, "PhysicsWorld_ContinueCollisionDetection");
  __decorateClass([
    property176(Laya.Camera)
  ], PhysicsWorld_ContinueCollisionDetection.prototype, "camera", 2);
  __decorateClass([
    property176(Laya.Scene3D)
  ], PhysicsWorld_ContinueCollisionDetection.prototype, "scene", 2);
  __decorateClass([
    property176(Laya.Sprite3D)
  ], PhysicsWorld_ContinueCollisionDetection.prototype, "directionLight", 2);
  PhysicsWorld_ContinueCollisionDetection = __decorateClass([
    regClass176("bb67b7fe-1ca5-4657-b7dc-fafd67ab7546", "../src/3D/PhysicsWorld/PhysicsWorld_ContinueCollisionDetection.ts")
  ], PhysicsWorld_ContinueCollisionDetection);

  // src/3D/PhysicsWorld/PhysicsWorld_Kinematic.ts
  var InputManager4 = Laya.InputManager;
  var SphereColliderShape6 = Laya.SphereColliderShape;
  var MeshSprite3D24 = Laya.MeshSprite3D;
  var Vector353 = Laya.Vector3;
  var BlinnPhongMaterial16 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape3 = Laya.CapsuleColliderShape;
  var Rigidbody3D9 = Laya.Rigidbody3D;
  var PrimitiveMesh22 = Laya.PrimitiveMesh;
  var BoxColliderShape9 = Laya.BoxColliderShape;
  var PhysicsCollider8 = Laya.PhysicsCollider;
  var Vector414 = Laya.Vector4;
  var { regClass: regClass177, property: property177 } = Laya;
  var PhysicsWorld_Kinematic = class extends BaseScript {
    constructor() {
      super();
      this.translateW = new Vector353(0, 0, -0.2);
      this.translateS = new Vector353(0, 0, 0.2);
      this.translateA = new Vector353(-0.2, 0, 0);
      this.translateD = new Vector353(0.2, 0, 0);
      this.translateQ = new Vector353(-0.01, 0, 0);
      this.translateE = new Vector353(0.01, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector353(0, 6, 9.5);
      this.camera.transform.rotate(new Vector353(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector353(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector353(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.mat1 = new BlinnPhongMaterial16();
      this.mat3 = new BlinnPhongMaterial16();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((tex) => {
        this.mat1.albedoTexture = tex;
      });
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex) => {
        this.mat3.albedoTexture = tex;
      });
      this.plane = this.scene.addChild(new MeshSprite3D24(PrimitiveMesh22.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial16();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((tex) => {
        planeMat.albedoTexture = tex;
      });
      planeMat.tilingOffset = new Vector414(2, 2, 0, 0);
      this.plane.meshRenderer.material = planeMat;
      var rigidBody = this.plane.addComponent(PhysicsCollider8);
      var boxShape = new BoxColliderShape9(20, 0, 20);
      rigidBody.colliderShape = boxShape;
      for (var i = 0; i < 60; i++) {
        this.addBox();
        this.addCapsule();
      }
      this.addKinematicSphere();
    }
    addKinematicSphere() {
      var mat2 = new BlinnPhongMaterial16();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((tex) => {
        mat2.albedoTexture = tex;
      });
      var albedoColor = mat2.albedoColor;
      albedoColor.setValue(1, 0, 0, 1);
      mat2.albedoColor = albedoColor;
      var radius = 0.8;
      var sphere = this.scene.addChild(new MeshSprite3D24(PrimitiveMesh22.createSphere(radius)));
      sphere.meshRenderer.material = mat2;
      var pos = sphere.transform.position;
      pos.setValue(0, 0.8, 0);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D9);
      var sphereShape = new SphereColliderShape6(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.isKinematic = true;
      this.kinematicSphere = sphere;
      Laya.timer.frameLoop(1, this, this.onKeyDown);
    }
    onKeyDown() {
      InputManager4.hasKeyDown(87) && this.kinematicSphere.transform.translate(this.translateW);
      InputManager4.hasKeyDown(83) && this.kinematicSphere.transform.translate(this.translateS);
      InputManager4.hasKeyDown(65) && this.kinematicSphere.transform.translate(this.translateA);
      InputManager4.hasKeyDown(68) && this.kinematicSphere.transform.translate(this.translateD);
      InputManager4.hasKeyDown(81) && this.plane.transform.translate(this.translateQ);
      InputManager4.hasKeyDown(69) && this.plane.transform.translate(this.translateE);
    }
    addBox() {
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D24(PrimitiveMesh22.createBox(sX, sY, sZ)));
      box.meshRenderer.material = this.mat1;
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = box.addComponent(Rigidbody3D9);
      var boxShape = new BoxColliderShape9(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    addCapsule() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D24(PrimitiveMesh22.createCapsule(raidius, height)));
      capsule.meshRenderer.material = this.mat3;
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D9);
      var sphereShape = new CapsuleColliderShape3(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_Kinematic, "PhysicsWorld_Kinematic");
  __decorateClass([
    property177(Laya.Camera)
  ], PhysicsWorld_Kinematic.prototype, "camera", 2);
  __decorateClass([
    property177(Laya.Scene3D)
  ], PhysicsWorld_Kinematic.prototype, "scene", 2);
  __decorateClass([
    property177(Laya.Sprite3D)
  ], PhysicsWorld_Kinematic.prototype, "directionLight", 2);
  PhysicsWorld_Kinematic = __decorateClass([
    regClass177("92276d17-d5a1-4c38-8fe6-76e0770c3526", "../src/3D/PhysicsWorld/PhysicsWorld_Kinematic.ts")
  ], PhysicsWorld_Kinematic);

  // src/3D/PhysicsWorld/PhysicsWorld_MeshCollider.ts
  var MeshColliderShape2 = Laya.MeshColliderShape;
  var Loader17 = Laya.Loader;
  var SphereColliderShape7 = Laya.SphereColliderShape;
  var MeshSprite3D25 = Laya.MeshSprite3D;
  var Vector354 = Laya.Vector3;
  var BlinnPhongMaterial17 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape4 = Laya.CapsuleColliderShape;
  var Color16 = Laya.Color;
  var Rigidbody3D10 = Laya.Rigidbody3D;
  var PrimitiveMesh23 = Laya.PrimitiveMesh;
  var BoxColliderShape10 = Laya.BoxColliderShape;
  var PhysicsCollider9 = Laya.PhysicsCollider;
  var { regClass: regClass178, property: property178 } = Laya;
  var PhysicsWorld_MeshCollider = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector354(0, 6, 9.5);
      this.camera.transform.rotate(new Vector354(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector354(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector354(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      Laya.loader.load(["resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard-lizard_geo.lm", "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_diff.png", "resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png"]).then((res) => {
        this.complete();
      });
    }
    complete() {
      var mesh = Loader17.getRes("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard-lizard_geo.lm");
      var albedo = Loader17.getTexture2D("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_diff.png");
      var normal = Loader17.getTexture2D("resources/res/threeDimen/staticModel/lizard/Assets/Lizard/lizard_norm.png");
      var mat = new BlinnPhongMaterial17();
      mat.specularColor = new Color16(0.5, 0.5, 0.5, 0.5);
      mat.albedoTexture = albedo;
      mat.normalTexture = normal;
      var lizard = this.scene.addChild(new MeshSprite3D25(mesh));
      lizard.transform.localPosition = new Vector354(-2, 0, 0);
      lizard.transform.localScale = new Vector354(0.01, 0.01, 0.01);
      lizard.meshRenderer.material = mat;
      var lizardCollider = lizard.addComponent(PhysicsCollider9);
      var meshShape = new MeshColliderShape2();
      meshShape.mesh = mesh;
      lizardCollider.colliderShape = meshShape;
      lizardCollider.friction = 2;
      lizardCollider.restitution = 0.3;
      var lizard1 = this.scene.addChild(new MeshSprite3D25(mesh));
      var transform = lizard1.transform;
      var localPosition = transform.localPosition;
      var localRotationEuler = transform.localRotationEuler;
      var localScale = transform.localScale;
      localPosition.setValue(3, 0, 0);
      localRotationEuler.setValue(0, 80, 0);
      localScale.setValue(0.01, 0.01, 0.01);
      transform.localPosition = localPosition;
      transform.localRotationEuler = localRotationEuler;
      transform.localScale = localScale;
      lizard1.meshRenderer.material = mat;
      var lizardCollider1 = lizard1.addComponent(PhysicsCollider9);
      var meshShape1 = new MeshColliderShape2();
      meshShape1.mesh = mesh;
      lizardCollider1.colliderShape = meshShape1;
      lizardCollider1.friction = 2;
      lizardCollider1.restitution = 0.3;
      this.addBox();
      this.randomAddPhysicsSprite();
    }
    randomAddPhysicsSprite() {
      Laya.timer.loop(1e3, this, () => {
        var random = Math.floor(Math.random() * 3) % 3;
        switch (random) {
          case 0:
            this.addBox();
            break;
          case 1:
            this.addSphere();
            break;
          case 2:
            this.addCapsule();
            break;
          default:
            break;
        }
      });
    }
    addBox() {
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D25(PrimitiveMesh23.createBox(sX, sY, sZ)));
      box.meshRenderer.material = new BlinnPhongMaterial17();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res) => {
        box.meshRenderer.material.albedoTexture = res;
      });
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = box.addComponent(Rigidbody3D10);
      var boxShape = new BoxColliderShape10(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    addSphere() {
      var radius = Math.random() * 0.2 + 0.2;
      var sphere = this.scene.addChild(new MeshSprite3D25(PrimitiveMesh23.createSphere(radius)));
      sphere.meshRenderer.material = new BlinnPhongMaterial17();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res) => {
        sphere.meshRenderer.material.albedoTexture = res;
      });
      var pos = sphere.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D10);
      var sphereShape = new SphereColliderShape7(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
    addCapsule() {
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D25(PrimitiveMesh23.createCapsule(raidius, height)));
      capsule.meshRenderer.material = new BlinnPhongMaterial17();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        capsule.meshRenderer.material.albedoTexture = res;
      });
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D10);
      var sphereShape = new CapsuleColliderShape4(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_MeshCollider, "PhysicsWorld_MeshCollider");
  __decorateClass([
    property178(Laya.Camera)
  ], PhysicsWorld_MeshCollider.prototype, "camera", 2);
  __decorateClass([
    property178(Laya.Scene3D)
  ], PhysicsWorld_MeshCollider.prototype, "scene", 2);
  __decorateClass([
    property178(Laya.Sprite3D)
  ], PhysicsWorld_MeshCollider.prototype, "directionLight", 2);
  PhysicsWorld_MeshCollider = __decorateClass([
    regClass178("69c44b4c-3843-4260-8186-6b30c2038b01", "../src/3D/PhysicsWorld/PhysicsWorld_MeshCollider.ts")
  ], PhysicsWorld_MeshCollider);

  // src/3D/PhysicsWorld/PhysicsWorld_RayShapeCast.ts
  var Color17 = Laya.Color;
  var Button8 = Laya.Button;
  var SphereColliderShape8 = Laya.SphereColliderShape;
  var MeshSprite3D26 = Laya.MeshSprite3D;
  var Vector355 = Laya.Vector3;
  var BlinnPhongMaterial18 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape5 = Laya.CapsuleColliderShape;
  var HitResult3 = Laya.HitResult;
  var Rigidbody3D11 = Laya.Rigidbody3D;
  var Ray5 = Laya.Ray;
  var PrimitiveMesh24 = Laya.PrimitiveMesh;
  var BoxColliderShape11 = Laya.BoxColliderShape;
  var PhysicsCollider10 = Laya.PhysicsCollider;
  var Event48 = Laya.Event;
  var PixelLineSprite3D3 = Laya.PixelLineSprite3D;
  var { regClass: regClass179, property: property179 } = Laya;
  var PhysicsWorld_RayShapeCast = class extends BaseScript {
    constructor() {
      super();
      //声明一些使用到的全局变量
      this.castType = 0;
      this.castAll = false;
      this.ray = new Ray5(new Vector355(0, 0, 0), new Vector355(0, 0, 0));
      this.hitResult = new HitResult3();
      this.hitResults = [];
      this.debugSprites = [];
      //创建射线的起始点
      this.from = new Vector355(0, 1, 10);
      this.to = new Vector355(0, 1, -5);
      this._albedoColor = new Color17(1, 1, 1, 0.5);
      this._position = new Vector355(0, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector355(0, 6, 9.5);
      this.camera.transform.rotate(new Vector355(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector355(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector355(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      var plane = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial18();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        planeMat.albedoTexture = res;
      });
      var tilingOffset = planeMat.tilingOffset;
      tilingOffset.setValue(2, 2, 0, 0);
      planeMat.tilingOffset = tilingOffset;
      plane.meshRenderer.material = planeMat;
      var planeBody = plane.addComponent(PhysicsCollider10);
      var boxCollider = new BoxColliderShape11(20, 0, 20);
      planeBody.colliderShape = boxCollider;
      for (var i = 0; i < 60; i++) {
        this.addBox();
        this.addCapsule();
      }
      this.loadUI();
    }
    loadUI() {
      this.changeActionButton0 = this.owner.addChild(new Button8("resources/image/img_btn_bg.png", "\u5C04\u7EBF\u6A21\u5F0F"));
      this.changeActionButton0.size(150, 40);
      this.changeActionButton0.labelSize = 16;
      this.changeActionButton0.sizeGrid = "21,83,22,76";
      this.changeActionButton0.stateNum = 1;
      this.changeActionButton0.labelColors = "#ffffff";
      this.changeActionButton0.pos(50, 280);
      this.changeActionButton0.on(Event48.CLICK, this, this.stypeFun0);
      this.changeActionButton1 = this.owner.addChild(new Button8("resources/image/img_btn_bg.png", "\u4E0D\u7A7F\u900F"));
      this.changeActionButton1.size(150, 40);
      this.changeActionButton1.labelSize = 16;
      this.changeActionButton1.sizeGrid = "21,83,22,76";
      this.changeActionButton1.stateNum = 1;
      this.changeActionButton1.labelColors = "#ffffff";
      this.changeActionButton1.pos(50, 340);
      this.changeActionButton1.on(Event48.CLICK, this, this.stypeFun1);
      this.changeActionButton2 = this.owner.addChild(new Button8("resources/image/img_btn_bg.png", "\u68C0\u6D4B"));
      this.changeActionButton2.size(150, 40);
      this.changeActionButton2.labelSize = 16;
      this.changeActionButton2.sizeGrid = "21,83,22,76";
      this.changeActionButton2.stateNum = 1;
      this.changeActionButton2.labelColors = "#ffffff";
      this.changeActionButton2.pos(50, 400);
      this.changeActionButton2.on(Event48.CLICK, this, this.stypeFun2);
    }
    stypeFun0(label = "\u5C04\u7EBF\u6A21\u5F0F") {
      this.castType++;
      this.castType %= 4;
      switch (this.castType) {
        case 0:
          this.changeActionButton0.label = "\u5C04\u7EBF\u6A21\u5F0F";
          break;
        case 1:
          this.changeActionButton0.label = "\u76D2\u5B50\u6A21\u5F0F";
          break;
        case 2:
          this.changeActionButton0.label = "\u7403\u6A21\u5F0F";
          break;
        case 3:
          this.changeActionButton0.label = "\u80F6\u56CA\u6A21\u5F0F";
          break;
      }
      label = this.changeActionButton0.label;
    }
    stypeFun1(label = "\u4E0D\u7A7F\u900F") {
      if (this.castAll) {
        this.changeActionButton1.label = "\u4E0D\u7A7F\u900F";
        this.castAll = false;
      } else {
        this.changeActionButton1.label = "\u7A7F\u900F";
        this.castAll = true;
      }
      label = this.changeActionButton1.label;
    }
    stypeFun2(castType = 0) {
      if (this.hitResult.succeeded)
        this.hitResult.collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 1, 1, 1);
      if (this.hitResults.length > 0) {
        for (var i = 0, n = this.hitResults.length; i < n; i++)
          this.hitResults[i].collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 1, 1, 1);
        this.hitResults.length = 0;
      }
      if (this.debugSprites.length > 0) {
        for (i = 0, n = this.debugSprites.length; i < n; i++)
          this.debugSprites[i].destroy();
        this.debugSprites.length = 0;
      }
      switch (this.castType) {
        case 0:
          var lineSprite = this.scene.addChild(new PixelLineSprite3D3(1));
          lineSprite.addLine(this.from, this.to, Color17.RED, Color17.RED);
          this.debugSprites.push(lineSprite);
          if (this.castAll) {
            this.scene.physicsSimulation.raycastAllFromTo(this.from, this.to, this.hitResults);
            for (i = 0, n = this.hitResults.length; i < n; i++)
              this.hitResults[i].collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          } else {
            this.scene.physicsSimulation.raycastFromTo(this.from, this.to, this.hitResult);
            this.hitResult.collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          }
          break;
        case 1:
          var boxCollider = new BoxColliderShape11(1, 1, 1);
          for (i = 0; i < 21; i++) {
            var boxSprite = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createBox(1, 1, 1)));
            var mat = new BlinnPhongMaterial18();
            mat.albedoColor = this._albedoColor;
            mat.renderMode = BlinnPhongMaterial18.RENDERMODE_TRANSPARENT;
            boxSprite.meshRenderer.material = mat;
            Vector355.lerp(this.from, this.to, i / 20, this._position);
            boxSprite.transform.localPosition = this._position;
            this.debugSprites.push(boxSprite);
          }
          if (this.castAll) {
            this.scene.physicsSimulation.shapeCastAll(boxCollider, this.from, this.to, this.hitResults);
            for (i = 0, n = this.hitResults.length; i < n; i++)
              this.hitResults[i].collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          } else {
            if (this.scene.physicsSimulation.shapeCast(boxCollider, this.from, this.to, this.hitResult))
              this.hitResult.collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          }
          break;
        case 2:
          var sphereCollider = new SphereColliderShape8(0.5);
          for (i = 0; i < 41; i++) {
            var sphereSprite = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createSphere(0.5)));
            var mat = new BlinnPhongMaterial18();
            mat.albedoColor = this._albedoColor;
            mat.renderMode = BlinnPhongMaterial18.RENDERMODE_TRANSPARENT;
            sphereSprite.meshRenderer.material = mat;
            Vector355.lerp(this.from, this.to, i / 40, this._position);
            sphereSprite.transform.localPosition = this._position;
            this.debugSprites.push(sphereSprite);
          }
          if (this.castAll) {
            this.scene.physicsSimulation.shapeCastAll(sphereCollider, this.from, this.to, this.hitResults);
            for (i = 0, n = this.hitResults.length; i < n; i++)
              this.hitResults[i].collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          } else {
            if (this.scene.physicsSimulation.shapeCast(sphereCollider, this.from, this.to, this.hitResult))
              this.hitResult.collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          }
          break;
        case 3:
          var capsuleCollider = new CapsuleColliderShape5(0.25, 1);
          for (i = 0; i < 41; i++) {
            var capsuleSprite = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createCapsule(0.25, 1)));
            var mat = new BlinnPhongMaterial18();
            mat.albedoColor = this._albedoColor;
            mat.renderMode = BlinnPhongMaterial18.RENDERMODE_TRANSPARENT;
            capsuleSprite.meshRenderer.material = mat;
            Vector355.lerp(this.from, this.to, i / 40, this._position);
            capsuleSprite.transform.localPosition = this._position;
            this.debugSprites.push(capsuleSprite);
          }
          if (this.castAll) {
            this.scene.physicsSimulation.shapeCastAll(capsuleCollider, this.from, this.to, this.hitResults);
            for (i = 0, n = this.hitResults.length; i < n; i++)
              this.hitResults[i].collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          } else {
            if (this.scene.physicsSimulation.shapeCast(capsuleCollider, this.from, this.to, this.hitResult))
              this.hitResult.collider.owner.meshRenderer.sharedMaterial.albedoColor = new Color17(1, 0, 0, 1);
          }
          break;
      }
      castType = this.castType;
    }
    addBox() {
      var mat1 = new BlinnPhongMaterial18();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res) => {
        mat1.albedoTexture = res;
      });
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createBox(sX, sY, sZ)));
      box.meshRenderer.material = mat1;
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = box.addComponent(Rigidbody3D11);
      var boxShape = new BoxColliderShape11(sX, sY, sZ);
      rigidBody.colliderShape = boxShape;
      rigidBody.mass = 10;
    }
    addCapsule() {
      var mat = new BlinnPhongMaterial18();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        mat.albedoTexture = res;
      });
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D26(PrimitiveMesh24.createCapsule(raidius, height)));
      capsule.meshRenderer.material = mat;
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D11);
      var sphereShape = new CapsuleColliderShape5(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_RayShapeCast, "PhysicsWorld_RayShapeCast");
  __decorateClass([
    property179(Laya.Camera)
  ], PhysicsWorld_RayShapeCast.prototype, "camera", 2);
  __decorateClass([
    property179(Laya.Scene3D)
  ], PhysicsWorld_RayShapeCast.prototype, "scene", 2);
  __decorateClass([
    property179(Laya.Sprite3D)
  ], PhysicsWorld_RayShapeCast.prototype, "directionLight", 2);
  PhysicsWorld_RayShapeCast = __decorateClass([
    regClass179("28020748-173b-4117-922d-04dc28e79f78", "../src/3D/PhysicsWorld/PhysicsWorld_RayShapeCast.ts")
  ], PhysicsWorld_RayShapeCast);

  // src/3D/PhysicsWorld/PhysicsWorld_TriggerAndCollisionEvent.ts
  var Color18 = Laya.Color;
  var InputManager5 = Laya.InputManager;
  var SphereColliderShape9 = Laya.SphereColliderShape;
  var MeshSprite3D27 = Laya.MeshSprite3D;
  var Vector356 = Laya.Vector3;
  var BlinnPhongMaterial19 = Laya.BlinnPhongMaterial;
  var CapsuleColliderShape6 = Laya.CapsuleColliderShape;
  var Rigidbody3D12 = Laya.Rigidbody3D;
  var PrimitiveMesh25 = Laya.PrimitiveMesh;
  var BoxColliderShape12 = Laya.BoxColliderShape;
  var PhysicsCollider11 = Laya.PhysicsCollider;
  var Vector415 = Laya.Vector4;
  var { regClass: regClass180, property: property180 } = Laya;
  var PhysicsWorld_TriggerAndCollisionEvent = class extends BaseScript {
    constructor() {
      super();
      this.translateW = new Vector356(0, 0, -0.2);
      this.translateS = new Vector356(0, 0, 0.2);
      this.translateA = new Vector356(-0.2, 0, 0);
      this.translateD = new Vector356(0.2, 0, 0);
      this.translateQ = new Vector356(-0.01, 0, 0);
      this.translateE = new Vector356(0.01, 0, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector356(0, 6, 9.5);
      this.camera.transform.rotate(new Vector356(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
      this.directionLight.transform.rotate(new Vector356(-3.14 / 3, 0, 0));
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Vector356(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.plane = this.scene.addChild(new MeshSprite3D27(PrimitiveMesh25.createPlane(20, 20, 10, 10)));
      var planeMat = new BlinnPhongMaterial19();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        planeMat.albedoTexture = res;
      });
      planeMat.tilingOffset = new Vector415(2, 2, 0, 0);
      this.plane.meshRenderer.material = planeMat;
      var staticCollider = this.plane.addComponent(PhysicsCollider11);
      var boxShape = new BoxColliderShape12(20, 0, 20);
      staticCollider.colliderShape = boxShape;
      this.addKinematicSphere();
      for (var i = 0; i < 30; i++) {
        this.addBoxAndTrigger();
        this.addCapsuleCollision();
      }
    }
    addKinematicSphere() {
      var mat2 = new BlinnPhongMaterial19();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res) => {
        mat2.albedoTexture = res;
      });
      mat2.albedoColor = new Color18(1, 0, 0, 1);
      var radius = 0.8;
      var sphere = this.scene.addChild(new MeshSprite3D27(PrimitiveMesh25.createSphere(radius)));
      sphere.meshRenderer.material = mat2;
      var pos = sphere.transform.position;
      pos.setValue(0, 0.8, 0);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D12);
      var sphereShape = new SphereColliderShape9(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 60;
      rigidBody.isKinematic = true;
      this.kinematicSphere = sphere;
      Laya.timer.frameLoop(1, this, this.onKeyDown);
    }
    onKeyDown() {
      InputManager5.hasKeyDown(87) && this.kinematicSphere.transform.translate(this.translateW);
      InputManager5.hasKeyDown(83) && this.kinematicSphere.transform.translate(this.translateS);
      InputManager5.hasKeyDown(65) && this.kinematicSphere.transform.translate(this.translateA);
      InputManager5.hasKeyDown(68) && this.kinematicSphere.transform.translate(this.translateD);
      InputManager5.hasKeyDown(81) && this.plane.transform.translate(this.translateQ);
      InputManager5.hasKeyDown(69) && this.plane.transform.translate(this.translateE);
    }
    addBoxAndTrigger() {
      var mat1 = new BlinnPhongMaterial19();
      Laya.loader.load("resources/res/threeDimen/Physics/rocks.jpg").then((res) => {
        mat1.albedoTexture = res;
      });
      mat1.albedoColor = new Color18(1, 1, 1, 1);
      var sX = Math.random() * 0.75 + 0.25;
      var sY = Math.random() * 0.75 + 0.25;
      var sZ = Math.random() * 0.75 + 0.25;
      var box = this.scene.addChild(new MeshSprite3D27(PrimitiveMesh25.createBox(sX, sY, sZ)));
      box.meshRenderer.material = mat1;
      var transform = box.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 16 - 8, sY / 2, Math.random() * 16 - 8);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(0, Math.random() * 360, 0);
      transform.rotationEuler = rotationEuler;
      var staticCollider = box.addComponent(PhysicsCollider11);
      var boxShape = new BoxColliderShape12(sX, sY, sZ);
      staticCollider.colliderShape = boxShape;
      staticCollider.isTrigger = true;
      var script = box.addComponent(TriggerCollisionScript);
      script.kinematicSprite = this.kinematicSphere;
    }
    addCapsuleCollision() {
      var mat3 = new BlinnPhongMaterial19();
      Laya.loader.load("resources/res/threeDimen/Physics/wood.jpg").then((res) => {
        mat3.albedoTexture = res;
      });
      var raidius = Math.random() * 0.2 + 0.2;
      var height = Math.random() * 0.5 + 0.8;
      var capsule = this.scene.addChild(new MeshSprite3D27(PrimitiveMesh25.createCapsule(raidius, height)));
      capsule.meshRenderer.material = mat3;
      var transform = capsule.transform;
      var pos = transform.position;
      pos.setValue(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
      transform.position = pos;
      var rotationEuler = transform.rotationEuler;
      rotationEuler.setValue(Math.random() * 360, Math.random() * 360, Math.random() * 360);
      transform.rotationEuler = rotationEuler;
      var rigidBody = capsule.addComponent(Rigidbody3D12);
      var sphereShape = new CapsuleColliderShape6(raidius, height);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
      var script = capsule.addComponent(TriggerCollisionScript);
      script.kinematicSprite = this.kinematicSphere;
    }
    addSphere() {
      var mat2 = new BlinnPhongMaterial19();
      Laya.loader.load("resources/res/threeDimen/Physics/plywood.jpg").then((res) => {
        mat2.albedoTexture = res;
      });
      var radius = Math.random() * 0.2 + 0.2;
      var sphere = this.scene.addChild(new MeshSprite3D27(PrimitiveMesh25.createSphere(radius)));
      sphere.meshRenderer.material = mat2;
      var pos = sphere.transform.position;
      pos.setValue(Math.random() * 4 - 2, 10, Math.random() * 4 - 2);
      sphere.transform.position = pos;
      var rigidBody = sphere.addComponent(Rigidbody3D12);
      var sphereShape = new SphereColliderShape9(radius);
      rigidBody.colliderShape = sphereShape;
      rigidBody.mass = 10;
    }
  };
  __name(PhysicsWorld_TriggerAndCollisionEvent, "PhysicsWorld_TriggerAndCollisionEvent");
  __decorateClass([
    property180(Laya.Camera)
  ], PhysicsWorld_TriggerAndCollisionEvent.prototype, "camera", 2);
  __decorateClass([
    property180(Laya.Scene3D)
  ], PhysicsWorld_TriggerAndCollisionEvent.prototype, "scene", 2);
  __decorateClass([
    property180(Laya.Sprite3D)
  ], PhysicsWorld_TriggerAndCollisionEvent.prototype, "directionLight", 2);
  PhysicsWorld_TriggerAndCollisionEvent = __decorateClass([
    regClass180("4d873f7e-4cd7-4613-bca4-fd2851da4301", "../src/3D/PhysicsWorld/PhysicsWorld_TriggerAndCollisionEvent.ts")
  ], PhysicsWorld_TriggerAndCollisionEvent);
  var _TriggerCollisionScript = class _TriggerCollisionScript extends Laya.Script {
    constructor() {
      super();
    }
    //开始触发时执行
    onTriggerEnter(other) {
      this.owner.meshRenderer.sharedMaterial.albedoColor = new Color18(0, 1, 0, 1);
    }
    //持续触发时执行
    onTriggerStay(other) {
    }
    //结束触发时执行
    onTriggerExit(other) {
      this.owner.meshRenderer.sharedMaterial.albedoColor = new Color18(1, 1, 1, 1);
    }
    //开始碰撞时执行
    onCollisionEnter(collision) {
      if (collision.other.owner === this.kinematicSprite)
        this.owner.meshRenderer.sharedMaterial.albedoColor = new Color18(0, 0, 0, 1);
    }
    //持续碰撞时执行
    onCollisionStay(collision) {
    }
    //结束碰撞时执行
    onCollisionExit(collision) {
    }
  };
  __name(_TriggerCollisionScript, "TriggerCollisionScript");
  var TriggerCollisionScript = _TriggerCollisionScript;

  // src/3D/PostProcess/PostProcessAO.ts
  var { regClass: regClass181, property: property181 } = Laya;
  var PostProcessAO = class extends BaseScript {
    constructor() {
      super();
      this.postProcess = null;
    }
    onAwake() {
      super.base(this.camera);
      let postProcess = new Laya.PostProcess();
      postProcess = this.camera.postProcess;
      this.postProcess = postProcess;
      super.addBottomButton(["\u5173\u95EDAO", "\u5F00\u542FAO"], this, [this.setPostProcess, this.setPostProcess]);
    }
    setPostProcess() {
      var enableHDR = !!this.camera.postProcess;
      if (enableHDR) {
        this.camera.postProcess = null;
      } else {
        this.camera.postProcess = this.postProcess;
      }
    }
  };
  __name(PostProcessAO, "PostProcessAO");
  __decorateClass([
    property181(Laya.Camera)
  ], PostProcessAO.prototype, "camera", 2);
  __decorateClass([
    property181(Laya.Scene3D)
  ], PostProcessAO.prototype, "scene", 2);
  PostProcessAO = __decorateClass([
    regClass181("2cf6cd82-fb9a-4533-9cab-4f56553644d5", "../src/3D/PostProcess/PostProcessAO.ts")
  ], PostProcessAO);

  // src/3D/PostProcess/PostProcessBloom.ts
  var { regClass: regClass182, property: property182 } = Laya;
  var PostProcessBloom = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
    }
  };
  __name(PostProcessBloom, "PostProcessBloom");
  __decorateClass([
    property182(Laya.Camera)
  ], PostProcessBloom.prototype, "camera", 2);
  __decorateClass([
    property182(Laya.Scene3D)
  ], PostProcessBloom.prototype, "scene", 2);
  PostProcessBloom = __decorateClass([
    regClass182("42295c88-4869-49a6-80ce-44c4e80ce451", "../src/3D/PostProcess/PostProcessBloom.ts")
  ], PostProcessBloom);

  // src/3D/PostProcess/PostProcessDoF.ts
  var { regClass: regClass183, property: property183 } = Laya;
  var PostProcessDoF = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
    }
  };
  __name(PostProcessDoF, "PostProcessDoF");
  __decorateClass([
    property183(Laya.Camera)
  ], PostProcessDoF.prototype, "camera", 2);
  __decorateClass([
    property183(Laya.Scene3D)
  ], PostProcessDoF.prototype, "scene", 2);
  PostProcessDoF = __decorateClass([
    regClass183("ead5a66a-5863-4576-b5f0-2a010dd56bfa", "../src/3D/PostProcess/PostProcessDoF.ts")
  ], PostProcessDoF);

  // src/3D/PostProcess/BlurShader/Blur.vs
  var Blur_default2 = '#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}';

  // src/3D/PostProcess/BlurShader/BlurHorizontal.fs
  var BlurHorizontal_default2 = '#define SHADER_NAME BlurHorizontal\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    vec2 uv = v_Texcoord0;\r\n    vec2 uvOffset = vec2(1.0,0.0)*u_MainTex_TexelSize.xy*u_DownSampleValue;\r\n    uv = uv - uvOffset*3.0;\r\n    //\u9AD8\u65AF\u53C2\u6570\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.324*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n\r\n    gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n    \r\n\r\n    \r\n}';

  // src/3D/PostProcess/BlurShader/BlurVertical.fs
  var BlurVertical_default2 = '#define SHADER_NAME BlurVertical\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    vec2 uv = v_Texcoord0;\r\n    vec2 uvOffset = vec2(0.0,1.0)*u_MainTex_TexelSize.xy*u_DownSampleValue;\r\n    uv = uv - uvOffset*3.0;\r\n    //\u9AD8\u65AF\u53C2\u6570\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.324*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.232*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0855*sampleMainTex(u_MainTex,uv);\r\n    uv+=uvOffset;\r\n    color+=0.0205*sampleMainTex(u_MainTex,uv);\r\n\r\n    gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n    \r\n\r\n    \r\n}';

  // src/3D/PostProcess/BlurShader/BlurDownSample.fs
  var BlurDownSample_default3 = '#define SHADER_NAME BlurDownSample\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\nvoid main()\r\n{\r\n    vec4 color = vec4(0.0,0.0,0.0,0.0);\r\n    color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(1.0,0.0));\r\n	color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(-1.0,0.0));\r\n	color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(0.0,-1.0));\r\n    color += sampleMainTex(u_MainTex,v_Texcoord0+u_MainTex_TexelSize.xy*vec2(0.0,1.0));\r\n    gl_FragColor = color/4.0;\r\n   	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/PostProcess/BlurShader/BlurDownSample.vs
  var BlurDownSample_default4 = '#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}';

  // src/3D/PostProcess/BlurShader/EdgeAdd.fs
  var EdgeAdd_default2 = '#define SHADER_NAME EdgeAdd\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n\r\n#ifdef Gamma_u_sourceTexture0\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\n\r\nvoid main()\r\n{\r\n    vec2 uv = v_Texcoord0;\r\n    vec4 mainColor = sampleMainTex(u_MainTex,uv);\r\n    vec4 sourceColor = sampleMainTex(u_sourceTexture0,uv);\r\n    float factor = step(sourceColor.x+sourceColor.y+sourceColor.z,0.001);\r\n    vec4 color = mix(sourceColor,mainColor,factor);\r\n    gl_FragColor =color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/PostProcess/BlurShader/EdgeSub.fs
  var EdgeSub_default2 = '#define SHADER_NAME EdgeSub\r\n#include "Color.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_sourceTexture0\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n\r\n#ifdef Gamma_u_sourceTexture1\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\n\r\nvoid main()\r\n{\r\n    vec2 uv = v_Texcoord0;\r\n    vec4 blurColor = sampleMainTex(u_sourceTexture0,uv);\r\n    vec4 clearColor = sampleMainTex(u_sourceTexture1,uv);\r\n    float factor = step(clearColor.x+clearColor.y+clearColor.z,0.001);\r\n    vec4 color = blurColor*factor;\r\n    color = (1.0-step(color.x+color.y+color.z,0.15))*vec4(1.0,0.0,0.0,1.0);\r\n    gl_FragColor = color;\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n}';

  // src/3D/PostProcess/PostProcess_Blur.ts
  var CameraClearFlags7 = Laya.CameraClearFlags;
  var PostProcessEffect = Laya.PostProcessEffect;
  var Material4 = Laya.Material;
  var FilterMode2 = Laya.FilterMode;
  var RenderTargetFormat7 = Laya.RenderTargetFormat;
  var Shader3D4 = Laya.Shader3D;
  var ShaderDataType3 = Laya.ShaderDataType;
  var LayaGL = Laya.LayaGL;
  var Vector416 = Laya.Vector4;
  var RenderTexture5 = Laya.RenderTexture;
  var RenderState4 = Laya.RenderState;
  var SubShader3 = Laya.SubShader;
  var VertexMesh3 = Laya.VertexMesh;
  var { regClass: regClass184, property: property184 } = Laya;
  var PostProcess_Blur = class extends BaseScript {
    constructor() {
      super();
      this.postProcess = null;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.clearFlag = CameraClearFlags7.Sky;
      this.camera.cullingMask ^= 2;
      this.camera.enableHDR = false;
      var mainCamera = this.scene.getChildByName("BlurCamera");
      mainCamera.clearFlag = CameraClearFlags7.DepthOnly;
      mainCamera.cullingMask = 2;
      mainCamera.renderingOrder = 1;
      mainCamera.enableHDR = false;
      this.camera.addChild(mainCamera);
      mainCamera.transform.localMatrix = new Laya.Matrix4x4();
      this.postProcess = new Laya.PostProcess();
      var blurEffect = new BlurEffect2();
      this.postProcess.addEffect(blurEffect);
      this.camera.postProcess = this.postProcess;
      blurEffect.downSampleNum = 6;
      blurEffect.blurSpreadSize = 1;
      blurEffect.blurIterations = 1;
      super.addBottomButton(["\u5173\u95ED\u9AD8\u65AF\u6A21\u7CCA", "\u5F00\u542F\u9AD8\u65AF\u6A21\u7CCA"], this, [this.setPostProcess, this.setPostProcess]);
      var RT = this.camera.renderTarget;
      mainCamera.renderTarget = RT;
    }
    setPostProcess() {
      var enableHDR = !!this.camera.postProcess;
      if (enableHDR) {
        this.camera.postProcess = null;
      } else {
        this.camera.postProcess = this.postProcess;
      }
    }
  };
  __name(PostProcess_Blur, "PostProcess_Blur");
  __decorateClass([
    property184(Laya.Camera)
  ], PostProcess_Blur.prototype, "camera", 2);
  __decorateClass([
    property184(Laya.Scene3D)
  ], PostProcess_Blur.prototype, "scene", 2);
  PostProcess_Blur = __decorateClass([
    regClass184("9eb21397-579f-4799-b104-b539e9971d86", "../src/3D/PostProcess/PostProcess_Blur.ts")
  ], PostProcess_Blur);
  var _BlurEffect2 = class _BlurEffect2 extends PostProcessEffect {
    constructor() {
      super();
      /**@internal */
      this._shader = null;
      /**@internal */
      this._shaderData = LayaGL.renderOBJCreate.createShaderData(null);
      /**@internal */
      this._downSampleNum = 1;
      /**@internal */
      this._blurSpreadSize = 1;
      /**@internal */
      this._blurIterations = 2;
      /**@internal */
      this._texSize = new Vector416(1, 1, 1, 1);
      _BlurEffect2.init();
      this._shader = Shader3D4.find("blurEffect");
      this._tempRenderTexture = new Array(13);
    }
    static init() {
      _BlurEffect2.SHADERVALUE_MAINTEX = Shader3D4.propertyNameToID("u_MainTex");
      _BlurEffect2.SHADERVALUE_TEXELSIZE = Shader3D4.propertyNameToID("u_MainTex_TexelSize");
      _BlurEffect2.SHADERVALUE_DOWNSAMPLEVALUE = Shader3D4.propertyNameToID("u_DownSampleValue");
      let attributeMap = {
        "a_PositionTexcoord": [VertexMesh3.MESH_POSITION0, ShaderDataType3.Vector4]
      };
      let uniformMap = {
        "u_MainTex": ShaderDataType3.Texture2D,
        "u_sourceTexture0": ShaderDataType3.Texture2D,
        "u_sourceTexture1": ShaderDataType3.Texture2D,
        "u_MainTex_TexelSize": ShaderDataType3.Vector4,
        "u_DownSampleValue": ShaderDataType3.Float
      };
      var shader = Shader3D4.add("blurEffect");
      var subShader = new SubShader3(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      var shaderpass = subShader.addShaderPass(BlurDownSample_default4, BlurDownSample_default3);
      var renderState = shaderpass.renderState;
      renderState.depthTest = RenderState4.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState4.CULL_NONE;
      renderState.blend = RenderState4.BLEND_DISABLE;
      subShader = new SubShader3(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default2, BlurVertical_default2);
      renderState = shaderpass.renderState;
      renderState.depthTest = RenderState4.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState4.CULL_NONE;
      renderState.blend = RenderState4.BLEND_DISABLE;
      subShader = new SubShader3(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default2, BlurHorizontal_default2);
      renderState = shaderpass.renderState;
      renderState.depthTest = RenderState4.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState4.CULL_NONE;
      renderState.blend = RenderState4.BLEND_DISABLE;
      subShader = new SubShader3(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default2, EdgeSub_default2);
      renderState = shaderpass.renderState;
      renderState.depthTest = RenderState4.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState4.CULL_NONE;
      renderState.blend = RenderState4.BLEND_DISABLE;
      subShader = new SubShader3(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      shaderpass = subShader.addShaderPass(Blur_default2, EdgeAdd_default2);
      renderState = shaderpass.renderState;
      renderState.depthTest = RenderState4.DEPTHTEST_ALWAYS;
      renderState.depthWrite = false;
      renderState.cull = RenderState4.CULL_NONE;
      renderState.blend = RenderState4.BLEND_DISABLE;
    }
    /**
     * @return 强度。
     */
    get downSampleNum() {
      return this._downSampleNum;
    }
    /**
     * 降采样,值范围为0-6。
     * @param value 强度。
     */
    set downSampleNum(value) {
      this._downSampleNum = Math.min(6, Math.max(value, 0));
    }
    /**
     * 采样间隔  过大会失真1-10
     * @return 。
     */
    get blurSpreadSize() {
      return this._blurSpreadSize;
    }
    /**
     * @param value 
     */
    set blurSpreadSize(value) {
      this._blurSpreadSize = Math.min(10, Math.max(value, 1));
    }
    /**
     * 迭代次数  越大性能消耗越大 效果越好
     * @return 。
     */
    get blurIterations() {
      return this._blurIterations;
    }
    /**
     * @param value。
     */
    set blurIterations(value) {
      this._blurIterations = Math.min(Math.max(value, 0), 6);
    }
    /**
     * @inheritDoc
     * @override
     * @internal
     */
    render(context) {
      var cmd = context.command;
      var viewport = context.camera.viewport;
      var scaleFactor = 1 / (1 << Math.floor(this._downSampleNum));
      var tw = Math.floor(viewport.width * scaleFactor);
      var th = Math.floor(viewport.height * scaleFactor);
      this._texSize.setValue(1 / tw, 1 / th, tw, th);
      this._shaderData.setNumber(_BlurEffect2.SHADERVALUE_DOWNSAMPLEVALUE, this.blurSpreadSize);
      this._shaderData.setVector(_BlurEffect2.SHADERVALUE_TEXELSIZE, this._texSize);
      var downSampleTexture = RenderTexture5.createFromPool(tw, th, RenderTargetFormat7.R8G8B8, RenderTargetFormat7.None, false, 1);
      downSampleTexture.filterMode = FilterMode2.Bilinear;
      this._tempRenderTexture[0] = downSampleTexture;
      var lastDownTexture = context.source;
      cmd.blitScreenTriangle(lastDownTexture, downSampleTexture, null, this._shader, this._shaderData, 0);
      lastDownTexture = downSampleTexture;
      for (var i = 0; i < this._blurIterations; i++) {
        var blurTexture = RenderTexture5.createFromPool(tw, th, RenderTargetFormat7.R8G8B8, RenderTargetFormat7.None, false, 1);
        blurTexture.filterMode = FilterMode2.Bilinear;
        cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 1);
        lastDownTexture = blurTexture;
        this._tempRenderTexture[i * 2 + 1] = blurTexture;
        blurTexture = RenderTexture5.createFromPool(tw, th, RenderTargetFormat7.R8G8B8, RenderTargetFormat7.None, false, 1);
        blurTexture.filterMode = FilterMode2.Bilinear;
        cmd.blitScreenTriangle(lastDownTexture, blurTexture, null, this._shader, this._shaderData, 2);
        lastDownTexture = blurTexture;
        this._tempRenderTexture[i * 2 + 2] = blurTexture;
      }
      context.source = lastDownTexture;
      cmd.blitScreenTriangle(context.source, context.destination);
      var maxTexture = this._blurIterations * 2 + 1;
      for (i = 0; i < maxTexture; i++) {
        RenderTexture5.recoverToPool(this._tempRenderTexture[i]);
      }
      context.deferredReleaseTextures.push(lastDownTexture);
    }
  };
  __name(_BlurEffect2, "BlurEffect");
  _BlurEffect2.BLUR_TYPE_GaussianBlur = 0;
  _BlurEffect2.BLUR_TYPE_Simple = 1;
  var BlurEffect2 = _BlurEffect2;
  var _BlurMaterial2 = class _BlurMaterial2 extends Material4 {
    static __init__() {
      _BlurMaterial2.SHADERVALUE_MAINTEX = Shader3D4.propertyNameToID("u_MainTex");
      _BlurMaterial2.SHADERVALUE_TEXELSIZE = Shader3D4.propertyNameToID("u_MainTex_TexelSize");
      _BlurMaterial2.SHADERVALUE_DOWNSAMPLEVALUE = Shader3D4.propertyNameToID("u_DownSampleValue");
      _BlurMaterial2.SHADERVALUE_SOURCETEXTURE0 = Shader3D4.propertyNameToID("u_sourceTexture0");
      _BlurMaterial2.ShADERVALUE_SOURCETEXTURE1 = Shader3D4.propertyNameToID("u_sourceTexture1");
    }
    constructor(texelSize, offset) {
      super();
      _BlurMaterial2.__init__();
      this.setShaderName("blurEffect");
      this.setIntByIndex(_BlurMaterial2.SHADERVALUE_DOWNSAMPLEVALUE, offset);
      this.setVector4ByIndex(_BlurMaterial2.SHADERVALUE_TEXELSIZE, texelSize);
    }
    sourceTexture(sourceTexture0, sourceTexture1) {
      this.setTextureByIndex(_BlurMaterial2.SHADERVALUE_SOURCETEXTURE0, sourceTexture0);
      this.setTextureByIndex(_BlurMaterial2.ShADERVALUE_SOURCETEXTURE1, sourceTexture1);
    }
  };
  __name(_BlurMaterial2, "BlurMaterial");
  var BlurMaterial2 = _BlurMaterial2;

  // src/3D/PostProcess/PostProcess_Edge/shader/EdgeEffectVS.vs
  var EdgeEffectVS_default = '#define SHADER_NAME EdgeEffectVS\r\n\r\n#include "Camera.glsl";\r\nvarying vec2 v_Texcoord0;\r\n\r\nvoid main() {\r\n	gl_Position = vec4(a_PositionTexcoord.xy, 0.0, 1.0);\r\n	v_Texcoord0 = a_PositionTexcoord.zw;\r\n	gl_Position = remapPositionZ(gl_Position);\r\n}\r\n';

  // src/3D/PostProcess/PostProcess_Edge/shader/EdgeEffectFS.fs
  var EdgeEffectFS_default = '#define SHADER_NAME EdgeEffectFS\r\n#include "Color.glsl";\r\n#include "DepthNormalUtil.glsl";\r\n\r\nvarying vec2 v_Texcoord0;\r\n\r\n\r\nvec4 sampleMainTex(sampler2D tex, vec2 uv)\r\n{\r\n    vec4 mainSampler = texture2D(tex, uv);\r\n#ifdef Gamma_u_texture\r\n    mainSampler = gammaToLinear(mainSampler);\r\n#endif // Gamma_u_MainTex\r\n    return mainSampler;\r\n}\r\n\r\n#ifdef DEPTHNORMAL\r\n    void getDepthNormal(out float depth, out vec3 normal){\r\n        vec4 col = texture2D(u_DepthNormalTex, v_Texcoord0);\r\n        DecodeDepthNormal(col, depth, normal);\r\n    }\r\n\r\n    float getDepth(vec2 uv) {\r\n        float depth;\r\n        vec3 normal;\r\n        vec4 col = texture2D(u_DepthNormalTex, uv);\r\n        DecodeDepthNormal(col, depth, normal);\r\n        return depth;\r\n    }\r\n\r\n    vec3 getNormal(vec2 uv) {\r\n        float depth;\r\n        vec3 normal;\r\n        vec4 col = texture2D(u_DepthNormalTex, uv);\r\n        DecodeDepthNormal(col, depth, normal);\r\n        return normal;\r\n    }\r\n\r\n#endif\r\n\r\n#ifdef DEPTH\r\n    float getDepth(vec2 uv) {\r\n        float depth = texture2D(u_DepthTex, uv).r;\r\n        depth = Linear01Depth(depth, u_DepthBufferParams);\r\n        return depth;\r\n    }\r\n#endif\r\n\r\nvoid SobelSample(in vec2 uv,out vec3 colorG, out vec3 normalG, out vec3 depthG) {\r\n\r\n    float offsetx = u_MainTex_TexelSize.x;\r\n    float offsety = u_MainTex_TexelSize.y;\r\n    vec2 offsets[9];\r\n    offsets[0] = vec2(-offsetx,  offsety); // \u5DE6\u4E0A\r\n    offsets[1] = vec2( 0.0,    offsety); // \u6B63\u4E0A\r\n    offsets[2] = vec2( offsetx,  offsety); // \u53F3\u4E0A\r\n    offsets[3] = vec2(-offsetx,  0.0);   // \u5DE6\r\n    offsets[4] = vec2( 0.0,    0.0);   // \u4E2D\r\n    offsets[5] = vec2( offsetx,  0.0);   // \u53F3\r\n    offsets[6] = vec2(-offsetx, -offsety); // \u5DE6\u4E0B\r\n    offsets[7] = vec2( 0.0,   -offsety); // \u6B63\u4E0B\r\n    offsets[8] = vec2( offsetx, -offsety); // \u53F3\u4E0B\r\n\r\n    float Gx[9];\r\n    Gx[0] = -1.0; Gx[1] = 0.0; Gx[2] = 1.0; \r\n    Gx[3] = -2.0; Gx[4] = 0.0; Gx[5] = 2.0; \r\n    Gx[6] = -1.0; Gx[7] = 0.0; Gx[8] = 1.0; \r\n\r\n    float Gy[9];\r\n    Gy[0] = 1.0; Gy[1] = 2.0; Gy[2] = 1.0; \r\n    Gy[3] = 0.0; Gy[4] = 0.0; Gy[5] = 0.0; \r\n    Gy[6] = -1.0; Gy[7] = -2.0;Gy[8] = -1.0; \r\n\r\n    vec3 sampleTex[9];\r\n    float sampleDepth[9];\r\n    vec3 sampleNormal[9];\r\n    for (int i = 0; i < 9; i++)\r\n    {\r\n        vec2 uvOffset = uv + offsets[i];\r\n        sampleTex[i] = sampleMainTex(u_MainTex, uvOffset).rgb;\r\n        sampleDepth[i] = getDepth(uvOffset);\r\n        sampleNormal[i] = (getNormal(uvOffset) + 1.0) / 2.0;\r\n    }\r\n\r\n    vec3 colorGx = vec3(0.0);\r\n    vec3 colorGy = vec3(0.0);\r\n    float depthGx = 0.0;\r\n    float depthGy = 0.0;\r\n    vec3 normalGx = vec3(0.0);\r\n    vec3 normalGy = vec3(0.0);\r\n\r\n    for (int i = 0; i < 9; i++) {\r\n        colorGx += sampleTex[i] * Gx[i];\r\n        colorGy += sampleTex[i] * Gy[i];\r\n        depthGx += sampleDepth[i] * Gx[i];\r\n        depthGy += sampleDepth[i] * Gy[i];\r\n        normalGx += sampleNormal[i] * Gx[i];\r\n        normalGy += sampleNormal[i] * Gy[i];\r\n    }\r\n\r\n    float colDepthG = abs(depthGx) + abs(depthGy);\r\n    depthG = vec3(colDepthG);\r\n\r\n    colorG = abs(colorGx) + abs(colorGy);\r\n\r\n    normalG = abs(normalGx) + abs(normalGy);\r\n\r\n}\r\n\r\nfloat ColorGray(vec3 color) {\r\n    return (color.r + color.g + color.b) / 3.0;\r\n}\r\n\r\nvec3 getEdgeValue(float hold, vec3 valueG) {\r\n    return vec3(step(hold, ColorGray(valueG)));\r\n}\r\n\r\nvoid main() {\r\n    \r\n    vec2 uv = v_Texcoord0;\r\n\r\n    vec3 colorG, normalG, depthG;\r\n    SobelSample(uv, colorG, normalG, depthG);\r\n    vec3 edgeColor = vec3(0.2);\r\n\r\n    #if defined(DEPTHEDGE)\r\n        vec3 edgeValue = getEdgeValue(u_Depthhold, depthG);\r\n    #endif\r\n\r\n    #if defined(NORMALEDGE)\r\n        vec3 edgeValue = getEdgeValue(u_NormalHold, normalG);\r\n    #endif\r\n\r\n    #if defined(COLOREDGE)\r\n        vec3 edgeValue = getEdgeValue(u_ColorHold, colorG);\r\n    #endif\r\n\r\n    vec3 fillColor = u_EdgeColor.xyz;\r\n\r\n    #ifdef SOURCE\r\n        fillColor = texture2D(u_MainTex, uv).rgb;\r\n    #endif\r\n\r\n    vec3 finalColor = mix(fillColor, edgeColor, edgeValue);\r\n    gl_FragColor = vec4(finalColor, 1.0);\r\n	gl_FragColor = outputTransform(gl_FragColor);\r\n\r\n}';

  // src/3D/PostProcess/PostProcess_Edge.ts
  var PostProcessEffect2 = Laya.PostProcessEffect;
  var DepthTextureMode2 = Laya.DepthTextureMode;
  var FilterMode3 = Laya.FilterMode;
  var RenderTargetFormat8 = Laya.RenderTargetFormat;
  var Shader3D5 = Laya.Shader3D;
  var ShaderDataType4 = Laya.ShaderDataType;
  var LayaGL2 = Laya.LayaGL;
  var Vector417 = Laya.Vector4;
  var RenderTexture6 = Laya.RenderTexture;
  var SubShader4 = Laya.SubShader;
  var VertexMesh4 = Laya.VertexMesh;
  var DirectionLight = Laya.DirectionLight;
  var MeshSprite3D28 = Laya.MeshSprite3D;
  var Vector357 = Laya.Vector3;
  var Color19 = Laya.Color;
  var Quaternion10 = Laya.Quaternion;
  var Event49 = Laya.Event;
  var HSlider2 = Laya.HSlider;
  var PrimitiveMesh26 = Laya.PrimitiveMesh;
  var Button9 = Laya.Button;
  var PostProcess = Laya.PostProcess;
  var Handler20 = Laya.Handler;
  var { regClass: regClass185, property: property185 } = Laya;
  var PostProcess_Edge = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector357(0, 4, 10);
      this.camera.transform.rotation = new Quaternion10(-0.2, 0, 0, 0.97);
      this.addLight();
      Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then((res) => {
        let sphere = new MeshSprite3D28(PrimitiveMesh26.createSphere(1), "Sphere");
        this.scene.addChild(sphere);
        sphere.transform.position = new Vector357(0, 1, 0);
        let plane = new MeshSprite3D28(PrimitiveMesh26.createPlane(), "Plane");
        this.scene.addChild(plane);
        plane.transform.position = new Vector357(0, -0.5, 0);
        let cube = new MeshSprite3D28(PrimitiveMesh26.createBox(1, 1, 1), "Cube");
        this.scene.addChild(cube);
        cube.transform.position = new Vector357(0, 3, 0);
        this.camera.depthTextureMode |= DepthTextureMode2.DepthNormals;
        let dude = res.create();
        this.scene.addChild(dude);
        dude.transform.position = new Vector357(1.5, 0, 0);
        dude.transform.rotationEuler = new Vector357(0, 180, 0);
        let postProcess = new PostProcess();
        this.camera.postProcess = postProcess;
        let edgeEffect = new EdgeEffect();
        postProcess.addEffect(edgeEffect);
        this.addUI(edgeEffect);
      });
    }
    addLight() {
      let dirLightDirections = [new Vector357(-1, -1, -1), new Vector357(1, -1, -1)];
      let lightColor = new Color19(0.6, 0.6, 0.6);
      for (let index = 0; index < dirLightDirections.length; index++) {
        let dir = dirLightDirections[index];
        Vector357.normalize(dir, dirLightDirections[index]);
        let dirLight = new DirectionLight();
        this.scene.addChild(dirLight);
        dirLight.transform.worldMatrix.setForward(dirLightDirections[index]);
        dirLight.color = lightColor;
      }
    }
    addUI(edgeEffect) {
      Laya.loader.load(["resources/res/ui/hslider.png", "resources/image/img_btn_bg.png", "resources/res/ui/hslider$bar.png", "resources/res/ui/colorPicker.png"]).then(() => {
        let colorFunc = /* @__PURE__ */ __name(function() {
          edgeEffect.edgeMode = 0 /* ColorEdge */;
          colorSlider.visible = true;
          normalSlider.visible = false;
          depthSlider.visible = false;
        }, "colorFunc");
        let colorButton = this.addButton(60, 150, 160, 30, "color edge", 20, colorFunc);
        let colorSlider = this.addSlider(60, 190, 300, 0.01, 1, 0.7, 0.01, function(value) {
          edgeEffect.colorHold = value;
        });
        let normalFunc = /* @__PURE__ */ __name(function() {
          edgeEffect.edgeMode = 1 /* NormalEdge */;
          colorSlider.visible = false;
          normalSlider.visible = true;
          depthSlider.visible = false;
        }, "normalFunc");
        let normalButton = this.addButton(60, 230, 160, 30, "normal edge", 20, normalFunc);
        let normalSlider = this.addSlider(60, 270, 300, 0.01, 1, 0.7, 0.01, function(value) {
          edgeEffect.normalHold = value;
        });
        let depthButton = this.addButton(60, 310, 160, 30, "depth edge", 20, function() {
          edgeEffect.edgeMode = 2 /* DepthEdge */;
          colorSlider.visible = false;
          normalSlider.visible = false;
          depthSlider.visible = true;
        });
        let depthSlider = this.addSlider(60, 350, 300, 0.01, 1, 0.7, 0.01, function(value) {
          edgeEffect.depthHold = value;
        });
        let source = this.addButton(60, 390, 160, 30, "show source", 20, function() {
          edgeEffect.showSource = !edgeEffect.showSource;
        });
        colorFunc();
      });
    }
    addButton(x, y, width, height, text, size, clickFunc) {
      let button = this.owner.addChild(new Button9("resources/image/img_btn_bg.png", text));
      button.size(width, height);
      button.size(150, 40);
      button.labelSize = 16;
      button.sizeGrid = "21,83,22,76";
      button.stateNum = size;
      button.stateNum = 1;
      button.labelColors = "#ffffff";
      button.pos(x, y);
      button.on(Event49.CLICK, this, clickFunc);
      return button;
    }
    addSlider(x, y, width, min, max, value, tick, changeFunc) {
      let slider = this.owner.addChild(new HSlider2("resources/res/ui/hslider.png"));
      slider.width = width;
      slider.pos(x, y);
      slider.min = min;
      slider.max = max;
      slider.value = value;
      slider.tick = tick;
      slider.changeHandler = Handler20.create(this, changeFunc, [], false);
      slider.visible = false;
      return slider;
    }
  };
  __name(PostProcess_Edge, "PostProcess_Edge");
  __decorateClass([
    property185(Laya.Camera)
  ], PostProcess_Edge.prototype, "camera", 2);
  __decorateClass([
    property185(Laya.Scene3D)
  ], PostProcess_Edge.prototype, "scene", 2);
  PostProcess_Edge = __decorateClass([
    regClass185("f610bff8-ef8b-40b7-bf5d-5419c36a45cb", "../src/3D/PostProcess/PostProcess_Edge.ts")
  ], PostProcess_Edge);
  var EdgeMode = /* @__PURE__ */ ((EdgeMode2) => {
    EdgeMode2[EdgeMode2["ColorEdge"] = 0] = "ColorEdge";
    EdgeMode2[EdgeMode2["NormalEdge"] = 1] = "NormalEdge";
    EdgeMode2[EdgeMode2["DepthEdge"] = 2] = "DepthEdge";
    return EdgeMode2;
  })(EdgeMode || {});
  var _EdgeEffect = class _EdgeEffect extends PostProcessEffect2 {
    constructor() {
      super();
      this._shader = null;
      this._shaderData = LayaGL2.renderOBJCreate.createShaderData(null);
      this._depthBufferparam = new Vector417();
      this._edgeMode = 1 /* NormalEdge */;
      if (!_EdgeEffect._isShaderInit) {
        _EdgeEffect._isShaderInit = true;
        _EdgeEffect.EdgeEffectShaderInit();
      }
      this._shader = Shader3D5.find("PostProcessEdge");
      this.edgeColor = new Vector357(0, 0, 0);
      this.colorHold = 0.7;
      this.normalHold = 0.7;
      this.depthHold = 0.7;
      this.edgeMode = 2 /* DepthEdge */;
      this.showSource = true;
    }
    static __init__() {
      _EdgeEffect.DEPTHTEXTURE = Shader3D5.propertyNameToID("u_DepthTex");
      _EdgeEffect.DEPTHNORMALTEXTURE = Shader3D5.propertyNameToID("u_DepthNormalTex");
      _EdgeEffect.DEPTHBUFFERPARAMS = Shader3D5.propertyNameToID("u_DepthBufferParams");
      _EdgeEffect.EDGECOLOR = Shader3D5.propertyNameToID("u_EdgeColor");
      _EdgeEffect.COLORHOLD = Shader3D5.propertyNameToID("u_ColorHold");
      _EdgeEffect.DEPTHHOLD = Shader3D5.propertyNameToID("u_Depthhold");
      _EdgeEffect.NORMALHOLD = Shader3D5.propertyNameToID("u_NormalHold");
    }
    static EdgeEffectShaderInit() {
      _EdgeEffect.__init__();
      _EdgeEffect.SHADERDEFINE_DEPTH = Shader3D5.getDefineByName("DEPTH");
      _EdgeEffect.SHADERDEFINE_DEPTHNORMAL = Shader3D5.getDefineByName("DEPTHNORMAL");
      _EdgeEffect.SHADERDEFINE_DEPTHEDGE = Shader3D5.getDefineByName("DEPTHEDGE");
      _EdgeEffect.SHADERDEFINE_NORMALEDGE = Shader3D5.getDefineByName("NORMALEDGE");
      _EdgeEffect.SHADERDEFINE_COLOREDGE = Shader3D5.getDefineByName("COLOREDGE");
      _EdgeEffect.SHADERDEFINE_SOURCE = Shader3D5.getDefineByName("SOURCE");
      let attributeMap = {
        "a_PositionTexcoord": [VertexMesh4.MESH_POSITION0, ShaderDataType4.Vector4]
      };
      let uniformMap = {
        "u_MainTex": ShaderDataType4.Texture2D,
        "u_MainTex_TexelSize": ShaderDataType4.Vector4,
        "u_DepthTex": ShaderDataType4.Texture2D,
        "u_DepthNormalTex": ShaderDataType4.Texture2D,
        "u_DepthBufferParams": ShaderDataType4.Vector4,
        "u_EdgeColor": ShaderDataType4.Color,
        "u_ColorHold": ShaderDataType4.Float,
        "u_Depthhold": ShaderDataType4.Float,
        "u_NormalHold": ShaderDataType4.Float
      };
      let shader = Shader3D5.add("PostProcessEdge");
      let subShader = new SubShader4(attributeMap, uniformMap);
      shader.addSubShader(subShader);
      let pass = subShader.addShaderPass(EdgeEffectVS_default, EdgeEffectFS_default);
      pass.renderState.depthWrite = false;
    }
    get edgeColor() {
      return this._shaderData.getVector3(_EdgeEffect.EDGECOLOR);
    }
    set edgeColor(value) {
      this._shaderData.setVector3(_EdgeEffect.EDGECOLOR, value);
    }
    get colorHold() {
      return this._shaderData.getNumber(_EdgeEffect.COLORHOLD);
    }
    set colorHold(value) {
      this._shaderData.setNumber(_EdgeEffect.COLORHOLD, value);
    }
    get depthHold() {
      return this._shaderData.getNumber(_EdgeEffect.DEPTHHOLD);
    }
    set depthHold(value) {
      this._shaderData.setNumber(_EdgeEffect.DEPTHHOLD, value);
    }
    get normalHold() {
      return this._shaderData.getNumber(_EdgeEffect.NORMALHOLD);
    }
    set normalHold(value) {
      this._shaderData.setNumber(_EdgeEffect.NORMALHOLD, value);
    }
    get edgeMode() {
      return this._edgeMode;
    }
    get showSource() {
      return this._shaderData.hasDefine(_EdgeEffect.SHADERDEFINE_SOURCE);
    }
    set showSource(value) {
      if (value) {
        this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_SOURCE);
      } else {
        this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_SOURCE);
      }
    }
    set edgeMode(value) {
      this._edgeMode = value;
      switch (value) {
        case 0 /* ColorEdge */:
          this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_COLOREDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_DEPTHEDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_NORMALEDGE);
          break;
        case 1 /* NormalEdge */:
          this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_NORMALEDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_DEPTHEDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_COLOREDGE);
          break;
        case 2 /* DepthEdge */:
          this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_DEPTHEDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_COLOREDGE);
          this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_NORMALEDGE);
          break;
      }
    }
    render(context) {
      let cmd = context.command;
      let viewport = context.camera.viewport;
      let camera = context.camera;
      let far = camera.farPlane;
      let near = camera.nearPlane;
      let source = context.indirectTarget;
      let destination = context.destination;
      let width = viewport.width;
      let height = viewport.height;
      let renderTexture = RenderTexture6.createFromPool(width, height, RenderTargetFormat8.R8G8B8A8, RenderTargetFormat8.DEPTH_16, false, 1);
      renderTexture.filterMode = FilterMode3.Bilinear;
      if (camera.depthTextureMode == DepthTextureMode2.Depth) {
        this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_DEPTH);
        this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_DEPTHNORMAL);
        this._shaderData.setTexture(_EdgeEffect.DEPTHTEXTURE, camera.depthTexture);
      } else if (camera.depthTextureMode == DepthTextureMode2.DepthNormals) {
        this._shaderData.addDefine(_EdgeEffect.SHADERDEFINE_DEPTHNORMAL);
        this._shaderData.removeDefine(_EdgeEffect.SHADERDEFINE_DEPTH);
        this._shaderData.setTexture(_EdgeEffect.DEPTHNORMALTEXTURE, camera.depthNormalTexture);
      }
      this._depthBufferparam.setValue(1 - far / near, far / near, (near - far) / (near * far), 1 / near);
      this._shaderData.setVector(_EdgeEffect.DEPTHBUFFERPARAMS, this._depthBufferparam);
      cmd.blitScreenTriangle(source, context.destination, null, this._shader, this._shaderData, 0);
      context.deferredReleaseTextures.push(renderTexture);
    }
  };
  __name(_EdgeEffect, "EdgeEffect");
  _EdgeEffect._isShaderInit = false;
  var EdgeEffect = _EdgeEffect;

  // src/3D/Resource/GarbageCollection.ts
  var Scene3D2 = Laya.Scene3D;
  var Handler21 = Laya.Handler;
  var Resource = Laya.Resource;
  var { regClass: regClass186, property: property186 } = Laya;
  var GarbageCollection = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      Scene3D2.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", Handler21.create(this, (scene) => {
        this._scene = this.scene.addChildAt(scene, 0);
        super.addBottomButton(["\u91CA\u653E\u663E\u5B58", "\u52A0\u8F7D\u573A\u666F"], this, [this.garbageCollection, this.loadScene]);
      }));
    }
    loadScene() {
      Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls").then((res) => {
        let scene = res.create();
        let scene3D = scene.scene3D;
        this._scene = this.scene.addChildAt(scene3D, 0);
      });
    }
    garbageCollection() {
      if (this._scene) {
        this._scene.destroy();
        this._scene = null;
        Resource.destroyUnusedResources();
      }
    }
  };
  __name(GarbageCollection, "GarbageCollection");
  __decorateClass([
    property186(Laya.Camera)
  ], GarbageCollection.prototype, "camera", 2);
  __decorateClass([
    property186(Laya.Scene3D)
  ], GarbageCollection.prototype, "scene", 2);
  GarbageCollection = __decorateClass([
    regClass186("dfc7da98-20e0-474c-a6df-4fbab1af1a8f", "../src/3D/Resource/GarbageCollection.ts")
  ], GarbageCollection);

  // src/3D/Resource/LoadFbxRosource.ts
  var Vector358 = Laya.Vector3;
  var Loader18 = Laya.Loader;
  var { regClass: regClass187, property: property187 } = Laya;
  var LoadFbxRosource = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector358(0.5, 1.2, 4);
      var Resource2 = [
        //可以直接加载已经在IDE里制作好的lh，其中材质已经创建好
        { url: "resources/res/threeDimen/fbx/Danding.lh", type: Loader18.HIERARCHY },
        //可以直接加载FBX文件，并配置材质使用的shader和纹理贴图
        { url: "resources/res/threeDimen/fbx/Stand.FBX", type: Loader18.HIERARCHY },
        { url: "resources/res/threeDimen/fbx/Material.lmat", type: Loader18.MATERIAL },
        { url: "resources/res/threeDimen/fbx/LayaMonkey.lmat", type: Loader18.MATERIAL }
      ];
      Laya.loader.load(Resource2).then((res) => {
        this.onFBXComplete(res);
        Laya.loader.load("resources/res/threeDimen/fbx/LayaMonkey.FBX", Loader18.HIERARCHY).then((fbx) => {
          var LayaMonkey = fbx.create();
          this.scene.addChild(LayaMonkey);
          LayaMonkey.transform.position = new Vector358(2.5, 0, 0);
          LayaMonkey.transform.setWorldLossyScale(new Vector358(0.6, 0.6, 0.6));
          LayaMonkey.getChildAt(0).getComponent(Laya.MeshRenderer).material = res[3];
        });
      });
    }
    onFBXComplete(res) {
      let Danding = res[0].create();
      this.scene.addChild(Danding);
      Danding.transform.position = new Vector358(-2, 0, 0);
      var Stand = res[1].create();
      this.scene.addChild(Stand);
      Stand.transform.position = new Vector358(0, 0, 0);
      Stand.getChildAt(0).getComponent(Laya.MeshRenderer).material = res[2];
    }
  };
  __name(LoadFbxRosource, "LoadFbxRosource");
  __decorateClass([
    property187(Laya.Camera)
  ], LoadFbxRosource.prototype, "camera", 2);
  __decorateClass([
    property187(Laya.Scene3D)
  ], LoadFbxRosource.prototype, "scene", 2);
  LoadFbxRosource = __decorateClass([
    regClass187("97f3fc07-f23a-40f7-9b00-346bbca95ac5", "../src/3D/Resource/LoadFbxRosource.ts")
  ], LoadFbxRosource);

  // src/3D/Resource/LoadGltfRosource.ts
  var Vector359 = Laya.Vector3;
  var Loader19 = Laya.Loader;
  var { regClass: regClass188, property: property188 } = Laya;
  var LoadGltfRosource = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector359(0.5, 1.2, 4);
      var gltfResource = [
        { url: "resources/res/threeDimen/gltf/RiggedFigure/RiggedFigure.gltf", type: Loader19.HIERARCHY },
        { url: "resources/res/threeDimen/gltf/Duck/Duck.lh", type: Loader19.HIERARCHY }
      ];
      Laya.loader.load(gltfResource).then((res) => {
        this.onGLTFComplete(res);
      });
      Laya.loader.load("resources/res/threeDimen/gltf/AnimatedCube/AnimatedCube.gltf", Loader19.HIERARCHY).then((res) => {
        var cube = res.create();
        this.scene.addChild(cube);
        cube.transform.position = new Vector359(2.5, 0.6, 0);
        cube.transform.setWorldLossyScale(new Vector359(0.6, 0.6, 0.6));
      });
    }
    onGLTFComplete(res) {
      let riggedFigure = res[0].create();
      this.scene.addChild(riggedFigure);
      riggedFigure.transform.position = new Vector359(-2, 0, 0);
      var duck = res[1].create();
      this.scene.addChild(duck);
      duck.transform.position = new Vector359(0, 0, 0);
    }
  };
  __name(LoadGltfRosource, "LoadGltfRosource");
  __decorateClass([
    property188(Laya.Camera)
  ], LoadGltfRosource.prototype, "camera", 2);
  __decorateClass([
    property188(Laya.Scene3D)
  ], LoadGltfRosource.prototype, "scene", 2);
  LoadGltfRosource = __decorateClass([
    regClass188("94f58eab-aae6-4322-94c4-dd6654f2317a", "../src/3D/Resource/LoadGltfRosource.ts")
  ], LoadGltfRosource);

  // src/3D/Resource/LoadResourceDemo.ts
  var MeshSprite3D29 = Laya.MeshSprite3D;
  var Vector360 = Laya.Vector3;
  var BlinnPhongMaterial20 = Laya.BlinnPhongMaterial;
  var Quaternion11 = Laya.Quaternion;
  var PrimitiveMesh27 = Laya.PrimitiveMesh;
  var SkyBox3 = Laya.SkyBox;
  var { regClass: regClass189, property: property189 } = Laya;
  var LoadResourceDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      let resArr = [
        //加载不同类型的3D资源
        { url: "resources/res/threeDimen/skyBox/skyBox2/skyBox2.lmat", type: Laya.Loader.MATERIAL },
        { url: "resources/res/threeDimen/texture/earth.png", type: Laya.Loader.TEXTURE2D },
        { url: "resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm", type: Laya.Loader.MESH },
        { url: "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh", type: Laya.Loader.HIERARCHY }
      ];
      Laya.loader.load(resArr, null, Laya.Handler.create(this, this.onLoading, null, false)).then((res) => {
        this.loadingBar.visible = false;
        this.onComplete(res);
      });
      Laya.loader.on(Laya.Event.ERROR, this, this.onError);
    }
    //加载资源
    onComplete(res) {
      var skyRenderer = this.camera.skyRenderer;
      skyRenderer.mesh = SkyBox3.instance;
      skyRenderer.material = res[0];
      var earth1 = this.scene.addChild(new MeshSprite3D29(PrimitiveMesh27.createSphere(1)));
      earth1.transform.position = new Laya.Vector3(0, 1, 0);
      var earthMat = new BlinnPhongMaterial20();
      earthMat.albedoTexture = res[1];
      earthMat.albedoIntensity = 1;
      earth1.meshRenderer.material = earthMat;
      var layaMonkey = this.scene.addChild(new MeshSprite3D29(res[2]));
      var layaMonkeyTrans = layaMonkey.transform;
      var layaMonkeyScale = layaMonkeyTrans.localScale;
      layaMonkeyScale.setValue(0.5, 0.5, 0.5);
      layaMonkeyTrans.localScale = layaMonkeyScale;
      layaMonkey.transform.rotation = new Quaternion11(0.7071068, 0, 0, -0.7071067);
      layaMonkey.transform.translate(new Vector360(-2, 0, 0));
      var layaMonkey2 = this.scene.addChild(res[3].create());
      var layaMonkey2Trans = layaMonkey2.transform;
      var layaMonkey2Scale = layaMonkey2Trans.localScale;
      layaMonkey2Scale.setValue(5, 5, 5);
      layaMonkey2Trans.localScale = layaMonkey2Scale;
      layaMonkey2Trans.translate(new Vector360(2, 0, 0));
    }
    /**
    * 当报错时打印错误
    */
    onError(err) {
      console.log("\u52A0\u8F7D\u5931\u8D25: " + err);
    }
    /**
     * 加载时侦听
     */
    onLoading(progress) {
      if (progress > 0.92)
        this.loadingBar.value = 0.95;
      else {
        this.loadingBar.value = progress;
        console.log("\u52A0\u8F7D\u8FDB\u5EA6: " + progress, this.loadingBar.value);
      }
    }
  };
  __name(LoadResourceDemo, "LoadResourceDemo");
  __decorateClass([
    property189(Laya.Camera)
  ], LoadResourceDemo.prototype, "camera", 2);
  __decorateClass([
    property189(Laya.Scene3D)
  ], LoadResourceDemo.prototype, "scene", 2);
  __decorateClass([
    property189(Laya.ProgressBar)
  ], LoadResourceDemo.prototype, "loadingBar", 2);
  LoadResourceDemo = __decorateClass([
    regClass189("dcc04071-d471-438c-933e-bfc361ac03a4", "../src/3D/Resource/LoadResourceDemo.ts")
  ], LoadResourceDemo);

  // src/3D/Scene3D/EnvironmentalReflection.ts
  var MeshSprite3D30 = Laya.MeshSprite3D;
  var Vector361 = Laya.Vector3;
  var AmbientMode = Laya.AmbientMode;
  var CameraClearFlags8 = Laya.CameraClearFlags;
  var SkyBox4 = Laya.SkyBox;
  var PBRStandardMaterial5 = Laya.PBRStandardMaterial;
  var { regClass: regClass190, property: property190 } = Laya;
  var EnvironmentalReflection = class extends BaseScript {
    constructor() {
      super();
      this.teapot = null;
    }
    onAwake() {
      super.base(this.camera);
      this.scene.ambientMode = AmbientMode.SphericalHarmonics;
      this.scene.reflectionIntensity = 1;
      this.camera.transform.translate(new Vector361(0, 2, 3));
      this.camera.transform.rotate(new Vector361(-15, 0, 0), true, false);
      this.camera.clearFlag = CameraClearFlags8.Sky;
      Laya.loader.load("resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat").then((res) => {
        var skyRenderer = this.scene.skyRenderer;
        skyRenderer.mesh = SkyBox4.instance;
        skyRenderer.material = res;
        res.exposure = 0.6 + 1;
      });
      Laya.loader.load("resources/res/threeDimen/staticModel/teapot/teapot-Teapot001.lm").then((res) => {
        this.teapot = this.scene.addChild(new MeshSprite3D30(res));
        this.teapot.transform.position = new Vector361(0, 1.75, 2);
        this.teapot.transform.setWorldLossyScale(new Vector361(5, 5, 5));
        this.teapot.transform.rotate(new Vector361(-90, 0, 0), false, false);
        var pbrMat = new PBRStandardMaterial5();
        pbrMat.metallic = 1;
        this.teapot.meshRenderer.material = pbrMat;
      });
      this.loadEnvironmentalReflection();
    }
    removeEnvironmentalReflection() {
      this.scene.sceneReflectionProb.iblTex = null;
    }
    loadEnvironmentalReflection() {
      Laya.loader.load("resources/scene/3D/Scene3D/EnvironmentalReflection/EnvironmentalReflection.ktx").then((res) => {
        this.scene.sceneReflectionProb.iblTex = res;
      });
    }
  };
  __name(EnvironmentalReflection, "EnvironmentalReflection");
  __decorateClass([
    property190(Laya.Camera)
  ], EnvironmentalReflection.prototype, "camera", 2);
  __decorateClass([
    property190(Laya.Scene3D)
  ], EnvironmentalReflection.prototype, "scene", 2);
  EnvironmentalReflection = __decorateClass([
    regClass190("d610a4a9-c75b-463a-a39a-848d8fa1ff89", "../src/3D/Scene3D/EnvironmentalReflection.ts")
  ], EnvironmentalReflection);

  // src/3D/Scene3D/GriendSkyAmbientDemo.ts
  var Sprite3D14 = Laya.Sprite3D;
  var MeshSprite3D31 = Laya.MeshSprite3D;
  var Vector362 = Laya.Vector3;
  var PrimitiveMesh28 = Laya.PrimitiveMesh;
  var AmbientMode2 = Laya.AmbientMode;
  var Color20 = Laya.Color;
  var PBRStandardMaterial6 = Laya.PBRStandardMaterial;
  var { regClass: regClass191, property: property191 } = Laya;
  var GriendSkyAmbientDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector362(0, 2, 3);
      this.camera.transform.rotate(new Vector362(-15, 0, 0), true, false);
      this.scene.ambientIntensity = 0.5;
      this.sprite3D = this.scene.addChild(new Sprite3D14());
      var mat = new PBRStandardMaterial6();
      var box = this.sprite3D.addChild(new MeshSprite3D31(PrimitiveMesh28.createBox(0.5, 0.5, 0.5)));
      box.transform.position = new Vector362(2, 0.25, 0.6);
      box.transform.rotate(new Vector362(0, 45, 0), false, false);
      box.meshRenderer.material = mat;
      var sphere = this.sprite3D.addChild(new MeshSprite3D31(PrimitiveMesh28.createSphere(0.25, 20, 20)));
      sphere.transform.position = new Vector362(1, 0.25, 0.6);
      sphere.meshRenderer.material = mat;
      var cylinder = this.sprite3D.addChild(new MeshSprite3D31(PrimitiveMesh28.createCylinder(0.25, 1, 20)));
      cylinder.transform.position = new Vector362(0, 0.5, 0.6);
      cylinder.meshRenderer.material = mat;
      var capsule = this.sprite3D.addChild(new MeshSprite3D31(PrimitiveMesh28.createCapsule(0.25, 1, 10, 20)));
      capsule.transform.position = new Vector362(-1, 0.5, 0.6);
      capsule.meshRenderer.material = mat;
      var cone = this.sprite3D.addChild(new MeshSprite3D31(PrimitiveMesh28.createCone(0.25, 0.75)));
      cone.transform.position = new Vector362(-2, 0.375, 0.6);
      cone.meshRenderer.material = mat;
      super.addBottomButton(["\u56FA\u5B9A\u989C\u8272", "\u7403\u8C10\u5149\u7167"], this, [this.setSolidColor, this.setSphericalHarmonics]);
    }
    setSphericalHarmonics() {
      this.scene.ambientMode = AmbientMode2.SphericalHarmonics;
    }
    setSolidColor() {
      this.scene.ambientMode = AmbientMode2.SolidColor;
      this.scene.ambientColor = new Color20(0.56, 0.89, 1);
    }
  };
  __name(GriendSkyAmbientDemo, "GriendSkyAmbientDemo");
  __decorateClass([
    property191(Laya.Camera)
  ], GriendSkyAmbientDemo.prototype, "camera", 2);
  __decorateClass([
    property191(Laya.Scene3D)
  ], GriendSkyAmbientDemo.prototype, "scene", 2);
  GriendSkyAmbientDemo = __decorateClass([
    regClass191("a938acc9-7759-4f01-b580-ebd51eacad0b", "../src/3D/Scene3D/GriendSkyAmbientDemo.ts")
  ], GriendSkyAmbientDemo);

  // src/3D/Scene3D/LightmapScene.ts
  var Lightmap = Laya.Lightmap;
  var { regClass: regClass192, property: property192 } = Laya;
  var LightmapScene = class extends BaseScript {
    constructor() {
      super();
    }
    //请进入场景查看光照贴图的设置 resources\res\threeDimen\LightmapScene\Scene.ls
    //使用光照贴图，前提是在场景中先创建灯光设置，烘焙出光照贴图
    onAwake() {
      super.base(this.camera);
      this.lightMaps = this.scene.lightmaps;
      super.addBottomButton(["\u53D6\u6D88\u5149\u7167\u8D34\u56FE", "\u663E\u793A\u5149\u7167\u8D34\u56FE", "\u52A0\u8F7D\u5149\u7167\u8D34\u56FE"], this, [this.setLightmapOff, this.setLightmapOn, this.loadLightmap]);
    }
    setLightmapOff() {
      this.scene.lightmaps = null;
    }
    setLightmapOn() {
      this.scene.lightmaps = this.lightMaps;
    }
    loadLightmap() {
      this.scene.lightmaps = null;
      let newLightmap = new Lightmap();
      Laya.loader.load("resources/res/threeDimen/LightmapScene/Scene/diffuse0.png").then((res) => {
        newLightmap.lightmapColor = res;
        newLightmap.lightmapDirection = null;
      });
      let newLightmaps = [];
      newLightmaps.push(newLightmap);
      this.scene.lightmaps = newLightmaps;
    }
  };
  __name(LightmapScene, "LightmapScene");
  __decorateClass([
    property192(Laya.Camera)
  ], LightmapScene.prototype, "camera", 2);
  __decorateClass([
    property192(Laya.Scene3D)
  ], LightmapScene.prototype, "scene", 2);
  LightmapScene = __decorateClass([
    regClass192("405e2005-76bf-4c43-82c8-d1af69cf3061", "../src/3D/Scene3D/LightmapScene.ts")
  ], LightmapScene);

  // src/3D/Scene3D/SceneLoad1.ts
  var { regClass: regClass193, property: property193 } = Laya;
  var SceneLoad1 = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      Laya.loader.load("resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", null, Laya.Handler.create(this, this.onLoading, null, false)).then((res) => {
        this.loadingBar.visible = false;
        let scene = res.create();
        let scene3D = scene.scene3D;
        this.scene.addChildAt(scene3D, 0);
      });
      Laya.loader.on(Laya.Event.ERROR, this, this.onError);
    }
    /**
    * 当报错时打印错误
    * @param err 报错信息
    */
    onError(err) {
      console.log("\u52A0\u8F7D\u5931\u8D25: " + err);
    }
    /**
     * 加载时侦听
     */
    onLoading(progress) {
      if (progress > 0.92)
        this.loadingBar.value = 0.95;
      else {
        this.loadingBar.value = progress;
        console.log("\u52A0\u8F7D\u8FDB\u5EA6: " + progress, this.loadingBar.value);
      }
    }
  };
  __name(SceneLoad1, "SceneLoad1");
  __decorateClass([
    property193(Laya.Camera)
  ], SceneLoad1.prototype, "camera", 2);
  __decorateClass([
    property193(Laya.Scene3D)
  ], SceneLoad1.prototype, "scene", 2);
  __decorateClass([
    property193(Laya.ProgressBar)
  ], SceneLoad1.prototype, "loadingBar", 2);
  SceneLoad1 = __decorateClass([
    regClass193("c6173b46-e841-4b3b-a762-0b55d1184ee8", "../src/3D/Scene3D/SceneLoad1.ts")
  ], SceneLoad1);

  // src/3D/Script/ScriptDemo.ts
  var { regClass: regClass194, property: property194 } = Laya;
  var ScriptDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var box = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(1, 1, 1), "MOs"));
      box.transform.rotate(new Laya.Vector3(0, 45, 0), false, false);
      var material = new Laya.BlinnPhongMaterial();
      box.meshRenderer.material = material;
      Laya.loader.load("resources/res/threeDimen/layabox.png").then((text) => {
        box.addComponent(BoxControlScript);
        material.albedoTexture = text;
      });
      Laya.timer.once(4e3, this, this.onLoop, [box]);
    }
    onLoop(box) {
      console.log("\u79FB\u9664\u7EC4\u4EF6");
      var boxContro = box.getComponent(BoxControlScript);
      boxContro.destroy();
    }
  };
  __name(ScriptDemo, "ScriptDemo");
  __decorateClass([
    property194(Laya.Camera)
  ], ScriptDemo.prototype, "camera", 2);
  __decorateClass([
    property194(Laya.Scene3D)
  ], ScriptDemo.prototype, "scene", 2);
  ScriptDemo = __decorateClass([
    regClass194("a9f82f8b-3ad9-4e61-9728-ecb2a33b85b4", "../src/3D/Script/ScriptDemo.ts")
  ], ScriptDemo);
  var _BoxControlScript = class _BoxControlScript extends Laya.Script3D {
    constructor() {
      super();
      this._rotation = new Laya.Vector3(0, 0.5, 0);
    }
    /**
     * 覆写3D对象组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
     */
    onAwake() {
      this.box = this.owner;
    }
    onStart() {
    }
    /**
     * 覆写组件更新方法（相当于帧循环）
     */
    onUpdate() {
      this.box.transform.rotate(this._rotation, false, false);
    }
    onDisable() {
      console.log("\u7EC4\u4EF6\u8BBE\u7F6E\u4E3A\u4E0D\u53EF\u7528");
    }
  };
  __name(_BoxControlScript, "BoxControlScript");
  var BoxControlScript = _BoxControlScript;

  // src/3D/Shader/Shader_GlowingEdge.ts
  var DirectionLight2 = Laya.DirectionLight;
  var Material5 = Laya.Material;
  var MeshSprite3D32 = Laya.MeshSprite3D;
  var Vector363 = Laya.Vector3;
  var PrimitiveMesh29 = Laya.PrimitiveMesh;
  var Shader3D6 = Laya.Shader3D;
  var { regClass: regClass195, property: property195 } = Laya;
  var Shader_GlowingEdge = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector363(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.initShader();
      var resource = [
        "resources/res/threeDimen/skinModel/dude/dude.lh",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/head.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/jacket.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/pants.png",
        "resources/res/threeDimen/skinModel/dude/Assets/dude/upBodyC.png",
        "resources/res/threeDimen/texture/earth.png"
      ];
      Laya.loader.load(resource).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      var scene = this.scene;
      var camera = this.camera;
      camera.transform.position = new Vector363(0, 1, 1);
      camera.transform.rotate(new Vector363(-15, 0, 0), true, false);
      var directionLight = new DirectionLight2();
      scene.addChild(directionLight);
      directionLight.color = new Laya.Color(1, 1, 1, 1);
      scene.ambientColor = new Laya.Color(1, 0, 0);
      let dude = scene.addChild(res[0].create());
      dude.active = false;
      Laya.timer.once(500, this, () => {
        dude.active = true;
      });
      var glowingEdgeMaterial1 = new GlowingEdgeMaterial();
      glowingEdgeMaterial1.diffuseTexture = res[1];
      glowingEdgeMaterial1.marginalColor = new Vector363(1, 0.7, 0);
      var glowingEdgeMaterial2 = new GlowingEdgeMaterial();
      glowingEdgeMaterial2.diffuseTexture = res[2];
      glowingEdgeMaterial2.marginalColor = new Vector363(1, 0.7, 0);
      var glowingEdgeMaterial3 = new GlowingEdgeMaterial();
      glowingEdgeMaterial3.diffuseTexture = res[3];
      glowingEdgeMaterial3.marginalColor = new Vector363(1, 0.7, 0);
      var glowingEdgeMaterial4 = new GlowingEdgeMaterial();
      glowingEdgeMaterial4.diffuseTexture = res[4];
      glowingEdgeMaterial4.marginalColor = new Vector363(1, 0.7, 0);
      var baseMaterials = [];
      baseMaterials[0] = glowingEdgeMaterial1;
      baseMaterials[1] = glowingEdgeMaterial2;
      baseMaterials[2] = glowingEdgeMaterial3;
      baseMaterials[3] = glowingEdgeMaterial4;
      dude.getChildAt(0).getChildAt(0).skinnedMeshRenderer.sharedMaterials = baseMaterials;
      dude.transform.position = new Vector363(0, 0.5, 0);
      dude.transform.setWorldLossyScale(new Vector363(0.2, 0.2, 0.2));
      dude.transform.rotate(new Vector363(0, 180, 0), false, false);
      var earth = scene.addChild(new MeshSprite3D32(PrimitiveMesh29.createSphere(0.5, 128, 128)));
      var glowingEdgeMaterial = new GlowingEdgeMaterial();
      glowingEdgeMaterial.diffuseTexture = res[5];
      earth.meshRenderer.sharedMaterial = glowingEdgeMaterial;
      glowingEdgeMaterial.marginalColor = new Vector363(0, 0.3, 1);
      Laya.timer.frameLoop(1, this, () => {
        earth.transform.rotate(this.rotation, true);
      });
    }
    //初始化shader
    initShader() {
      var glowingEdgeShader = Laya.Shader3D.add("GlowingEdgeMaterial", true, true);
      var subShader = new Laya.SubShader();
      glowingEdgeShader.addSubShader(subShader);
      let GlowingEdgeShaderVS = '#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\nprecision highp float;\r\nprecision highp int;\r\n#else\r\nprecision mediump float;\r\nprecision mediump int;\r\n#endif\r\n#define SHADER_NAME EDGE_VS\r\n#include "VertexCommon.glsl";\r\n#include "Scene.glsl";\r\n#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\nvarying vec2 v_Texcoord;\r\nvarying vec3 v_Normal;\r\nvarying vec3 v_PositionWorld;\r\nvoid main()\r\n{\r\nVertex vertex;\r\ngetVertexParams(vertex);\r\nv_Texcoord = vertex.texCoord0;\r\nmat4 worldMat = getWorldMatrix();\r\nvec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\nv_PositionWorld = positionWS;\r\nv_Normal = normalize((worldMat * vec4(vertex.normalOS, 0.0))).xyz;\r\ngl_Position = getPositionCS(positionWS);\r\ngl_Position=remapPositionZ(gl_Position);\r\n}\r\n';
      let GlowingEdgeShaderFS = '#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\nprecision highp float;\r\nprecision highp int;\r\n#else\r\nprecision mediump float;\r\nprecision mediump int;\r\n#endif\r\n#define SHADER_NAME EDGE_FS\r\n#include "Lighting.glsl";\r\n#include "Camera.glsl";\r\n#include "Scene.glsl";\r\n#include "globalIllumination.glsl";\r\nvarying vec2 v_Texcoord;\r\nuniform sampler2D u_texture;\r\nuniform vec3 u_marginalColor;\r\nvarying vec3 v_Normal;\r\nvarying vec3 v_PositionWorld;\r\nvoid main()\r\n{\r\ngl_FragColor=texture2D(u_texture, v_Texcoord);\r\nvec3 ambientCol = diffuseIrradiance(v_Normal);\r\nvec3 normal=normalize(v_Normal);\r\nvec3 toEyeDir = normalize(getViewDirection(v_PositionWorld));\r\nfloat Rim = 1.0 - max(0.0,dot(toEyeDir, normal));\r\nvec3 lightColor = ambientCol;\r\nvec3 Emissive = 2.0 * lightColor * u_marginalColor * pow(Rim,3.0);\r\ngl_FragColor = texture2D(u_texture, v_Texcoord) + vec4(Emissive,1.0);\r\n}\r\n';
      subShader.addShaderPass(GlowingEdgeShaderVS, GlowingEdgeShaderFS);
    }
  };
  __name(Shader_GlowingEdge, "Shader_GlowingEdge");
  __decorateClass([
    property195(Laya.Camera)
  ], Shader_GlowingEdge.prototype, "camera", 2);
  __decorateClass([
    property195(Laya.Scene3D)
  ], Shader_GlowingEdge.prototype, "scene", 2);
  Shader_GlowingEdge = __decorateClass([
    regClass195("e882ec65-5502-4ad4-ac29-9d77e3d022b7", "../src/3D/Shader/Shader_GlowingEdge.ts")
  ], Shader_GlowingEdge);
  var _GlowingEdgeMaterial = class _GlowingEdgeMaterial extends Material5 {
    constructor() {
      super();
      this.isInit = false;
      if (!this.isInit) {
        this.__init__();
        this.isInit = true;
      }
      this.setShaderName("GlowingEdgeMaterial");
    }
    __init__() {
      _GlowingEdgeMaterial.DIFFUSETEXTURE = Shader3D6.propertyNameToID("u_texture");
      _GlowingEdgeMaterial.MARGINALCOLOR = Shader3D6.propertyNameToID("u_marginalColor");
    }
    /**
     * 获取漫反射贴图。
     *  漫反射贴图。
     */
    get diffuseTexture() {
      return this.getTextureByIndex(_GlowingEdgeMaterial.DIFFUSETEXTURE);
    }
    /**
     * 设置漫反射贴图。
     * 漫反射贴图。
     */
    set diffuseTexture(value) {
      this.setTextureByIndex(_GlowingEdgeMaterial.DIFFUSETEXTURE, value);
    }
    /**
     * 设置边缘光照颜色。
     * 边缘光照颜色。
     */
    set marginalColor(value) {
      this.setVector3ByIndex(_GlowingEdgeMaterial.MARGINALCOLOR, value);
    }
  };
  __name(_GlowingEdgeMaterial, "GlowingEdgeMaterial");
  var GlowingEdgeMaterial = _GlowingEdgeMaterial;

  // src/3D/Shader/Shader_MultiplePassOutline.ts
  var MeshSprite3D33 = Laya.MeshSprite3D;
  var Vector364 = Laya.Vector3;
  var Material6 = Laya.Material;
  var Shader3D7 = Laya.Shader3D;
  var Color21 = Laya.Color;
  var ShaderDataType5 = Laya.ShaderDataType;
  var SubShader5 = Laya.SubShader;
  var RenderState5 = Laya.RenderState;
  var { regClass: regClass196, property: property196 } = Laya;
  var Shader_MultiplePassOutline = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector364(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      MultiplePassOutlineMaterial.initShader();
      var scene = this.scene;
      var camera = this.camera;
      camera.transform.position = new Vector364(0, 1, 1.5);
      camera.transform.rotate(new Vector364(-15, 0, 0), true, false);
      this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(1, 1, 1, 1);
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((mesh) => {
        var layaMonkey = scene.addChild(new MeshSprite3D33(mesh));
        layaMonkey.transform.localScale = new Vector364(0.3, 0.3, 0.3);
        layaMonkey.transform.rotation = new Laya.Quaternion(0.7071068, 0, 0, -0.7071067);
        var customMaterial = new MultiplePassOutlineMaterial();
        layaMonkey.meshRenderer.sharedMaterial = customMaterial;
        Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/diffuse.png").then((res) => {
          customMaterial.albedoTexture = res;
        });
        Laya.timer.frameLoop(1, this, () => {
          layaMonkey.transform.rotate(this.rotation, false);
        });
      });
    }
  };
  __name(Shader_MultiplePassOutline, "Shader_MultiplePassOutline");
  __decorateClass([
    property196(Laya.Camera)
  ], Shader_MultiplePassOutline.prototype, "camera", 2);
  __decorateClass([
    property196(Laya.Scene3D)
  ], Shader_MultiplePassOutline.prototype, "scene", 2);
  __decorateClass([
    property196(Laya.Sprite3D)
  ], Shader_MultiplePassOutline.prototype, "directionLight", 2);
  Shader_MultiplePassOutline = __decorateClass([
    regClass196("26062f24-2085-4285-a5ab-14930e991ee7", "../src/3D/Shader/Shader_MultiplePassOutline.ts")
  ], Shader_MultiplePassOutline);
  var _MultiplePassOutlineMaterial = class _MultiplePassOutlineMaterial extends Material6 {
    /**
     * @private
     */
    static __init__() {
      _MultiplePassOutlineMaterial.ALBEDOTEXTURE = Shader3D7.propertyNameToID("u_AlbedoTexture");
      _MultiplePassOutlineMaterial.OUTLINECOLOR = Shader3D7.propertyNameToID("u_OutlineColor");
      _MultiplePassOutlineMaterial.OUTLINEWIDTH = Shader3D7.propertyNameToID("u_OutlineWidth");
      _MultiplePassOutlineMaterial.OUTLINELIGHTNESS = Shader3D7.propertyNameToID("u_OutlineLightness");
    }
    /**
     * 漫反射贴图。
     */
    get albedoTexture() {
      return this.getTextureByIndex(_MultiplePassOutlineMaterial.ALBEDOTEXTURE);
    }
    set albedoTexture(value) {
      this.setTextureByIndex(_MultiplePassOutlineMaterial.ALBEDOTEXTURE, value);
    }
    /**
     * 线条颜色
     */
    get outlineColor() {
      return this.getColorByIndex(_MultiplePassOutlineMaterial.OUTLINECOLOR);
    }
    set outlineColor(value) {
      this.setColorByIndex(_MultiplePassOutlineMaterial.OUTLINECOLOR, value);
    }
    /**
     * 获取轮廓宽度,范围为0到0.05。
     */
    get outlineWidth() {
      return this.getFloatByIndex(_MultiplePassOutlineMaterial.OUTLINEWIDTH);
    }
    set outlineWidth(value) {
      value = Math.max(0, Math.min(0.05, value));
      this.setFloatByIndex(_MultiplePassOutlineMaterial.OUTLINEWIDTH, value);
    }
    /**
     * 轮廓亮度,范围为0到1。
     */
    get outlineLightness() {
      return this.getFloatByIndex(_MultiplePassOutlineMaterial.OUTLINELIGHTNESS);
    }
    set outlineLightness(value) {
      value = Math.max(0, Math.min(1, value));
      this.setFloatByIndex(_MultiplePassOutlineMaterial.OUTLINELIGHTNESS, value);
    }
    static initShader() {
      _MultiplePassOutlineMaterial.__init__();
      var uniformMap = {
        "u_OutlineLightness": ShaderDataType5.Float,
        "u_OutlineColor": ShaderDataType5.Color,
        "u_AlbedoTexture": ShaderDataType5.Texture2D,
        "u_OutlineWidth": ShaderDataType5.Float
      };
      var customShader = Shader3D7.add("MultiplePassOutlineShader");
      var subShader = new SubShader5(SubShader5.DefaultAttributeMap, uniformMap);
      customShader.addSubShader(subShader);
      let OutlineVS = '#include "Sprite3DVertex.glsl";\r\n#include "VertexCommon.glsl";\r\n#include "Camera.glsl";\r\nvoid main()\r\n{\r\nVertex vertex;\r\ngetVertexParams(vertex);\r\nvec4 position = vec4((vertex.positionOS) + (vertex.normalOS) * u_OutlineWidth, 1.0);\r\nmat4 worldMat = getWorldMatrix();\r\nvec3 positionWS = (worldMat * vec4(position)).xyz;\r\ngl_Position = getPositionCS(positionWS);\r\ngl_Position = remapPositionZ(gl_Position);\r\n} \r\n';
      let OutlineFS = "#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\nprecision highp float;\r\n#else \r\nprecision mediump float;\r\n#endif \r\nvoid main() \r\n{ \r\nvec3 finalColor = u_OutlineColor.rgb * u_OutlineLightness;\r\ngl_FragColor = vec4(finalColor,0.0);\r\n}\r\n";
      var pass1 = subShader.addShaderPass(OutlineVS, OutlineFS);
      pass1.statefirst = true;
      pass1.renderState.cull = RenderState5.CULL_FRONT;
      let Outline02VS = '#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n#include "VertexCommon.glsl";\r\nvarying vec3 v_Normal;\r\nvarying vec2 v_Texcoord0;\r\nvoid main() \r\n{ \r\nVertex vertex;\r\ngetVertexParams(vertex);\r\nmat4 worldMat = getWorldMatrix();\r\nvec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\ngl_Position = getPositionCS(positionWS);\r\nv_Normal = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);\r\nv_Texcoord0 = vertex.texCoord0;\r\ngl_Position=remapPositionZ(gl_Position);\r\n}\r\n';
      let Outline02FS = "#if defined(GL_FRAGMENT_PRECISION_HIGH)\r\nprecision highp float;\r\n#else\r\nprecision mediump float;\r\n#endif\r\nvarying vec2 v_Texcoord0;\r\nvarying vec3 v_Normal;\r\nvoid main()\r\n{\r\nvec4 albedoTextureColor = vec4(1.0);\r\nalbedoTextureColor = texture2D(u_AlbedoTexture, v_Texcoord0);\r\ngl_FragColor = albedoTextureColor;\r\n}\r\n";
      var pass2 = subShader.addShaderPass(Outline02VS, Outline02FS);
    }
    constructor() {
      super();
      this.setShaderName("MultiplePassOutlineShader");
      this.setFloatByIndex(_MultiplePassOutlineMaterial.OUTLINEWIDTH, 0.01581197);
      this.setFloatByIndex(_MultiplePassOutlineMaterial.OUTLINELIGHTNESS, 1);
      this.setColorByIndex(_MultiplePassOutlineMaterial.OUTLINECOLOR, new Color21(1, 1, 1, 0));
    }
  };
  __name(_MultiplePassOutlineMaterial, "MultiplePassOutlineMaterial");
  var MultiplePassOutlineMaterial = _MultiplePassOutlineMaterial;

  // src/3D/Shader/Shader_Simple.ts
  var MeshSprite3D34 = Laya.MeshSprite3D;
  var Vector365 = Laya.Vector3;
  var Quaternion12 = Laya.Quaternion;
  var SubShader6 = Laya.SubShader;
  var MeshRenderer8 = Laya.MeshRenderer;
  var Shader3D8 = Laya.Shader3D;
  var Material7 = Laya.Material;
  var MaterialRenderMode = Laya.MaterialRenderMode;
  var { regClass: regClass197, property: property197 } = Laya;
  var Shader_Simple = class extends BaseScript {
    constructor() {
      super();
      this.rotation = new Vector365(0, 0.01, 0);
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector365(0, 0.5, 1.5);
      this.initShader();
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/Assets/LayaMonkey/LayaMonkey-LayaMonkey.lm").then((mesh) => {
        var layaMonkey = this.scene.addChild(new MeshSprite3D34(mesh));
        layaMonkey.transform.localScale = new Vector365(0.3, 0.3, 0.3);
        layaMonkey.transform.rotation = new Quaternion12(0.7071068, 0, 0, -0.7071067);
        var customMaterial = new CustomMaterial();
        layaMonkey.getComponent(MeshRenderer8).sharedMaterial = customMaterial;
        Laya.timer.frameLoop(1, this, () => {
          layaMonkey.transform.rotate(this.rotation, false);
        });
      });
    }
    initShader() {
      var customShader = Shader3D8.add("CustomShader");
      var subShader = new SubShader6();
      customShader.addSubShader(subShader);
      let SimpleShaderVS = '#include "Camera.glsl";\r\n#include "Sprite3DVertex.glsl";\r\n#include "VertexCommon.glsl";\r\nvarying vec3 v_Normal;\r\nvoid main()\r\n{\r\nVertex vertex;\r\ngetVertexParams(vertex);\r\nmat4 worldMat = getWorldMatrix();\r\nvec3 positionWS = (worldMat * vec4(vertex.positionOS, 1.0)).xyz;\r\ngl_Position = getPositionCS(positionWS);\r\nvec3 normalWS = normalize((worldMat * vec4(vertex.normalOS, 0.0)).xyz);\r\nv_Normal = normalWS;\r\ngl_Position=remapPositionZ(gl_Position);\r\n}\r\n';
      let SimpleShaderFS = "#if defined(GL_FRAGMENT_PRECISION_HIGH) \r\nprecision highp float;\r\n#else\r\n precision mediump float;\r\n#endif \r\nvarying vec3 v_Normal;\r\nvoid main()\r\n{\r\ngl_FragColor=vec4(v_Normal, 1.0);\r\n}\r\n";
      subShader.addShaderPass(SimpleShaderVS, SimpleShaderFS);
    }
  };
  __name(Shader_Simple, "Shader_Simple");
  __decorateClass([
    property197(Laya.Camera)
  ], Shader_Simple.prototype, "camera", 2);
  __decorateClass([
    property197(Laya.Scene3D)
  ], Shader_Simple.prototype, "scene", 2);
  Shader_Simple = __decorateClass([
    regClass197("6a5477d4-4ac4-4f25-bb34-c85456fbe961", "../src/3D/Shader/Shader_Simple.ts")
  ], Shader_Simple);
  var _CustomMaterial = class _CustomMaterial extends Material7 {
    constructor() {
      super();
      this.setShaderName("CustomShader");
      this.materialRenderMode = MaterialRenderMode.RENDERMODE_OPAQUE;
    }
  };
  __name(_CustomMaterial, "CustomMaterial");
  var CustomMaterial = _CustomMaterial;

  // src/3D/Particle/Particle_BurningGround.ts
  var CameraClearFlags9 = Laya.CameraClearFlags;
  var Color22 = Laya.Color;
  var ShurikenParticleRenderer = Laya.ShurikenParticleRenderer;
  var { regClass: regClass198, property: property198 } = Laya;
  var Particle_BurningGround = class extends BaseScript {
    constructor() {
      super();
      this.particleSystem = [];
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.clearFlag = CameraClearFlags9.SolidColor;
      this.camera.clearColor = new Color22(0, 0, 0, 1);
      Laya.loader.load("resources/res/threeDimen/particle/ETF_Burning_Ground.lh").then((res) => {
        this.particle = this.scene.addChild(res.create());
        this.particle = this.particle.getChildAt(0);
        let particleRenderer = this.particle.getComponent(ShurikenParticleRenderer);
        var mat = particleRenderer.sharedMaterial;
        console.log(particleRenderer);
        this.particleSystem.push(particleRenderer.particleSystem);
        for (let i = 0; i < this.particle.numChildren; i++) {
          let particleRenderer1 = this.particle.getChildAt(i).getComponent(ShurikenParticleRenderer);
          this.particleSystem.push(particleRenderer1.particleSystem);
        }
      });
      super.addBottomButton(["\u53BB\u6389\u5FAA\u73AF\u64AD\u653E", "\u6062\u590D\u5FAA\u73AF\u64AD\u653E", "\u52A0\u901F\u64AD\u653E"], this, [this.change, this.change, this.change]);
    }
    change() {
      this.index++;
      if (this.index % 3 === 1) {
        for (let i = 0; i < this.particleSystem.length; i++) {
          this.particleSystem[i].looping = false;
          this.particleSystem[i].simulationSpeed = 1;
        }
      } else if (this.index % 3 === 2) {
        for (let i = 0; i < this.particleSystem.length; i++) {
          this.particleSystem[i].looping = true;
          this.particleSystem[i].play();
        }
      } else {
        for (let i = 0; i < this.particleSystem.length; i++)
          this.particleSystem[i].simulationSpeed = 10;
      }
    }
  };
  __name(Particle_BurningGround, "Particle_BurningGround");
  __decorateClass([
    property198(Laya.Camera)
  ], Particle_BurningGround.prototype, "camera", 2);
  __decorateClass([
    property198(Laya.Scene3D)
  ], Particle_BurningGround.prototype, "scene", 2);
  Particle_BurningGround = __decorateClass([
    regClass198("5eea8353-e9cb-4b19-b502-9476e37c9539", "../src/3D/Particle/Particle_BurningGround.ts")
  ], Particle_BurningGround);

  // src/3D/Particle/Particle_EternalLight.ts
  var CameraClearFlags10 = Laya.CameraClearFlags;
  var Color23 = Laya.Color;
  var ShurikenParticleRenderer2 = Laya.ShurikenParticleRenderer;
  var { regClass: regClass199, property: property199 } = Laya;
  var Particle_EternalLight = class extends BaseScript {
    constructor() {
      super();
      this.particleSystem = [];
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.clearFlag = CameraClearFlags10.SolidColor;
      this.camera.clearColor = new Color23(0, 0, 0, 1);
      Laya.loader.load("resources/res/threeDimen/particle/ETF_Eternal_Light.lh").then((res) => {
        this.particle = this.scene.addChild(res.create());
        this.particle = this.particle.getChildAt(0);
        let particleRenderer = this.particle.getComponent(ShurikenParticleRenderer2);
        this.particleSystem.push(particleRenderer.particleSystem);
        for (let i = 0; i < this.particle.numChildren; i++) {
          let particleRenderer1 = this.particle.getChildAt(i).getComponent(ShurikenParticleRenderer2);
          this.particleSystem.push(particleRenderer1.particleSystem);
        }
      });
      super.addBottomButton(["\u53BB\u6389\u5FAA\u73AF\u64AD\u653E", "\u6062\u590D\u5FAA\u73AF\u64AD\u653E", "\u52A0\u901F\u64AD\u653E"], this, [this.change, this.change, this.change]);
    }
    change() {
      this.index++;
      if (this.index % 3 === 1) {
        for (let i = 0; i < this.particleSystem.length; i++) {
          this.particleSystem[i].looping = false;
          this.particleSystem[i].simulationSpeed = 1;
        }
      } else if (this.index % 3 === 2) {
        for (let i = 0; i < this.particleSystem.length; i++) {
          this.particleSystem[i].looping = true;
          this.particleSystem[i].play();
        }
      } else {
        for (let i = 0; i < this.particleSystem.length; i++)
          this.particleSystem[i].simulationSpeed = 10;
      }
    }
  };
  __name(Particle_EternalLight, "Particle_EternalLight");
  __decorateClass([
    property199(Laya.Camera)
  ], Particle_EternalLight.prototype, "camera", 2);
  __decorateClass([
    property199(Laya.Scene3D)
  ], Particle_EternalLight.prototype, "scene", 2);
  Particle_EternalLight = __decorateClass([
    regClass199("d541fe0e-8ad3-4fe5-ad82-88c95454d9b7", "../src/3D/Particle/Particle_EternalLight.ts")
  ], Particle_EternalLight);

  // src/3D/Sprite3D/PixelLineSprite3DDemo.ts
  var Sprite3D15 = Laya.Sprite3D;
  var MeshSprite3D35 = Laya.MeshSprite3D;
  var Vector366 = Laya.Vector3;
  var PrimitiveMesh30 = Laya.PrimitiveMesh;
  var Color24 = Laya.Color;
  var PixelLineSprite3D4 = Laya.PixelLineSprite3D;
  var { regClass: regClass200, property: property200 } = Laya;
  var PixelLineSprite3DDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector366(0, 1.2, 3.5);
      this.camera.transform.rotate(new Vector366(-15, 0, 0), true, false);
      this.sprite3D = this.scene.addChild(new Sprite3D15());
      this.lineSprite3D = this.scene.addChild(new Sprite3D15());
      var sphere = this.sprite3D.addChild(new MeshSprite3D35(PrimitiveMesh30.createSphere(0.25, 20, 20)));
      sphere.transform.position = new Vector366(0, 0.75, 2);
      var sphereLineSprite3D = this.lineSprite3D.addChild(new PixelLineSprite3D4(3500));
      Tool3.linearModel(sphere, sphereLineSprite3D, Color24.GREEN);
      this.sprite3D.active = false;
      ;
      this.lineSprite3D.active = true;
    }
  };
  __name(PixelLineSprite3DDemo, "PixelLineSprite3DDemo");
  __decorateClass([
    property200(Laya.Camera)
  ], PixelLineSprite3DDemo.prototype, "camera", 2);
  __decorateClass([
    property200(Laya.Scene3D)
  ], PixelLineSprite3DDemo.prototype, "scene", 2);
  PixelLineSprite3DDemo = __decorateClass([
    regClass200("cc0f6877-b7f3-4e00-b4a7-a681765fca59", "../src/3D/Sprite3D/PixelLineSprite3DDemo.ts")
  ], PixelLineSprite3DDemo);
  var _Tool3 = class _Tool3 {
    static linearModel(sprite3D, lineSprite3D, color) {
      if (sprite3D instanceof MeshSprite3D35) {
        var meshSprite3D = sprite3D;
        var mesh = meshSprite3D.meshFilter.sharedMesh;
        var positions = [];
        mesh.getPositions(positions);
        var indices = mesh.getSubMesh(0).getIndices();
        for (var i = 0; i < indices.length; i += 3) {
          var vertex0 = positions[indices[i]];
          var vertex1 = positions[indices[i + 1]];
          var vertex2 = positions[indices[i + 2]];
          Vector366.transformCoordinate(vertex0, meshSprite3D.transform.worldMatrix, this.transVertex0);
          Vector366.transformCoordinate(vertex1, meshSprite3D.transform.worldMatrix, this.transVertex1);
          Vector366.transformCoordinate(vertex2, meshSprite3D.transform.worldMatrix, this.transVertex2);
          lineSprite3D.addLine(this.transVertex0, this.transVertex1, color, color);
          lineSprite3D.addLine(this.transVertex1, this.transVertex2, color, color);
          lineSprite3D.addLine(this.transVertex2, this.transVertex0, color, color);
        }
      }
      for (var i = 0, n = sprite3D.numChildren; i < n; i++)
        _Tool3.linearModel(sprite3D.getChildAt(i), lineSprite3D, color);
    }
    static DrawBoundingBox(sprite3D, sprite, color) {
      sprite3D.meshRenderer.bounds.getCorners(_Tool3.corners);
      var rotate = new Vector366(0, 0, 90);
      _Tool3.DrawTwelveLines(_Tool3.corners[0], _Tool3.corners[1], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[1], _Tool3.corners[2], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool3.DrawTwelveLines(_Tool3.corners[2], _Tool3.corners[3], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[3], _Tool3.corners[0], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool3.DrawTwelveLines(_Tool3.corners[4], _Tool3.corners[5], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[5], _Tool3.corners[6], rotate, sprite);
      rotate.setValue(0, 0, 90);
      _Tool3.DrawTwelveLines(_Tool3.corners[6], _Tool3.corners[7], rotate, sprite);
      rotate.setValue(0, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[7], _Tool3.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[0], _Tool3.corners[4], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[1], _Tool3.corners[5], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[2], _Tool3.corners[6], rotate, sprite);
      rotate.setValue(90, 0, 0);
      _Tool3.DrawTwelveLines(_Tool3.corners[3], _Tool3.corners[7], rotate, sprite);
    }
    static DrawTwelveLines(start, end, rotate, sprite3D) {
      var length = Vector366.distance(start, end);
      var cylinder = sprite3D.addChild(new MeshSprite3D35(PrimitiveMesh30.createCylinder(4e-3, length, 3)));
      cylinder.transform.rotate(rotate, true, false);
      var cylPos = cylinder.transform.position;
      var x = start.x + end.x;
      var y = start.y + end.y;
      var z = start.z + end.z;
      cylPos.setValue(x / 2, y / 2, z / 2);
      cylinder.transform.position = cylPos;
    }
    constructor() {
    }
  };
  __name(_Tool3, "Tool");
  _Tool3.transVertex0 = new Vector366();
  _Tool3.transVertex1 = new Vector366();
  _Tool3.transVertex2 = new Vector366();
  _Tool3.corners = [];
  var Tool3 = _Tool3;

  // src/3D/Sprite3D/ScreenShot.ts
  var Vector367 = Laya.Vector3;
  var { regClass: regClass201, property: property201 } = Laya;
  var ScreenShot = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector367(0, 2, 3);
      this.camera.transform.rotate(new Vector367(-30, 0, 0), true, false);
      var box = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(1, 1, 1)));
      box.transform.rotate(new Laya.Vector3(0, 45, 0), false, false);
      var material = new Laya.BlinnPhongMaterial();
      Laya.Texture2D.load("resources/res/threeDimen/layabox.png", Laya.Handler.create(null, function(tex) {
        material.albedoTexture = tex;
      }));
      box.meshRenderer.material = material;
      this.loadUI();
    }
    loadUI() {
      Laya.loader.load(["resources/image/img_btn_bg.png"], Laya.Handler.create(this, () => {
        var screenshotBtn = new Laya.Button("resources/image/img_btn_bg.png", "\u622A\u56FE");
        this.owner.addChild(screenshotBtn);
        screenshotBtn.size(100, 30);
        screenshotBtn.labelBold = true;
        screenshotBtn.labelSize = 15;
        screenshotBtn.sizeGrid = "4,4,4,4";
        screenshotBtn.pos(this.pageWidth / 2 - screenshotBtn.width / 2, this.pageHeight - 100);
        screenshotBtn.on(Laya.Event.CLICK, this, this.onAddClick);
      }));
    }
    onAddClick() {
      var renderTargetCamera = this.scene.addChild(new Laya.Camera(0, 0.1, 100));
      renderTargetCamera.transform.position = new Vector367(0, 2, 3);
      renderTargetCamera.transform.rotate(new Laya.Vector3(-30, 0, 0), true, false);
      renderTargetCamera.renderingOrder = -1;
      var renderTexture = new Laya.RenderTexture(512, 512, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false, 4);
      Laya.Camera.drawRenderTextureByScene(renderTargetCamera, this.scene, renderTexture);
      var rtex = new Laya.Texture(renderTargetCamera.renderTarget, Laya.Texture.DEF_UV);
      var rtex = new Laya.Texture(Laya.Texture2D.blackTexture);
      console.log(rtex.width, rtex.height);
      var sp = new Laya.Sprite();
      this.owner.addChild(sp);
      sp.graphics.drawTexture(rtex);
      var htmlCanvas = sp.drawToCanvas(720, 1280, 0, 0);
      var base64 = htmlCanvas.toBase64("image/png", 1);
      console.log(base64);
      var img = new window.Image();
      img.src = base64;
      document.body.appendChild(img);
    }
  };
  __name(ScreenShot, "ScreenShot");
  __decorateClass([
    property201(Laya.Camera)
  ], ScreenShot.prototype, "camera", 2);
  __decorateClass([
    property201(Laya.Scene3D)
  ], ScreenShot.prototype, "scene", 2);
  ScreenShot = __decorateClass([
    regClass201("2d929ea3-aad3-4da4-afb3-6ccc73bd41f8", "../src/3D/Sprite3D/ScreenShot.ts")
  ], ScreenShot);

  // src/3D/Sprite3D/SkinnedMeshSprite3DDemo.ts
  var Vector368 = Laya.Vector3;
  var { regClass: regClass202, property: property202 } = Laya;
  var SkinnedMeshSprite3DDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector368(0, 1.6, 2);
      this.camera.transform.rotate(new Vector368(-15, 0, 0), true, false);
      Laya.loader.load("resources/res/threeDimen/skinModel/dude/dude.lh").then((res) => {
        var dude = this.scene.addChild(res.create());
        var scale = new Vector368(0.5, 0.5, 0.5);
        dude.transform.localScale = scale;
        dude.transform.rotate(new Vector368(0, 3.14, 0));
      });
    }
  };
  __name(SkinnedMeshSprite3DDemo, "SkinnedMeshSprite3DDemo");
  __decorateClass([
    property202(Laya.Camera)
  ], SkinnedMeshSprite3DDemo.prototype, "camera", 2);
  __decorateClass([
    property202(Laya.Scene3D)
  ], SkinnedMeshSprite3DDemo.prototype, "scene", 2);
  SkinnedMeshSprite3DDemo = __decorateClass([
    regClass202("2696a176-66f9-4aac-81f7-dd3a6d9b0803", "../src/3D/Sprite3D/SkinnedMeshSprite3DDemo.ts")
  ], SkinnedMeshSprite3DDemo);

  // src/3D/Sprite3D/Sprite3DClone.ts
  var Vector369 = Laya.Vector3;
  var { regClass: regClass203, property: property203 } = Laya;
  var Sprite3DClone = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector369(0, 0.5, 1);
      this.camera.transform.rotate(new Vector369(-15, 0, 0), true, false);
      Laya.loader.load("resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh").then((res) => {
        var layaMonkey = this.scene.addChild(res.create());
        Laya.Sprite3D.instantiate(layaMonkey, this.scene, false, new Laya.Vector3(0.6, 0, 0));
        this.scene.addChild(Laya.Sprite3D.instantiate(layaMonkey, null, false, new Laya.Vector3(-0.6, 0, 0)));
      });
    }
  };
  __name(Sprite3DClone, "Sprite3DClone");
  __decorateClass([
    property203(Laya.Camera)
  ], Sprite3DClone.prototype, "camera", 2);
  __decorateClass([
    property203(Laya.Scene3D)
  ], Sprite3DClone.prototype, "scene", 2);
  Sprite3DClone = __decorateClass([
    regClass203("6492c680-4d83-4ad7-8e22-558f7502a378", "../src/3D/Sprite3D/Sprite3DClone.ts")
  ], Sprite3DClone);

  // src/3D/Sprite3D/Sprite3DParent.ts
  var Vector370 = Laya.Vector3;
  var Handler22 = Laya.Handler;
  var Button10 = Laya.Button;
  var Event50 = Laya.Event;
  var { regClass: regClass204, property: property204 } = Laya;
  var Sprite3DParent = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector370(0, 0.75, 1);
      this.camera.transform.rotate(new Vector370(-30, 0, 0), true, false);
      var resource = ["resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey2.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"];
      Laya.loader.load(resource).then((res) => {
        this.layaMonkeyParent = this.scene.addChild(res[1].create());
        this.layaMonkeySon = res[0].create();
        this.layaMonkeySon.transform.localPosition = new Vector370(0.2, 0, 0);
        var scale = new Vector370(0.5, 0.5, 0.5);
        this.layaMonkeySon.transform.localScale = scale;
        this.layaMonkeyParent.addChild(this.layaMonkeySon);
        this.loadUI();
      });
    }
    loadUI() {
      Laya.loader.load(["resources/image/img_btn_bg.png"], Handler22.create(this, () => {
        this.changeActionButton = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u79FB\u52A8\u7236\u7EA7\u7334\u5B50"));
        this.changeActionButton.size(120, 30);
        this.changeActionButton.labelSize = 10;
        this.changeActionButton.sizeGrid = "21,83,22,76";
        this.changeActionButton.stateNum = 1;
        this.changeActionButton.labelColors = "#ffffff";
        this.changeActionButton.pos(this.pageWidth - 170, 120);
        this.changeActionButton.on(Event50.CLICK, this, this.stypeFun0);
        this.changeActionButton1 = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u653E\u5927\u7236\u7EA7\u7334\u5B50"));
        this.changeActionButton1.size(120, 30);
        this.changeActionButton1.labelSize = 10;
        this.changeActionButton1.sizeGrid = "21,83,22,76";
        this.changeActionButton1.stateNum = 1;
        this.changeActionButton1.labelColors = "#ffffff";
        this.changeActionButton1.pos(this.pageWidth - 170, 160);
        this.changeActionButton1.on(Event50.CLICK, this, this.stypeFun1);
        this.changeActionButton2 = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u65CB\u8F6C\u7236\u7EA7\u7334\u5B50"));
        this.changeActionButton2.size(120, 30);
        this.changeActionButton2.labelSize = 10;
        this.changeActionButton2.sizeGrid = "21,83,22,76";
        this.changeActionButton2.stateNum = 1;
        this.changeActionButton2.labelColors = "#ffffff";
        this.changeActionButton2.pos(this.pageWidth - 170, 200);
        this.changeActionButton2.on(Event50.CLICK, this, this.stypeFun2);
        this.changeActionButton3 = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u79FB\u52A8\u5B50\u7EA7\u7334\u5B50"));
        this.changeActionButton3.size(120, 30);
        this.changeActionButton3.labelSize = 10;
        this.changeActionButton3.sizeGrid = "21,83,22,76";
        this.changeActionButton3.stateNum = 1;
        this.changeActionButton3.labelColors = "#ffffff";
        this.changeActionButton3.pos(this.pageWidth - 170, 250);
        this.changeActionButton3.on(Event50.CLICK, this, this.stypeFun3);
        this.changeActionButton4 = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u653E\u5927\u5B50\u7EA7\u7334\u5B50"));
        this.changeActionButton4.size(120, 30);
        this.changeActionButton4.labelSize = 10;
        this.changeActionButton4.sizeGrid = "21,83,22,76";
        this.changeActionButton4.stateNum = 1;
        this.changeActionButton4.labelColors = "#ffffff";
        this.changeActionButton4.pos(this.pageWidth - 170, 290);
        this.changeActionButton4.on(Event50.CLICK, this, this.stypeFun4);
        this.changeActionButton5 = this.owner.addChild(new Button10("resources/image/img_btn_bg.png", "\u65CB\u8F6C\u5B50\u7EA7\u7334\u5B50"));
        this.changeActionButton5.size(120, 30);
        this.changeActionButton5.labelSize = 10;
        this.changeActionButton5.sizeGrid = "21,83,22,76";
        this.changeActionButton5.stateNum = 1;
        this.changeActionButton5.labelColors = "#ffffff";
        this.changeActionButton5.pos(this.pageWidth - 170, 330);
        this.changeActionButton5.on(Event50.CLICK, this, this.stypeFun5);
      }));
    }
    stypeFun0() {
      this.layaMonkeyParent.transform.translate(new Vector370(-0.1, 0, 0));
    }
    stypeFun1() {
      var scale = new Vector370(1.2, 1.2, 1.2);
      this.layaMonkeyParent.transform.localScale = scale;
    }
    stypeFun2() {
      this.layaMonkeyParent.transform.rotate(new Vector370(-15, 0, 0), true, false);
    }
    stypeFun3() {
      this.layaMonkeySon.transform.translate(new Vector370(-0.1, 0, 0));
    }
    stypeFun4() {
      var scale = new Vector370(1, 1, 1);
      this.layaMonkeySon.transform.localScale = scale;
    }
    stypeFun5() {
      this.layaMonkeySon.transform.rotate(new Vector370(-15, 0, 0), true, false);
    }
  };
  __name(Sprite3DParent, "Sprite3DParent");
  __decorateClass([
    property204(Laya.Camera)
  ], Sprite3DParent.prototype, "camera", 2);
  __decorateClass([
    property204(Laya.Scene3D)
  ], Sprite3DParent.prototype, "scene", 2);
  Sprite3DParent = __decorateClass([
    regClass204("8a84c63f-4b5c-4951-a103-ddc9725dfb18", "../src/3D/Sprite3D/Sprite3DParent.ts")
  ], Sprite3DParent);

  // src/3D/Sprite3D/TransformDemo.ts
  var Sprite3D16 = Laya.Sprite3D;
  var Vector371 = Laya.Vector3;
  var { regClass: regClass205, property: property205 } = Laya;
  var TransformDemo = class extends BaseScript {
    constructor() {
      super();
      this._position = new Vector371(0, 0, 0);
      this._position1 = new Vector371(0, 0, 0);
      this._rotate = new Vector371(0, 1, 0);
      this._rotate1 = new Vector371(0, 0, 0);
      this._scale = new Vector371();
      this.scaleDelta = 0;
      this.scaleValue = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector371(0, 1, 1);
      this.camera.transform.rotate(new Vector371(-30, 0, 0), true, false);
      Laya.loader.load(["resources/res/threeDimen/staticModel/grid/plane.lh", "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"]).then((res) => {
        this.onComplete(res);
      });
    }
    onComplete(res) {
      this.scene.addChild(res[0].create());
      var staticLayaMonkey = res[1].create();
      this.layaMonkey_clone1 = Sprite3D16.instantiate(staticLayaMonkey, this.scene, false, this._position1);
      this.layaMonkey_clone2 = Sprite3D16.instantiate(staticLayaMonkey, this.scene, false, this._position1);
      this.layaMonkey_clone3 = Sprite3D16.instantiate(staticLayaMonkey, this.scene, false, this._position1);
      this.clone1Transform = this.layaMonkey_clone1.transform;
      this.clone2Transform = this.layaMonkey_clone2.transform;
      this.clone3Transform = this.layaMonkey_clone3.transform;
      this._position1.setValue(0, 0, 0);
      this.clone1Transform.translate(this._position1);
      this._position1.setValue(-0.5, 0, 0);
      this.clone2Transform.translate(this._position1);
      this._position1.setValue(0.5, 0, 0);
      this.clone3Transform.translate(this._position1);
      this._rotate1.setValue(0, 60, 0);
      this.clone2Transform.rotate(this._rotate1, false, false);
      staticLayaMonkey.destroy();
      Laya.timer.frameLoop(1, this, this.animate);
    }
    animate() {
      this.scaleValue = Math.sin(this.scaleDelta += 0.1);
      this._position.y = Math.max(0, this.scaleValue / 2);
      this.clone1Transform.position = this._position;
      this.clone2Transform.rotate(this._rotate, false, false);
      this._scale.x = this._scale.y = this._scale.z = Math.abs(this.scaleValue);
      this.clone3Transform.localScale = this._scale;
    }
  };
  __name(TransformDemo, "TransformDemo");
  __decorateClass([
    property205(Laya.Camera)
  ], TransformDemo.prototype, "camera", 2);
  __decorateClass([
    property205(Laya.Scene3D)
  ], TransformDemo.prototype, "scene", 2);
  TransformDemo = __decorateClass([
    regClass205("aaa3a9c3-1868-422a-bd97-2d89afac88e3", "../src/3D/Sprite3D/TransformDemo.ts")
  ], TransformDemo);

  // src/3D/Sky/Sky_Procedural.ts
  var Vector372 = Laya.Vector3;
  var { regClass: regClass206, property: property206 } = Laya;
  var Sky_Procedural = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector372(0, 0.7, 5);
      this.camera.transform.rotate(new Vector372(10, 0, 0), true, false);
      var mat = this.directionLight.transform.worldMatrix;
      mat.setForward(new Laya.Vector3(-1, -1, -1));
      this.directionLight.transform.worldMatrix = mat;
      this.rotation = new Laya.Vector3(-0.01, 0, 0);
      var skyRenderer = this.scene.skyRenderer;
      skyRenderer.mesh = Laya.SkyDome.instance;
      skyRenderer.material = new Laya.SkyProceduralMaterial();
      Laya.timer.frameLoop(1, this, this.onFrameLoop);
    }
    onFrameLoop() {
      this.directionLight.transform.rotate(this.rotation);
    }
  };
  __name(Sky_Procedural, "Sky_Procedural");
  __decorateClass([
    property206(Laya.Camera)
  ], Sky_Procedural.prototype, "camera", 2);
  __decorateClass([
    property206(Laya.Scene3D)
  ], Sky_Procedural.prototype, "scene", 2);
  __decorateClass([
    property206(Laya.Sprite3D)
  ], Sky_Procedural.prototype, "directionLight", 2);
  Sky_Procedural = __decorateClass([
    regClass206("c4a1bcfb-da17-46d6-a7fa-70b3721d13b0", "../src/3D/Sky/Sky_Procedural.ts")
  ], Sky_Procedural);

  // src/3D/Sky/Sky_SkyBox.ts
  var Vector373 = Laya.Vector3;
  var CameraClearFlags11 = Laya.CameraClearFlags;
  var { regClass: regClass207, property: property207 } = Laya;
  var Sky_SkyBox = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector373(0, 0.7, 5);
      this.camera.transform.rotate(new Vector373(10, 0, 0), true, false);
      this.camera.clearFlag = CameraClearFlags11.Sky;
      super.addBottomButton(["\u7ACB\u65B9\u4F53\u5929\u7A7A\u76D2", "\u7A0B\u5E8F\u5316\u5929\u7A7A\u76D2"], this, [this.changeSkybox, this.changeSkyProcedural]);
    }
    changeSkyProcedural() {
      Laya.loader.load("resources/res/threeDimen/skyBox/SkyProcedural/Skybox.lmat").then((mat) => {
        var skyRenderer = this.camera.skyRenderer;
        skyRenderer.material = mat;
      });
    }
    changeSkybox() {
      Laya.loader.load("resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat").then((mat) => {
        var skyRenderer = this.camera.skyRenderer;
        skyRenderer.material = mat;
      });
    }
    onDestroy() {
    }
  };
  __name(Sky_SkyBox, "Sky_SkyBox");
  __decorateClass([
    property207(Laya.Camera)
  ], Sky_SkyBox.prototype, "camera", 2);
  __decorateClass([
    property207(Laya.Scene3D)
  ], Sky_SkyBox.prototype, "scene", 2);
  Sky_SkyBox = __decorateClass([
    regClass207("2d0df284-0ddc-495f-ae6e-bd620726ad9e", "../src/3D/Sky/Sky_SkyBox.ts")
  ], Sky_SkyBox);

  // src/3D/Show/CerberusModelShow.ts
  var Vector374 = Laya.Vector3;
  var InputManager6 = Laya.InputManager;
  var Script3D = Laya.Script3D;
  var Text32 = Laya.Text;
  var Event51 = Laya.Event;
  var { regClass: regClass208, property: property208 } = Laya;
  var CerberusModelShow = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var damagedHelmet = this.scene.getChildByName("Cerberus_LP");
      var rotationScript = damagedHelmet.addComponent(RotationScript2);
      rotationScript.model = damagedHelmet;
      var size = 20;
      this.addText(30, 200, 10, "\u62D6\u52A8\u5C4F\u5E55\u4EE5\u65CB\u8F6C\u6A21\u578B", "red");
      size = 10;
      this.addText(size, 20, this.pageHeight - size * 4, "Cerberus by Andrew Maximov     http://artisaverb.info/PBT.html", "#FFFF00");
    }
    /**
     * add text.
     */
    addText(size, x, y, text, color) {
      var cerberusText = new Text32();
      cerberusText.color = color;
      cerberusText.fontSize = size;
      cerberusText.x = x;
      cerberusText.y = y;
      cerberusText.text = text;
      this.owner.addChild(cerberusText);
    }
  };
  __name(CerberusModelShow, "CerberusModelShow");
  __decorateClass([
    property208(Laya.Camera)
  ], CerberusModelShow.prototype, "camera", 2);
  __decorateClass([
    property208(Laya.Scene3D)
  ], CerberusModelShow.prototype, "scene", 2);
  CerberusModelShow = __decorateClass([
    regClass208("9e930e25-774c-4af3-aa86-5a0f36168fa7", "../src/3D/Show/CerberusModelShow.ts")
  ], CerberusModelShow);
  var _RotationScript2 = class _RotationScript2 extends Script3D {
    constructor() {
      super();
      this._mouseDown = false;
      this._rotate = new Vector374();
      this._autoRotateSpeed = new Vector374(0, 0.25, 0);
      Laya.stage.on(Event51.MOUSE_DOWN, this, () => {
        this._mouseDown = true;
        this._lastMouseX = InputManager6.mouseX;
      });
      Laya.stage.on(Event51.MOUSE_UP, this, () => {
        this._mouseDown = false;
      });
    }
    onUpdate() {
      if (this._mouseDown) {
        var deltaX = InputManager6.mouseX - this._lastMouseX;
        this._rotate.y = deltaX * 0.2;
        this.model.transform.rotate(this._rotate, false, false);
        this._lastMouseX = InputManager6.mouseX;
      } else {
        this.model.transform.rotate(this._autoRotateSpeed, false, false);
      }
    }
  };
  __name(_RotationScript2, "RotationScript");
  var RotationScript2 = _RotationScript2;

  // src/3D/Show/DamagedHelmetModelShow.ts
  var Vector375 = Laya.Vector3;
  var InputManager7 = Laya.InputManager;
  var Script3D2 = Laya.Script3D;
  var Text33 = Laya.Text;
  var Event52 = Laya.Event;
  var { regClass: regClass209, property: property209 } = Laya;
  var DamagedHelmetModelShow = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var damagedHelmet = this.scene.getChildAt(1).getChildAt(0);
      var rotationScript = damagedHelmet.addComponent(RotationScript3);
      rotationScript.model = damagedHelmet;
      var size = 20;
      this.addText(30, 200, 10, "\u62D6\u52A8\u5C4F\u5E55\u4EE5\u65CB\u8F6C\u6A21\u578B", "red");
      size = 10;
      this.addText(size, 20, this.pageHeight - size * 4, "Battle Damaged Sci-fi Helmet by theblueturtle_    www.leonardocarrion.com", "#FFFF00");
    }
    /**
     * add text.
     */
    addText(size, x, y, text, color) {
      var cerberusText = new Text33();
      cerberusText.color = color;
      cerberusText.fontSize = size;
      cerberusText.x = x;
      cerberusText.y = y;
      cerberusText.text = text;
      this.owner.addChild(cerberusText);
    }
  };
  __name(DamagedHelmetModelShow, "DamagedHelmetModelShow");
  __decorateClass([
    property209(Laya.Camera)
  ], DamagedHelmetModelShow.prototype, "camera", 2);
  __decorateClass([
    property209(Laya.Scene3D)
  ], DamagedHelmetModelShow.prototype, "scene", 2);
  DamagedHelmetModelShow = __decorateClass([
    regClass209("56ac9a0b-bb60-47e3-aeac-5934275aea57", "../src/3D/Show/DamagedHelmetModelShow.ts")
  ], DamagedHelmetModelShow);
  var _RotationScript3 = class _RotationScript3 extends Script3D2 {
    constructor() {
      super();
      this._mouseDown = false;
      this._rotate = new Vector375();
      this._autoRotateSpeed = new Vector375(0, 0.25, 0);
      Laya.stage.on(Event52.MOUSE_DOWN, this, () => {
        this._mouseDown = true;
        this._lastMouseX = InputManager7.mouseX;
      });
      Laya.stage.on(Event52.MOUSE_UP, this, () => {
        this._mouseDown = false;
      });
    }
    onUpdate() {
      if (this._mouseDown) {
        var deltaX = InputManager7.mouseX - this._lastMouseX;
        this._rotate.y = deltaX * 0.2;
        this.model.transform.rotate(this._rotate, false, false);
        this._lastMouseX = InputManager7.mouseX;
      } else {
        this.model.transform.rotate(this._autoRotateSpeed, false, false);
      }
    }
  };
  __name(_RotationScript3, "RotationScript");
  var RotationScript3 = _RotationScript3;

  // src/3D/Show/GunDemo.ts
  var Vector376 = Laya.Vector3;
  var InputManager8 = Laya.InputManager;
  var Script3D3 = Laya.Script3D;
  var Text34 = Laya.Text;
  var Event53 = Laya.Event;
  var { regClass: regClass210, property: property210 } = Laya;
  var GunDemo = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      var gun = this.scene.getChildByName("Gun");
      var rotationScript = gun.addComponent(RotationScript4);
      rotationScript.model = gun;
      var size = 20;
      this.addText(30, 200, 10, "\u62D6\u52A8\u5C4F\u5E55\u4EE5\u65CB\u8F6C\u6A21\u578B", "red");
    }
    /**
     * add text.
     */
    addText(size, x, y, text, color) {
      var cerberusText = new Text34();
      cerberusText.color = color;
      cerberusText.fontSize = size;
      cerberusText.x = x;
      cerberusText.y = y;
      cerberusText.text = text;
      this.owner.addChild(cerberusText);
    }
  };
  __name(GunDemo, "GunDemo");
  __decorateClass([
    property210(Laya.Camera)
  ], GunDemo.prototype, "camera", 2);
  __decorateClass([
    property210(Laya.Scene3D)
  ], GunDemo.prototype, "scene", 2);
  GunDemo = __decorateClass([
    regClass210("f243b4bd-0fe2-416c-a7a9-301c361c4296", "../src/3D/Show/GunDemo.ts")
  ], GunDemo);
  var _RotationScript4 = class _RotationScript4 extends Script3D3 {
    constructor() {
      super();
      this._mouseDown = false;
      this._rotate = new Vector376();
      this._autoRotateSpeed = new Vector376(0, 0.25, 0);
      Laya.stage.on(Event53.MOUSE_DOWN, this, () => {
        this._mouseDown = true;
        this._lastMouseX = InputManager8.mouseX;
      });
      Laya.stage.on(Event53.MOUSE_UP, this, () => {
        this._mouseDown = false;
      });
    }
    onUpdate() {
      if (this._mouseDown) {
        var deltaX = InputManager8.mouseX - this._lastMouseX;
        this._rotate.y = deltaX * 0.2;
        this.model.transform.rotate(this._rotate, false, false);
        this._lastMouseX = InputManager8.mouseX;
      } else {
        this.model.transform.rotate(this._autoRotateSpeed, false, false);
      }
    }
  };
  __name(_RotationScript4, "RotationScript");
  var RotationScript4 = _RotationScript4;

  // src/3D/Texture/GPUCompression_ASTC.ts
  var MeshSprite3D36 = Laya.MeshSprite3D;
  var Vector377 = Laya.Vector3;
  var PrimitiveMesh31 = Laya.PrimitiveMesh;
  var MeshRenderer9 = Laya.MeshRenderer;
  var UnlitMaterial4 = Laya.UnlitMaterial;
  var Browser6 = Laya.Browser;
  var { regClass: regClass211, property: property211 } = Laya;
  var GPUCompression_ASTC = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector377(0, 1.5, 4);
      this.camera.transform.rotate(new Vector377(-15, 0, 0), true, false);
      let meshSprite = new MeshSprite3D36(PrimitiveMesh31.createBox(0.5, 0.5, 0.5));
      meshSprite.transform.position = new Vector377(0, 1, 2.5);
      meshSprite.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
      this.mat = new UnlitMaterial4();
      this.scene.addChild(meshSprite);
      meshSprite.getComponent(MeshRenderer9).sharedMaterial = this.mat;
      this.text = new Laya.Label();
      if (!Browser6.onAndroid && !Browser6.onIOS) {
        this.text.text = "PC\u4E0D\u652F\u6301ASTC\u7EB9\u7406\uFF0C\u8BF7\u4F7F\u7528\u5B89\u5353\u6216\u8005\u82F9\u679C\u8BBE\u5907";
        this.text.color = "#FFFFFF";
        this.text.font = "Impact";
        this.text.fontSize = 25;
        this.text.width = 800;
        this.text.anchorX = 0.5;
        this.text.align = "center";
        this.text.x = this.pageWidth / 2;
        this.text.y = 50;
        this.owner.addChild(this.text);
        console.log("PC\u4E0D\u652F\u6301ASTC\u7EB9\u7406");
      } else {
        Laya.loader.load("resources/res/threeDimen/texture/ASTC4x4Test.ktx").then((texture) => {
          this.mat.albedoTexture = texture;
        });
      }
    }
  };
  __name(GPUCompression_ASTC, "GPUCompression_ASTC");
  __decorateClass([
    property211(Laya.Camera)
  ], GPUCompression_ASTC.prototype, "camera", 2);
  __decorateClass([
    property211(Laya.Scene3D)
  ], GPUCompression_ASTC.prototype, "scene", 2);
  GPUCompression_ASTC = __decorateClass([
    regClass211("66473e24-1d08-4144-bc10-cbf7b21be996", "../src/3D/Texture/GPUCompression_ASTC.ts")
  ], GPUCompression_ASTC);

  // src/3D/Texture/GPUCompression_ETC2.ts
  var MeshSprite3D37 = Laya.MeshSprite3D;
  var Vector378 = Laya.Vector3;
  var PrimitiveMesh32 = Laya.PrimitiveMesh;
  var MeshRenderer10 = Laya.MeshRenderer;
  var UnlitMaterial5 = Laya.UnlitMaterial;
  var Browser7 = Laya.Browser;
  var { regClass: regClass212, property: property212 } = Laya;
  var GPUCompression_ETC2 = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector378(0, 1.5, 4);
      this.camera.transform.rotate(new Vector378(-15, 0, 0), true, false);
      let meshSprite = new MeshSprite3D37(PrimitiveMesh32.createBox(0.5, 0.5, 0.5));
      meshSprite.transform.position = new Vector378(0, 1, 2.5);
      meshSprite.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
      this.mat = new UnlitMaterial5();
      this.scene.addChild(meshSprite);
      meshSprite.getComponent(MeshRenderer10).sharedMaterial = this.mat;
      this.text = new Laya.Label();
      if (!Browser7.onAndroid) {
        console.log("\u53EA\u6709\u5B89\u5353\u652F\u6301ETC");
        this.text.text = "PC\u4E0D\u652F\u6301ETC\u7EB9\u7406\uFF0C\u53EA\u6709\u5B89\u5353\u652F\u6301";
        this.text.color = "#FFFFFF";
        this.text.font = "Impact";
        this.text.fontSize = 25;
        this.text.width = 800;
        this.text.anchorX = 0.5;
        this.text.align = "center";
        this.text.x = this.pageWidth / 2;
        this.text.y = 50;
        this.owner.addChild(this.text);
        return;
      } else {
        Laya.loader.load("resources/res/threeDimen/texture/ETC2Test.ktx").then((texture) => {
          this.mat.albedoTexture = texture;
        });
      }
    }
  };
  __name(GPUCompression_ETC2, "GPUCompression_ETC2");
  __decorateClass([
    property212(Laya.Camera)
  ], GPUCompression_ETC2.prototype, "camera", 2);
  __decorateClass([
    property212(Laya.Scene3D)
  ], GPUCompression_ETC2.prototype, "scene", 2);
  GPUCompression_ETC2 = __decorateClass([
    regClass212("b4e4996e-ddc4-4a2f-ac32-6dfc7061d87d", "../src/3D/Texture/GPUCompression_ETC2.ts")
  ], GPUCompression_ETC2);

  // src/3D/Texture/HalfFloatTexture.ts
  var Sprite3D17 = Laya.Sprite3D;
  var MeshSprite3D38 = Laya.MeshSprite3D;
  var Vector379 = Laya.Vector3;
  var BlinnPhongMaterial21 = Laya.BlinnPhongMaterial;
  var Texture2D2 = Laya.Texture2D;
  var PrimitiveMesh33 = Laya.PrimitiveMesh;
  var FilterMode4 = Laya.FilterMode;
  var HalfFloatUtils = Laya.HalfFloatUtils;
  var TextureFormat2 = Laya.TextureFormat;
  var { regClass: regClass213, property: property213 } = Laya;
  var HalfFloatTexture = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector379(0, 1.5, 4);
      this.camera.transform.rotate(new Vector379(-15, 0, 0), true, false);
      this.sprite3D = this.scene.addChild(new Sprite3D17());
      var box = this.sprite3D.addChild(new MeshSprite3D38(PrimitiveMesh33.createBox(0.5, 0.5, 0.5)));
      box.transform.position = new Vector379(0, 1, 2.5);
      box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
      var material = new BlinnPhongMaterial21();
      material.albedoTexture = this.createHalfFloatTexture();
      box.meshRenderer.sharedMaterial = material;
    }
    //创建半浮点数纹理
    createHalfFloatTexture() {
      var texture = new Texture2D2(64, 64, TextureFormat2.R16G16B16A16, true, true);
      var pixelData = new Uint16Array(64 * 64 * 4);
      var pixelIndex;
      var step = 1 / 64;
      for (var x = 0, n = 64; x < n; x++) {
        for (var y = 0, m = 64; y < m; y++) {
          pixelIndex = (x + y * 64) * 4;
          pixelData[pixelIndex] = HalfFloatUtils.roundToFloat16Bits(1);
          pixelData[pixelIndex + 1] = HalfFloatUtils.roundToFloat16Bits(x * step);
          pixelData[pixelIndex + 2] = HalfFloatUtils.roundToFloat16Bits(y * step);
          pixelData[pixelIndex + 3] = HalfFloatUtils.roundToFloat16Bits(1);
        }
      }
      texture.setPixelsData(pixelData, false, false);
      texture.filterMode = FilterMode4.Bilinear;
      return texture;
    }
  };
  __name(HalfFloatTexture, "HalfFloatTexture");
  __decorateClass([
    property213(Laya.Camera)
  ], HalfFloatTexture.prototype, "camera", 2);
  __decorateClass([
    property213(Laya.Scene3D)
  ], HalfFloatTexture.prototype, "scene", 2);
  HalfFloatTexture = __decorateClass([
    regClass213("92353217-1135-41b9-8666-3566ab52481d", "../src/3D/Texture/HalfFloatTexture.ts")
  ], HalfFloatTexture);

  // src/3D/Texture/TextureDemo.ts
  var Sprite3D18 = Laya.Sprite3D;
  var Vector380 = Laya.Vector3;
  var { regClass: regClass214, property: property214 } = Laya;
  var TextureDemo = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector380(0, 1.5, 4);
      this.camera.transform.rotate(new Vector380(-15, 0, 0), true, false);
      this.sprite3D = this.scene.addChild(new Sprite3D18());
      var box = this.sprite3D.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(0.5, 0.5, 0.5)));
      box.transform.position = new Laya.Vector3(0, 1, 2.5);
      box.transform.rotate(new Laya.Vector3(0, 0, 0), false, false);
      var mater = new Laya.BlinnPhongMaterial();
      box.meshRenderer.material = mater;
      Laya.Texture2D.load("resources/res/threeDimen/texture/layabox.png", Laya.Handler.create(null, (texture) => {
        this.texture = texture;
        texture.wrapModeU = Laya.WrapMode.Clamp;
        texture.wrapModeV = Laya.WrapMode.Repeat;
        texture.filterMode = Laya.FilterMode.Bilinear;
        texture.anisoLevel = 2;
        mater.albedoTexture = texture;
        mater.tilingOffset = new Laya.Vector4(2, 2, 0, 0);
      }));
      super.addBottomButton(["\u66F4\u6539WrapMode", "\u66F4\u6539WrapMode", "\u66F4\u6539WrapMode"], this, [this.setValue, this.setValue, this.setValue]);
    }
    setValue() {
      this.index++;
      if (this.index % 3 === 1) {
        this.texture.wrapModeU = Laya.WrapMode.Repeat;
        this.texture.wrapModeV = Laya.WrapMode.Clamp;
      } else if (this.index % 3 === 2) {
        this.texture.wrapModeU = Laya.WrapMode.Repeat;
        this.texture.wrapModeV = Laya.WrapMode.Repeat;
      } else {
        this.texture.wrapModeU = Laya.WrapMode.Mirrored;
        this.texture.wrapModeV = Laya.WrapMode.Mirrored;
      }
    }
  };
  __name(TextureDemo, "TextureDemo");
  __decorateClass([
    property214(Laya.Camera)
  ], TextureDemo.prototype, "camera", 2);
  __decorateClass([
    property214(Laya.Scene3D)
  ], TextureDemo.prototype, "scene", 2);
  TextureDemo = __decorateClass([
    regClass214("773fb133-301c-42d7-9497-2c837fae0d70", "../src/3D/Texture/TextureDemo.ts")
  ], TextureDemo);

  // src/3D/Texture/TextureGPUCompression.ts
  var Scene3D3 = Laya.Scene3D;
  var Vector381 = Laya.Vector3;
  var Handler23 = Laya.Handler;
  var { regClass: regClass215, property: property215 } = Laya;
  var TextureGPUCompression = class extends BaseScript {
    constructor() {
      super();
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector381(0, 2, 5);
      this.camera.transform.rotate(new Vector381(-15, 0, 0), true, false);
      Scene3D3.load("resources/res/CompressTexture/scene.ls", Handler23.create(this, (scene) => {
        this.scene.addChild(scene);
      }));
    }
  };
  __name(TextureGPUCompression, "TextureGPUCompression");
  __decorateClass([
    property215(Laya.Camera)
  ], TextureGPUCompression.prototype, "camera", 2);
  __decorateClass([
    property215(Laya.Scene3D)
  ], TextureGPUCompression.prototype, "scene", 2);
  TextureGPUCompression = __decorateClass([
    regClass215("9fcfabed-2691-4ea7-94a5-1f271b7976c8", "../src/3D/Texture/TextureGPUCompression.ts")
  ], TextureGPUCompression);

  // src/3D/Trail/TrailRender.ts
  var Vector382 = Laya.Vector3;
  var CameraClearFlags12 = Laya.CameraClearFlags;
  var Color25 = Laya.Color;
  var TrailRenderer = Laya.TrailRenderer;
  var { regClass: regClass216, property: property216 } = Laya;
  var TrailRender = class extends BaseScript {
    constructor() {
      super();
      this.index = 0;
    }
    onAwake() {
      super.base(this.camera);
      this.camera.transform.position = new Vector382(0, 4, 5);
      this.camera.transform.rotate(new Vector382(-45, 0, 0), true, false);
      this.camera.clearFlag = CameraClearFlags12.SolidColor;
      this.directionLight = this.scene.getChildByName("Direction Light");
      this.directionLight.color = new Color25(1, 1, 1, 1);
      this.directionLight.transform.rotate(new Vector382(-Math.PI / 3, 0, 0));
      Laya.loader.load("resources/res/threeDimen/staticModel/grid/plane.lh").then((res) => {
        this.scene.addChild(res.create());
      });
      Laya.loader.load("resources/res/threeDimen/trail/Cube.lh").then((res) => {
        this.trail = this.scene.addChild(res.create());
        this.trailRenderer = this.trail.getChildAt(0).getChildAt(0).getComponent(TrailRenderer);
      });
      super.addBottomButton(["\u4FEE\u6539\u65F6\u95F4", "\u4FEE\u6539\u65F6\u95F4"], this, [this.change, this.change]);
    }
    change() {
      this.index++;
      if (this.index % 2 === 1) {
        this.trailRenderer.time = 10;
      } else {
        this.trailRenderer.time = 1;
      }
    }
  };
  __name(TrailRender, "TrailRender");
  __decorateClass([
    property216(Laya.Camera)
  ], TrailRender.prototype, "camera", 2);
  __decorateClass([
    property216(Laya.Scene3D)
  ], TrailRender.prototype, "scene", 2);
  TrailRender = __decorateClass([
    regClass216("0af430ec-19bc-47db-b124-a00c2705b152", "../src/3D/Trail/TrailRender.ts")
  ], TrailRender);
})();
//# sourceMappingURL=bundle.js.map
