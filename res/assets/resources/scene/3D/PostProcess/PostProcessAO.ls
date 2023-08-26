{
  "_$ver": 1,
  "_$id": "6oz5ugnm",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "mouseThrough": true,
  "_$comp": [
    {
      "_$type": "2cf6cd82-fb9a-4533-9cab-4f56553644d5",
      "scriptPath": "../src/3D/PostProcess/PostProcessAO.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
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
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.4448968300408216,
              "y": 2.0723792167660444,
              "z": 5.311445382951683
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.13934245583021235,
              "y": -0.11530225716260835,
              "z": -0.01633815420957125,
              "w": 0.9833728358122555
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.207,
            "g": 0.269,
            "b": 0.383
          },
          "cullingMask": 2147483647,
          "postProcess": {
            "_$type": "PostProcess",
            "effects": [
              {
                "_$type": "ScalableAO",
                "aoColor": {
                  "_$type": "Color",
                  "r": 0,
                  "g": 0,
                  "b": 0
                },
                "intensity": 0.63
              }
            ]
          },
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureMode": 3,
          "depthTextureFormat": 35
        },
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
              "shadowCascadesMode": 0,
              "strength": null,
              "angle": null,
              "maxBounces": null
            }
          ]
        },
        {
          "_$id": "evdy83dt",
          "_$type": "Sprite3D",
          "name": "Env",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.0895041227340698,
              "y": 0.5438689589500427,
              "z": 0.9326083064079285
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "_$child": [
            {
              "_$id": "1s6uk07u",
              "_$type": "Sprite3D",
              "name": "Cube",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.0895041227340698,
                  "y": -0.17654949676389342,
                  "z": -0.9326083064079284
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "g2c4lfeg",
              "_$type": "Sprite3D",
              "name": "Plane",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.0895041227340698,
                  "y": -0.5438689589500427,
                  "z": -0.9326083064079285
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071067811865475,
                  "w": 0.7071067811865476
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 10,
                  "y": 10,
                  "z": 10
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "14na4y0r",
              "_$type": "Sprite3D",
              "name": "Cube(1)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.06188169523487,
                  "y": 0.7915434832782937,
                  "z": -1.2691179218774282
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wn1imhoq",
              "_$type": "Sprite3D",
              "name": "Cube(2)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 2.5322843103151205,
                  "y": -0.3858331309137839,
                  "z": -1.2691179513931274
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4f41dt0j",
              "_$type": "Sprite3D",
              "name": "Sphere",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -0.6780737628388172,
                  "y": -0.5235599935106551
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
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gk0ds8dr",
              "_$type": "Sprite3D",
              "name": "Sphere(1)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 4.378062806524663,
                  "y": -0.5235599875450136,
                  "z": -1.8113355740333477
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
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "w756iv4n",
              "_$type": "Sprite3D",
              "name": "Sphere(2)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 4.378062605857849,
                  "y": 0.22249029970355583,
                  "z": -1.811335563659668
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
        }
      ]
    }
  ]
}