{
  "_$ver": 1,
  "_$id": "vv4vmecd",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "9e38f354-1eda-4e06-8ff9-e6cc6f2e7b02",
      "scriptPath": "../src/3D/Advance/ReflectionProbe.ts",
      "camera": {
        "_$ref": "4w4j8kkw"
      },
      "scene": {
        "_$ref": "irpz8xjs"
      },
      "directionLight": {
        "_$ref": "fgkkeg9i"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "irpz8xjs",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "7588d307-bb14-4a77-ad0e-dcf7d9bb431b",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.12290442734956741,
          0.13142459094524384,
          0.13890908658504486,
          -0.010636139661073685,
          0.016457876190543175,
          0.0514371320605278,
          0.01866406761109829,
          0.021101631224155426,
          0.026317108422517776,
          -0.00018471322255209088,
          -0.0002092378999805078,
          -0.0002536452957428992,
          -0.000009082173164642882,
          -0.000017412139641237445,
          -0.00003737060251296498,
          0.0009342650300823152,
          0.0015229276614263654,
          0.003197722602635622,
          0.012661650776863098,
          0.0145883122459054,
          0.015287940390408039,
          -0.0005230808747000992,
          -0.0005582827725447714,
          -0.0005375937325879931,
          0.013998869806528091,
          0.017779776826500893,
          0.019178606569767
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0,
        "b": 0,
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "iblTex": {
        "_$uuid": "cc663a53-671b-4de0-b9af-fda1ae44aa6c",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
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
          "_$id": "76tydlo8",
          "_$type": "Sprite3D",
          "name": "Map",
          "isStatic": true,
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "a062ektc",
              "_$type": "Sprite3D",
              "name": "glass_panel_1_with_door (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071059811861163,
                  "w": -0.7071075811860736
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "1c2bae29-649b-4dbe-aa46-de235bc186b5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "0608311d-dca8-4138-89ca-5a8ade62ef14",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "087t3uh6",
                  "_$type": "Sprite3D",
                  "name": "glass_panel_1_door",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.744
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
                        "_$uuid": "a182c924-c0d3-4a24-8bc4-7c4a6bd358df",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "0608311d-dca8-4138-89ca-5a8ade62ef14",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "b5l8gl71",
              "_$type": "Sprite3D",
              "name": "window_big_blocker_3 (6)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6,
                  "z": -2
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.0000045597549999525985,
                  "w": 0.9999999999896043
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "e32e7de8-55b5-4745-8968-5b645c27a24e",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "agkfu6s8",
              "_$type": "Sprite3D",
              "name": "floor_5",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "18ocvga7",
              "_$type": "Sprite3D",
              "name": "floor_5 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "infydpqt",
              "_$type": "Sprite3D",
              "name": "floor_5 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "z": -4
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4tfpt6ap",
              "_$type": "Sprite3D",
              "name": "floor_5 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "z": -4
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "iklbpadx",
              "_$type": "Sprite3D",
              "name": "floor_5 (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "pskhuufk",
              "_$type": "Sprite3D",
              "name": "floor_5 (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "o3i1ndju",
              "_$type": "Sprite3D",
              "name": "floor_5 (6)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "tzicz323",
              "_$type": "Sprite3D",
              "name": "floor_5 (7)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4zenud98",
              "_$type": "Sprite3D",
              "name": "floor_5 (8)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "z": -4
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
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "egl1oshc",
              "_$type": "Sprite3D",
              "name": "floor_5 (9)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "y": 4,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "8xk4qxmu",
              "_$type": "Sprite3D",
              "name": "floor_5 (10)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "y": 4,
                  "z": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ucqnjttz",
              "_$type": "Sprite3D",
              "name": "floor_5 (11)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "y": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "crue578g",
              "_$type": "Sprite3D",
              "name": "floor_5 (12)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "y": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "kkvdeomf",
              "_$type": "Sprite3D",
              "name": "floor_5 (13)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "y": 4,
                  "z": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "aznu2a33",
              "_$type": "Sprite3D",
              "name": "floor_5 (14)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "y": 4,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qnot1ie9",
              "_$type": "Sprite3D",
              "name": "floor_5 (15)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "y": 4,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "43zln49m",
              "_$type": "Sprite3D",
              "name": "floor_5 (16)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "y": 4,
                  "z": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6156qy3x",
              "_$type": "Sprite3D",
              "name": "floor_5 (17)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "y": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "507c2be3-1b40-4b30-b053-d9ffe580cf40",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "663053fb-ceda-4600-9e28-435a1e7ec750",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "htma9tth",
              "_$type": "Sprite3D",
              "name": "console_screen (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -17.70134,
                  "y": 2.46,
                  "z": -4.02
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071068311865479,
                  "w": -0.7071067311865435
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "3f4802cd-5eaa-4b2f-8528-1ebcba17c87a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mu8peuob",
              "_$type": "Sprite3D",
              "name": "console (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16.98015,
                  "y": 0.1817454,
                  "z": 0.15
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7375736,
                  "y": 0.7375736,
                  "z": 0.7375736
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f96f7f47-7461-425d-be35-6fb6ad944bdb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "2df2sbcd",
              "_$type": "Sprite3D",
              "name": "console (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16.98015,
                  "y": 0.1817454,
                  "z": -0.85
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7375736,
                  "y": 0.7375736,
                  "z": 0.7375736
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f96f7f47-7461-425d-be35-6fb6ad944bdb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "uim2modl",
              "_$type": "Sprite3D",
              "name": "decorative_plant (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -17.556,
                  "y": 0.1817454,
                  "z": 4.33
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
                    "_$uuid": "cbaa25a5-eb85-4d2f-8a6a-1bdbf55c7d87",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "1258f445-5cc5-42ad-a0d2-afdbbd7aed69",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "74077185-3146-4850-baec-1374697fa1a6",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "2ac7ecd1-c2bf-4213-9c9b-6d45ae0b11d1",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "oqps96p0",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12.35,
                  "y": 0.1817454,
                  "z": 5.85
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7l1m4s5f",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16.35,
                  "y": 0.1817454,
                  "z": 5.85
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "pia1r5nf",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16.35,
                  "y": 0.1817454,
                  "z": -5.81
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.0000045597549999525985,
                  "w": 0.9999999999896043
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "60605c6h",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12.35,
                  "y": 0.1817454,
                  "z": -5.81
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.0000045597549999525985,
                  "w": 0.9999999999896043
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jngth24f",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8.349997,
                  "y": 0.1817454,
                  "z": -5.81
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.0000045597549999525985,
                  "w": 0.9999999999896043
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "06g0kkpq",
              "_$type": "Sprite3D",
              "name": "decorative_chair (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -5.18,
                  "y": 0.08,
                  "z": -1.87
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6997503571555431,
                  "w": -0.7143874562593397
                }
              },
              "_$child": [
                {
                  "_$id": "sgc2tc4p",
                  "_$type": "Sprite3D",
                  "name": "decorative_chair_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "88c5e3a2-dcde-4f5c-b6c8-b24f6daacfa6",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3wtdpb75",
              "_$type": "Sprite3D",
              "name": "floor_corner_ornament",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8.349997,
                  "y": 0.1817454,
                  "z": 5.85
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "745588b5-1f3a-4959-8b57-18ecc05f5ca5",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1yux01mr",
              "_$type": "Sprite3D",
              "name": "decorative_plant",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -17.43,
                  "y": 0.1817454,
                  "z": -4.106738
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
                    "_$uuid": "cbaa25a5-eb85-4d2f-8a6a-1bdbf55c7d87",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "1258f445-5cc5-42ad-a0d2-afdbbd7aed69",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "74077185-3146-4850-baec-1374697fa1a6",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "2ac7ecd1-c2bf-4213-9c9b-6d45ae0b11d1",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "33m8lkff",
              "_$type": "Sprite3D",
              "name": "console",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16.98015,
                  "y": 0.1817454,
                  "z": 1.152728
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7375736,
                  "y": 0.7375736,
                  "z": 0.7375736
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f96f7f47-7461-425d-be35-6fb6ad944bdb",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "j6yaks0k",
              "_$type": "Sprite3D",
              "name": "big_screen",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -17.70134,
                  "y": 2.238543,
                  "z": -0.1653848
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071083811846948,
                  "w": 0.7071051811847799
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6974859,
                  "y": 0.6974859,
                  "z": 0.6974859
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "529776db-bf7d-4a16-84e4-a7fc9fe84571",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "kxxv26g3",
              "_$type": "Sprite3D",
              "name": "console_screen",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -17.70134,
                  "y": 2.46,
                  "z": 3.85
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071068311865479,
                  "w": -0.7071067311865435
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "3f4802cd-5eaa-4b2f-8528-1ebcba17c87a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "8457c8ed-762c-4941-b056-3bb8a490d531",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "c2mwix5c",
              "_$type": "Sprite3D",
              "name": "projector stars",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12.17007,
                  "y": -0.27,
                  "z": -0.08224347
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.648,
                  "y": 0.648,
                  "z": 0.648
                }
              },
              "_$child": [
                {
                  "_$id": "elyguxma",
                  "_$type": "PointLight",
                  "name": "Point light",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.07684511,
                      "y": 3.95,
                      "z": 0.01199721
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "PointLightCom",
                      "color": {
                        "_$type": "Color",
                        "r": 0.08823532,
                        "g": 0.8113588
                      },
                      "intensity": 2.02,
                      "lightmapBakedType": 0,
                      "shadowMode": 0,
                      "shadowStrength": 1,
                      "shadowDistance": 50,
                      "shadowDepthBias": 1,
                      "shadowNormalBias": 1,
                      "shadowNearPlane": 0.1,
                      "range": 5
                    }
                  ]
                },
                {
                  "_$id": "x6ye3stu",
                  "_$type": "Sprite3D",
                  "name": "projector_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "3a19755f-fa29-4f21-8319-b3b692b99a9d",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "b7f63cd6-0b5f-4b1a-8d88-2a6ecec4afde",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d36e9291-9484-444c-98ea-942b2c02677f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9q9ppkgc",
              "_$type": "Sprite3D",
              "name": "light_celing_1",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -11.51335,
                  "y": 3.818255,
                  "z": 0.06958035
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
                    "_$uuid": "913b9ce6-24bb-43e3-bf81-c22ec3e3c7ab",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "sharedMaterials": [
                    {
                      "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f4880d00-199d-438c-be08-cf42c9564d10",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7cd5e621-98ea-4c20-85cd-3e9fff8ee170",
                      "_$type": "Material"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "nn50ml3z",
                  "_$type": "PointLight",
                  "name": "Point light",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.02
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "PointLightCom",
                      "intensity": 1.06,
                      "lightmapBakedType": 0,
                      "shadowMode": 0,
                      "shadowStrength": 1,
                      "shadowDistance": 50,
                      "shadowDepthBias": 1,
                      "shadowNormalBias": 1,
                      "shadowNearPlane": 0.1,
                      "range": 5
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "acj0ovsf",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "fx1v1o4j",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "igv7qk21",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "yzo1g5xr",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "0auhhczb",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "zwtopwx9",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "acu169s2",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "7zm9ds37",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "v1lcvhib",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "zuifq0v6",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "thhitvg7",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "z": -6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "olpw3z6w",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "82f0g5ff",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "oqkkejv7",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "etr79xq4",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -16,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "gtshtjse",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "dn7oawij",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "bia6wfri",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4ry8f8ps",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -12,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "j3pai4lb",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ms87ov9d",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$child": [
                {
                  "_$id": "k5zqi0dz",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "aic0l5fw",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -8,
                  "z": 6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "6oeak5qs",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nn2zcqno",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (6)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18,
                  "z": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071059811861163,
                  "w": -0.7071075811860736
                }
              },
              "_$child": [
                {
                  "_$id": "sjb1ouui",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "v4eupnzo",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (6)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18,
                  "z": 4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071092311824112,
                  "w": 0.7071043311821952
                }
              },
              "_$child": [
                {
                  "_$id": "ho6gvcoe",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9k1be50e",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (7)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071092311824112,
                  "w": 0.7071043311821952
                }
              },
              "_$child": [
                {
                  "_$id": "636p173h",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1n748irn",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (7)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071059811861163,
                  "w": -0.7071075811860736
                }
              },
              "_$child": [
                {
                  "_$id": "g7btwdoc",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ikma0f9c",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (8)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071059811861163,
                  "w": -0.7071075811860736
                }
              },
              "_$child": [
                {
                  "_$id": "9hf8u5z3",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "am0wr4cl",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (8)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -18,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071092311824112,
                  "w": 0.7071043311821952
                }
              },
              "_$child": [
                {
                  "_$id": "tv4e3f0f",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nisqfcc6",
              "_$type": "Sprite3D",
              "name": "decorative_wall_3 (9)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071092311824112,
                  "w": 0.7071043311821952
                }
              },
              "_$child": [
                {
                  "_$id": "w060zhs2",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_3_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "db30d119-a3bc-471f-a835-c4a36167ce70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "bv5rodtx",
              "_$type": "Sprite3D",
              "name": "decorative_wall_1 (9)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6,
                  "z": -4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071059811861163,
                  "w": -0.7071075811860736
                }
              },
              "_$child": [
                {
                  "_$id": "eyx7nndf",
                  "_$type": "Sprite3D",
                  "name": "decorative_wall_1_LOD1",
                  "isStatic": true,
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
                        "_$uuid": "b755fc5f-b015-416c-9b72-27b8b4345258",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "7f84e631-314e-457d-9934-ca46e0f3444f",
                          "_$type": "Material"
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
          "_$id": "al9id9x2",
          "_$type": "Sprite3D",
          "name": "ReflectionProb",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -5.127931842577197,
              "y": -1.6807075687299764,
              "z": 1.5096051496027802
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "ReflectionProbe",
              "boundsMin": {
                "_$type": "Vector3",
                "x": -12.488459902059427,
                "y": 2.2919596177685904,
                "z": -6.08543605717324
              },
              "boundsMax": {
                "_$type": "Vector3",
                "x": -0.7919009379764166,
                "y": 4.956040372694666,
                "z": 4.033962990811201
              },
              "ambientMode": 1,
              "ambientColor": {
                "_$type": "Color"
              },
              "boxProjection": true,
              "farPlane": 0,
              "nearPlane": 1000,
              "cullingMask": 0,
              "clearFlag": 1,
              "resolution": 128,
              "ambientSH": {
                "_$type": "Float32Array",
                "value": [
                  0.14948588609695435,
                  0.146085724234581,
                  0.14574681222438812,
                  0.010559708811342716,
                  0.02687402069568634,
                  0.053618863224983215,
                  -0.015585433691740036,
                  -0.0061078364960849285,
                  -0.001050249207764864,
                  0.021086180582642555,
                  0.008850484155118465,
                  0.000024871233108569868,
                  0.013885503634810448,
                  0.005620864219963551,
                  -0.0011916536604985595,
                  -0.020941490307450294,
                  -0.016168976202607155,
                  -0.014620304107666016,
                  0.017345936968922615,
                  0.018551547080278397,
                  0.019536064937710762,
                  -0.025532925501465797,
                  -0.020851749926805496,
                  -0.021185139194130898,
                  0.013909432105720043,
                  0.016982415691018105,
                  0.018198801204562187
                ]
              },
              "_reflectionsIblSamples": 128,
              "iblTex": {
                "_$uuid": "955dc783-36fa-4e86-a6b5-e735a3886486",
                "_$type": "TextureCube"
              },
              "iblTexRGBD": true
            }
          ]
        },
        {
          "_$id": "3xv97pnu",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -9.886957594928921,
              "y": 2,
              "z": 3.668513953862341
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
                "_$uuid": "7ef916b0-c792-4aa7-a9df-576c8e3431b5",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "1d3a7b7f-5421-421e-b8f4-4937fab8dc10",
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
          ]
        },
        {
          "_$id": "4w4j8kkw",
          "_$type": "Camera",
          "name": "Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.3789768346353708,
              "y": 2.62206097647107,
              "z": 6.002064184110976
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.05464323316733632,
              "y": 0.5140016631917278,
              "z": 0.03283394124756199,
              "w": 0.8554170559483306
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.01,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
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
          "_$id": "fgkkeg9i",
          "_$type": "Sprite3D",
          "name": "DirectionLight",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.6579917669296265,
              "y": 3.9537227153778076,
              "z": 8.796426773071289
            },
            "localRotation": {
              "_$type": "Quaternion"
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "intensity": 1,
              "lightmapBakedType": 0,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "shadowCascadesMode": 0,
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "m4solpj2",
          "_$type": "Sprite3D",
          "name": "Sphere(1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -9.18,
              "y": 2,
              "z": 7.951872339798421
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
                "_$uuid": "f1e48cc9-d67d-4196-92dd-77d9ee2f076c",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "sharedMaterials": [
                {
                  "_$uuid": "1d3a7b7f-5421-421e-b8f4-4937fab8dc10",
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
          ]
        }
      ]
    }
  ]
}