var Material = Laya.Material;
var MaterialRenderMode = Laya.MaterialRenderMode;
var MaterialParser = Laya.MaterialParser;
var Shader3D = Laya.Shader3D;
var RenderState = Laya.RenderState;
var Vector2 = Laya.Vector2;
var Vector3 = Laya.Vector3;
var Vector4 = Laya.Vector4;
var Matrix3x3 = Laya.Matrix3x3;
var Matrix4x4 = Laya.Matrix4x4;
var Color = Laya.Color;
var Loader = Laya.Loader;


//Laya.Shader3D.debugMode = true;
Laya.Color.gammaToLinearSpace = function (value) {
    return Math.pow(value, 2.2);
}

Object.defineProperty(Laya.ReflectionProbe.prototype, "ambientIntensity", {
    set: function (value) {
        value = Laya.Color.gammaToLinearSpace(value);
        if (value == this._dataModule.ambientIntensity) return;
        this._dataModule.ambientIntensity = value;
        this._dataModule.updateMark = Laya.Scene3D._updateMark;
    }
});


// let setFun = Object.getOwnPropertyDescriptor(Material.prototype, "materialRenderMode").set;
// let ALPHAPREMULTIPLY = Shader3D.getDefineByName("ALPHAPREMULTIPLY_ON");
// Object.defineProperty(Material.prototype, "materialRenderMode", {
//     set: function (value) {
//         setFun.call(this, value);
//         if (this.shader.name == "Standard") {
//             if (value == MaterialRenderMode.RENDERMODE_TRANSPARENT) {
//                 this.alphaTest = false;
//                 this.depthWrite = false;
//                 this.cull = RenderState.CULL_BACK;
//                 this.blend = RenderState.BLEND_ENABLE_ALL;
//                 this.blendSrc = RenderState.BLENDPARAM_ONE;
//                 this.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
//                 this.depthTest = RenderState.DEPTHTEST_LEQUAL;
//                 this._shaderValues.addDefine(ALPHAPREMULTIPLY);
//             } else {
//                 this._shaderValues.removeDefine(ALPHAPREMULTIPLY);
//             }
//         }
//     }
// });

// let blendSrcFun = Object.getOwnPropertyDescriptor(Material.prototype, "blendSrc").set;
// Object.defineProperty(Material.prototype, "blendSrc", {
//     set: function (value) {
//         if (this.shader && this.shader.name == "Standard") {
//             switch (this.materialRenderMode) {
//                 case MaterialRenderMode.RENDERMODE_TRANSPARENT:
//                     value = RenderState.BLENDPARAM_ONE;
//                     break;
//             }
//         }
//         blendSrcFun.call(this, value);
//     }
// })

let depthTestFun = Object.getOwnPropertyDescriptor(Material.prototype, "depthTest").set;
Object.defineProperty(Material.prototype, "depthTest", {
    set: function (value) {
        if (this.shader && this.shader.name == "Standard") {
            value = RenderState.DEPTHTEST_LEQUAL;
        }
        depthTestFun.call(this, value);
    }
})

var StandardModeChangeHandler = function (mat) {
    let mode = mat.getFloat("u_Mode");
    // console.log("Standard Mode ", mode);
    mat.depthTest = RenderState.DEPTHTEST_LESS;
    switch (mode) {
        case 0:
            mat.blend = RenderState.BLEND_DISABLE;
            mat.removeDefine(Shader3D.getDefineByName("ALPHABLEND_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHATEST_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHAPREMULTIPLY_ON"));
            break;
        case 1:
            mat.blend = RenderState.BLEND_DISABLE;
            mat.addDefine(Shader3D.getDefineByName("ALPHATEST_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHABLEND_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHAPREMULTIPLY_ON"));
            break;
        case 2:
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_SRC_ALPHA;
            mat.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
            mat.addDefine(Shader3D.getDefineByName("ALPHABLEND_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHATEST_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHAPREMULTIPLY_ON"));
            break;
        case 3:
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_ONE;
            mat.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
            mat.addDefine(Shader3D.getDefineByName("ALPHAPREMULTIPLY_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHATEST_ON"));
            mat.removeDefine(Shader3D.getDefineByName("ALPHABLEND_ON"));
            break;
    }
}

var StandardUnlitChangeHandler = function (mat) {
    let mode = mat.getFloat("u_Mode");
    switch (mode) {
        case 0:
            //Opaque
            mat.blend = RenderState.BLEND_DISABLE;
            break;
        case 1:
            //Cutout
            mat.blend = RenderState.BLEND_DISABLE;
            break;
        case 2:
            //Fade
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_SRC_ALPHA;
            mat.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
            break;
        case 3:
            //Transparent
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_ONE;
            mat.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
            break;
        case 4:
            //Additive
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_SRC_ALPHA;
            mat.blendDst = RenderState.BLENDPARAM_ONE;
            break;
        case 5:
            //Subtractive
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_SRC_ALPHA;
            mat.blendDst = RenderState.BLENDPARAM_ONE;
            //todo blendop
            break
        case 6:
            //Modulate
            mat.blend = RenderState.BLEND_ENABLE_ALL;
            mat.blendSrc = RenderState.BLENDPARAM_DST_COLOR;
            mat.blendDst = RenderState.BLENDPARAM_ONE_MINUS_SRC_ALPHA;
            break;
    }
}

Laya.MaterialParser.parse = function (data) {
    let props = data.props;
    switch (data.version) {
        case "LAYAMATERIAL:01":
        case "LAYAMATERIAL:02":
        case "LAYAMATERIAL:03":
            let mat2 = MaterialParser.parseLegacy(data);
            mat2.oldparseEndEvent();
            return mat2;
        case "LAYAMATERIAL:04":
            break;
        default:
            throw new Error(`unkonwn material version: ${data.version}`);
    }
    let mat = new Material();
    mat.setShaderName(props.type);
    let renderQueue;
    for (let key in props) {
        switch (key) {
            case "type":
            case "name":
                break;
            case "defines":
                let defineNames = props[key];
                for (let i = 0, n = defineNames.length; i < n; i++) {
                    let define = Shader3D.getDefineByName(defineNames[i]);
                    mat._shaderValues.addDefine(define);
                }
                break;
            case "textures":
                let textures = props[key];
                for (let i = 0, n = textures.length; i < n; i++) {
                    let texture = textures[i];
                    let path = texture.path;
                    path && mat._shaderValues.setTexture(Shader3D.propertyNameToID(texture.name), Loader.getBaseTexture(path));
                    if (path) {
                        let baseTexture = Loader.getBaseTexture(path);
                        if (baseTexture && baseTexture.gammaSpace) {
                            let isWebGL1 = baseTexture._texture.constructor.name == "WebGLInternalTex";
                            let boo = !baseTexture.mipmap && isWebGL1;
                            if (!boo) {
                                let define = Shader3D.getDefineByName(texture.name + "_Gamma");
                                mat._shaderValues.addDefine(define);
                            }
                        }
                    }
                }
                break;
            case "renderQueue":
                renderQueue = props[key];
                break;
            case "alphaTest":
                mat.alphaTest = props[key];
                break;
            case "materialRenderMode":
                mat.materialRenderMode = props[key];
                break;
            default:
                let property2 = props[key];
                let uniName = Shader3D.propertyNameToID(key);
                switch (uniName) {
                    case Shader3D.CULL:
                        mat.cull = property2;
                        break;
                    case Shader3D.BLEND:
                        mat.blend = property2;
                        break;
                    case Shader3D.BLEND_SRC:
                        mat.blendSrc = property2;
                        break;
                    case Shader3D.BLEND_DST:
                        mat.blendDst = property2;
                        break;
                    case Shader3D.BLEND_DST_ALPHA:
                        mat.blendDstAlpha = property2;
                        break;
                    case Shader3D.BLEND_SRC_ALPHA:
                        mat.blendSrcAlpha = property2;
                        break;
                    case Shader3D.BLEND_SRC_RGB:
                        mat.blendSrcRGB = property2;
                        break;
                    case Shader3D.BLEND_SRC_RGB:
                        mat.blendDstRGB = property2;
                        break;
                    case Shader3D.DEPTH_TEST:
                        mat.depthTest = property2;
                        break;
                    case Shader3D.DEPTH_WRITE:
                        mat.depthWrite = !!props[key];
                        break;
                    case Shader3D.STENCIL_TEST:
                        mat.stencilTest = property2;
                        break;
                    case Shader3D.STENCIL_Op:
                        mat.stencilOp = property2;
                        break;
                    case Shader3D.STENCIL_Ref:
                        mat.stencilRef = property2;
                        break;
                    case Shader3D.STENCIL_WRITE:
                        mat.stencilWrite = property2;
                        break;
                    default:
                        if (!property2.length) {
                            if (mat.shader.name == "SkyBox" && key == "u_Exposure") {
                                mat._shaderValues.setNumber(uniName, Laya.Color.gammaToLinearSpace(props[key]));
                            } else {
                                mat._shaderValues.setNumber(uniName, props[key]);
                            }
                        } else {
                            var vectorValue = property2;
                            switch (vectorValue.length) {
                                case 2:
                                    mat._shaderValues.setVector2(uniName, new Vector2(vectorValue[0], vectorValue[1]));
                                    break;
                                case 3:
                                    mat._shaderValues.setVector3(uniName, new Vector3(vectorValue[0], vectorValue[1], vectorValue[2]));
                                    break;
                                case 4:
                                    if (mat._shaderValues.getColor(uniName)) {
                                        mat._shaderValues.setColor(uniName, new Color(vectorValue[0], vectorValue[1], vectorValue[2], vectorValue[3]));
                                    } else
                                        mat._shaderValues.setVector(uniName, new Vector4(vectorValue[0], vectorValue[1], vectorValue[2], vectorValue[3]));
                                    break;
                                case 9:
                                    let matrix3 = new Matrix3x3();
                                    matrix3.elements = new Float32Array(vectorValue);
                                    mat._shaderValues.setMatrix3x3(uniName, matrix3);
                                    break;
                                case 16:
                                    let matrix4 = new Matrix4x4();
                                    matrix4.elements = new Float32Array(vectorValue);
                                    mat._shaderValues.setMatrix4x4(uniName, matrix4);
                                    break;
                                default:
                                    mat._shaderValues.setBuffer(uniName, vectorValue);
                            }
                        }
                        break;
                }
        }
    }
    if (null != renderQueue) {
        mat.renderQueue = renderQueue;
    }
    if (mat.shader.name == "Standard") {
        StandardModeChangeHandler(mat);
    } else if (mat.shader.name == "StandardUnlit") {
        StandardUnlitChangeHandler(mat);
    }
    return mat;
}

Material.prototype.setShaderDataByIndex = function (uniformIndex, type, value) {
    this.shaderData.setShaderData(uniformIndex, type, value);
    switch (this.shader.name) {
        case "Standard":
            if (uniformIndex == Shader3D.propertyNameToID("u_Mode")) StandardModeChangeHandler(this);
            break;
        case "StandardUnlit":
            if (uniformIndex == Shader3D.propertyNameToID("u_Mode")) StandardUnlitChangeHandler(this);
            break;
    }
}

var Scene3D = Laya.Scene3D;
var Config3D = Laya.Config3D;
var Stat = Laya.Stat;
var Color2 = Laya.Color;
var Vector32 = Laya.Vector3;
var Scene3DShaderDeclaration = Laya.Scene3DShaderDeclaration;
var Cluster = Laya.Cluster;
let proto = Scene3D.prototype;
proto._prepareSceneToRender = function () {
    var shaderValues = this._shaderValues;
    var multiLighting = Config3D._multiLighting && Stat.enableMulLight;
    if (multiLighting) {
        var ligTex = Scene3D._lightTexture;
        var ligPix = Scene3D._lightPixles;
        const pixelWidth = ligTex.width;
        const floatWidth = pixelWidth * 4;
        var curCount = 0;
        var dirCount = Stat.enableLight ? this._directionLights._length : 0;
        var dirElements = this._directionLights._elements;
        if (dirCount > 0) {
            var sunLightIndex = this._directionLights.getBrightestLight();
            this._mainDirectionLight = dirElements[sunLightIndex];
            this._directionLights.normalLightOrdering(sunLightIndex);
            for (var i = 0; i < dirCount; i++, curCount++) {
                var dirLight = dirElements[i];
                var dir = dirLight._direction;
                var intCor = dirLight._intensityColor;
                var off = floatWidth * curCount;
                intCor.x = Color2.gammaToLinearSpace(dirLight.color.r);
                intCor.y = Color2.gammaToLinearSpace(dirLight.color.g);
                intCor.z = Color2.gammaToLinearSpace(dirLight.color.b);
                Vector32.scale(intCor, Color2.gammaToLinearSpace(dirLight._intensity), intCor);
                dirLight.owner.transform.worldMatrix.getForward(dir);
                Vector32.normalize(dir, dir);
                ligPix[off] = intCor.x;
                ligPix[off + 1] = intCor.y;
                ligPix[off + 2] = intCor.z;
                ligPix[off + 3] = dirLight._lightmapBakedType;
                ligPix[off + 4] = dir.x;
                ligPix[off + 5] = dir.y;
                ligPix[off + 6] = dir.z;
                if (i == 0) {
                    this._sunColor.x = intCor.x;
                    this._sunColor.y = intCor.y;
                    this._sunColor.z = intCor.z;
                    this._sundir = dir;
                }
            }
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_DIRECTIONLIGHT);
        } else {
            //no light
            this._sunColor.setValue(0, 0, 0);
            this._sundir.setValue(0, 0, 1);
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_DIRECTIONLIGHT);
        }
        var poiCount = Stat.enableLight ? this._pointLights._length : 0;
        if (poiCount > 0) {
            var poiElements = this._pointLights._elements;
            var mainPointLightIndex = this._pointLights.getBrightestLight();
            this._mainPointLight = poiElements[mainPointLightIndex];
            this._pointLights.normalLightOrdering(mainPointLightIndex);
            for (var i = 0; i < poiCount; i++, curCount++) {
                var poiLight = poiElements[i];
                var pos = poiLight.owner.transform.position;
                var intCor = poiLight._intensityColor;
                var off = floatWidth * curCount;
                intCor.x = Color2.gammaToLinearSpace(poiLight.color.r);
                intCor.y = Color2.gammaToLinearSpace(poiLight.color.g);
                intCor.z = Color2.gammaToLinearSpace(poiLight.color.b);
                Vector32.scale(intCor, Color2.gammaToLinearSpace(poiLight._intensity), intCor);
                ligPix[off] = intCor.x;
                ligPix[off + 1] = intCor.y;
                ligPix[off + 2] = intCor.z;
                ligPix[off + 3] = poiLight.range;
                ligPix[off + 4] = pos.x;
                ligPix[off + 5] = pos.y;
                ligPix[off + 6] = pos.z;
                ligPix[off + 7] = poiLight._lightmapBakedType;
            }
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_POINTLIGHT);
        } else {
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_POINTLIGHT);
        }
        var spoCount = Stat.enableLight ? this._spotLights._length : 0;
        if (spoCount > 0) {
            var spoElements = this._spotLights._elements;
            var mainSpotLightIndex = this._spotLights.getBrightestLight();
            this._mainSpotLight = spoElements[mainSpotLightIndex];
            this._spotLights.normalLightOrdering(mainSpotLightIndex);
            for (var i = 0; i < spoCount; i++, curCount++) {
                var spoLight = spoElements[i];
                var dir = spoLight._direction;
                var pos = spoLight.owner.transform.position;
                var intCor = spoLight._intensityColor;
                var off = floatWidth * curCount;
                intCor.x = Color2.gammaToLinearSpace(spoLight.color.r);
                intCor.y = Color2.gammaToLinearSpace(spoLight.color.g);
                intCor.z = Color2.gammaToLinearSpace(spoLight.color.b);
                Vector32.scale(intCor, Color2.gammaToLinearSpace(spoLight._intensity), intCor);
                spoLight.owner.transform.worldMatrix.getForward(dir);
                Vector32.normalize(dir, dir);
                ligPix[off] = intCor.x;
                ligPix[off + 1] = intCor.y;
                ligPix[off + 2] = intCor.z;
                ligPix[off + 3] = spoLight.range;
                ligPix[off + 4] = pos.x;
                ligPix[off + 5] = pos.y;
                ligPix[off + 6] = pos.z;
                ligPix[off + 7] = spoLight.spotAngle * Math.PI / 180;
                ligPix[off + 8] = dir.x;
                ligPix[off + 9] = dir.y;
                ligPix[off + 10] = dir.z;
                ligPix[off + 11] = spoLight._lightmapBakedType;
            }
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_SPOTLIGHT);
        } else {
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_SPOTLIGHT);
        }
        curCount > 0 && ligTex.setSubPixelsData(0, 0, pixelWidth, curCount, ligPix, 0, false, false, false);
        shaderValues.setTexture(Scene3D.LIGHTBUFFER, ligTex);
        shaderValues.setInt(Scene3D.DIRECTIONLIGHTCOUNT, this._directionLights._length);
        shaderValues.setTexture(Scene3D.CLUSTERBUFFER, Cluster.instance._clusterTexture);
    } else {
        if (this._directionLights._length > 0 && Stat.enableLight) {
            var dirLight = this._directionLights._elements[0];
            this._mainDirectionLight = dirLight;
            dirLight._intensityColor.x = Color2.gammaToLinearSpace(dirLight.color.r);
            dirLight._intensityColor.y = Color2.gammaToLinearSpace(dirLight.color.g);
            dirLight._intensityColor.z = Color2.gammaToLinearSpace(dirLight.color.b);
            Vector32.scale(dirLight._intensityColor, Color2.gammaToLinearSpace(dirLight._intensity), dirLight._intensityColor);
            dirLight.owner.transform.worldMatrix.getForward(dirLight._direction);
            Vector32.normalize(dirLight._direction, dirLight._direction);
            shaderValues.setVector3(Scene3D.LIGHTDIRCOLOR, dirLight._intensityColor);
            shaderValues.setVector3(Scene3D.LIGHTDIRECTION, dirLight._direction);
            shaderValues.setInt(Scene3D.LIGHTMODE, dirLight._lightmapBakedType);
            if (i == 0) {
                this._sunColor = dirLight.color;
                this._sundir = dirLight._direction;
            }
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_DIRECTIONLIGHT);
        } else {
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_DIRECTIONLIGHT);
        }
        if (this._pointLights._length > 0 && Stat.enableLight) {
            var poiLight = this._pointLights._elements[0];
            this._mainPointLight = poiLight;
            poiLight._intensityColor.x = Color2.gammaToLinearSpace(poiLight.color.r);
            poiLight._intensityColor.y = Color2.gammaToLinearSpace(poiLight.color.g);
            poiLight._intensityColor.z = Color2.gammaToLinearSpace(poiLight.color.b);
            Vector32.scale(poiLight._intensityColor, Color2.gammaToLinearSpace(poiLight._intensity), poiLight._intensityColor);
            shaderValues.setVector3(Scene3D.POINTLIGHTCOLOR, poiLight._intensityColor);
            shaderValues.setVector3(Scene3D.POINTLIGHTPOS, poiLight.owner.transform.position);
            shaderValues.setNumber(Scene3D.POINTLIGHTRANGE, poiLight.range);
            shaderValues.setInt(Scene3D.POINTLIGHTMODE, poiLight._lightmapBakedType);
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_POINTLIGHT);
        } else {
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_POINTLIGHT);
        }
        if (this._spotLights._length > 0 && Stat.enableLight) {
            var spotLight = this._spotLights._elements[0];
            this._mainSpotLight = spotLight;
            spotLight._intensityColor.x = Color2.gammaToLinearSpace(spotLight.color.r);
            spotLight._intensityColor.y = Color2.gammaToLinearSpace(spotLight.color.g);
            spotLight._intensityColor.z = Color2.gammaToLinearSpace(spotLight.color.b);
            Vector32.scale(spotLight._intensityColor, Color2.gammaToLinearSpace(spotLight._intensity), spotLight._intensityColor);
            shaderValues.setVector3(Scene3D.SPOTLIGHTCOLOR, spotLight._intensityColor);
            shaderValues.setVector3(Scene3D.SPOTLIGHTPOS, spotLight.owner.transform.position);
            spotLight.owner.transform.worldMatrix.getForward(spotLight._direction);
            Vector32.normalize(spotLight._direction, spotLight._direction);
            shaderValues.setVector3(Scene3D.SPOTLIGHTDIRECTION, spotLight._direction);
            shaderValues.setNumber(Scene3D.SPOTLIGHTRANGE, spotLight.range);
            shaderValues.setNumber(Scene3D.SPOTLIGHTSPOTANGLE, spotLight.spotAngle * Math.PI / 180);
            shaderValues.setInt(Scene3D.SPOTLIGHTMODE, spotLight._lightmapBakedType);
            shaderValues.addDefine(Scene3DShaderDeclaration.SHADERDEFINE_SPOTLIGHT);
        } else {
            shaderValues.removeDefine(Scene3DShaderDeclaration.SHADERDEFINE_SPOTLIGHT);
        }
    }
};

var RenderContext3D = Laya.RenderContext3D;
var RenderTexture = Laya.RenderTexture;
var FilterMode = Laya.FilterMode;
var Config = Laya.Config;
var BaseCamera = Laya.BaseCamera;
var CameraClearFlags = Laya.CameraClearFlags;
var RenderPassStatisticsInfo = Laya.RenderPassStatisticsInfo;
var LayaGL = Laya.LayaGL;
Laya.Camera.prototype.render = function (scene) {
    let context = RenderContext3D._instance;
    context.scene = scene;
    context.camera = this;
    scene._setCullCamera(this);
    this._Render3DProcess.render3DManager = scene.sceneRenderableManager._sceneManagerOBJ;
    let viewport = this.viewport;
    let needInternalRT = this._needInternalRenderTexture();
    if (needInternalRT) {
        let multiSampler = this.msaa ? 4 : 1;
        let frameFormat = this._getRenderTextureFormat();
        let depthFormat = this.depthTextureFormat;
        let gamma = this._needRenderGamma(frameFormat);
        let internalRT = RenderTexture.createFromPool(viewport.width, viewport.height, frameFormat, depthFormat, false, multiSampler, this.canblitDepth, gamma);
        internalRT.filterMode = FilterMode.Bilinear;
        this._internalRenderTexture = internalRT;

        let isGamma = scene._shaderValues.hasDefine(Laya.Shader3D.getDefineByName("COLORSPACE_GAMMA"));
        if (isGamma) this._internalRenderTexture._texture.gammaCorrection = 2.2;
    }
    else {
        this._internalRenderTexture = null;
    }
    if (this.opaquePass && !this._opaqueTexture) {
        this._createOpaqueTexture();
    }
    context.invertY = false;
    let renderRT = this._getRenderTexture();
    if (renderRT) {
        context.invertY = renderRT._isCameraTarget;
    }
    this._prepareCameraToRender();
    this._applyViewProject(this.viewMatrix, this.projectionMatrix, context.invertY);
    this._contextApply(context);

    if (this.clearFlag == CameraClearFlags.Sky) {
        scene.skyRenderer.setRenderElement(this.skyRenderElement);
        this.skyRenderElement.renderpre(context);
    }
    scene._componentDriver.callPreRender();
    this._preRenderMainPass(context, scene, needInternalRT, viewport);
    let multiLight = Config3D._multiLighting;
    if (multiLight) {
        Cluster.instance.update(this, scene);
    }
    var time = performance.now();
    this._Render3DProcess.fowardRender(context._contextOBJ, this);
    Stat.renderPassStatArray[RenderPassStatisticsInfo.T_CameraRender] += (performance.now() - time);
    scene._componentDriver.callPostRender();
}

// Laya.WebReflectionProbe.prototype.applyRenderData = function (data) {
//     if (!this.boxProjection) {
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_SPECCUBE_BOX_PROJECTION);
//     }
//     else {
//         data.addDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_SPECCUBE_BOX_PROJECTION);
//         data.setVector3(Laya.RenderableSprite3D.REFLECTIONCUBE_PROBEPOSITION, this._probePosition);
//         data.setVector3(Laya.RenderableSprite3D.REFLECTIONCUBE_PROBEBOXMAX, this.bound.getMax());
//         data.setVector3(Laya.RenderableSprite3D.REFLECTIONCUBE_PROBEBOXMIN, this.bound.getMin());
//     }
//     if (this.ambientMode == Laya.AmbientMode.SolidColor) {
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_LEGACYIBL);
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_IBL);
//         data.setColor(Laya.RenderableSprite3D.AMBIENTCOLOR, this._ambientColor);
//     }
//     else if (this.iblTex && this._ambientSH) {
//         data.addDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_IBL);
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_LEGACYIBL);
//         if (this.iblTex) {
//             data._setInternalTexture(Laya.RenderableSprite3D.IBLTEX, this.iblTex);
//             data.setNumber(Laya.RenderableSprite3D.IBLROUGHNESSLEVEL, this.iblTex.maxMipmapLevel);
//         }
//         this.iblTexRGBD ? data.addDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_IBL_RGBD) : data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_IBL_RGBD);
//         this._ambientSH && data.setBuffer(Laya.RenderableSprite3D.AMBIENTSH, this._ambientSH);
//     }
//     else {
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_LEGACYIBL);
//         data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_GI_IBL);
//     }

//     if (this.iblTex) {
//         data.addDefine(Laya.Shader3D.getDefineByName("GI_IBL_SPECULAR"));
//         data._setInternalTexture(Laya.RenderableSprite3D.IBLTEX, this.iblTex);
//         data.setNumber(Laya.RenderableSprite3D.IBLROUGHNESSLEVEL, this.iblTex.maxMipmapLevel);
//         this.iblTexRGBD ? data.addDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_IBL_RGBD) : data.removeDefine(Laya.Sprite3DRenderDeclaration.SHADERDEFINE_IBL_RGBD);
//     } else {
//         data.removeDefine(Laya.Shader3D.getDefineByName("GI_IBL_SPECULAR"));
//     }
//     data.setNumber(Laya.RenderableSprite3D.AMBIENTINTENSITY, this.ambientIntensity);
//     data.setNumber(Laya.RenderableSprite3D.REFLECTIONINTENSITY, this.reflectionIntensity);
// }

var ShaderDataType = Laya.ShaderDataType;
// Laya.WebGLUniformBufferBase.prototype.setUniformData = function (index, type, data) {
//     let uniform = this.descriptor.uniforms.get(index);
//     if (uniform) {
//         switch (type) {
//             case ShaderDataType.Bool:
//                 //为什么要报警？？？
//                 // console.warn("ShaderDataType.Bool not support");
//                 uniform.view[0] = data;
//                 this.needUpload = true;
//                 break;
//             case ShaderDataType.Int:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setInt(index, data);
//                 }
//                 break;
//             case ShaderDataType.Float:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setFloat(index, data);
//                 }
//                 break;
//             case ShaderDataType.Vector2:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setVector2(index, data);
//                 }
//                 break;
//             case ShaderDataType.Vector3:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setVector3(index, data);
//                 }
//                 break;
//             case ShaderDataType.Vector4:
//             case ShaderDataType.Color:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setVector4(index, data);
//                 }
//                 break;
//             case ShaderDataType.Matrix3x3:
//                 if (uniform.arrayLength > 0) {
//                     this.setMatrix3x3Array(index, data);
//                 }
//                 else {
//                     this.setMatrix3x3(index, data);
//                 }
//                 break;
//             case ShaderDataType.Matrix4x4:
//                 if (uniform.arrayLength > 0) {
//                     this.setArrayBuffer(index, data);
//                 }
//                 else {
//                     this.setMatrix4x4(index, data);
//                 }
//                 break;
//             case ShaderDataType.Buffer:
//                 break;
//             case ShaderDataType.None:
//             case ShaderDataType.Texture2D:
//             case ShaderDataType.Texture3D:
//             case ShaderDataType.TextureCube:
//             case ShaderDataType.Texture2DArray:
//             default:
//                 break;
//         }
//     }
// }