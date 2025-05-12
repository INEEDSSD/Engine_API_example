{
  "_$ver": 1,
  "_$id": "ppqhpkl4",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1440,
  "height": 680,
  "_$comp": [
    {
      "_$type": "e3509569-515c-4fcd-b7b0-cdf89dc01af5",
      "scriptPath": "../src/3D/Light/MultiLight.ts",
      "camera": {
        "_$ref": "7v313pb2"
      },
      "scene": {
        "_$ref": "jlg17yy3"
      },
      "pointLight": {
        "_$ref": "zkthq1ct"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "jlg17yy3",
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
        "b": 0.5,
        "a": null
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "379dc229-76d9-434c-a040-9f729b7d0e0d",
            "_$type": "Texture2D"
          }
        }
      ],
      "lightingSettings": {
        "_$uuid": "14300aeb-b0b7-4054-817f-fa317002e6a5",
        "_$type": "LightingSettings"
      },
      "_$child": [
        {
          "_$id": "7v313pb2",
          "_$type": "Camera",
          "name": "Main Camera",
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.1200340764058714,
              "y": 1.691550078184122,
              "z": -1.8002570362261432
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.08082216712447614,
              "y": 0.8470629028117613,
              "z": 0.13484363942401276,
              "w": -0.5077099653230205
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearColor": {
            "_$type": "Color",
            "r": 0,
            "g": 0,
            "b": 0,
            "a": 0
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "z22l6vm5",
          "_$prefab": "999f7956-e6e9-412c-b2a1-d5c3984812f8",
          "name": "uploads_files_2787162_DiningRoom",
          "active": true,
          "isStatic": false,
          "layer": 0,
          "_$child": [
            {
              "_$override": "#43",
              "isStatic": true,
              "active": false,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": -1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.1348,
                    "y": 0.1426,
                    "z": 0.8633,
                    "w": 0.4238
                  }
                }
              ]
            },
            {
              "_$override": "#44",
              "isStatic": true,
              "active": false,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": -1
                }
              ]
            },
            {
              "_$override": "#45",
              "isStatic": true,
              "active": false,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": -1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.4121,
                    "y": 0.4102,
                    "z": 0.5879,
                    "w": 0.0059
                  }
                }
              ]
            },
            {
              "_$override": "#52",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.3145,
                    "y": 0.3145,
                    "z": 0.6855,
                    "w": 0.0078
                  }
                }
              ]
            },
            {
              "_$override": "#53",
              "active": false,
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": -1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.4863,
                    "y": 0.4512,
                    "z": 0.5137,
                    "w": 0.0059
                  }
                }
              ]
            },
            {
              "_$override": "#54",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "castShadow": true,
                  "receiveShadow": true,
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.1563,
                    "y": 0.1563,
                    "z": 0.6855,
                    "w": 0.5098
                  }
                }
              ]
            },
            {
              "_$override": "#85",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.6719,
                    "y": 0.6719,
                    "z": 0.0078,
                    "w": 0.0078
                  }
                }
              ]
            },
            {
              "_$override": "#87",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.1738,
                    "y": 0.1738,
                    "z": 0.6855,
                    "w": 0.3281
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "85y9nl16",
          "_$type": "Sprite3D",
          "name": "SpotLight(1)",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.3270434352656171,
              "y": 3.265182798900135,
              "z": -0.5675677633316082
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "intensity": 15,
              "lightmapBakedType": 2,
              "shadowMode": 1,
              "shadowDepthBias": 2,
              "shadowCascadesMode": 1,
              "spotAngle": 106,
              "power": 1000,
              "radius": 0.25,
              "maxBounces": 1024,
              "blend": 0.15
            }
          ]
        },
        {
          "_$id": "cpsec6q8",
          "_$type": "Sprite3D",
          "name": "PointLight",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.0795745153786165,
              "y": 0.8543630379328873,
              "z": -0.3576278626596897
            }
          },
          "_$comp": [
            {
              "_$type": "PointLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.6796874999999996,
                "b": 0
              },
              "intensity": 50,
              "shadowCascadesMode": null,
              "range": 0.86,
              "power": 10,
              "radius": 26.93,
              "maxBounces": 1024
            }
          ],
          "_$child": [
            {
              "_$id": "kt5f4ve4",
              "_$type": "Sprite3D",
              "name": "Sphere",
              "transform": {
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1,
                  "y": 0.1,
                  "z": 0.1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f1e48cc9-d67d-4196-92dd-77d9ee2f076c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "qd1lahvs",
          "_$type": "Sprite3D",
          "name": "SpotLight(2)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.060039000470837,
              "y": 1.7933153677164158,
              "z": 0.6641351743362691
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "intensity": 10,
              "shadowCascadesMode": null,
              "spotAngle": 28,
              "power": 10,
              "radius": 0.25,
              "maxBounces": 1024,
              "blend": 0.15
            }
          ]
        },
        {
          "_$id": "40fksujt",
          "_$type": "Sprite3D",
          "name": "DirectionLight",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 8.976522466291783,
              "y": -0.7995430061312625,
              "z": 5.3746419805220835
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.3090706878074624,
              "w": 0.9510390685656518
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "lightmapBakedType": 0,
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "zkthq1ct",
          "_$type": "Sprite3D",
          "name": "SpotLight(3)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.9140549262736306,
              "y": 2.1952122114502854,
              "z": -1.1449294259119802
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "intensity": 20,
              "shadowMode": 3,
              "shadowStrength": 0.941,
              "shadowDepthBias": 1.73,
              "shadowNormalBias": 2.556,
              "shadowNearPlane": 7.239,
              "shadowCascadesMode": 1,
              "spotAngle": 48,
              "power": 10,
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