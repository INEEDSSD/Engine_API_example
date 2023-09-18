{
  "_$ver": 1,
  "_$id": "x9mzsxjw",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "9eb21397-579f-4799-b104-b539e9971d86",
      "scriptPath": "../src/3D/PostProcess/PostProcess_Blur.ts",
      "camera": {
        "_$ref": "tbzl23k8"
      },
      "scene": {
        "_$ref": "eru0znm9"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "eru0znm9",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "box",
        "material": {
          "_$uuid": "a9c4428f-86ed-4050-8588-42849fc3dcd8",
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
          "_$id": "tbzl23k8",
          "_$type": "Camera",
          "name": "MainCamera",
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
          "orthographicVerticalSize": 10,
          "fieldOfView": 26.99147,
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
          "enableHDR": true,
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "uewru2ql",
          "_$type": "Camera",
          "name": "BlurCamera",
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
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 3,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
          },
          "enableHDR": true,
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "z0wvbkfg",
          "_$type": "DirectionLight",
          "name": "Directional Light",
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
              "shadowCascadesMode": 0,
              "strength": null,
              "angle": null,
              "maxBounces": null
            }
          ]
        },
        {
          "_$id": "a3ug5xcm",
          "_$type": "Sprite3D",
          "name": "远山背景",
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
              "_$id": "hclzovyt",
              "_$type": "Sprite3D",
              "name": "beijingshan",
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
                    "_$uuid": "ca667858-9830-4592-b15f-c9930d8e57fb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "63203c65-f383-49a6-9e24-139e19d1628c",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "osa7mtpr",
              "_$type": "Sprite3D",
              "name": "beijingshan (1)",
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
                    "_$uuid": "ca667858-9830-4592-b15f-c9930d8e57fb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "63203c65-f383-49a6-9e24-139e19d1628c",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "hqa0cp2a",
              "_$type": "Sprite3D",
              "name": "beijingshan (2)",
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
                    "_$uuid": "ca667858-9830-4592-b15f-c9930d8e57fb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "63203c65-f383-49a6-9e24-139e19d1628c",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "uht423yd",
              "_$type": "Sprite3D",
              "name": "beijingshan (3)",
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
                    "_$uuid": "ca667858-9830-4592-b15f-c9930d8e57fb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "63203c65-f383-49a6-9e24-139e19d1628c",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
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
          "_$id": "utcumi21",
          "_$type": "Sprite3D",
          "name": "Plane005 (1)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "62965c9e-a100-4e6b-8ef3-7cc87f8b28d8",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "88yov5cz",
          "_$type": "Sprite3D",
          "name": "Plane005 (2)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "7b8f049d-c99b-4add-b1b6-45e040cd98ab",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "hwzuu9av",
          "_$type": "Sprite3D",
          "name": "Plane005 (3)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "62965c9e-a100-4e6b-8ef3-7cc87f8b28d8",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "974pjd2a",
          "_$type": "Sprite3D",
          "name": "Plane005 (4)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "7b8f049d-c99b-4add-b1b6-45e040cd98ab",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "f3c3642b",
          "_$type": "Sprite3D",
          "name": "Plane005 (5)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "62965c9e-a100-4e6b-8ef3-7cc87f8b28d8",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "uth93800",
          "_$type": "Sprite3D",
          "name": "Plane005 (6)",
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
                "_$uuid": "8a1e23be-cb30-486b-a2bb-c614be4b0251",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "7b8f049d-c99b-4add-b1b6-45e040cd98ab",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
            }
          ]
        },
        {
          "_$id": "tmk4x85e",
          "_$type": "Sprite3D",
          "name": "cao",
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
              "_$id": "5olc7vm8",
              "_$type": "Sprite3D",
              "name": "cao",
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
                    "_$uuid": "f5df0709-5489-48f0-8de8-fbfadf435fa0",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "2e2deab4-d9fb-4779-9d5f-eec099e7ec2b",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                }
              ]
            },
            {
              "_$id": "k9dmya1d",
              "_$type": "Sprite3D",
              "name": "cao (1)",
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
                    "_$uuid": "f5df0709-5489-48f0-8de8-fbfadf435fa0",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "2e2deab4-d9fb-4779-9d5f-eec099e7ec2b",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                }
              ]
            },
            {
              "_$id": "1lsvemmr",
              "_$type": "Sprite3D",
              "name": "cao (2)",
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
                    "_$uuid": "f5df0709-5489-48f0-8de8-fbfadf435fa0",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "2e2deab4-d9fb-4779-9d5f-eec099e7ec2b",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                }
              ]
            },
            {
              "_$id": "1bj546ts",
              "_$type": "Sprite3D",
              "name": "cao (3)",
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
                    "_$uuid": "f5df0709-5489-48f0-8de8-fbfadf435fa0",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "2e2deab4-d9fb-4779-9d5f-eec099e7ec2b",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                }
              ]
            }
          ]
        },
        {
          "_$id": "pxifqh6m",
          "_$type": "Sprite3D",
          "name": "changjing",
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
              "_$id": "hvbu7nnu",
              "_$type": "Sprite3D",
              "name": "ttangguo",
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
                    "_$uuid": "b6bf8834-791f-436f-80e7-594e56f71943",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "587e26af-9de2-493f-bd43-afb2c3458efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "swvjx86j",
              "_$type": "Sprite3D",
              "name": "huacong",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "cavbbxtg",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "dckrw7u6",
              "_$type": "Sprite3D",
              "name": "caoduo",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "0h7qdnll",
              "_$type": "Sprite3D",
              "name": "shu2",
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
                    "_$uuid": "45f745d7-1870-43f2-ae00-2c5723b0d798",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "cihydc03",
              "_$type": "Sprite3D",
              "name": "shushu",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "bnftuhrj",
              "_$type": "Sprite3D",
              "name": "gaochu",
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
                    "_$uuid": "ba5391ef-e76c-4313-9920-e2af0df6c50b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "d1487dda-3a76-40bd-b39d-442f75d8a970",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "w4owurme",
              "_$type": "Sprite3D",
              "name": "ttangguo (1)",
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
                    "_$uuid": "b6bf8834-791f-436f-80e7-594e56f71943",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "587e26af-9de2-493f-bd43-afb2c3458efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "8zwot08d",
              "_$type": "Sprite3D",
              "name": "huashu",
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
                  "_$id": "2teghts3",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "phsdvju2",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "7atprz17",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ub8c7cd2",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "sj6wjgkq",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "iff399xb",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "zz21g1j7",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "68peda4d",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "kptobvth",
              "_$type": "Sprite3D",
              "name": "danshu",
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
                    "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "4wluwsjm",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "s3d9oyk9",
              "_$type": "Sprite3D",
              "name": "mao",
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
                    "_$uuid": "159ef09c-7ac4-4da7-a17e-941697e4b7bb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e6db5428-8e2e-464c-a004-14ea03d46144",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "zj9p0xa4",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "iwioy35f",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
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
              "_$id": "zglva2u9",
              "_$type": "Sprite3D",
              "name": "huacong (2)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "41rbkt6r",
              "_$type": "Sprite3D",
              "name": "huacong (3)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "d7u0wiky",
              "_$type": "Sprite3D",
              "name": "huacong (4)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "vl1j68f9",
              "_$type": "Sprite3D",
              "name": "huacong (5)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "pj7fpjoa",
              "_$type": "Sprite3D",
              "name": "huacong (6)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "mvm2u6vn",
              "_$type": "Sprite3D",
              "name": "huacong (7)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "y8c4tqvg",
              "_$type": "Sprite3D",
              "name": "huacong (9)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "l0ky1pvy",
              "_$type": "Sprite3D",
              "name": "danshu (1)",
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
                    "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "15runczp",
              "_$type": "Sprite3D",
              "name": "huacong (8)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "5gvehmqc",
              "_$type": "Sprite3D",
              "name": "caoduo (2)",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
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
          "_$id": "2d0tka1c",
          "_$type": "Sprite3D",
          "name": "changjing (1)",
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
              "_$id": "qrlcd1qa",
              "_$type": "Sprite3D",
              "name": "ttangguo",
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
                    "_$uuid": "b6bf8834-791f-436f-80e7-594e56f71943",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "587e26af-9de2-493f-bd43-afb2c3458efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "tibga47o",
              "_$type": "Sprite3D",
              "name": "huacong",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "9pme1d01",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "m5hn2j39",
              "_$type": "Sprite3D",
              "name": "caoduo",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "anxh66ks",
              "_$type": "Sprite3D",
              "name": "shu2",
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
                    "_$uuid": "45f745d7-1870-43f2-ae00-2c5723b0d798",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "4vhzuq44",
              "_$type": "Sprite3D",
              "name": "shushu",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "nqtqlhr7",
              "_$type": "Sprite3D",
              "name": "huashu",
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
                  "_$id": "s6ctcvp6",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "xepeskpw",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "u9ijlsgf",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "4k5kpzj3",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "5no8aq79",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "vurhu3c9",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "kfhf0r6s",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "q2qcrwga",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "gw1vr8vt",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
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
              "_$id": "nkr049fe",
              "_$type": "Sprite3D",
              "name": "danshu",
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
                    "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "ykmhaujv",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "hfv0p6zs",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "uuko3nh3",
              "_$type": "Sprite3D",
              "name": "mao",
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
                    "_$uuid": "159ef09c-7ac4-4da7-a17e-941697e4b7bb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e6db5428-8e2e-464c-a004-14ea03d46144",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "t4vwwwp7",
              "_$type": "Sprite3D",
              "name": "shushu (2)",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "21x6okom",
              "_$type": "Sprite3D",
              "name": "danshu (1)",
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
                    "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
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
          "_$id": "94ugrknz",
          "_$type": "Sprite3D",
          "name": "changjing (2)",
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
              "_$id": "duhzhkws",
              "_$type": "Sprite3D",
              "name": "ttangguo",
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
                    "_$uuid": "b6bf8834-791f-436f-80e7-594e56f71943",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "587e26af-9de2-493f-bd43-afb2c3458efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "sop9k3hs",
              "_$type": "Sprite3D",
              "name": "huacong",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "sp84ny7t",
              "_$type": "Sprite3D",
              "name": "huacong (1)",
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
                    "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "z41tudbv",
              "_$type": "Sprite3D",
              "name": "caoduo",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "4jgmv8ed",
              "_$type": "Sprite3D",
              "name": "shu2",
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
                    "_$uuid": "45f745d7-1870-43f2-ae00-2c5723b0d798",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "8bgcwy7n",
              "_$type": "Sprite3D",
              "name": "shushu",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "p6d1jafm",
              "_$type": "Sprite3D",
              "name": "gaochu",
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
                    "_$uuid": "ba5391ef-e76c-4313-9920-e2af0df6c50b",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "d1487dda-3a76-40bd-b39d-442f75d8a970",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "nabwo086",
              "_$type": "Sprite3D",
              "name": "ttangguo (1)",
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
                    "_$uuid": "b6bf8834-791f-436f-80e7-594e56f71943",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "587e26af-9de2-493f-bd43-afb2c3458efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "74fenzfe",
              "_$type": "Sprite3D",
              "name": "huashu",
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
                  "_$id": "qwxg62gf",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "tlfxorh2",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "cbg6ip2i",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "rp040e40",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ohs6cyid",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "n38wlwv0",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "wy4z5xp3",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "t9jxilmp",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "xgt3804d",
              "_$type": "Sprite3D",
              "name": "danshu",
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
                    "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "8xmp7d11",
              "_$type": "Sprite3D",
              "name": "caoduo (1)",
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
                    "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "qdaiiqis",
              "_$type": "Sprite3D",
              "name": "mao",
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
                    "_$uuid": "159ef09c-7ac4-4da7-a17e-941697e4b7bb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e6db5428-8e2e-464c-a004-14ea03d46144",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "vn49ak3t",
              "_$type": "Sprite3D",
              "name": "shushu (1)",
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
                    "_$uuid": "e13b102d-d680-4fe4-a8cb-d587cae08437",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "49112ded-5f73-4c3e-b4ea-a7474d7b7efe",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null
                },
                {
                  "_$type": "Animator",
                  "cullingMode": 0,
                  "controllerLayers": []
                }
              ]
            },
            {
              "_$id": "1m0n8ofq",
              "_$type": "Sprite3D",
              "name": "huashu (1)",
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
                  "_$id": "78rh380i",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "4pp2ix1l",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "6f9dpzqc",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "gfcrvhsm",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ilxfsgk9",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "tznskw0k",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "63ckj003",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "5y4z3b4q",
              "_$type": "Sprite3D",
              "name": "shucong",
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
                  "_$id": "5hf0gvbe",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
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
                        "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ut3ji7lp",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
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
                        "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "36we7d49",
              "_$type": "Sprite3D",
              "name": "shucong1",
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
                  "_$id": "47ph0urc",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
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
                        "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "m750q48c",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
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
                        "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "4ma1iq42",
              "_$type": "Sprite3D",
              "name": "huashu (2)",
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
                  "_$id": "2x0hdoip",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ddhktsif",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ahd4qtog",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "zkhtqpfs",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "lsy4kkw9",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "r8g5rdcl",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "bsfaye0k",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "vp9jo8bu",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "poc49gt4",
              "_$type": "Sprite3D",
              "name": "huashu (3)",
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
                  "_$id": "u4a7rfuf",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "942hyta2",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "7snrms5q",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "632ggys7",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "p22dvww5",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "znfyorqx",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "flt3cnk7",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "nnifsmxx",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "2be1zzy2",
              "_$type": "Sprite3D",
              "name": "shucong1 (1)",
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
                  "_$id": "n361e1xl",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
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
                        "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "vkkhyfr2",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
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
                        "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "l4gyxj81",
              "_$type": "Sprite3D",
              "name": "shucong1 (2)",
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
                  "_$id": "4gczoydk",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
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
                        "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "muu67zku",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
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
                        "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "hj3701lm",
              "_$type": "Sprite3D",
              "name": "shucong1 (3)",
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
                  "_$id": "j2zxr45n",
                  "_$type": "Sprite3D",
                  "name": "danshu (1)",
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
                        "_$uuid": "a6d88617-0302-48cb-ac11-caf159215ae7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "a49768f4-a3bb-486a-aa50-84a1a5711556",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "kvkt5brq",
                  "_$type": "Sprite3D",
                  "name": "caoduo (2)",
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
                        "_$uuid": "2c3a53e9-ed24-4dae-a37f-2124768c972f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "kkgcr8ws",
              "_$type": "Sprite3D",
              "name": "huashu (4)",
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
                  "_$id": "uuc966r3",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "qxwbr63h",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "vg6itlro",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "msp9yolo",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "v0ytovz0",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "t8h6bh75",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "eg8p9piy",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "bbvmvxou",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "srrpe8e7",
              "_$type": "Sprite3D",
              "name": "huashu (5)",
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
                  "_$id": "olf5e1ym",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ehtlvb24",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "xjkns4nx",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "g02if3zu",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "7w7575ou",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "449tcnmt",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "glfvht0d",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "lggskznk",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "amnlm7z1",
              "_$type": "Sprite3D",
              "name": "huashu (6)",
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
                  "_$id": "abf8cq6k",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "skwdipho",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "nckmdljm",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "7jbap49r",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ieizmgya",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "cs9q81ir",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "jjmngvgp",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "y7apicsc",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "0meb8y3m",
              "_$type": "Sprite3D",
              "name": "huashu (7)",
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
                  "_$id": "04ob4fgj",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "v7qu087o",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "b6lk0grd",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "j07bn9pi",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "bjkz7sxt",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "8kv83cud",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "kfhoihha",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ote8n93u",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
              "_$id": "en2piaud",
              "_$type": "Sprite3D",
              "name": "huashu (8)",
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
                  "_$id": "oqenmk0h",
                  "_$type": "Sprite3D",
                  "name": "huacong (2)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "wv58myzb",
                  "_$type": "Sprite3D",
                  "name": "huacong (3)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "3nqq1pa1",
                  "_$type": "Sprite3D",
                  "name": "huacong (4)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "ucsqw4vw",
                  "_$type": "Sprite3D",
                  "name": "huacong (5)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "yatvphay",
                  "_$type": "Sprite3D",
                  "name": "huacong (6)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "r01f7ogw",
                  "_$type": "Sprite3D",
                  "name": "huacong (7)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "jtc5xqj6",
                  "_$type": "Sprite3D",
                  "name": "huacong (8)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
                    },
                    {
                      "_$type": "Animator",
                      "cullingMode": 0,
                      "controllerLayers": []
                    }
                  ]
                },
                {
                  "_$id": "15jg7fxx",
                  "_$type": "Sprite3D",
                  "name": "huacong (9)",
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
                        "_$uuid": "1d7de363-6a66-42a1-a143-32bdbbb4a26f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "044a72e5-7a33-4f53-b577-d0c2cbee9445",
                          "_$type": "Material"
                        }
                      ],
                      "renderMode": null
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
          "_$id": "pw63ecwm",
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
                "_$uuid": "ec455720-b61e-42a4-8a3b-c7c8384cddb1",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "daaba3c3-1e64-49af-9296-def57030886f",
                  "_$type": "Material"
                }
              ],
              "renderMode": null
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
          "_$id": "a6espmay",
          "_$type": "Sprite3D",
          "name": "LayaMonkey",
          "layer": 2,
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
              "_$id": "y7ftkrrr",
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
                  "_$id": "9yfy4dht",
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
                  "_$id": "qzr3fdkw",
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
                      "_$id": "9q07xt4y",
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
                          "_$id": "92ab3f8w",
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
                              "_$id": "29r1mj32",
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
                                  "_$id": "msas2ue2",
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
                                      "_$id": "cwqyglid",
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
                                          "_$id": "afzw5n6t",
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
                          "_$id": "a5ovdcg9",
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
                              "_$id": "zr0wkbmz",
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
                                  "_$id": "r4gr5bd2",
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
                                      "_$id": "um67l0oo",
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
                                          "_$id": "cltfiar5",
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
                          "_$id": "gxbzg1i7",
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
                              "_$id": "bxj7e4fb",
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
                                  "_$id": "42tnjz3w",
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
                                      "_$id": "1vz5y9xt",
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
                                  "_$id": "uh2akvrp",
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
                                      "_$id": "ewj033ox",
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
                                          "_$id": "eosa8td5",
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
                                              "_$id": "12ujuado",
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
                                  "_$id": "tf6538ty",
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
                                      "_$id": "by4ijtig",
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
                                          "_$id": "ijbp7ldp",
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
                                              "_$id": "ue3o07oi",
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
              "_$id": "ism2wmtz",
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
                    "_$uuid": "1d8fbdb8-b203-4da6-8f07-42bee6d7b03a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "3025f760-73bd-4b08-b62f-bc8072aa053a",
                      "_$type": "Material"
                    }
                  ],
                  "renderMode": null,
                  "_bones": [
                    {
                      "_$ref": "y7ftkrrr"
                    },
                    {
                      "_$ref": "9q07xt4y"
                    },
                    {
                      "_$ref": "gxbzg1i7"
                    },
                    {
                      "_$ref": "qzr3fdkw"
                    },
                    {
                      "_$ref": "ewj033ox"
                    },
                    {
                      "_$ref": "eosa8td5"
                    },
                    {
                      "_$ref": "92ab3f8w"
                    },
                    {
                      "_$ref": "29r1mj32"
                    },
                    {
                      "_$ref": "msas2ue2"
                    },
                    {
                      "_$ref": "42tnjz3w"
                    },
                    {
                      "_$ref": "uh2akvrp"
                    },
                    {
                      "_$ref": "12ujuado"
                    },
                    {
                      "_$ref": "a5ovdcg9"
                    },
                    {
                      "_$ref": "zr0wkbmz"
                    },
                    {
                      "_$ref": "r4gr5bd2"
                    },
                    {
                      "_$ref": "by4ijtig"
                    },
                    {
                      "_$ref": "tf6538ty"
                    },
                    {
                      "_$ref": "ijbp7ldp"
                    },
                    {
                      "_$ref": "ue3o07oi"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "y7ftkrrr"
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