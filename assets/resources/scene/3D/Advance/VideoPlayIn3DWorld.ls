{
  "_$ver": 1,
  "_$id": "fsxgm3q8",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "6af74c14-698e-40a9-906d-f667109ae8f0",
      "scriptPath": "../src/3D/Advance/VideoPlayIn3DWorld.ts",
      "camera": {
        "_$ref": "7im2fe4w"
      },
      "scene": {
        "_$ref": "ca7hinme"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "ca7hinme",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0,
        "b": 0
      },
      "_reflectionsIblSamples": 128,
      "reflectionIntensity": 0.2,
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
      "lightingSettings": {
        "_$uuid": "fc4378bf-7a88-4ab1-a3b4-0aae00b5a637",
        "_$type": "LightingSettings"
      },
      "_$child": [
        {
          "_$id": "7im2fe4w",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -14.483460426330566,
              "y": 9.850000381469727,
              "z": 35.29399108886719
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.031599317928097524,
              "y": 0.9426042179147209,
              "z": 0.09338418494038327,
              "w": -0.31902690400478256
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.0000000060403755,
              "y": 0.9999999799529624,
              "z": 0.9999999718910839
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 90,
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
          "_$id": "veud59t7",
          "_$type": "Sprite3D",
          "name": "static",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 12.59,
              "y": 32.7,
              "z": 34.3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "hh5opvf3",
              "_$type": "Sprite3D",
              "name": "Plane (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12.99,
                  "z": 30.34
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071067811865476,
                  "w": -0.7071067811865476
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 6.5,
                  "y": 1,
                  "z": 6.500004
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "9a9b5098-fbee-4259-b80f-ed871ca697cd",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "inodzyeo",
              "_$type": "Sprite3D",
              "name": "Plane (2)",
              "isStatic": true,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5,
                  "y": -0.5,
                  "z": -0.5,
                  "w": -0.5
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 6.5,
                  "y": 1,
                  "z": 6.5
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 4,
                  "sharedMaterials": [
                    {
                      "_$uuid": "9a9b5098-fbee-4259-b80f-ed871ca697cd",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "ztdn1sb8",
              "_$type": "Sprite3D",
              "name": "Plane (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -44.59
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.5,
                  "y": -0.5,
                  "z": 0.5,
                  "w": -0.5
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 6.5,
                  "y": 1,
                  "z": 6.5
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 3,
                  "sharedMaterials": [
                    {
                      "_$uuid": "9a9b5098-fbee-4259-b80f-ed871ca697cd",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "vdofjm3w",
              "_$type": "Sprite3D",
              "name": "floor",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -22.9,
                  "y": -30.7,
                  "z": -1.300003
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 5.974872,
                  "y": 1.2719,
                  "z": 8.012971
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "b60a41c1-076f-40c1-95f0-d0d2e3778e5e",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "fhadtpaa",
              "_$type": "Sprite3D",
              "name": "Plane (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -32.85,
                  "z": -19
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7070685213264574,
                  "y": -0.007355688221860777,
                  "z": 0.007355688221860777,
                  "w": -0.7070685213264574
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 6.5,
                  "y": 1,
                  "z": 6.5
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 2,
                  "sharedMaterials": [
                    {
                      "_$uuid": "9a9b5098-fbee-4259-b80f-ed871ca697cd",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            },
            {
              "_$id": "2r4kbyui",
              "_$type": "Sprite3D",
              "name": "Plane (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -23.4,
                  "y": 30.5,
                  "z": -2.17
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9995040384734096,
                  "y": -0.010397909359934641,
                  "z": -0.00030921448096564696,
                  "w": 0.029723138170329205
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 6.5,
                  "y": 1,
                  "z": 6.5
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "9a9b5098-fbee-4259-b80f-ed871ca697cd",
                      "_$type": "Material"
                    }
                  ]
                },
                {
                  "_$type": "PhysicsCollider",
                  "colliderShape": {
                    "_$type": "MeshColliderShape",
                    "mesh": {
                      "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                      "_$type": "Mesh"
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "fynl5di2",
          "_$type": "Sprite3D",
          "name": "racktangleVideo",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.3699999,
              "y": 10,
              "z": 64.14
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 4,
              "y": 4,
              "z": 4
            }
          },
          "_$child": [
            {
              "_$id": "6arpt6af",
              "_$type": "Sprite3D",
              "name": "Cube (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 1.75,
                  "z": -0.08399963
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.727504,
                  "y": 0.3614893,
                  "z": 0.2109645
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f5374ae9-9dd3-4c62-a64e-716ebddf6980",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.996,
                    "y": 0.672,
                    "z": 0.004,
                    "w": 0.004
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "d57ae54b-1f16-47c8-a5bd-3cdea2c5556e",
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
              "_$id": "3qi23ice",
              "_$type": "Sprite3D",
              "name": "Cube (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -1.661,
                  "z": -0.08399963
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.773979,
                  "y": 0.3614893,
                  "z": 0.2109645
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f5374ae9-9dd3-4c62-a64e-716ebddf6980",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.996,
                    "y": 0.672,
                    "z": 0.004,
                    "w": 0.004
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "d57ae54b-1f16-47c8-a5bd-3cdea2c5556e",
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
              "_$id": "1yqo34y0",
              "_$type": "Sprite3D",
              "name": "Cube (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 1.68,
                  "y": 0.03,
                  "z": -0.08399963
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.7071067811865476,
                  "w": -0.7071067811865476
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.11621,
                  "y": 0.3614893,
                  "z": 0.2302678
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f5374ae9-9dd3-4c62-a64e-716ebddf6980",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 2,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.996,
                    "y": 0.672,
                    "z": 0.004,
                    "w": 0.004
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "d57ae54b-1f16-47c8-a5bd-3cdea2c5556e",
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
              "_$id": "dz7k789k",
              "_$type": "Sprite3D",
              "name": "Cube (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.683,
                  "y": 0.03,
                  "z": -0.084
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.7071067811865476,
                  "w": -0.7071067811865476
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.028236,
                  "y": 0.3614893,
                  "z": 0.2109645
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f5374ae9-9dd3-4c62-a64e-716ebddf6980",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapIndex": 3,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.996,
                    "y": 0.672,
                    "z": 0.004,
                    "w": 0.004
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "d57ae54b-1f16-47c8-a5bd-3cdea2c5556e",
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
            }
          ]
        },
        {
          "_$id": "ojj785s2",
          "_$type": "Sprite3D",
          "name": "reflectionPlan",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -10.31,
              "y": 1.9,
              "z": 33
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 5.241577,
              "y": 1.1158,
              "z": 7.029541
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "3310671a-31df-4f98-92f0-cbee40a31c3d",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "mesh": {
                  "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        },
        {
          "_$id": "dcuysw5w",
          "_$type": "Sprite3D",
          "name": "moveclip",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.3699999,
              "y": 10,
              "z": 64.22
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.7071067811865476,
              "z": -0.7071067811865476,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.25696,
              "y": 1.256961,
              "z": 1.256961
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "6a7829ec-c5a6-4d5c-ba52-054c715858d9",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "mesh": {
                  "_$uuid": "2860a9ff-9a78-451a-a875-d435d478a3af",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        },
        {
          "_$id": "zxqgozrq",
          "_$type": "Sprite3D",
          "name": "AreaLight",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.3699999,
              "y": 10.22,
              "z": 64.22
            }
          },
          "_$comp": [
            {
              "_$type": "AreaLightCom",
              "intensity": 1,
              "lightmapBakedType": 2,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "power": 1000,
              "shape": 0,
              "size": {
                "_$type": "Vector2",
                "x": 8,
                "y": 8
              },
              "spread": 100,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "ttk8kjyj",
          "_$type": "Sprite3D",
          "name": "PointLight",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.2517396751397385,
              "y": 9.608525214763901,
              "z": 58.68860867151942
            }
          },
          "_$comp": [
            {
              "_$type": "PointLightCom",
              "intensity": 1,
              "lightmapBakedType": 1,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "range": 50,
              "power": 10,
              "radius": 0.25,
              "maxBounces": 1024
            }
          ]
        }
      ]
    }
  ]
}