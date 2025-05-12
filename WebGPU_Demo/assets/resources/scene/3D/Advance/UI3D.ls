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
      }
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
      "ambientColor": {
        "_$type": "Color",
        "r": 0.5865407727900968,
        "g": 0.6011203078709357,
        "b": 0.624031007751938
      },
      "reflectionIntensity": 0.2,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "_$child": [
        {
          "_$id": "rzdpkuhd",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.5106155207165797,
              "y": 2.345472874168896,
              "z": 3.2104222781248066
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.10452846326765346,
              "y": 1.73180131509918e-10,
              "z": 1.6476988874155565e-9,
              "w": 0.9945218953682733
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098
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
              "lightmapBakedType": 0,
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