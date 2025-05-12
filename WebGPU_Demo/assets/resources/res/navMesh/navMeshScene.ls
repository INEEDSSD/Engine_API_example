{
  "_$ver": 1,
  "_$id": "1ku5jrpl",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "aghzb1eq",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "85380998-fbcf-4649-b18a-6c99a90c27cb",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.16788350045681,
          -0.016591839492321014,
          -0.011379729956388474,
          0.0065695010125637054,
          0.004985141102224588,
          -0.008634990081191063,
          0.00973482709378004,
          -0.010300779715180397,
          0.023336149752140045,
          0.21073590219020844,
          0.0270162895321846,
          -0.018886130303144455,
          0.010903609916567802,
          0.008416903205215931,
          -0.014578869566321373,
          0.01416333019733429,
          -0.01572323963046074,
          0.03351211920380592,
          0.28994059562683105,
          0.10996580123901367,
          -0.034809261560440063,
          0.020093729719519615,
          0.016304409131407738,
          -0.028243929147720337,
          0.01814272068440914,
          -0.023746220394968987,
          0.040800269693136215
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.212,
        "g": 0.227,
        "b": 0.259
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "componentElementDatasMap": {
        "_$type": "Record",
        "navMesh": {
          "_$type": "any",
          "value": {
            "agents": [
              {
                "cellSize": 0.097,
                "cellHeight": 0.3,
                "agentMaxSlope": 45,
                "agentHeight": 2,
                "agentRadius": 0.2,
                "agentMaxClimb": 0.1,
                "tileSize": 32,
                "agentName": "humanoid"
              }
            ],
            "areas": [
              {
                "name": "unwalk",
                "index": 0,
                "cost": 1
              },
              {
                "name": "walk",
                "index": 1,
                "cost": 1
              },
              {
                "name": "jump",
                "index": 2,
                "cost": 1
              }
            ]
          }
        }
      },
      "_$child": [
        {
          "_$id": "bs8hdz3r",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 10.93078,
              "y": 15.8203,
              "z": -9.310078
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.1550818958245371,
              "y": -0.835614977501698,
              "z": -0.2983151919680888,
              "w": -0.43440218830404925
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0.01960784
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "rykvhszc",
          "_$type": "Sprite3D",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5.2,
              "y": 15.4,
              "z": -9
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.10938169940416508,
              "y": 0.8754260952312914,
              "z": 0.4082178977763147,
              "w": -0.23456969872222846
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.9568627,
                "b": 0.8392157
              },
              "shadowMode": 2,
              "shadowDepthBias": 0.05,
              "shadowNormalBias": 0.4,
              "shadowNearPlane": 0.2
            }
          ]
        },
        {
          "_$id": "0b8mf9n7",
          "_$type": "Sprite3D",
          "name": "Geometry",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -4.91,
              "y": 0.24,
              "z": 4.68
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 2,
              "y": 1,
              "z": 2
            }
          },
          "_$comp": [
            {
              "_$id": "l5z3",
              "_$type": "NavMeshSurface",
              "agentType": "humanoid",
              "areaFlag": "walk",
              "asyn": false,
              "partitionType": 1,
              "datas": {
                "_$uuid": "db8e0be2-305c-4511-992e-9f2e18947bf5",
                "_$type": "TextResource"
              }
            },
            {
              "_$id": "bkp6",
              "_$type": "NavMeshLink",
              "agentType": "humanoid",
              "areaFlag": "jump",
              "start": {
                "_$type": "Vector3",
                "x": 0.009687423706054688,
                "y": 3.558828130364418,
                "z": -1.4342381954193115
              },
              "end": {
                "_$type": "Vector3",
                "x": 1
              }
            }
          ],
          "_$child": [
            {
              "_$id": "aov6n7sm",
              "_$type": "Sprite3D",
              "name": "Plane",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.89,
                  "z": 0.33
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.2,
                  "y": 1,
                  "z": 1.2
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "14147e34-93ec-4a23-a3aa-7406f1b3d5a4",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "f17d5834-2ad8-482e-b48c-065a4d293f2f",
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
                      "y": -0.244
                    },
                    "size": {
                      "_$type": "Vector3",
                      "x": 10,
                      "y": 0.5,
                      "z": 10
                    }
                  },
                  "collisionGroup": 1
                }
              ]
            },
            {
              "_$id": "51s4axpw",
              "_$type": "Sprite3D",
              "name": "Gates",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "z": 0.23
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "se47x264",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.53,
                      "z": -0.1199999
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "t7onhlb2",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.53,
                      "z": -5.34
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "sbr0sj58",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 3.06,
                      "z": -0.27
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 11.13
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      },
                      "collisionGroup": 1
                    }
                  ]
                },
                {
                  "_$id": "mcxe8wes",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.53,
                      "z": 1.73
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "mobb92an",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.53,
                      "z": 4.29
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3,
                      "z": 2
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "gqcqzivc",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.53,
                      "z": -2.26
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "043de28d-e3f2-44a7-8094-21dc4a58e547",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "c9ee8a17-24e6-4bc0-b924-b27bebfe5d07",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "kk7dg6yi",
              "_$type": "Sprite3D",
              "name": "Cube",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.9067299046471748,
                  "y": 1.946724248106328,
                  "z": -1.6747733552959092
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.16917749987873276,
                  "w": -0.9855855992935274
                }
              },
              "_$comp": [
                {
                  "_$type": "NavMeshModifierVolume",
                  "agentType": "humanoid",
                  "areaFlag": "unwalk",
                  "size": {
                    "_$type": "Vector3",
                    "x": 3.203,
                    "y": 1.521,
                    "z": 1
                  },
                  "center": {
                    "_$type": "Vector3"
                  }
                }
              ]
            },
            {
              "_$id": "sxwf8jew",
              "_$type": "Sprite3D",
              "name": "Sprite3D",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 3.267047166824341,
                  "z": -3.947245919072342
                }
              },
              "_$comp": [
                {
                  "_$type": "NavMeshObstacles",
                  "agentType": "humanoid",
                  "areaFlag": "unwalk",
                  "bounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": 0.42509448528289795,
                      "y": -0.26000000536441803,
                      "z": -4.41349184513092
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 2.8230944871902466,
                      "y": 0.739999994635582,
                      "z": -2.0154918432235718
                    }
                  },
                  "meshType": 1,
                  "radius": 1.199
                }
              ]
            }
          ]
        },
        {
          "_$id": "i17mh99f",
          "_$type": "Sprite3D",
          "name": "HumanoidAgent",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.11,
              "y": 2.4508283859194977,
              "z": 6.92
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
                "_$uuid": "137b5a0a-7054-4ef6-9de2-b09e713069c4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "324684e8-b4f4-46cf-b056-12318eb645df",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "NavAgent",
              "agentType": "humanoid",
              "maxAcceleration": 10,
              "areaMask": 7
            }
          ]
        }
      ]
    }
  ]
}