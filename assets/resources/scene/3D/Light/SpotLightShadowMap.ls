{
  "_$ver": 1,
  "_$id": "t4ncemru",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "d2730298-3464-4561-b69e-ac6f409e1038",
      "scriptPath": "../src/3D/Light/SpotLightShadowMap.ts",
      "camera": {
        "_$ref": "1kjk6xl6"
      },
      "scene": {
        "_$ref": "qyufgij3"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "qyufgij3",
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
        "r": 0.4235294117647059,
        "g": 0.4588235294117647,
        "b": 0.5294117647058824
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
          "_$id": "w5de3428",
          "_$type": "Sprite3D",
          "name": "Plane",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 4.6466,
              "y": 4.6466,
              "z": 4.6466
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "cd0d9aa8-ed8d-4f86-8ee1-5f1946d08d27",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "ce75eb11-bcc5-4945-8b76-f49d5db8932d",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "1kjk6xl6",
          "_$type": "Camera",
          "name": "Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.812133,
              "y": 3.902158,
              "z": -5.126177
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.09829108127413128,
              "y": -0.8784130113867248,
              "z": -0.20551240266402382,
              "w": -0.4201120054458435
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 0,
          "clearColor": {
            "_$type": "Color",
            "r": 0.20784313725490197,
            "g": 0.27058823529411763,
            "b": 0.3843137254901961
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
          "_$id": "nj46l6fp",
          "_$type": "Sprite3D",
          "name": "Plane (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 5,
              "z": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.7071067811865476,
              "w": -0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 5.1721,
              "y": 5.1721,
              "z": 5.1721
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "cd0d9aa8-ed8d-4f86-8ee1-5f1946d08d27",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "f9de4419-8174-4600-9370-d7673c87d298",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "uic8algd",
          "_$type": "Sprite3D",
          "name": "Plane (2)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5,
              "y": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.5,
              "y": 0.5,
              "z": 0.5,
              "w": -0.5
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 5.4077,
              "y": 5.4077,
              "z": 5.4077
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "cd0d9aa8-ed8d-4f86-8ee1-5f1946d08d27",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "7074914f-c743-4c82-aade-586a51f2cc36",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "0cr5ehqe",
          "_$type": "Sprite3D",
          "name": "Sphere (2)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.14,
              "y": 0.9,
              "z": -1.69
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.5,
              "y": 1.5,
              "z": 1.5
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "46733227-3156-4d4f-b79e-28f498ea7419",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "7074914f-c743-4c82-aade-586a51f2cc36",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "Rigidbody3D",
              "colliderShape": {
                "_$type": "CompoundColliderShape",
                "shapes": []
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
            },
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
                      "name": "sphereColor",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "6c0a530c-053b-482b-96b3-762c393e5efd",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "sphereColor"
                }
              ]
            }
          ]
        },
        {
          "_$id": "wxaf93k8",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.08,
              "y": 1.142519,
              "z": 0.38
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.5713,
              "y": 1.5713,
              "z": 1.5713
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "d8b4730c-a7fd-4637-85f2-88a4c425637c",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "f9de4419-8174-4600-9370-d7673c87d298",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape"
              }
            }
          ]
        },
        {
          "_$id": "pqj80dyb",
          "_$type": "Sprite3D",
          "name": "Sphere (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.08,
              "y": 2.764,
              "z": 0.38
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.5713,
              "y": 1.5713,
              "z": 1.5713
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "46733227-3156-4d4f-b79e-28f498ea7419",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "0dea3386-2d76-401f-bba8-7b450d57c6be",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "x8kqxi7z",
          "_$type": "Sprite3D",
          "name": "Cube (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.55,
              "y": 1.72,
              "z": 0.02
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.09085091432509859,
              "y": 0.03397338161735549,
              "z": -0.34860661659595826,
              "w": -0.9322367443805752
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.5713,
              "y": 1.5713,
              "z": 1.5713
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "d8b4730c-a7fd-4637-85f2-88a4c425637c",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "87a8cd3e-4c3e-45db-9e25-22fa4793c9e0",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape"
              }
            },
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
                      "name": "CubeRotate",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "9a73569c-943f-4c72-9455-bfd81cc6acec",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "CubeRotate"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}