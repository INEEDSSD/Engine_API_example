{
  "_$ver": 1,
  "_$id": "e74ea2ha",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "ead5a66a-5863-4576-b5f0-2a010dd56bfa",
      "scriptPath": "../src/PostProcess/PostProcessDoF.ts",
      "camera": {
        "_$ref": "g83guwh0"
      },
      "scene": {
        "_$ref": "ft4l2l34"
      },
      "directionLight": {
        "_$ref": "si8xanks"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "ft4l2l34",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "box",
        "material": {
          "_$uuid": "d69a2340-8fcf-4550-9e97-4a21c4be5718",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.4339623,
        "g": 0.4339623,
        "b": 0.4339623,
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
          "_$id": "g83guwh0",
          "_$type": "Camera",
          "name": "MainCamera",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.6973915,
              "y": 0.784188,
              "z": 1.035858
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.03682049807387784,
              "y": -0.7500361607647549,
              "z": -0.041902327808041546,
              "w": -0.6590403655248485
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
          "fieldOfView": 26.99147,
          "enableHDR": true,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "depthTextureFormat": 35,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "postProcess": {
            "_$type": "PostProcess",
            "enable": true,
            "effects": [
              {
                "_$type": "GaussianDoF",
                "farStart": 1,
                "farEnd": 5,
                "maxRadius": 1
              }
            ]
          }
        },
        {
          "_$id": "si8xanks",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.172,
              "y": 2.017,
              "z": -1.796
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.05143376650636814,
              "y": 0.8717291407879123,
              "z": 0.3968149730463949,
              "w": 0.28280868079025745
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "intensity": 0.9,
              "lightmapBakedType": 0,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "shadowCascadesMode": 0
            }
          ]
        },
        {
          "_$id": "vjhjeaca",
          "_$type": "Sprite3D",
          "name": "远山背景",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -4.04,
              "y": 0.57,
              "z": -3.86
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "br0drnn0",
              "_$type": "Sprite3D",
              "name": "beijingshan",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.15,
                  "y": -0.9849701,
                  "z": -2.702744
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.6192,
                  "y": 1.6192,
                  "z": 1.6192
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f834ba22-4f07-41b8-9625-6a566f5d76ab",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7af07e43-2a67-4046-a5c6-077be8b96376",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "9bw65khy",
              "_$type": "Sprite3D",
              "name": "beijingshan (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.15,
                  "y": -0.9849701,
                  "z": 7.387257
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.6192,
                  "y": 1.6192,
                  "z": 1.6192
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f834ba22-4f07-41b8-9625-6a566f5d76ab",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7af07e43-2a67-4046-a5c6-077be8b96376",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "f0mq3x5m",
              "_$type": "Sprite3D",
              "name": "beijingshan (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.904001,
                  "y": -0.9849701,
                  "z": -3.812743
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.6192,
                  "y": 1.6192,
                  "z": 1.6192
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f834ba22-4f07-41b8-9625-6a566f5d76ab",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7af07e43-2a67-4046-a5c6-077be8b96376",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "a8j9nd0g",
              "_$type": "Sprite3D",
              "name": "beijingshan (3)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.904001,
                  "y": -0.9849701,
                  "z": 6.277257
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.6192,
                  "y": 1.6192,
                  "z": 1.6192
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f834ba22-4f07-41b8-9625-6a566f5d76ab",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7af07e43-2a67-4046-a5c6-077be8b96376",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            }
          ]
        },
        {
          "_$id": "oufpk296",
          "_$type": "Sprite3D",
          "name": "Plane005 (1)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": -0.067,
              "z": 0.03
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "6c7a3321-045a-4e2d-9c8c-19b4cb01776c",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "u811wej0",
          "_$type": "Sprite3D",
          "name": "Plane005 (2)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.74,
              "y": -0.067,
              "z": 0.03
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "83b59061-f4aa-4d00-8436-c56a48174558",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "49rtxlt3",
          "_$type": "Sprite3D",
          "name": "Plane005 (3)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": -0.067,
              "z": 10.09
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "6c7a3321-045a-4e2d-9c8c-19b4cb01776c",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "azzlm1g3",
          "_$type": "Sprite3D",
          "name": "Plane005 (4)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.74,
              "y": -0.067,
              "z": 10.09
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "83b59061-f4aa-4d00-8436-c56a48174558",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "00eisbzu",
          "_$type": "Sprite3D",
          "name": "Plane005 (5)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": -0.067,
              "z": -10
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "6c7a3321-045a-4e2d-9c8c-19b4cb01776c",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "q8iwjbzx",
          "_$type": "Sprite3D",
          "name": "Plane005 (6)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.74,
              "y": -0.067,
              "z": -10
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.378828999999895e-22,
              "y": -1.5099579999999828e-7,
              "z": 1.2300169999999861e-14,
              "w": 0.9999999999999887
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 3.023529
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9a395e41-785d-427d-9e6a-b160f1266a0e",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "83b59061-f4aa-4d00-8436-c56a48174558",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ny3rapj4",
          "_$type": "Sprite3D",
          "name": "cao",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.79732,
              "y": -0.1868816,
              "z": 0.2699648
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "izxhybyb",
              "_$type": "Sprite3D",
              "name": "cao",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9643198,
                  "y": 0.2198816,
                  "z": 0.7056352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.00726636,
                  "y": 0.00726636,
                  "z": 0.00726636
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "108425c8-d0b3-47a4-95f5-130e25662952",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "0ea70635-bd07-45a4-995a-61a2900bcb23",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "cq6t6m9q",
              "_$type": "Sprite3D",
              "name": "cao (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9386597,
                  "y": 0.2061816,
                  "z": 0.7242053
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.00726636,
                  "y": 0.00726636,
                  "z": 0.00726636
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "108425c8-d0b3-47a4-95f5-130e25662952",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "0ea70635-bd07-45a4-995a-61a2900bcb23",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gvng8z1v",
              "_$type": "Sprite3D",
              "name": "cao (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9643198,
                  "y": 0.1987816,
                  "z": 0.7682352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.00726636,
                  "y": 0.00726636,
                  "z": 0.00726636
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "108425c8-d0b3-47a4-95f5-130e25662952",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "0ea70635-bd07-45a4-995a-61a2900bcb23",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "km127cbi",
              "_$type": "Sprite3D",
              "name": "cao (3)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9386597,
                  "y": 0.2101816,
                  "z": 0.7759352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 0
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.00726636,
                  "y": 0.00726636,
                  "z": 0.00726636
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "108425c8-d0b3-47a4-95f5-130e25662952",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "0ea70635-bd07-45a4-995a-61a2900bcb23",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "six2wdvj",
          "_$type": "Sprite3D",
          "name": "changjing",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.79732,
              "y": -0.1868816,
              "z": 0.2699648
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "r6h51g59",
              "_$type": "Sprite3D",
              "name": "ttangguo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.8393198,
                  "y": 0.1578816,
                  "z": 0.2230352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.077844184582771,
                  "y": -0.11086169228506049,
                  "z": -0.18504388712267184,
                  "w": -0.9733492322639743
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5193601,
                  "y": 0.5193599,
                  "z": 0.51936
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "65bcbd8c-b406-4f8a-90f7-f44071e9082b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "dfce55fc-3f13-48d8-b668-3a50f6420038",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "jjebnpx9",
              "_$type": "Sprite3D",
              "name": "huacong",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9773198,
                  "y": 0.2463816,
                  "z": 0.07803521
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "gcmnjzej",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9723198,
                  "y": 0.2269816,
                  "z": 0.3490352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "agq5oqin",
              "_$type": "Sprite3D",
              "name": "caoduo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.00932,
                  "y": 0.2475816,
                  "z": 0.1566352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "iqhfzw17",
              "_$type": "Sprite3D",
              "name": "shu2",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.8573198,
                  "y": 0.2898816,
                  "z": -0.1669648
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02236879910774762,
                  "y": -0.0025466348984191757,
                  "z": 0.11308819548910916,
                  "w": -0.9933298603778046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.506184,
                  "y": 0.506184,
                  "z": 0.506184
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ee6f5564-44fe-4390-a759-497f2a8e1892",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "n0302l15",
              "_$type": "Sprite3D",
              "name": "shushu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.64168,
                  "y": 0.3678816,
                  "z": -1.262965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.43582,
                  "y": 0.43582,
                  "z": 0.43582
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "7bl5bdry",
              "_$type": "Sprite3D",
              "name": "gaochu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.3373197,
                  "y": 0.3178816,
                  "z": -0.8569648
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "8d9e4314-60a9-433c-a1c5-e402530359ad",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "d34374b5-92b7-4c12-9fef-00845b7be3f4",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "ng4qo8y4",
              "_$type": "Sprite3D",
              "name": "ttangguo (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.77611,
                  "y": 0.25754,
                  "z": -1.061965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09524100150414402,
                  "y": -0.22676510358130814,
                  "z": -0.37533620592769606,
                  "w": -0.8936607141136106
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.3447269,
                  "y": 0.3447269,
                  "z": 0.3447269
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "65bcbd8c-b406-4f8a-90f7-f44071e9082b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "dfce55fc-3f13-48d8-b668-3a50f6420038",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "ikks0w5h",
              "_$type": "Sprite3D",
              "name": "huashu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.18863,
                  "y": -1.713641,
                  "z": -1.320399
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0321843282481543,
                  "y": 0.14966989185322266,
                  "z": -0.004874541734670709,
                  "w": -0.988200046210653
                }
              },
              "_$child": [
                {
                  "_$id": "z67xa8n1",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "fclxg1mr",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "3q5ts41v",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "qtx0o0cu",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "o0gnwluf",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "3vy40euc",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "6ls72k11",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "uc1ful1s",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.7885,
                      "z": 1.2071
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "f160jw4w",
              "_$type": "Sprite3D",
              "name": "danshu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.6743197,
                  "y": 0.3478816,
                  "z": 0.6610352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2880753,
                  "y": 0.2880753,
                  "z": 0.2880753
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "qvo2vtv1",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7283198,
                  "y": 0.3378816,
                  "z": 0.6240352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "6b5f2q9l",
              "_$type": "Sprite3D",
              "name": "mao",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.14668,
                  "y": 0.109,
                  "z": 1.611
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07228517312638723,
                  "w": -0.9973840051585389
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ad3baaff-586a-4a29-a138-03dc2986097d",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7e3c78cb-ed25-4e3c-b460-8cec9a102f58",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "ereezygo",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.00232,
                  "y": 0.2228816,
                  "z": 1.088035
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.43582,
                  "y": 0.43582,
                  "z": 0.43582
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "b5h3z7ax",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.8476802,
                  "y": -1.515118,
                  "z": -3.418965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13979158709390377,
                  "y": 0.38839936414147896,
                  "z": 0.10182059059953201,
                  "w": -0.9051170164361207
                }
              }
            },
            {
              "_$id": "vt1divd3",
              "_$type": "Sprite3D",
              "name": "huacong (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.5016621,
                  "y": 0.4795837,
                  "z": -0.4878905
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051034284811190614,
                  "y": -0.23065132174435243,
                  "z": 0.16524101557788115,
                  "w": -0.9575441902712293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1700001,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "x5uf3opd",
              "_$type": "Sprite3D",
              "name": "huacong (3)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.5984319,
                  "y": 0.4403715,
                  "z": -0.5368772
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051034284811190614,
                  "y": -0.23065132174435243,
                  "z": 0.16524101557788115,
                  "w": -0.9575441902712293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1700001,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "6nvz6zi8",
              "_$type": "Sprite3D",
              "name": "huacong (4)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.5142633,
                  "y": 0.4542978,
                  "z": -0.6033325
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051034284811190614,
                  "y": -0.23065132174435243,
                  "z": 0.16524101557788115,
                  "w": -0.9575441902712293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1700001,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "tnmzp0i4",
              "_$type": "Sprite3D",
              "name": "huacong (5)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.6629585,
                  "y": 0.4006095,
                  "z": -0.6447155
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051034284811190614,
                  "y": -0.23065132174435243,
                  "z": 0.16524101557788115,
                  "w": -0.9575441902712293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.1700001,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "7q9niui0",
              "_$type": "Sprite3D",
              "name": "huacong (6)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.6341053,
                  "y": 0.4030383,
                  "z": -0.7304139
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03916512503689626,
                  "y": -0.23296057047864707,
                  "z": 0.11602758529669081,
                  "w": -0.9647450777450627
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.17,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "k4mlwk9o",
              "_$type": "Sprite3D",
              "name": "huacong (7)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7338207,
                  "y": 0.3751142,
                  "z": -0.7811949
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03916512503689626,
                  "y": -0.23296057047864707,
                  "z": 0.11602758529669081,
                  "w": -0.9647450777450627
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.17,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "9sarrxyw",
              "_$type": "Sprite3D",
              "name": "huacong (9)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7418352,
                  "y": 0.3266702,
                  "z": -0.8936937
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03916512503689626,
                  "y": -0.23296057047864707,
                  "z": 0.11602758529669081,
                  "w": -0.9647450777450627
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.17,
                  "y": 0.17,
                  "z": 0.17
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "xvdhp06a",
              "_$type": "Sprite3D",
              "name": "danshu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.832,
                  "y": 0.385,
                  "z": -0.779
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.4311624,
                  "y": 0.4311624,
                  "z": 0.4311624
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "cwiu5snh",
              "_$type": "Sprite3D",
              "name": "huacong (8)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.8943,
                  "y": 0.351,
                  "z": -0.515
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.046957350014862335,
                  "y": -0.7642606002418938,
                  "z": -0.039444560012484475,
                  "w": -0.6419851002031928
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "u9v3tynj",
              "_$type": "Sprite3D",
              "name": "caoduo (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.921,
                  "y": 0.38,
                  "z": -0.802
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            }
          ]
        },
        {
          "_$id": "94ovt63l",
          "_$type": "Sprite3D",
          "name": "changjing (1)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.15,
              "y": -0.1868816,
              "z": -2.64
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "ug1fwmer",
              "_$type": "Sprite3D",
              "name": "ttangguo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.8393198,
                  "y": 0.1578816,
                  "z": 0.2230352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.077844184582771,
                  "y": -0.11086169228506049,
                  "z": -0.18504388712267184,
                  "w": -0.9733492322639743
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5193601,
                  "y": 0.5193599,
                  "z": 0.51936
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "65bcbd8c-b406-4f8a-90f7-f44071e9082b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "dfce55fc-3f13-48d8-b668-3a50f6420038",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "1vbb3kor",
              "_$type": "Sprite3D",
              "name": "huacong",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9773198,
                  "y": 0.2463816,
                  "z": 0.07803521
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "f5cbl5gv",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9723198,
                  "y": 0.2269816,
                  "z": 0.3490352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "vkii50yd",
              "_$type": "Sprite3D",
              "name": "caoduo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.00932,
                  "y": 0.2475816,
                  "z": 0.1566352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "6c35oevh",
              "_$type": "Sprite3D",
              "name": "shu2",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.8573198,
                  "y": 0.2898816,
                  "z": -0.1669648
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02236879910774762,
                  "y": -0.0025466348984191757,
                  "z": 0.11308819548910916,
                  "w": -0.9933298603778046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.506184,
                  "y": 0.506184,
                  "z": 0.506184
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ee6f5564-44fe-4390-a759-497f2a8e1892",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "bk5v04aw",
              "_$type": "Sprite3D",
              "name": "shushu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.257,
                  "y": 0.408,
                  "z": -1.2178
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.17504192213027e-8,
                  "y": -2.14260192329167e-9,
                  "z": 0.09803401649023667,
                  "w": -0.9951830643709688
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6333773,
                  "y": 0.6333773,
                  "z": 0.6333773
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "pat37ki1",
              "_$type": "Sprite3D",
              "name": "huashu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.18863,
                  "y": -1.713641,
                  "z": -1.320399
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0321843282481543,
                  "y": 0.14966989185322266,
                  "z": -0.004874541734670709,
                  "w": -0.988200046210653
                }
              },
              "_$child": [
                {
                  "_$id": "xe8fkdbd",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "hx8sqzs2",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "h46ekhui",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "hlkt3hoe",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "u7se1wvv",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "oe2t6fsc",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "a7nmk1sp",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "j540b0qv",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.7885,
                      "z": 1.2071
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9prkc9fv",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.8476802,
                  "y": -1.515118,
                  "z": -3.418965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13979158709390377,
                  "y": 0.38839936414147896,
                  "z": 0.10182059059953201,
                  "w": -0.9051170164361207
                }
              }
            },
            {
              "_$id": "v1ydmh65",
              "_$type": "Sprite3D",
              "name": "danshu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.6743197,
                  "y": 0.3478816,
                  "z": 0.6610352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2880753,
                  "y": 0.2880753,
                  "z": 0.2880753
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "1xbxqwfx",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9729297,
                  "y": 0.2907674,
                  "z": 1.088035
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1678308068395197e-8,
                  "y": -2.778880752393066e-9,
                  "z": 0.12714678867082493,
                  "w": -0.9918839116200526
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.43582,
                  "y": 0.43582,
                  "z": 0.43582
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "tupj3ypt",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7283198,
                  "y": 0.3378816,
                  "z": 0.6240352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "wg0gen0u",
              "_$type": "Sprite3D",
              "name": "mao",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.14668,
                  "y": 0.1208816,
                  "z": 1.195035
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07228517312638723,
                  "w": -0.9973840051585389
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ad3baaff-586a-4a29-a138-03dc2986097d",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7e3c78cb-ed25-4e3c-b460-8cec9a102f58",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "c4nf072n",
              "_$type": "Sprite3D",
              "name": "shushu (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.36,
                  "y": 0.389,
                  "z": -1.4539
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1850770001543057e-8,
                  "y": 4.6411790003277507e-10,
                  "z": -0.021235560001499613,
                  "w": -0.9997745000706021
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.943352,
                  "y": 0.943352,
                  "z": 0.943352
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "r0bnho5t",
              "_$type": "Sprite3D",
              "name": "danshu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.909,
                  "y": 0.551,
                  "z": 0.321
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2880753,
                  "y": 0.2880753,
                  "z": 0.2880753
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            }
          ]
        },
        {
          "_$id": "fwwlsxpv",
          "_$type": "Sprite3D",
          "name": "changjing (2)",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.814,
              "y": -0.1868816,
              "z": 3.03
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "qw0ubj8z",
              "_$type": "Sprite3D",
              "name": "ttangguo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.242806,
                  "y": 0.1214288,
                  "z": 0.9119003
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.017550039498545698,
                  "y": 0.2623032925052525,
                  "z": -0.5685125837559865,
                  "w": -0.7795398777263393
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5193601,
                  "y": 0.5193599,
                  "z": 0.51936
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "65bcbd8c-b406-4f8a-90f7-f44071e9082b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "dfce55fc-3f13-48d8-b668-3a50f6420038",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "u7o4jb50",
              "_$type": "Sprite3D",
              "name": "huacong",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9773198,
                  "y": 0.2463816,
                  "z": 0.07803521
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "1paam828",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.9723198,
                  "y": 0.2269816,
                  "z": 0.3490352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -1.4057490316140797e-8,
                  "y": -0.7657018172199714,
                  "z": -1.6734950376354557e-8,
                  "w": -0.6431957144649153
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2117201,
                  "y": 0.21172,
                  "z": 0.2117201
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "emswru1n",
              "_$type": "Sprite3D",
              "name": "caoduo",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.00932,
                  "y": 0.2475816,
                  "z": 0.1566352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "vvrhoa7q",
              "_$type": "Sprite3D",
              "name": "shu2",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.8573198,
                  "y": 0.2898816,
                  "z": -0.1669648
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02236879910774762,
                  "y": -0.0025466348984191757,
                  "z": 0.11308819548910916,
                  "w": -0.9933298603778046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.506184,
                  "y": 0.506184,
                  "z": 0.506184
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ee6f5564-44fe-4390-a759-497f2a8e1892",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "33ufycnk",
              "_$type": "Sprite3D",
              "name": "shushu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.543,
                  "y": 0.219,
                  "z": -1.849
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.43582,
                  "y": 0.43582,
                  "z": 0.43582
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "vp00hfdx",
              "_$type": "Sprite3D",
              "name": "gaochu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.333,
                  "y": -0.055,
                  "z": -0.599
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2111309947278649,
                  "w": -0.9774577755919804
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "8d9e4314-60a9-433c-a1c5-e402530359ad",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "d34374b5-92b7-4c12-9fef-00845b7be3f4",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "p7b37s7r",
              "_$type": "Sprite3D",
              "name": "ttangguo (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.7533197,
                  "y": 0.2798816,
                  "z": -1.061965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09524100150414402,
                  "y": -0.22676510358130814,
                  "z": -0.37533620592769606,
                  "w": -0.8936607141136106
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.29059,
                  "y": 0.29059,
                  "z": 0.29059
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "65bcbd8c-b406-4f8a-90f7-f44071e9082b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "dfce55fc-3f13-48d8-b668-3a50f6420038",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "1kgzfg47",
              "_$type": "Sprite3D",
              "name": "huashu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.7169484,
                  "y": -1.382906,
                  "z": -1.376349
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.017473979872299168,
                  "y": 0.1492362989093727,
                  "z": -0.01238334990950178,
                  "w": -0.9885695927754776
                }
              },
              "_$child": [
                {
                  "_$id": "oflj0hm8",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "18i8gxoe",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "4hiyr7jg",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "c9mpbrrf",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "8cj7pr2p",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "4q0dei2o",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "xvgl0jxr",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "trg9ckus",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "0wkl6lu2",
              "_$type": "Sprite3D",
              "name": "danshu",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.061,
                  "y": 0.403,
                  "z": 0.6610352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.2880753,
                  "y": 0.2880753,
                  "z": 0.2880753
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "blth5tgh",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.024,
                  "y": 0.393,
                  "z": 0.6240352
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -8.146033999999973e-8,
                  "w": -0.9999999999999967
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "czs4thpu",
              "_$type": "Sprite3D",
              "name": "mao",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.007,
                  "y": 0.211,
                  "z": 1.092
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06250483755538849,
                  "w": -0.9980446609657178
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.234586,
                  "y": 2.234586,
                  "z": 2.234586
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "ad3baaff-586a-4a29-a138-03dc2986097d",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7e3c78cb-ed25-4e3c-b460-8cec9a102f58",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "su9rzvjy",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.563,
                  "y": 0.202,
                  "z": 1.088035
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.43582,
                  "y": 0.43582,
                  "z": 0.43582
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "446b40d1-2a45-4346-8854-50330f5c36c2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f78bede-d665-4727-bf8b-ab56ea3e8aad",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "nn91y69v",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.8476802,
                  "y": -1.515118,
                  "z": -3.418965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13979158709390377,
                  "y": 0.38839936414147896,
                  "z": 0.10182059059953201,
                  "w": -0.9051170164361207
                }
              },
              "_$child": [
                {
                  "_$id": "tplbj3m6",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.919,
                      "y": 1.449,
                      "z": 1.643
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.12988258391151936,
                      "y": -0.5843178276208882,
                      "z": -0.17381877846916832,
                      "w": -0.781978403136787
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1700001,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "amjywbhe",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.949,
                      "y": 1.498,
                      "z": 1.542
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.12988258391151936,
                      "y": -0.5843178276208882,
                      "z": -0.17381877846916832,
                      "w": -0.781978403136787
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1700001,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "9xk83nsl",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.842,
                      "y": 1.479,
                      "z": 1.555
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.12988258391151936,
                      "y": -0.5843178276208882,
                      "z": -0.17381877846916832,
                      "w": -0.781978403136787
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1700001,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "n277uf6o",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.914,
                      "y": 1.546,
                      "z": 1.424
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.12988258391151936,
                      "y": -0.5843178276208882,
                      "z": -0.17381877846916832,
                      "w": -0.781978403136787
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1700001,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "qv56jd2f",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.829,
                      "y": 1.559,
                      "z": 1.393
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.15961170085852902,
                      "y": -0.5769067031031004,
                      "z": -0.21360450114894877,
                      "w": -0.7720595041528002
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "qm9vapuy",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858,
                      "y": 1.618,
                      "z": 1.298
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.15961170085852902,
                      "y": -0.5769067031031004,
                      "z": -0.21360450114894877,
                      "w": -0.7720595041528002
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "erfm2y6h",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.786,
                      "y": 1.628,
                      "z": 1.199
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.15961170085852902,
                      "y": -0.5769067031031004,
                      "z": -0.21360450114894877,
                      "w": -0.7720595041528002
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ck9rzmwa",
              "_$type": "Sprite3D",
              "name": "shucong",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.14,
                  "y": 0.15,
                  "z": 2.07
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -7.450580728253787e-8,
                  "y": 2.9802318913015292e-8,
                  "z": -0.04700054828574155,
                  "w": -0.9988948635671492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.164401,
                  "y": 2.1644,
                  "z": 2.1644
                }
              },
              "_$child": [
                {
                  "_$id": "talf58ec",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.08500093,
                      "y": 0.01,
                      "z": 0.0370078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 5.960463999999987e-8,
                      "y": -2.9802319999999934e-8,
                      "z": -7.450580999999984e-9,
                      "w": -0.9999999999999978
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.2880753,
                      "y": 0.2880754,
                      "z": 0.2880753
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "stiq064i",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
                  "layer": 0,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 1.490116e-8,
                      "z": 7.45058e-9,
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gk18ldte",
              "_$type": "Sprite3D",
              "name": "shucong1",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.848,
                  "y": 0.207,
                  "z": 3.172
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -7.450580728253787e-8,
                  "y": 2.9802318913015292e-8,
                  "z": -0.04700054828574155,
                  "w": -0.9988948635671492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.1644,
                  "y": 2.1644,
                  "z": 2.1644
                }
              },
              "_$child": [
                {
                  "_$id": "yf5lcs2w",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.08500093,
                      "y": 0.01,
                      "z": 0.0370078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 5.960463999999987e-8,
                      "y": -2.9802319999999934e-8,
                      "z": -7.450580999999984e-9,
                      "w": -0.9999999999999978
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.2880753,
                      "y": 0.2880754,
                      "z": 0.2880753
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ngnxaawe",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
                  "layer": 0,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 1.490116e-8,
                      "z": 7.45058e-9,
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nh50dfmt",
              "_$type": "Sprite3D",
              "name": "huashu (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.543,
                  "y": -1.564,
                  "z": 1.305
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.017473979872299168,
                  "y": 0.1492362989093727,
                  "z": -0.01238334990950178,
                  "w": -0.9885695927754776
                }
              },
              "_$child": [
                {
                  "_$id": "yzqfrwm0",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "fis0oiih",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "h1thaolq",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "laglyzhd",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "wz06a2tp",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "8u1gk8tp",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "22w1uzwy",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "eyxn2ytx",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ypx1awnn",
              "_$type": "Sprite3D",
              "name": "huashu (3)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.937,
                  "y": -0.628,
                  "z": 2.216
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.008578815147474488,
                  "y": 0.14143068594523067,
                  "z": 0.11008708906002165,
                  "w": -0.9837706022371363
                }
              },
              "_$child": [
                {
                  "_$id": "rqz9zbhy",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "03xheb38",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "22etxejm",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "4injruif",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "y8udc8kc",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "85tiuulc",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "bbiwvch6",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "mm74zhf1",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gsw62ykg",
              "_$type": "Sprite3D",
              "name": "shucong1 (1)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.11,
                  "y": 0.19,
                  "z": -3.45
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -7.450580728253787e-8,
                  "y": 2.9802318913015292e-8,
                  "z": -0.04700054828574155,
                  "w": -0.9988948635671492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.1644,
                  "y": 2.1644,
                  "z": 2.1644
                }
              },
              "_$child": [
                {
                  "_$id": "udtk88sg",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.08500093,
                      "y": 0.01,
                      "z": 0.0370078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 5.960463999999987e-8,
                      "y": -2.9802319999999934e-8,
                      "z": -7.450580999999984e-9,
                      "w": -0.9999999999999978
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.2880753,
                      "y": 0.2880754,
                      "z": 0.2880753
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "odcz9xg8",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
                  "layer": 0,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 1.490116e-8,
                      "z": 7.45058e-9,
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "yqxapuuo",
              "_$type": "Sprite3D",
              "name": "shucong1 (2)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.31,
                  "y": 0.21,
                  "z": -2.67
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -7.450580728253787e-8,
                  "y": 2.9802318913015292e-8,
                  "z": -0.04700054828574155,
                  "w": -0.9988948635671492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.1644,
                  "y": 2.1644,
                  "z": 2.1644
                }
              },
              "_$child": [
                {
                  "_$id": "d9z04pgy",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.08500093,
                      "y": 0.01,
                      "z": 0.0370078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 5.960463999999987e-8,
                      "y": -2.9802319999999934e-8,
                      "z": -7.450580999999984e-9,
                      "w": -0.9999999999999978
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.2880753,
                      "y": 0.2880754,
                      "z": 0.2880753
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "y8r40wds",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
                  "layer": 0,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 1.490116e-8,
                      "z": 7.45058e-9,
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mqtwpso2",
              "_$type": "Sprite3D",
              "name": "shucong1 (3)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.14,
                  "y": 0.24,
                  "z": -0.89
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -7.450580728253787e-8,
                  "y": 2.9802318913015292e-8,
                  "z": -0.04700054828574155,
                  "w": -0.9988948635671492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.1644,
                  "y": 2.1644,
                  "z": 2.1644
                }
              },
              "_$child": [
                {
                  "_$id": "5c4wpic5",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.08500093,
                      "y": 0.01,
                      "z": 0.0370078
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 5.960463999999987e-8,
                      "y": -2.9802319999999934e-8,
                      "z": -7.450580999999984e-9,
                      "w": -0.9999999999999978
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.2880753,
                      "y": 0.2880754,
                      "z": 0.2880753
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "c1ddbf76-fa62-42e2-85ae-ffe0d652e2f5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a6bfc4ab-572e-49e1-a352-95c6152c7d2a",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "uz7f2wzy",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
                  "layer": 0,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 1.490116e-8,
                      "z": 7.45058e-9,
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "216353cd-62f8-4342-a1b6-672541c3e805",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5kegjt8y",
              "_$type": "Sprite3D",
              "name": "huashu (4)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -4.035,
                  "y": -0.992,
                  "z": -5.239
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.008578815147474488,
                  "y": 0.14143068594523067,
                  "z": 0.11008708906002165,
                  "w": -0.9837706022371363
                }
              },
              "_$child": [
                {
                  "_$id": "ldrua22s",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ms90mp5r",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "qhg7zhap",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "9bmoldff",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "d3dayfq6",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "y8h9hwi1",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "5qj3ljgy",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "b8dllypn",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gq29q6ke",
              "_$type": "Sprite3D",
              "name": "huashu (5)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -4.957,
                  "y": -1.732,
                  "z": -4.257
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.026110019867144434,
                  "y": 0.13926409929138273,
                  "z": -0.013176579932953632,
                  "w": -0.9898232949634839
                }
              },
              "_$child": [
                {
                  "_$id": "cfkeiyks",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "6mvmapmi",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "a5jzv5xd",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "aj63ihn0",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "gptpalyn",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "cy2woxs2",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "vdj3bdzt",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "p3hw2ywy",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "k58l6gzv",
              "_$type": "Sprite3D",
              "name": "huashu (6)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -5.953,
                  "y": -0.953,
                  "z": -2.651
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.008578815147474488,
                  "y": 0.14143068594523067,
                  "z": 0.11008708906002165,
                  "w": -0.9837706022371363
                }
              },
              "_$child": [
                {
                  "_$id": "htbazcpp",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "q03ohsh3",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "2dwrksnc",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "6g2ai3m5",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "o3hs6ohg",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "tx0od42f",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "sctbedd7",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "sv6isvw9",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rs146yoi",
              "_$type": "Sprite3D",
              "name": "huashu (7)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -4.009,
                  "y": -0.921,
                  "z": -9.115
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.008578815147474488,
                  "y": 0.14143068594523067,
                  "z": 0.11008708906002165,
                  "w": -0.9837706022371363
                }
              },
              "_$child": [
                {
                  "_$id": "6cib7d5t",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "w98eiznp",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "lq8gvmm9",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "cr2requ1",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "u9ueu2im",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "gxh4iv5p",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "v71ismol",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "anh2urgc",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "x9gozb6d",
              "_$type": "Sprite3D",
              "name": "huashu (8)",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.326,
                  "y": -2.727,
                  "z": -4.436
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.017473979872299168,
                  "y": 0.1492362989093727,
                  "z": -0.01238334990950178,
                  "w": -0.9885695927754776
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.6419,
                  "y": 1.6419,
                  "z": 1.6419
                }
              },
              "_$child": [
                {
                  "_$id": "dzswsdgn",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.907459,
                      "y": 1.760724,
                      "z": 1.684426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "isfstji8",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.940159,
                      "y": 1.760724,
                      "z": 1.573826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "0pnbog74",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.833459,
                      "y": 1.760724,
                      "z": 1.591426
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "6rrst2z7",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.866159,
                      "y": 1.760724,
                      "z": 1.480826
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -1.750781077738489e-8,
                      "y": -0.5985789265782068,
                      "z": -1.3082360580885274e-8,
                      "w": -0.8010638355689772
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "86u1uzd1",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.825573,
                      "y": 1.76974,
                      "z": 1.409779
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "nblbb2bo",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.858101,
                      "y": 1.781528,
                      "z": 1.299758
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "b0fjcczp",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.751471,
                      "y": 1.776713,
                      "z": 1.317121
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "2oxwsmlt",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.784,
                      "y": 1.775,
                      "z": 1.206
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.030628980304916995,
                      "y": -0.5977948059511545,
                      "z": -0.0409900304080631,
                      "w": -0.800014407964287
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.17,
                      "y": 0.17,
                      "z": 0.17
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "ea9df797-ce82-4b3c-8fd8-3164b19972c4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "_scaleInLightmap": 1,
                      "sharedMaterials": [
                        {
                          "_$uuid": "6ab9605a-83fd-4814-845c-aa973b097db3",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "tzydzm09",
          "_$type": "Sprite3D",
          "name": "GameObject",
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -12.03562,
              "y": -0.567804,
              "z": 4.278206
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          }
        },
        {
          "_$id": "93ajwe05",
          "_$type": "Sprite3D",
          "name": "Cylinder",
          "layer": 1,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.162,
              "y": 0.45,
              "z": 1.09
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.5,
              "y": 0.055261,
              "z": 0.5
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "bface039-1891-4174-bdba-fc637c8314b8",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "62e3cb7e-5d73-47c2-aee6-2498b3f1764c",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "CapsuleColliderShape",
                "localOffset": {
                  "_$type": "Vector3",
                  "x": 5.960464e-8,
                  "z": -8.940697e-8
                },
                "radius": 0.5000001,
                "length": 2
              }
            }
          ]
        },
        {
          "_$id": "ycdj5zus",
          "_$type": "Sprite3D",
          "name": "LayaMonkey",
          "layer": 1,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.162,
              "y": 0.45,
              "z": 1.09
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.7690480150791091,
              "w": -0.639191012532938
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.1,
              "y": 0.1,
              "z": 0.1
            }
          },
          "_$comp": [
            {
              "_$type": "Animator",
              "cullingMode": 0,
              "controllerLayers": []
            }
          ],
          "_$child": [
            {
              "_$id": "jodjnejd",
              "_$type": "Sprite3D",
              "name": "Bip001",
              "layer": 1,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04679767,
                  "y": 0.574905,
                  "z": -0.2284267
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.49482928257321657,
                  "y": 0.4948285825732412,
                  "z": 0.5051177822108784,
                  "w": -0.5051184822108539
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.9999999,
                  "y": 0.9999999,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$id": "jtw8byth",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Footsteps",
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.01304968,
                      "z": -0.634042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.007275574001644561,
                      "y": 0.007275586001644564,
                      "z": -0.7070689001598249,
                      "w": -0.7070698001598251
                    }
                  }
                },
                {
                  "_$id": "zphvsgxf",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Pelvis",
                  "layer": 1,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4801949942333984,
                      "y": 0.5190498937667948,
                      "z": 0.48019429423340687,
                      "w": -0.5190504937667876
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "hbog437g",
                      "_$type": "Sprite3D",
                      "name": "Bip001 Spine",
                      "layer": 1,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.2355541,
                          "y": -0.0005083084,
                          "z": 0.00006329536
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.0673850134441919,
                          "y": -0.0022200577840132086,
                          "z": -0.06986418320299641,
                          "w": -0.9952755031708257
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 0.9999999,
                          "z": 0.9999999
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "t96iem64",
                          "_$type": "Sprite3D",
                          "name": "Bip001 L Thigh",
                          "layer": 1,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2413928,
                              "y": -0.04609043,
                              "z": 0.5893101
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2479053969068333,
                              "y": 0.961169588007289,
                              "z": 0.033442109582735906,
                              "w": 0.11652279854612103
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "3uaz33wp",
                              "_$type": "Sprite3D",
                              "name": "Bip001 L Calf",
                              "layer": 1,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540975,
                                  "y": -1.907349e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 1.4252900462867721e-9,
                                  "y": -1.659892053905551e-8,
                                  "z": 0.36905431198516253,
                                  "w": -0.929407830182831
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "4i12uqfg",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Foot",
                                  "layer": 1,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.302004,
                                      "y": 3.814697e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.03174374804942606,
                                      "y": -0.11805249274596953,
                                      "z": -0.19625098794086757,
                                      "w": -0.9729036402175043
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 1,
                                      "y": 0.9999999,
                                      "z": 1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "g13lx4kh",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L Toe0",
                                      "layer": 1,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.197286941538456e-8,
                                          "y": 2.210664941182518e-8,
                                          "z": -0.7071067811865472,
                                          "w": -0.7071067811865472
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "0mtlonpi",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Toe0Nub",
                                          "layer": 1,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.846923e-14,
                                              "y": 3.582726e-23,
                                              "z": 1,
                                              "w": 9.313227e-10
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": -1,
                                              "y": -1,
                                              "z": -1
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
                        },
                        {
                          "_$id": "5fskewn6",
                          "_$type": "Sprite3D",
                          "name": "Bip001 R Thigh",
                          "layer": 1,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2249689,
                              "y": 0.112762,
                              "z": -0.586945
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2842282916644586,
                              "y": 0.9553825719815684,
                              "z": 0.014552589573217319,
                              "w": -0.07903569768212614
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "coro0fe3",
                              "_$type": "Sprite3D",
                              "name": "Bip001 R Calf",
                              "layer": 1,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540974,
                                  "y": -9.536743e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 3.04298587669858e-9,
                                  "y": 6.8008377244308765e-9,
                                  "z": 0.40842258345076626,
                                  "w": -0.9127929630137394
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 1,
                                  "y": 0.9999999,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "cxzrtuek",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Foot",
                                  "layer": 1,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.3020039,
                                      "y": 1.907349e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.012418810449050294,
                                      "y": 0.07245327261982928,
                                      "z": -0.19757930714424674,
                                      "w": -0.9775268353462768
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 0.9999999,
                                      "y": 0.9999999,
                                      "z": 0.9999999
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "k352llcb",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R Toe0",
                                      "layer": 1,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695,
                                          "z": 3.814697e-8
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -1.1873479684091355e-8,
                                          "y": -1.1791149686281846e-8,
                                          "z": -0.7071067811865475,
                                          "w": -0.7071067811865475
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "fw2zozjy",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Toe0Nub",
                                          "layer": 1,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746,
                                              "z": -3.814697e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -1.776357e-15,
                                              "y": -1.554312e-15,
                                              "z": 9.313226e-10,
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
                        },
                        {
                          "_$id": "gm653eut",
                          "_$type": "Sprite3D",
                          "name": "Bip001 Spine1",
                          "layer": 1,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.5115815,
                              "y": -0.0005630875,
                              "z": -0.000006546974
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.005887283711068041,
                              "y": 0.012753559374089807,
                              "z": -0.005980900706473573,
                              "w": -0.9998834509284251
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "cwbn1d5p",
                              "_$type": "Sprite3D",
                              "name": "Bip001 Neck",
                              "layer": 1,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.7247889,
                                  "y": -0.009294013,
                                  "z": -1.192093e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 5.364079080967106e-8,
                                  "y": 6.890805104011991e-7,
                                  "z": -0.18228080275140407,
                                  "w": -0.9832465148414339
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 1,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "6h4m1hi4",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 Head",
                                  "layer": 1,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.2215482,
                                      "y": 0.0367466,
                                      "z": -2.098083e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.02472959975429869,
                                      "y": -0.00524369594790118,
                                      "z": 0.1283306987249684,
                                      "w": -0.9914091901498391
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "utoahthy",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 HeadNub",
                                      "layer": 1,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 1.022001
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 1.136868e-13,
                                          "y": 5.684342e-14,
                                          "z": -1.490116e-8,
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                },
                                {
                                  "_$id": "5zb1kfxb",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Clavicle",
                                  "layer": 1,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939534,
                                      "y": 0.08459198,
                                      "z": 0.4362656
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.6073816426720205,
                                      "y": -0.054896834818538465,
                                      "z": 0.7700029273229401,
                                      "w": 0.18753498229942944
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "1kvaw6c2",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L UpperArm",
                                      "layer": 1,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.07348462042953068,
                                          "y": -0.3933914022994427,
                                          "z": -0.18186170106301397,
                                          "w": -0.8982035052501592
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1,
                                          "y": 0.9999999,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "nethpsbk",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Forearm",
                                          "layer": 1,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265,
                                              "z": -1.525879e-7
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.9130840132773516e-8,
                                              "y": -8.17583602774115e-8,
                                              "z": 0.5741315019480661,
                                              "w": -0.818763102778117
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 1,
                                              "z": 0.9999999
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "l33uvp4a",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 L Hand",
                                              "layer": 1,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.682883,
                                                  "y": 3.814697e-8,
                                                  "z": 1.525879e-7
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.7068251751438108,
                                                  "y": -2.1081809258637836e-8,
                                                  "z": -2.106502925922792e-8,
                                                  "w": -0.7073882751240088
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 1,
                                                  "y": 0.9999999,
                                                  "z": 1
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
                                  "_$id": "sn2jxaf6",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Clavicle",
                                  "layer": 1,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939539,
                                      "y": 0.0845945,
                                      "z": -0.4362651
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.5768870915082617,
                                      "y": 0.20370009700154856,
                                      "z": 0.7877060884050204,
                                      "w": 0.07229572893581185
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "nhv1kqna",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R UpperArm",
                                      "layer": 1,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "y": -1.907349e-8,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.19904130089635172,
                                          "y": 0.46069560207467136,
                                          "z": -0.1252301005639544,
                                          "w": -0.8558385038541362
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "skf55lj0",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Forearm",
                                          "layer": 1,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -2.0880979555802575e-8,
                                              "y": -8.188699825803221e-9,
                                              "z": 0.3456318926474332,
                                              "w": -0.9383701800382154
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999998,
                                              "y": 1,
                                              "z": 1
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "nn8oc8f1",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 R Hand",
                                              "layer": 1,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.6828828
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.7041476966742106,
                                                  "y": 0.061464599709693986,
                                                  "z": 0.06151355970946275,
                                                  "w": -0.7047085966715614
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999,
                                                  "y": 0.9999999,
                                                  "z": 1
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
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "stxo6ijk",
              "_$type": "Sprite3D",
              "name": "LayaMonkey",
              "layer": 1,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "z": -0.1750933
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071067811865476,
                  "w": -0.7071067811865476
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "3a1ceef7-650a-44f5-86ed-ef86747225f6",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "2f18af06-c35b-4c2d-9f13-27a5f20f9dd8",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "jodjnejd"
                    },
                    {
                      "_$ref": "hbog437g"
                    },
                    {
                      "_$ref": "gm653eut"
                    },
                    {
                      "_$ref": "zphvsgxf"
                    },
                    {
                      "_$ref": "1kvaw6c2"
                    },
                    {
                      "_$ref": "nethpsbk"
                    },
                    {
                      "_$ref": "t96iem64"
                    },
                    {
                      "_$ref": "3uaz33wp"
                    },
                    {
                      "_$ref": "4i12uqfg"
                    },
                    {
                      "_$ref": "6h4m1hi4"
                    },
                    {
                      "_$ref": "5zb1kfxb"
                    },
                    {
                      "_$ref": "l33uvp4a"
                    },
                    {
                      "_$ref": "5fskewn6"
                    },
                    {
                      "_$ref": "coro0fe3"
                    },
                    {
                      "_$ref": "cxzrtuek"
                    },
                    {
                      "_$ref": "nhv1kqna"
                    },
                    {
                      "_$ref": "sn2jxaf6"
                    },
                    {
                      "_$ref": "skf55lj0"
                    },
                    {
                      "_$ref": "nn8oc8f1"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "jodjnejd"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -1.353806,
                      "y": -1.779651,
                      "z": -0.8496842
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 1.797849,
                      "y": 2.123889,
                      "z": 3.207856
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