{
  "_$ver": 1,
  "_$id": "or2c8wkz",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "d6fc9519-a7a7-48d7-8431-50af8012c384",
      "scriptPath": "../src/3D/Advance/CameraDepthModeTextureDemo.ts",
      "camera": {
        "_$ref": "i0svkgyz"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "directionLight": {
        "_$ref": "6ni3p096l5"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
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
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 128,
      "fogStart": 0,
      "fogRange": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "6ni3p096l5",
          "_$type": "Sprite3D",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5,
              "y": 5,
              "z": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.40821789367673483,
              "y": 0.23456971600980447,
              "z": 0.109381654946615,
              "w": 0.875426098065593
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.6,
                "g": 0.6,
                "b": 0.6
              },
              "intensity": 1,
              "lightmapBakedType": 1,
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
          "_$id": "1mqgy0vc",
          "_$type": "Sprite3D",
          "name": "depthNormalPlane",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -6.322272281392788,
              "y": 11.767916578391068,
              "z": 11.901755997764534
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.7071067811865476,
              "z": 0.7071067811865476,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.4206875,
              "y": 0.4206875,
              "z": 0.4206875
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "dc39a161-93e4-4bb9-b8fc-c820608beef9",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "06549dd0-5608-46b0-9215-16168a0eed0a",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "4mzdwbb2",
          "_$type": "Sprite3D",
          "name": "depthNormalPlane1",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -11.122250163054783,
              "y": 11.767908294540284,
              "z": 11.90175
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": -0.7071067811865476,
              "z": 0.7071067811865476,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.4206875,
              "y": 0.4206875,
              "z": 0.4206875
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "dc39a161-93e4-4bb9-b8fc-c820608beef9",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "06549dd0-5608-46b0-9215-16168a0eed0a",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "i0svkgyz",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -13.609699884275294,
              "y": 8.8434912299972,
              "z": 3.0119335627042707
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.98771,
              "y": 1,
              "z": 1
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 71,
          "nearPlane": 0.1,
          "farPlane": 100,
          "clearFlag": 0,
          "clearColor": {
            "_$type": "Color",
            "g": 0.8537736,
            "b": 0.9978808,
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
          "_$id": "wp297ivt",
          "_$type": "Sprite3D",
          "name": "depthscene",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -10.73011589050293,
              "y": 6.771430492401123,
              "z": 3.3678252696990967
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "mnltn276",
              "_$type": "Sprite3D",
              "name": "Sphere (2)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -4.02,
                  "y": 1.311305,
                  "z": 2
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
                    "_$uuid": "3c0e9c25-b532-4bff-9313-6a7b851fb990",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e9846557-ab00-44e1-8952-5aeac9010560",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7k3zob76",
              "_$type": "Sprite3D",
              "name": "Sphere (3)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.73,
                  "y": 1.311305,
                  "z": 4
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
                    "_$uuid": "3c0e9c25-b532-4bff-9313-6a7b851fb990",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e9846557-ab00-44e1-8952-5aeac9010560",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7s3it2ot",
              "_$type": "Sprite3D",
              "name": "Sphere (4)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -3.11,
                  "y": 1.311305,
                  "z": 6
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
                    "_$uuid": "3c0e9c25-b532-4bff-9313-6a7b851fb990",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e9846557-ab00-44e1-8952-5aeac9010560",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "a06qao7b",
              "_$type": "Sprite3D",
              "name": "Sphere (5)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.505299,
                  "y": 1.311305,
                  "z": 8
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
                    "_$uuid": "3c0e9c25-b532-4bff-9313-6a7b851fb990",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e9846557-ab00-44e1-8952-5aeac9010560",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9kyv53zx",
              "_$type": "Sprite3D",
              "name": "Sphere (6)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.82,
                  "y": 1.311305,
                  "z": 10
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
                    "_$uuid": "3c0e9c25-b532-4bff-9313-6a7b851fb990",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "e9846557-ab00-44e1-8952-5aeac9010560",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "uex0bqmr",
              "_$type": "Sprite3D",
              "name": "Plane",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.565299,
                  "y": 0.8213048,
                  "z": 38.35661
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 12.291
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "dc39a161-93e4-4bb9-b8fc-c820608beef9",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "c4d5f590-9e00-4f14-b31d-883fe385ef43",
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
  ]
}