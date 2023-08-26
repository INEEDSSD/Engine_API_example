{
  "_$ver": 1,
  "_$id": "ppqhpkl4",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "e3509569-515c-4fcd-b7b0-cdf89dc01af5",
      "scriptPath": "../src/3D/Light/MultiLight.ts",
      "camera": {
        "_$ref": "7v313pb2"
      },
      "scene": {
        "_$ref": "jlg17yy3"
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
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.3301887,
        "g": 0.3301887,
        "b": 0.3301887,
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "fogStart": 0,
      "fogRange": 300,
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
          "_$id": "7v313pb2",
          "_$type": "Camera",
          "name": "Main Camera",
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 23.49,
              "z": -28.69
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.9083637355463996,
              "z": 0.4181809703276693,
              "w": 0
            }
          },
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
          },
          "cullingMask": 2147483647,
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "depthTextureFormat": 35,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          }
        },
        {
          "_$id": "alvat92a",
          "_$type": "Sprite3D",
          "name": "ForestTreePineTall2",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -16.59149,
              "y": 1.719039,
              "z": -10.68468
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 2,
              "y": 2,
              "z": 2
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "69d99f62-4099-423a-9d31-335b17f05516",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 1.30265,
                "y": 1.30265,
                "z": -0.5687096,
                "w": -0.1561384
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "9y5tf9w2",
          "_$type": "Sprite3D",
          "name": "ForestTreePineShort2",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -16.46,
              "y": 1.719039,
              "z": -15.26
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 2,
              "y": 2,
              "z": 2
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4fc8370b-4540-4d40-abe3-d862a334bd6f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 1.104336,
                "y": 1.104336,
                "z": -0.1597117,
                "w": -0.03719968
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "lvayz6h6",
          "_$type": "Sprite3D",
          "name": "ForestTreePineTall",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 16.19,
              "y": 0.6645193,
              "z": -15.77
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "69d99f62-4099-423a-9d31-335b17f05516",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.6493806,
                "y": 0.6493806,
                "z": 0.0780884,
                "w": -0.04365361
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "1vmrlqxv",
          "_$type": "Sprite3D",
          "name": "ForestTreePineShort",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 12.22205,
              "y": 0.6645193,
              "z": -15.88
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4fc8370b-4540-4d40-abe3-d862a334bd6f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.5521679,
                "y": 0.5521679,
                "z": 0.3549953,
                "w": 0.5146662
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "3kjdc3ns",
          "_$type": "Sprite3D",
          "name": "ForestLadder",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.4000003,
              "y": 0.89,
              "z": -14.86
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "18434353-c97f-461e-a097-ceb8526707a1",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 2.946686,
                "y": 2.946686,
                "z": -1.829357,
                "w": -0.8602492
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "afkj5ogz",
          "_$type": "Sprite3D",
          "name": "ForestTreeDTall",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 16.07,
              "y": -0.4038629,
              "z": -12.67346
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4f711b8f-94b5-413b-a95c-04c8579baef3",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.8878361,
                "y": 0.8878361,
                "z": -0.4453978,
                "w": 0.1598928
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "3faq5zur",
          "_$type": "Sprite3D",
          "name": "ForestGroundDirt",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.23,
              "y": 0.7,
              "z": -15.1
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "a47c946c-3156-4d94-b9d6-e6bac3728752",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 5.079448,
                "y": 5.079448,
                "z": -4.011275,
                "w": -2.386754
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ae8xvngr",
          "_$type": "Sprite3D",
          "name": "ForestTreeDShort",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 12.06228,
              "y": -0.4038629,
              "z": -12.72
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "b703fab8-c6d8-4e9a-b7e3-703538e384b4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.6905392,
                "y": 0.6905392,
                "z": -0.2040495,
                "w": 0.006018847
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "z55pics3",
          "_$type": "Sprite3D",
          "name": "ForestTreeAppleTall",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 14.64,
              "y": -0.4038629,
              "z": -9.48
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2109a682-6d95-4bb2-8ef4-baffb88e5abd",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.6153144,
                "y": 0.6153144,
                "z": 0.4981513,
                "w": 0.4311235
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "evlj9c0c",
          "_$type": "Sprite3D",
          "name": "ForestGrass02",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.579999,
              "y": 0.89,
              "z": -12.28
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "1ace3b89-8073-4d30-ae35-20e9d476846b",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 1.004972,
                "y": 1.004972,
                "z": -0.1304097,
                "w": 0.102476
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "yg9e9kqn",
          "_$type": "Sprite3D",
          "name": "ForestTreeAppleShort",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 12.10023,
              "y": -0.4038629,
              "z": -9.54
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "1622d9d2-0cf3-44aa-88ff-6e06852e5dfe",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.4689533,
                "y": 0.4689533,
                "z": 0.3517563,
                "w": -0.08196335
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "gdw18f7l",
          "_$type": "Sprite3D",
          "name": "ForestGround02",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -7.3,
              "y": 0.7,
              "z": -15.71
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "5c7cd60c-fbc5-4883-91f8-a4fbe313f008",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.9005219,
                "y": 0.9005219,
                "z": -0.1131316,
                "w": 0.09273088
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "e7xugz4a",
          "_$type": "Sprite3D",
          "name": "ForestGrass01",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.579999,
              "y": 0.89,
              "z": -13.7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "6058174f-c394-4673-b92f-5d19d6c8bd97",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.9276664,
                "y": 0.9276664,
                "z": -0.4173081,
                "w": 0.1682153
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "mijnar53",
          "_$type": "Sprite3D",
          "name": "ForestCrate",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -10.61,
              "y": 0.46,
              "z": -15.57
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "ffc26580-bc8c-4ec7-a8f7-94d0bae454f4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 2.15543,
                "y": 2.15543,
                "z": -1.538008,
                "w": -1.280796
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "qnal0baa",
          "_$type": "Sprite3D",
          "name": "ForestCastleWindow",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.08000064,
              "y": 0.57,
              "z": -11.35
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.8138332,
                "y": 0.8138332,
                "z": 0.7534275,
                "w": -0.5353826
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "47ro7rlb",
          "_$type": "Sprite3D",
          "name": "ForestBarrel",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -12.93,
              "y": 0.89,
              "z": -15.98
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "44f7368c-ebd7-4e66-b3ca-254e7c313ffd",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.4256855,
                "y": 0.4256855,
                "z": -0.06598703,
                "w": 0.7033857
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "rx91e7r7",
          "_$type": "Sprite3D",
          "name": "ForestFlag_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.5,
              "z": -16.39
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "Animator",
              "cullingMode": 0,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "WavingFlag",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "WavingFlag"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "gzvfvfht",
              "_$type": "Sprite3D",
              "name": "FlagArm",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 5.960464e-8,
                  "y": 1.192093e-7,
                  "z": 9.313226e-10
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.477714407953109,
                  "y": 0.5213339086792974,
                  "z": 0.5213338086792957,
                  "w": 0.4777143079531073
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 100,
                  "y": 100,
                  "z": 100
                }
              },
              "_$child": [
                {
                  "_$id": "26ykq3bv",
                  "_$type": "Sprite3D",
                  "name": "Bone",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.01827183,
                      "y": 0.00008924804,
                      "z": 0.001548129
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7059061714696359,
                      "y": 0.026297798937131005,
                      "z": -0.026244808939272685,
                      "w": -0.7073302714120784
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "86g3y49q",
                      "_$type": "Sprite3D",
                      "name": "Bone.001",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -5.649861e-10,
                          "y": 0.002051845,
                          "z": 2.910383e-13
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.004647061754442634,
                          "y": -0.707090862636311,
                          "z": -0.004646539754470217,
                          "w": -0.7070921626362423
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "7ob37lvn",
                          "_$type": "Sprite3D",
                          "name": "Bone.002",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -7.858034e-12,
                              "y": 0.003045771,
                              "z": -1.02329e-9
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 2.9834199999997243e-7,
                              "y": -3.095250999999714e-7,
                              "z": 6.007212999999444e-10,
                              "w": -0.9999999999999076
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "80l8h0ke",
                              "_$type": "Sprite3D",
                              "name": "Bone.003",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 1.164153e-12,
                                  "y": 0.00284927,
                                  "z": -5.957389e-10
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -1.7699269999999706e-7,
                                  "y": 4.686034999999922e-8,
                                  "z": -1.930402999999968e-10,
                                  "w": -0.9999999999999833
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "935y5bki",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -5.820766e-13,
                                      "y": 0.002603644,
                                      "z": -1.146692e-9
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 2.6096959999999986e-8,
                                      "y": -1.3595579999999993e-8,
                                      "z": 7.821653999999996e-11,
                                      "w": -0.9999999999999996
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "ea8qloep",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.002603642
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "x4j0ibam",
              "_$type": "Sprite3D",
              "name": "ForestFlag",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.297746e-16,
                  "y": 1.417845e-14,
                  "z": -1.316389e-16
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999999742,
                  "y": -2.0116569999999485e-7,
                  "z": 7.549788999999806e-8,
                  "w": -7.549791999999806e-8
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "26ykq3bv"
                    },
                    {
                      "_$ref": "86g3y49q"
                    },
                    {
                      "_$ref": "7ob37lvn"
                    },
                    {
                      "_$ref": "80l8h0ke"
                    },
                    {
                      "_$ref": "935y5bki"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "26ykq3bv"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -0.01845598,
                      "y": -0.0008193646,
                      "z": -0.00079147
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 0.007153567,
                      "y": 0.01107846,
                      "z": 0.0008299659
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "y059aq0e",
          "_$type": "Sprite3D",
          "name": "ForestCatapult_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.42,
              "z": -11.78
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.9238786795712227,
              "w": -0.3826854915380701
            }
          },
          "_$child": [
            {
              "_$id": "b9mj1lip",
              "_$type": "Sprite3D",
              "name": "ForestCatapultBase",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "be1f9338-89d8-4ff9-98bc-5c1128569cb8",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.4521322,
                    "y": 0.4521322,
                    "z": 0.3368411,
                    "w": 0.05767037
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "a0ifdhfl",
              "_$type": "Sprite3D",
              "name": "ForestCatapultArm",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 1.098547,
                  "z": 0.8224926
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.042885839106419826,
                  "w": -0.9990799791829172
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1890787,
                  "y": 0.1890787,
                  "z": 0.1890787
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "a6dbfcb7-6a33-4cb0-ae2c-799274e738e2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.01562499,
                    "y": 0.01562499,
                    "z": 0.2880859,
                    "w": 0.9542274
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "SphereColliderShape",
                    "localOffset": {
                      "_$type": "Vector3"
                    }
                  }
                }
              ],
              "_$child": [
                {
                  "_$id": "vx3xglwm",
                  "_$type": "Sprite3D",
                  "name": "ForestCatapultArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.03702145,
                      "y": -0.6822539,
                      "z": -1.681838
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 5.288802,
                      "y": 5.288802,
                      "z": 5.288802
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "797962e3-5e37-4e3c-aac5-73adf3b89d46",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "_scaleInLightmap": 1,
                      "lightmapIndex": 2,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1463282,
                        "y": 0.1463282,
                        "z": 0.406719,
                        "w": -0.04529629
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Rigidbody3D",
                      "isKinematic": true,
                      "gravity": {
                        "_$type": "Vector3",
                        "y": -10
                      },
                      "linearFactor": {
                        "_$type": "Vector3",
                        "x": 1,
                        "y": 1,
                        "z": 1
                      },
                      "linearVelocity": {
                        "_$type": "Vector3"
                      },
                      "angularFactor": {
                        "_$type": "Vector3",
                        "x": 1,
                        "y": 1,
                        "z": 1
                      },
                      "angularVelocity": {
                        "_$type": "Vector3"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "npo9kf1w",
              "_$type": "Sprite3D",
              "name": "ForestCatapultWheels",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "cp2xgjmi",
                  "_$type": "Sprite3D",
                  "name": "ForestCatapultWheelFL",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.155,
                      "y": -0.077,
                      "z": 0.713
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": 0.9999999999999607,
                      "w": -2.808802999999889e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c6393929-9618-421e-a701-3b65e99daa38",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "_scaleInLightmap": 1,
                      "lightmapIndex": 2,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.5253727,
                        "y": 0.5253727,
                        "z": -0.415533,
                        "w": 0.6053934
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "bfw7q429",
                  "_$type": "Sprite3D",
                  "name": "ForestCatapultWheelRL",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.155,
                      "y": -0.07699966,
                      "z": -0.674
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": 0.9999999999999607,
                      "w": -2.808802999999889e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c6393929-9618-421e-a701-3b65e99daa38",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "_scaleInLightmap": 1,
                      "lightmapIndex": 1,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.5253727,
                        "y": 0.5253727,
                        "z": 0.5211091,
                        "w": 0.6386573
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "59y31wlg",
                  "_$type": "Sprite3D",
                  "name": "ForestCatapultWheelFR",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.144,
                      "y": -0.07699966,
                      "z": 0.7129993
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.9999999999956082,
                      "y": -2.808803999987664e-7,
                      "z": 0.000002950428999987042,
                      "w": -8.348875999963333e-13
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c6393929-9618-421e-a701-3b65e99daa38",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "_scaleInLightmap": 1,
                      "lightmapIndex": 2,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.5253727,
                        "y": 0.5253727,
                        "z": -0.2922199,
                        "w": 0.5966043
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "v39kv0zt",
                  "_$type": "Sprite3D",
                  "name": "ForestCatapultWheelRR",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.144,
                      "y": -0.07699966,
                      "z": -0.6739998
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.9999999999956082,
                      "y": -2.808803999987664e-7,
                      "z": 0.000002950428999987042,
                      "w": -8.348875999963333e-13
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c6393929-9618-421e-a701-3b65e99daa38",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "_scaleInLightmap": 1,
                      "lightmapIndex": 2,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.5253727,
                        "y": 0.5253727,
                        "z": -0.3608455,
                        "w": 0.6053934
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "r9gjaxes",
              "_$type": "Sprite3D",
              "name": "ForestCannonBall",
              "active": false,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04639551,
                  "y": 0.9469995,
                  "z": -0.8730965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.5062801732818619,
                  "w": -0.8623690544898326
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ef408b0f-8f9c-4343-86f2-61d305914f32",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Rigidbody3D",
                  "colliderShape": {
                    "_$type": "SphereColliderShape",
                    "localOffset": {
                      "_$type": "Vector3",
                      "x": -9.983778e-7,
                      "z": -0.000001803041
                    },
                    "radius": 0.4770797
                  },
                  "gravity": {
                    "_$type": "Vector3",
                    "y": -10
                  },
                  "linearFactor": {
                    "_$type": "Vector3",
                    "x": 1,
                    "y": 1,
                    "z": 1
                  },
                  "linearVelocity": {
                    "_$type": "Vector3"
                  },
                  "angularFactor": {
                    "_$type": "Vector3",
                    "x": 1,
                    "y": 1,
                    "z": 1
                  },
                  "angularVelocity": {
                    "_$type": "Vector3"
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "asngrdl6",
          "_$type": "Sprite3D",
          "name": "ForestCastleDoorR_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -11.41,
              "y": 2,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "26d5dda5-630e-4523-bdad-fa1e6c36a56d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.3046429,
                "y": 0.3046429,
                "z": 0.4619781,
                "w": -0.01618659
              },
              "sharedMaterials": [
                {
                  "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "a3nmto8h",
          "_$type": "Sprite3D",
          "name": "ForestCastleDoorL_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -9.68,
              "y": 2,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "930081d5-61b4-411a-98bb-fccd9e800104",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.3098885,
                "y": 0.3098885,
                "z": -0.02139324,
                "w": 0.3510545
              },
              "sharedMaterials": [
                {
                  "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ul3mk5c6",
          "_$type": "Sprite3D",
          "name": "ForestCastle_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -15.2,
              "z": -3.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.999999999999968,
              "w": -2.533196999999919e-7
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "53a5b72b-00bb-48c4-a24b-bc8c13d446fd",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 7.095942,
                "y": 7.095942,
                "z": -0.6110739,
                "w": -4.675084
              },
              "sharedMaterials": [
                {
                  "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                  "_$type": "Material"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "4ipxghrb",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04958476,
                  "y": 3.320244,
                  "z": -2.618187
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 2.533196999999919e-7,
                  "w": -0.999999999999968
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.7213196,
                    "w": 0.4151442
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jargcxyo",
              "_$type": "Sprite3D",
              "name": "ForestCastleDoorR_Red",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7775294,
                  "y": 1.9625,
                  "z": 2.581101
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.999999999999968,
                  "w": -2.533196999999919e-7
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "26d5dda5-630e-4523-bdad-fa1e6c36a56d",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.3046429,
                    "y": 0.3046429,
                    "z": 0.2227203,
                    "w": -0.01618659
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "q1met95z",
              "_$type": "Sprite3D",
              "name": "ForestCastleDoorL_Red",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.7700018,
                  "y": 1.959,
                  "z": 2.560001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.999999999999968,
                  "w": -2.533196999999919e-7
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "930081d5-61b4-411a-98bb-fccd9e800104",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.3098885,
                    "y": 0.3098885,
                    "z": -0.02139324,
                    "w": 0.2274056
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "i8msbxwf",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Red",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.373418,
                  "y": 6.730244,
                  "z": 2.294812
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "96w6v1sz",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "csack4y5",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "8lzpjawh",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "4xja4nah",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "eitlp4st",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "jsk4e99b",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "vczl603r",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "4k0sy1l0",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "csack4y5"
                        },
                        {
                          "_$ref": "8lzpjawh"
                        },
                        {
                          "_$ref": "4xja4nah"
                        },
                        {
                          "_$ref": "eitlp4st"
                        },
                        {
                          "_$ref": "jsk4e99b"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "csack4y5"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ll73seu0",
              "_$type": "Sprite3D",
              "name": "ForestBanner_Red",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 5.799999,
                  "z": 2.91
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "5tq3tlz0",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -9.313229e-10,
                      "z": 4.656613e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "yuazcj71"
                        },
                        {
                          "_$ref": "8p6y2c58"
                        },
                        {
                          "_$ref": "d3fm9sfp"
                        },
                        {
                          "_$ref": "w47gte39"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "yuazcj71"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "g2twt13w",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "yuazcj71",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "8p6y2c58",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "d3fm9sfp",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "w47gte39",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "k42ig885",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5nk97mrw",
              "_$type": "Sprite3D",
              "name": "ForestBanner (1)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.76,
                  "y": 5.799999,
                  "z": 2.910001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "zoorz54o",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "voflqmql",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "pk3gv0a0",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "0vhjdkqd",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "m21sg02d",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "1uvi9172",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fs4qu1y7",
              "_$type": "Sprite3D",
              "name": "ForestBanner (2)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.72,
                  "y": 5.799999,
                  "z": 2.910001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "a7i6s93m",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "1q0hvyxv",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "21106erj",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "xwu9vrry",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "n2mjt4a9",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "xirrwkmb",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "czn1e2e0",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.792583,
                  "y": 3.320244,
                  "z": 0.01481388
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071072811863575,
                  "w": 0.7071062811863841
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.5815525,
                    "w": -0.5353826
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rxn4tb9m",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.789417,
                  "y": 3.320244,
                  "z": 0.01481106
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071060811862198,
                  "w": -0.7071074811861825
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.66749,
                    "w": -0.5353826
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fgjnjcx6",
              "_$type": "Sprite3D",
              "name": "ForestBanner_Red (1)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.73,
                  "y": 5.8,
                  "z": 2.9
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "si1h4pvz",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.13,
                      "y": -9.313229e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "spdcyhu9"
                        },
                        {
                          "_$ref": "l0355fxe"
                        },
                        {
                          "_$ref": "903d59cf"
                        },
                        {
                          "_$ref": "56rrs6ui"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "spdcyhu9"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "pxni228w",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "spdcyhu9",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "l0355fxe",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "903d59cf",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "56rrs6ui",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "770abc5e",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "g4jubg05",
              "_$type": "Sprite3D",
              "name": "ForestBanner_Red (2)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.74,
                  "y": 5.799999,
                  "z": 2.9
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "bvzdwa7y",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.13,
                      "y": -9.313229e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "w857cse2"
                        },
                        {
                          "_$ref": "wb5p2f6t"
                        },
                        {
                          "_$ref": "2h9x4jb2"
                        },
                        {
                          "_$ref": "zruf865c"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "w857cse2"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "z1c5hzou",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "w857cse2",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "wb5p2f6t",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "2h9x4jb2",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "zruf865c",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "r59glv1g",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "irz7v8ky",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Red (1)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.37,
                  "y": 6.730244,
                  "z": -2.17
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "86o0xces",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "c24f5qlg",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "jr436rng",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "lw9y0vv1",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "8dxu37wv",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "tc6qquxg",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "cb7hcit5",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "obacw414",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "c24f5qlg"
                        },
                        {
                          "_$ref": "jr436rng"
                        },
                        {
                          "_$ref": "lw9y0vv1"
                        },
                        {
                          "_$ref": "8dxu37wv"
                        },
                        {
                          "_$ref": "tc6qquxg"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "c24f5qlg"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wqvhisl6",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Red (2)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.35,
                  "y": 6.730244,
                  "z": 2.29
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "60v3c1x4",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "3blhvj4y",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "s32q7ufn",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "2jogw8b3",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "xww28dmv",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "j7jdy6aq",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "4d6d3lxd",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ojqbne3y",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "3blhvj4y"
                        },
                        {
                          "_$ref": "s32q7ufn"
                        },
                        {
                          "_$ref": "2jogw8b3"
                        },
                        {
                          "_$ref": "xww28dmv"
                        },
                        {
                          "_$ref": "j7jdy6aq"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "3blhvj4y"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "slqmw3km",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Red (3)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.353418,
                  "y": 6.730244,
                  "z": -2.174811
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "2ym52vee",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "5xddne38",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "5qx87qo7",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "z81qk8ek",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "ovsbt49n",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "etqz42mm",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "95sp7w1w",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "pr1pakfi",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "5xddne38"
                        },
                        {
                          "_$ref": "5qx87qo7"
                        },
                        {
                          "_$ref": "z81qk8ek"
                        },
                        {
                          "_$ref": "ovsbt49n"
                        },
                        {
                          "_$ref": "etqz42mm"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "5xddne38"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "3q7awus4",
          "_$type": "Sprite3D",
          "name": "ForestBrazzierRed",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -6.68,
              "y": 0.51,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "fa5ccc88-7733-488b-a2c6-815825bd380a",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.5850204,
                "y": 0.5850204,
                "z": -0.03557944,
                "w": 0.5012483
              },
              "sharedMaterials": [
                {
                  "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "976ibjsp",
          "_$type": "Sprite3D",
          "name": "ForestBanner_Red",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.069999,
              "y": 2.01,
              "z": -16.77
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.9999999999956475,
              "w": -0.000002950428999987158
            }
          },
          "_$comp": [
            {
              "_$type": "Animator",
              "cullingMode": 0,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "BannerWave",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "BannerWave"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "3yququrc",
              "_$type": "Sprite3D",
              "name": "ForestBanner",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -9.313229e-10,
                  "z": 4.656613e-10
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7071067311865435,
                  "y": 6.609428291505107e-22,
                  "z": 3.7433901651001118e-22,
                  "w": -0.7071068311865479
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7b678caf-fb63-46fd-9ce1-0b46bd481525",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "4mgbbuih"
                    },
                    {
                      "_$ref": "jjsiud95"
                    },
                    {
                      "_$ref": "pbijjdue"
                    },
                    {
                      "_$ref": "3h58lhno"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "4mgbbuih"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -0.008893594,
                      "y": -0.001370283,
                      "z": -0.0009526766
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 0.008560672,
                      "y": 0.01764591,
                      "z": 0.001464485
                    }
                  }
                }
              ]
            },
            {
              "_$id": "d4aqtg6c",
              "_$type": "Sprite3D",
              "name": "ForestBanner.001",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.862645e-9,
                  "y": 3.72529e-9
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071068311865479,
                  "w": -0.7071067311865435
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 100,
                  "y": 100,
                  "z": 100
                }
              },
              "_$child": [
                {
                  "_$id": "4mgbbuih",
                  "_$type": "Sprite3D",
                  "name": "Bone",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.000144603,
                      "y": -0.000002681693,
                      "z": -0.0005369997
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7078193218380874,
                      "y": 3.0939770954573286e-8,
                      "z": -3.087746095265086e-8,
                      "w": -0.7063935217940976
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "jjsiud95",
                      "_$type": "Sprite3D",
                      "name": "Bone.001",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.788788e-13,
                          "y": 0.003656744,
                          "z": 6.006662e-13
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -1.0326039999999906e-7,
                          "y": -8.74227899999992e-8,
                          "z": -9.027513999999918e-15,
                          "w": -0.9999999999999909
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "pbijjdue",
                          "_$type": "Sprite3D",
                          "name": "Bone.002",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -1.975965e-11,
                              "y": 0.00303058,
                              "z": -6.006173e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 9.863316e-37,
                              "y": 3.543105e-15,
                              "z": 9.53751e-15,
                              "w": -1
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "3h58lhno",
                              "_$type": "Sprite3D",
                              "name": "Bone.002_end",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.110304e-11,
                                  "y": 0.003724969,
                                  "z": -1.182695e-12
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 1.530218e-41,
                                  "y": 5.285486e-19,
                                  "z": -5.100087e-16,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "sk7hrnvr",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "y": 0.003724969
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "w": -1
                                    }
                                  }
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "6amxiebr",
          "_$type": "Sprite3D",
          "name": "ForestFlag_Blue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 8.079999,
              "z": -15.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.9999999999999947,
              "w": -1.0430809999999945e-7
            }
          },
          "_$comp": [
            {
              "_$type": "Animator",
              "cullingMode": 0,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "WavingFlag",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "WavingFlag"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "weyjvp0d",
              "_$type": "Sprite3D",
              "name": "FlagArm",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 5.960464e-8,
                  "y": 1.192093e-7,
                  "z": 9.313226e-10
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.477714407953109,
                  "y": 0.5213339086792974,
                  "z": 0.5213338086792957,
                  "w": 0.4777143079531073
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 100,
                  "y": 100,
                  "z": 100
                }
              },
              "_$child": [
                {
                  "_$id": "qlrgnux5",
                  "_$type": "Sprite3D",
                  "name": "Bone",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.01827183,
                      "y": 0.00008924804,
                      "z": 0.001548129
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7059061714696359,
                      "y": 0.026297798937131005,
                      "z": -0.026244808939272685,
                      "w": -0.7073302714120784
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "igtqns7y",
                      "_$type": "Sprite3D",
                      "name": "Bone.001",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -5.649861e-10,
                          "y": 0.002051845,
                          "z": 2.910383e-13
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.004647061754442634,
                          "y": -0.707090862636311,
                          "z": -0.004646539754470217,
                          "w": -0.7070921626362423
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "kdu7r61i",
                          "_$type": "Sprite3D",
                          "name": "Bone.002",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -7.858034e-12,
                              "y": 0.003045771,
                              "z": -1.02329e-9
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 2.9834199999997243e-7,
                              "y": -3.095250999999714e-7,
                              "z": 6.007212999999444e-10,
                              "w": -0.9999999999999076
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "v49l84a0",
                              "_$type": "Sprite3D",
                              "name": "Bone.003",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 1.164153e-12,
                                  "y": 0.00284927,
                                  "z": -5.957389e-10
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -1.7699269999999706e-7,
                                  "y": 4.686034999999922e-8,
                                  "z": -1.930402999999968e-10,
                                  "w": -0.9999999999999833
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "loaq04z4",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -5.820766e-13,
                                      "y": 0.002603644,
                                      "z": -1.146692e-9
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 2.6096959999999986e-8,
                                      "y": -1.3595579999999993e-8,
                                      "z": 7.821653999999996e-11,
                                      "w": -0.9999999999999996
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "9pup9dyc",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.002603642
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "voqxiao8",
              "_$type": "Sprite3D",
              "name": "ForestFlag",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.297746e-16,
                  "y": 1.417845e-14,
                  "z": -1.316389e-16
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999999742,
                  "y": -2.0116569999999485e-7,
                  "z": 7.549788999999806e-8,
                  "w": -7.549791999999806e-8
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "qlrgnux5"
                    },
                    {
                      "_$ref": "igtqns7y"
                    },
                    {
                      "_$ref": "kdu7r61i"
                    },
                    {
                      "_$ref": "v49l84a0"
                    },
                    {
                      "_$ref": "loaq04z4"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "qlrgnux5"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -0.01845598,
                      "y": -0.0008193646,
                      "z": -0.00079147
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 0.007153567,
                      "y": 0.01107846,
                      "z": 0.0008299659
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "xqxsyl71",
          "_$type": "Sprite3D",
          "name": "ForestCastleDoorR_Blue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 6.649999,
              "y": 2,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "26d5dda5-630e-4523-bdad-fa1e6c36a56d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.3046429,
                "y": 0.3046429,
                "z": 0.7012359,
                "w": -0.01618659
              },
              "sharedMaterials": [
                {
                  "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "w2r7fuv9",
          "_$type": "Sprite3D",
          "name": "ForestCastleDoorL_Blue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 8.649999,
              "y": 2,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "930081d5-61b4-411a-98bb-fccd9e800104",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.3098885,
                "y": 0.3098885,
                "z": -0.02139324,
                "w": 0.4747036
              },
              "sharedMaterials": [
                {
                  "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "iidlkkgk",
          "_$type": "Sprite3D",
          "name": "ForestCastle_Blue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 18.1,
              "z": -3.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.999999999999968,
              "w": -2.533196999999919e-7
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "53a5b72b-00bb-48c4-a24b-bc8c13d446fd",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 7.095942,
                "y": 7.095942,
                "z": -0.6110739,
                "w": -4.362521
              },
              "sharedMaterials": [
                {
                  "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                  "_$type": "Material"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "ds0cey9v",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04958476,
                  "y": 3.320244,
                  "z": -2.618187
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 2.533196999999919e-7,
                  "w": -0.999999999999968
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.495615,
                    "w": -0.5353826
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gweq2kl6",
              "_$type": "Sprite3D",
              "name": "ForestCastleDoorR_Blue",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7775294,
                  "y": 1.9625,
                  "z": 2.581101
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.999999999999968,
                  "w": -2.533196999999919e-7
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "26d5dda5-630e-4523-bdad-fa1e6c36a56d",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.3046429,
                    "y": 0.3046429,
                    "z": -0.01653747,
                    "w": -0.01618659
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jxjnkr7a",
              "_$type": "Sprite3D",
              "name": "ForestCastleDoorL_Blue",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.7700018,
                  "y": 1.959,
                  "z": 2.560001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.999999999999968,
                  "w": -2.533196999999919e-7
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "930081d5-61b4-411a-98bb-fccd9e800104",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.3098885,
                    "y": 0.3098885,
                    "z": -0.02139324,
                    "w": 0.1037566
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "k8gmoyhb",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Blue",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.373418,
                  "y": 6.730244,
                  "z": 2.294812
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "rqvxyjnt",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "vd62ef8j",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "reka7k3x",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "bhwxj297",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "pc0bzw0x",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "tfrra7hw",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "c2sw1ay3",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ozacwe4t",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "vd62ef8j"
                        },
                        {
                          "_$ref": "reka7k3x"
                        },
                        {
                          "_$ref": "bhwxj297"
                        },
                        {
                          "_$ref": "pc0bzw0x"
                        },
                        {
                          "_$ref": "tfrra7hw"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "vd62ef8j"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "hnwx9yn6",
              "_$type": "Sprite3D",
              "name": "ForestBanner_Blue",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 5.799999,
                  "z": 2.91
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "178pnram",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -9.313229e-10,
                      "z": 4.656613e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "modr70zz"
                        },
                        {
                          "_$ref": "z0euae27"
                        },
                        {
                          "_$ref": "k07wzuo0"
                        },
                        {
                          "_$ref": "bz5ks9vs"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "modr70zz"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "ym7l3oq2",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "modr70zz",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "z0euae27",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "k07wzuo0",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "bz5ks9vs",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "orl213jl",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "cr8wu8w9",
              "_$type": "Sprite3D",
              "name": "ForestBanner (1)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.76,
                  "y": 5.799999,
                  "z": 2.910001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "4li3jqbg",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -9.313229e-10,
                      "z": 4.656613e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "jc96y6cw"
                        },
                        {
                          "_$ref": "npk2vu0r"
                        },
                        {
                          "_$ref": "0xidxa25"
                        },
                        {
                          "_$ref": "y4eo5cmb"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "jc96y6cw"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "gbtsbxo7",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "jc96y6cw",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "npk2vu0r",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "0xidxa25",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "y4eo5cmb",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "wvx0h4gf",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ifgrtt2s",
              "_$type": "Sprite3D",
              "name": "ForestBanner (2)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.72,
                  "y": 5.799999,
                  "z": 2.910001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7,
                  "y": 0.7,
                  "z": 0.7
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "BannerWave",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "BannerWave"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "et028qta",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -9.313229e-10,
                      "z": 4.656613e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": 6.609428291505107e-22,
                      "z": 3.7433901651001118e-22,
                      "w": -0.7071068311865479
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "4mkphzmh"
                        },
                        {
                          "_$ref": "0axn5tsv"
                        },
                        {
                          "_$ref": "zf2h089y"
                        },
                        {
                          "_$ref": "vvn6uqeo"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "4mkphzmh"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.008893594,
                          "y": -0.001370283,
                          "z": -0.0009526766
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.008560672,
                          "y": 0.01764591,
                          "z": 0.001464485
                        }
                      }
                    }
                  ]
                },
                {
                  "_$id": "8jx8bfh6",
                  "_$type": "Sprite3D",
                  "name": "ForestBanner.001",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.862645e-9,
                      "y": 3.72529e-9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865479,
                      "w": -0.7071067311865435
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "4mkphzmh",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.000144603,
                          "y": -0.000002681693,
                          "z": -0.0005369997
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7078193218380874,
                          "y": 3.0939770954573286e-8,
                          "z": -3.087746095265086e-8,
                          "w": -0.7063935217940976
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "0axn5tsv",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -8.788788e-13,
                              "y": 0.003656744,
                              "z": 6.006662e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -1.0326039999999906e-7,
                              "y": -8.74227899999992e-8,
                              "z": -9.027513999999918e-15,
                              "w": -0.9999999999999909
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "zf2h089y",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.975965e-11,
                                  "y": 0.00303058,
                                  "z": -6.006173e-13
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 9.863316e-37,
                                  "y": 3.543105e-15,
                                  "z": 9.53751e-15,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "vvn6uqeo",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -1.110304e-11,
                                      "y": 0.003724969,
                                      "z": -1.182695e-12
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 1.530218e-41,
                                      "y": 5.285486e-19,
                                      "z": -5.100087e-16,
                                      "w": -1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "0ix1oa69",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.002_end_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "y": 0.003724969
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "38z869dl",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.792583,
                  "y": 3.320244,
                  "z": 0.01481388
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071072811863575,
                  "w": 0.7071062811863841
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.6353821,
                    "w": 0.4151442
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "pdcixi6o",
              "_$type": "Sprite3D",
              "name": "ForestCastleWindow",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.789417,
                  "y": 3.320244,
                  "z": 0.01481106
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071060811862198,
                  "w": -0.7071074811861825
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "0f8654b9-6ea7-4616-b364-8c4144d2b1d2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "_scaleInLightmap": 1,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.8138332,
                    "y": 0.8138332,
                    "z": 0.4096775,
                    "w": -0.5353826
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "a970cb3b-eac9-4444-b108-626eadcbc5c6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nci2vtdh",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Blue (1)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.37,
                  "y": 6.730244,
                  "z": -2.21
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "yivfrahq",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "l3owftb9",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "3ulmhxtz",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "utq1l1ej",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "hsryvnvk",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "ecznhto8",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "sm5t3sfs",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "7fpqz4oe",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "l3owftb9"
                        },
                        {
                          "_$ref": "3ulmhxtz"
                        },
                        {
                          "_$ref": "utq1l1ej"
                        },
                        {
                          "_$ref": "hsryvnvk"
                        },
                        {
                          "_$ref": "ecznhto8"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "l3owftb9"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "z14iw8bc",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Blue (2)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.43,
                  "y": 6.730244,
                  "z": -2.21
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "bhpqqewj",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "dl5wavrp",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "n3yvpq1g",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "31cg1gvn",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "kqiahr0z",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "nfc9jle1",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "3gp5ebla",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ztprmfoc",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "dl5wavrp"
                        },
                        {
                          "_$ref": "n3yvpq1g"
                        },
                        {
                          "_$ref": "31cg1gvn"
                        },
                        {
                          "_$ref": "kqiahr0z"
                        },
                        {
                          "_$ref": "nfc9jle1"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "dl5wavrp"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "iy78jgm1",
              "_$type": "Sprite3D",
              "name": "ForestFlag_Blue (3)",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.386,
                  "y": 6.730244,
                  "z": 2.295
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -3.5762779999997715e-7,
                  "w": 0.999999999999936
                }
              },
              "_$comp": [
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": [
                    {
                      "_$type": "AnimatorControllerLayer",
                      "name": "Base Layer",
                      "states": [
                        {
                          "_$type": "AnimatorState",
                          "name": "WavingFlag",
                          "clipStart": 0,
                          "clip": {
                            "_$uuid": "fff84ccd-1629-459a-9ed6-c8e4a0f51db9",
                            "_$type": "AnimationClip"
                          },
                          "soloTransitions": []
                        }
                      ],
                      "defaultStateName": "WavingFlag"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "fijew6v5",
                  "_$type": "Sprite3D",
                  "name": "FlagArm",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.960464e-8,
                      "y": 1.192093e-7,
                      "z": 9.313226e-10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.477714407953109,
                      "y": 0.5213339086792974,
                      "z": 0.5213338086792957,
                      "w": 0.4777143079531073
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 100,
                      "y": 100,
                      "z": 100
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "jkq6cdiu",
                      "_$type": "Sprite3D",
                      "name": "Bone",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.01827183,
                          "y": 0.00008924804,
                          "z": 0.001548129
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -0.7059061714696359,
                          "y": 0.026297798937131005,
                          "z": -0.026244808939272685,
                          "w": -0.7073302714120784
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "ggz2at4z",
                          "_$type": "Sprite3D",
                          "name": "Bone.001",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -5.649861e-10,
                              "y": 0.002051845,
                              "z": 2.910383e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.004647061754442634,
                              "y": -0.707090862636311,
                              "z": -0.004646539754470217,
                              "w": -0.7070921626362423
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "6c1dgsb8",
                              "_$type": "Sprite3D",
                              "name": "Bone.002",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -7.858034e-12,
                                  "y": 0.003045771,
                                  "z": -1.02329e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 2.9834199999997243e-7,
                                  "y": -3.095250999999714e-7,
                                  "z": 6.007212999999444e-10,
                                  "w": -0.9999999999999076
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "s72emdzn",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.003",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.164153e-12,
                                      "y": 0.00284927,
                                      "z": -5.957389e-10
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.7699269999999706e-7,
                                      "y": 4.686034999999922e-8,
                                      "z": -1.930402999999968e-10,
                                      "w": -0.9999999999999833
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "5wu4k2vt",
                                      "_$type": "Sprite3D",
                                      "name": "Bone.003_end",
                                      "isStatic": true,
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -5.820766e-13,
                                          "y": 0.002603644,
                                          "z": -1.146692e-9
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.6096959999999986e-8,
                                          "y": -1.3595579999999993e-8,
                                          "z": 7.821653999999996e-11,
                                          "w": -0.9999999999999996
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "ssyamb8f",
                                          "_$type": "Sprite3D",
                                          "name": "Bone.003_end_end",
                                          "isStatic": true,
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "y": 0.002603642
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "w": -1
                                            }
                                          }
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "o440a107",
                  "_$type": "Sprite3D",
                  "name": "ForestFlag",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.297746e-16,
                      "y": 1.417845e-14,
                      "z": -1.316389e-16
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.9999999999999742,
                      "y": -2.0116569999999485e-7,
                      "z": 7.549788999999806e-8,
                      "w": -7.549791999999806e-8
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "08cd1001-f417-4ca4-83e8-60c119fda1ff",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "SkinnedMeshRenderer",
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                          "_$type": "Material"
                        }
                      ],
                      "_bones": [
                        {
                          "_$ref": "jkq6cdiu"
                        },
                        {
                          "_$ref": "ggz2at4z"
                        },
                        {
                          "_$ref": "6c1dgsb8"
                        },
                        {
                          "_$ref": "s72emdzn"
                        },
                        {
                          "_$ref": "5wu4k2vt"
                        }
                      ],
                      "rootBone": {
                        "_$ref": "jkq6cdiu"
                      },
                      "localBounds": {
                        "_$type": "Bounds",
                        "min": {
                          "_$type": "Vector3",
                          "x": -0.01845598,
                          "y": -0.0008193646,
                          "z": -0.00079147
                        },
                        "max": {
                          "_$type": "Vector3",
                          "x": 0.007153567,
                          "y": 0.01107846,
                          "z": 0.0008299659
                        }
                      }
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "jzew3g29",
          "_$type": "Sprite3D",
          "name": "ForestBrazzierBlue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.61,
              "y": 0.56,
              "z": -12.4
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "fa5ccc88-7733-488b-a2c6-815825bd380a",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 2,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.5850204,
                "y": 0.5850204,
                "z": 0.2027018,
                "w": 0.006652325
              },
              "sharedMaterials": [
                {
                  "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "bfny07kb",
          "_$type": "Sprite3D",
          "name": "ForestBanner_Blue",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5.965627,
              "y": 2.49,
              "z": -15.59736
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.9999999999956475,
              "w": -0.000002950428999987158
            }
          },
          "_$comp": [
            {
              "_$type": "Animator",
              "cullingMode": 0,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "BannerWave",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "8b9b600c-ae63-4b63-91c4-f44261921255",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "BannerWave"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "1txjz7vo",
              "_$type": "Sprite3D",
              "name": "ForestBanner",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -9.313229e-10,
                  "z": 4.656613e-10
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7071067311865435,
                  "y": 6.609428291505107e-22,
                  "z": 3.7433901651001118e-22,
                  "w": -0.7071068311865479
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "56ec49de-a65a-4ca6-b8ba-f0428a8d52f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "38cb6598-81d8-4985-8e6a-c9768c6414ff",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "9k80u9lx"
                    },
                    {
                      "_$ref": "r9qvtvkh"
                    },
                    {
                      "_$ref": "j3kvtcuo"
                    },
                    {
                      "_$ref": "i1hvh1i6"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "9k80u9lx"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -0.008893594,
                      "y": -0.001370283,
                      "z": -0.0009526766
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 0.008560672,
                      "y": 0.01764591,
                      "z": 0.001464485
                    }
                  }
                }
              ]
            },
            {
              "_$id": "jmloqvqz",
              "_$type": "Sprite3D",
              "name": "ForestBanner.001",
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.862645e-9,
                  "y": 3.72529e-9
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071068311865479,
                  "w": -0.7071067311865435
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 100,
                  "y": 100,
                  "z": 100
                }
              },
              "_$child": [
                {
                  "_$id": "9k80u9lx",
                  "_$type": "Sprite3D",
                  "name": "Bone",
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.000144603,
                      "y": -0.000002681693,
                      "z": -0.0005369997
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7078193218380874,
                      "y": 3.0939770954573286e-8,
                      "z": -3.087746095265086e-8,
                      "w": -0.7063935217940976
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "r9qvtvkh",
                      "_$type": "Sprite3D",
                      "name": "Bone.001",
                      "isStatic": true,
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": -8.788788e-13,
                          "y": 0.003656744,
                          "z": 6.006662e-13
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": -1.0326039999999906e-7,
                          "y": -8.74227899999992e-8,
                          "z": -9.027513999999918e-15,
                          "w": -0.9999999999999909
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "j3kvtcuo",
                          "_$type": "Sprite3D",
                          "name": "Bone.002",
                          "isStatic": true,
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -1.975965e-11,
                              "y": 0.00303058,
                              "z": -6.006173e-13
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 9.863316e-37,
                              "y": 3.543105e-15,
                              "z": 9.53751e-15,
                              "w": -1
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "i1hvh1i6",
                              "_$type": "Sprite3D",
                              "name": "Bone.002_end",
                              "isStatic": true,
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -1.110304e-11,
                                  "y": 0.003724969,
                                  "z": -1.182695e-12
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 1.530218e-41,
                                  "y": 5.285486e-19,
                                  "z": -5.100087e-16,
                                  "w": -1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "csm3cwdp",
                                  "_$type": "Sprite3D",
                                  "name": "Bone.002_end_end",
                                  "isStatic": true,
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "y": 0.003724969
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "w": -1
                                    }
                                  }
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "6cftns7x",
          "_$type": "Sprite3D",
          "name": "ForestBlock01 (1)",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -4.88,
              "y": 0.6,
              "z": -15.88
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071068811865358,
              "y": 3.725289900883996e-8,
              "z": -6.705522821591166e-8,
              "w": -0.707106681186541
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.5,
              "y": 0.5,
              "z": 0.5
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "96549bff-c4fc-48eb-858f-b60bb3cd264f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 1,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 2.74418,
                "y": 2.74418,
                "z": -1.948575,
                "w": -0.928245
              },
              "sharedMaterials": [
                {
                  "_$uuid": "66a9e8c3-07cc-4d64-8138-40e1bd8bc04b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "buk863iw",
          "_$type": "Sprite3D",
          "name": "Plane",
          "isStatic": true,
          "layer": 0,
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 8,
              "y": 1,
              "z": 8
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2fa59b0c-7e7a-4d09-9708-620796cdb312",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "_scaleInLightmap": 1,
              "lightmapIndex": 0,
              "sharedMaterials": [
                {
                  "_$uuid": "1fcde3db-c815-4e56-967e-086304ff72ed",
                  "_$type": "Material"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}