{
  "_$ver": 1,
  "_$id": "dqmbir82",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "6a7bc5b7-ac78-40d1-975a-19b7d20e0e7b",
      "scriptPath": "../src/3D/Advance/BlurryGlass.ts",
      "camera": {
        "_$ref": "t5bb8j7t"
      },
      "scene": {
        "_$ref": "b9wb7hg5"
      },
      "directionLight": {
        "_$ref": "ycvddyrx"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "b9wb7hg5",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "box",
        "material": {
          "_$uuid": "ce3faa08-bfc0-49a9-80ea-6995ba86819c",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientColor": {
        "_$type": "Color",
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "fogStart": 10,
      "fogRange": 10,
      "fogColor": {
        "_$type": "Color",
        "g": 0,
        "b": 0,
        "a": null
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "t5bb8j7t",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.5413697,
              "y": 2.915479,
              "z": 4.72047
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.071386569779652,
              "y": 0.029916689907656543,
              "z": 0.0020838069935679403,
              "w": 0.99699779692258
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.27199387056066343,
            "g": 0.484331461156183,
            "b": 0.9883720930232558
          },
          "msaa": true,
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35,
          "enableBlitDepth": true
        },
        {
          "_$id": "ycvddyrx",
          "_$type": "DirectionLight",
          "name": "Directional light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -21.47881,
              "y": 109.2226,
              "z": 120.6995
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.3623708819230548,
              "y": 0.003946281803138929,
              "z": 0.001541189923117427,
              "w": -0.9320243535057754
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.1603774,
                "g": 0.1603774,
                "b": 0.1603774
              },
              "intensity": 1,
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
          "_$id": "w6h7stqm",
          "_$type": "Sprite3D",
          "name": "floor",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.00001657009,
              "y": 0.9783633,
              "z": -0.007702351
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.66877,
              "y": 0.66877,
              "z": 0.66877
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "adb7ef91-3696-456c-b828-1e2b79169638",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                },
                "mesh": {
                  "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        },
        {
          "_$id": "t47nelom",
          "_$type": "Sprite3D",
          "name": "Capsule",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.33,
              "y": 1.82,
              "z": -2.02
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
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "84a3faba-360c-4c60-877c-107927e063ba",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "4a2338yj",
          "_$type": "Sprite3D",
          "name": "Capsule (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.2299999,
              "y": 1.82,
              "z": -2.02
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
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "9274673d-6c6c-4f2e-bb76-818d44a8025d",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "o65qrbfj",
          "_$type": "Sprite3D",
          "name": "Capsule (2)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.7,
              "y": 1.82,
              "z": -2.02
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
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "e3c3beb9-9ad0-435f-a42d-442dd34df43f",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "rkntmhz0",
          "_$type": "Sprite3D",
          "name": "glass01",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.256,
              "y": 1.75,
              "z": 0.7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865476,
              "w": -0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.19819,
              "y": 0.19819,
              "z": 0.19819
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "d09cb158-ce94-4796-9bcd-ea27f1d70bfe",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                },
                "mesh": {
                  "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        },
        {
          "_$id": "c0w1v1j1",
          "_$type": "Sprite3D",
          "name": "glass02",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.7199999,
              "y": 1.75,
              "z": 0.7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865476,
              "w": -0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.19819,
              "y": 0.19819,
              "z": 0.19819
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "d09cb158-ce94-4796-9bcd-ea27f1d70bfe",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                },
                "mesh": {
                  "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}