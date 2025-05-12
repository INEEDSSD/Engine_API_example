{
  "_$ver": 1,
  "_$id": "qyk9ztpk",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "405e2005-76bf-4c43-82c8-d1af69cf3061",
      "scriptPath": "../src/3D/Scene3D/LightmapScene.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0,
        "b": 0
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "7991daae-ed31-4c9f-bb91-747867f24fec",
            "_$type": "Texture2D"
          }
        }
      ],
      "lightingSettings": {
        "_$uuid": "c8a1e0c7-4ae0-4e7d-8ad5-2125184d0872",
        "_$type": "LightingSettings"
      },
      "_device": "CUDA",
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 3.2652863480195577,
              "y": 3.3538299019103404,
              "z": 5.867155340104327
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.04139878617992169,
              "y": 0.43790573568613733,
              "z": 0.020191528617105502,
              "w": 0.8978401914194513
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0,
            "g": 0,
            "b": 0
          },
          "msaa": true,
          "depthTextureFormat": 35
        },
        {
          "_$id": "eefxs4fb",
          "_$prefab": "1227503b-bd3e-46ba-96ce-e52be2904241",
          "name": "baishe",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          },
          "isStatic": true,
          "_$child": [
            {
              "_$override": "#42",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "aa8a47f1-4616-405f-b909-6178e5a55f85",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8506,
                    "y": 0.8496,
                    "z": 0.0039,
                    "w": 0.0039
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "ems76mew",
          "_$type": "Sprite3D",
          "name": "PointLight",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.8021905164115226,
              "y": 4.827488274909184,
              "z": 0.15827421434587752
            }
          },
          "_$comp": [
            {
              "_$type": "PointLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.9689922480620154,
                "g": 0.7444408909721458,
                "b": 0.1502313562886845
              },
              "intensity": 3,
              "lightmapBakedType": 2,
              "shadowCascadesMode": null,
              "range": 14.289076798185555,
              "power": 1000,
              "radius": 0.25,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "jhkfcg0y",
          "_$type": "Sprite3D",
          "name": "PointLight(1)",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 3.6938496732022843,
              "y": 3.3908101171663256,
              "z": 4.88802617669944
            }
          },
          "_$comp": [
            {
              "_$type": "PointLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.7364341085271318,
                "g": 0.2644279640423039,
                "b": 0.06565110269815519
              },
              "intensity": 4.81,
              "lightmapBakedType": 2,
              "shadowCascadesMode": null,
              "range": 3,
              "power": 5000,
              "radius": 0.25,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "gzq6zcdk",
          "_$type": "Sprite3D",
          "name": "AreaLight",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5.049225032634347,
              "y": 4.986289666731623,
              "z": 0.2506679341281681
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.5,
              "y": -0.5,
              "z": -0.49999999999999994,
              "w": 0.5
            }
          },
          "_$comp": [
            {
              "_$type": "AreaLightCom",
              "shadowCascadesMode": null,
              "size": {
                "_$type": "Vector2",
                "x": 2,
                "y": 3.83826836258692
              },
              "spread": 150
            }
          ]
        },
        {
          "_$id": "kmg89hlw",
          "_$type": "Sprite3D",
          "name": "SpotLight",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5.751119534832035,
              "y": 6.316010894346949,
              "z": 4.198381083105254
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.706259628337691,
              "y": -0.03460256320428679,
              "z": 0.03460256320428679,
              "w": 0.7062596283376911
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.9241145481581853,
                "b": 0.03875968992248058
              },
              "lightmapBakedType": 2,
              "shadowCascadesMode": null,
              "range": 100,
              "power": 1000,
              "radius": 0.25,
              "maxBounces": 1024,
              "blend": 0.15
            }
          ]
        },
        {
          "_$id": "jpgff0p8",
          "_$type": "Sprite3D",
          "name": "SpotLight(1)",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5.7795425579013395,
              "y": 5.800806502016267,
              "z": -3.3766875671130006
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.706259628337691,
              "y": -0.03460256320428679,
              "z": 0.03460256320428679,
              "w": 0.7062596283376911
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.9210542932786306,
                "b": 0
              },
              "lightmapBakedType": 2,
              "shadowCascadesMode": null,
              "range": 100,
              "power": 1000,
              "radius": 0.25,
              "maxBounces": 1024,
              "blend": 0.15
            }
          ]
        }
      ]
    }
  ]
}