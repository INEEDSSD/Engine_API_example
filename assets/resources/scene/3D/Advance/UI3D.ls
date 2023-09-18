{
  "_$ver": 1,
  "_$id": "yi70tkc5",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "mouseThrough": true,
  "_$comp": [
    {
      "_$type": "cb83f637-7a02-4212-b171-61f071ef5675",
      "scriptPath": "../src/3D/Advance/UI3D.ts",
      "camera": {
        "_$ref": "rzdpkuhd"
      },
      "scene": {
        "_$ref": "t2uppuhg"
      },
      "directionLight": null
    }
  ],
  "_$child": [
    {
      "_$id": "t2uppuhg",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.5865407727900968,
        "g": 0.6011203078709357,
        "b": 0.624031007751938
      },
      "_reflectionsIblSamples": 128,
      "reflectionIntensity": 0.2,
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
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "dff427ba-82a9-4556-96ee-1aed87404145",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "4610be36-4b10-4979-8941-9b1ec7eae3ff",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "dfffdd90-34eb-4604-b0be-97591bd58ee8",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "1f56a6aa-2478-488e-8dcb-b60d1c3ccab8",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "f3efc5c4-705b-4967-a59b-3362dec93835",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "c473b535-0055-403b-9ccd-1951e5632d19",
            "_$type": "Texture2D"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "rzdpkuhd",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 2.130655126737147,
              "z": 3.256083199377432
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.10452846326765346,
              "y": 1.73180131509918e-10,
              "z": 1.6476988874155565e-9,
              "w": 0.9945218953682733
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
            "b": 0.4745098
          },
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "z2398x6n",
          "_$type": "Sprite3D",
          "name": "DirectionLight",
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.5426356589147288,
                "g": 0.5310678444805,
                "b": 0.5310678444805
              },
              "intensity": 1,
              "lightmapBakedType": 0,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "shadowCascadesMode": 0,
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        }
      ]
    }
  ]
}