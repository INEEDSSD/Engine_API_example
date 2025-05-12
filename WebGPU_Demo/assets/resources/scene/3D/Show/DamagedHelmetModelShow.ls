{
  "_$ver": 1,
  "_$id": "fvtqn2us",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "56ac9a0b-bb60-47e3-aeac-5934275aea57",
      "scriptPath": "../src/3D/Show/DamagedHelmetModelShow.ts",
      "camera": {
        "_$ref": "243cja6i"
      },
      "scene": {
        "_$ref": "zox7kqxt"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "zox7kqxt",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "403598c9-f7ab-4d1d-868d-bba41a9b78fe",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.3872162699699402,
          0.42468228936195374,
          0.43897128105163574,
          0.14514026045799255,
          0.22629596292972565,
          0.3271584212779999,
          -0.0007048670668154955,
          -0.006725335959345102,
          -0.01493228692561388,
          -0.08132807165384293,
          -0.09398086369037628,
          -0.09950672835111618,
          -0.04682180657982826,
          -0.047125983983278275,
          -0.044693127274513245,
          0.04063064604997635,
          0.03493772819638252,
          0.025810793042182922,
          -0.001409641350619495,
          0.004673946648836136,
          0.01128918956965208,
          -0.02289455384016037,
          -0.02407711371779442,
          -0.03108130395412445,
          0.05874054133892059,
          0.05094778537750244,
          0.030579430982470512
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.4302325581395349,
        "g": 0.40188390120786016,
        "b": 0.40188390120786016
      },
      "iblTex": {
        "_$uuid": "b25b7a3c-ef81-4f89-8f26-bdd0b17b74c1",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "243cja6i",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": -3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
          },
          "msaa": true,
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "ix2mqq1r",
          "_$prefab": "626cf8af-0bb4-4f24-83c8-7cfe93e81889",
          "name": "DamagedHelmet",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0,
              "y": 0,
              "z": 1.1
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 1,
              "z": 0,
              "w": 6.123233995736766e-17
            }
          }
        }
      ]
    }
  ]
}