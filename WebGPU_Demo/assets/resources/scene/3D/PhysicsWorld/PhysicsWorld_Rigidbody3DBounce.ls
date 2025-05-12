{
  "_$ver": 1,
  "_$id": "ucv2puzo",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "71cf8471-039f-4cd0-8359-f6f0d02a487b",
      "scriptPath": "../src/3D/PhysicsWorld/PhysicsWorld_Rigidbody3DBounce.ts",
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
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 6.643434747270437,
              "y": 4.742110752442208,
              "z": -7.265973344305024
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.09347817782080012,
              "y": 0.8894009407382543,
              "z": 0.21057330836473775,
              "w": 0.39482487091056034
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          }
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
              "x": -0.3207126048150651,
              "y": 0.22754485822215945,
              "z": 0.08474078263125773,
              "w": 0.9155248562264355
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
              }
            }
          ]
        },
        {
          "_$id": "ph0ecd03",
          "_$type": "Sprite3D",
          "name": "bounce",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.5550815137313867,
              "z": -0.015360456740990649
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "_$child": [
            {
              "_$id": "5eu885es",
              "_$type": "Sprite3D",
              "name": "Plane",
              "transform": {
                "localScale": {
                  "_$type": "Vector3",
                  "x": 10,
                  "y": 1,
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
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "2460c262-4754-4086-83ce-a66b76ab5f41",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "BoxColliderShape",
                    "localOffset": {
                      "_$type": "Vector3",
                      "y": -0.5
                    }
                  },
                  "collisionGroup": 1,
                  "canCollideWith": -1,
                  "restitution": 0.5
                }
              ]
            },
            {
              "_$id": "ju7hm82o",
              "_$type": "Sprite3D",
              "name": "Cube",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.4860153198242188,
                  "y": 2.8,
                  "z": -0.8957768678665161
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
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "f7f8d773-9c07-4d71-a157-2abe0e79f5b8",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "Rigidbody3D",
                  "colliderShape": {
                    "_$type": "BoxColliderShape"
                  },
                  "collisionGroup": 1,
                  "canCollideWith": -1
                }
              ]
            },
            {
              "_$id": "je4vkdj5",
              "_$prefab": "d645b3b8-f4ea-440b-a750-40e0a0e3f5c7",
              "name": "rigidbody",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.486015421338379,
                  "y": 2.799999952316284,
                  "z": 1.1506468913041883
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": 0,
                  "z": 0,
                  "w": 1
                }
              }
            },
            {
              "_$id": "jpwal6kg",
              "_$prefab": "763620cb-3247-4874-983d-3679872ead1f",
              "name": "rigidbody_bounce",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -2.4860154213383785,
                  "y": 2.799999952316284,
                  "z": 3.2060370095630906
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
              }
            }
          ]
        }
      ]
    }
  ]
}