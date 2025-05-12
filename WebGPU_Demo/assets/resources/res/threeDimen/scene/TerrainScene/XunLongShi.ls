{
  "_$ver": 1,
  "_$id": "la56smy0",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "mouseThrough": true,
  "_$child": [
    {
      "_$id": "hprtljfc",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.1,
        "g": 0.1,
        "b": 0.1,
        "a": null
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "dd05d332-a410-4163-8caf-1a8663689da7",
            "_$type": "Texture2D"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "3rfcq8hl",
          "_$type": "Sprite3D",
          "name": "Scenes",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "008duwrf",
              "_$type": "Sprite3D",
              "name": "Light",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 1.4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "e3hq3zne",
                  "_$type": "Sprite3D",
                  "name": "Directional light",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.57,
                      "y": 9.87,
                      "z": -0.8
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.30144010307432056,
                      "y": 0.6842180069781874,
                      "z": 0.6578541067093078,
                      "w": -0.09059557092396409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "DirectionLightCom",
                      "color": {
                        "_$type": "Color",
                        "r": 0.1757137,
                        "g": 0.734664,
                        "b": 0.9191176
                      },
                      "intensity": 0.6,
                      "lightmapBakedType": 2
                    }
                  ]
                },
                {
                  "_$id": "axah8oki",
                  "_$type": "Sprite3D",
                  "name": "Point light",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 16.2,
                      "y": 6.4,
                      "z": -15.22
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
                        "r": 0.9338235,
                        "g": 0.869422,
                        "b": 0
                      },
                      "intensity": 2,
                      "lightmapBakedType": 2,
                      "shadowCascadesMode": null,
                      "range": 5.996433
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "8h8n6a7u",
              "_$type": "Sprite3D",
              "name": "HeightMap",
              "active": false,
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
                    "_$uuid": "0bafb7eb-871c-4cc4-ab31-4144bbb4aaa5",
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
                      "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "tir37wme",
              "_$type": "Sprite3D",
              "name": "Area",
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "27n15bhs",
                  "_$type": "Sprite3D",
                  "name": "path0",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12.2,
                      "y": 10.379,
                      "z": 9.710001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "pxiyltlm",
                  "_$type": "Sprite3D",
                  "name": "path1",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.34,
                      "y": 10.379,
                      "z": 13.68
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "qj0fesxl",
                  "_$type": "Sprite3D",
                  "name": "path2",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.92,
                      "y": 10.379,
                      "z": 6.719999
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9bwt2wzs",
                  "_$type": "Sprite3D",
                  "name": "path3",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.320001,
                      "y": 8.674,
                      "z": 8.620001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "kb5zp36r",
                  "_$type": "Sprite3D",
                  "name": "path4",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12.54,
                      "y": 8.674,
                      "z": 7.879999
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "67093ool",
                  "_$type": "Sprite3D",
                  "name": "path5",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -13.5,
                      "y": 6.934,
                      "z": -12.19
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "iwoneysm",
                  "_$type": "Sprite3D",
                  "name": "path6",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -21.44,
                      "y": 6.934,
                      "z": -19.26
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "mxqpxl6n",
                  "_$type": "Sprite3D",
                  "name": "path7",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -11.99,
                      "y": 6.934,
                      "z": -20.96
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "u2ns4qha",
                  "_$type": "Sprite3D",
                  "name": "path8",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.03,
                      "y": 6.939,
                      "z": -13.82
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "s4el07bm",
                  "_$type": "Sprite3D",
                  "name": "path9",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5.82,
                      "y": 6.939,
                      "z": -21.09
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071068311865453,
                      "y": 6.181725272641482e-8,
                      "z": -6.181723272641394e-8,
                      "w": -0.7071067311865409
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e3b36dd9-8a54-4ed2-b3f1-ab7814962642",
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
                          "_$uuid": "8871b44c-87b7-4d54-9d7b-7e56f73e053b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qppe441c",
              "_$type": "Sprite3D",
              "name": "New-Part-01",
              "isStatic": true,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "g5nrzvhi",
                  "_$type": "Sprite3D",
                  "name": "1111",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "1f179ed5-c881-4afc-9747-69a390e93341",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.09431724,
                        "y": 0.09431724,
                        "z": 0.5402582,
                        "w": 0.2837384
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "8f0579ca-7dd6-4db9-96bd-66193be8fd19",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "6filhkwl",
                  "_$type": "Sprite3D",
                  "name": " 003",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "f7247230-2a70-4d41-afcb-6034cd972f5e",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.09136958,
                        "y": 0.09136958,
                        "z": 0.1494925,
                        "w": 0.8515109
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "8f0579ca-7dd6-4db9-96bd-66193be8fd19",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "stqn9w0f",
                  "_$type": "Sprite3D",
                  "name": "Bridge_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "841fc5da-50da-4921-9d5b-f2bbcbf5b6b5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08938755,
                        "y": 0.08938755,
                        "z": 0.3684025,
                        "w": 0.7324877
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "yleeif16",
                  "_$type": "Sprite3D",
                  "name": "Bridge_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "b6b4b450-e688-460f-8c93-260e8ca7abc2",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1095294,
                        "y": 0.1095294,
                        "z": 0.7250831,
                        "w": 0.2836789
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "c8wpngao",
                  "_$type": "Sprite3D",
                  "name": "Bridge_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "fdd46ac8-4754-4ef5-bdb6-1664ed2a0b35",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.09827082,
                        "y": 0.09827082,
                        "z": 0.1494655,
                        "w": 0.4538298
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "i9uahfmo",
                  "_$type": "Sprite3D",
                  "name": "Door_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "e68a4834-0337-4e84-9656-842f14089045",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07810798,
                        "y": 0.07810798,
                        "z": 0.3482673,
                        "w": 0.1142422
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "77a7ba1e-f110-4d7b-987b-ed60994e2e8c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "1apcav5w",
                  "_$type": "Sprite3D",
                  "name": "Door_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "9d9956ad-df17-464c-80d7-57e933e0bc41",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.078334,
                        "y": 0.078334,
                        "z": 0.36927,
                        "w": 0.1984245
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "77a7ba1e-f110-4d7b-987b-ed60994e2e8c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "y9okx0rc",
                  "_$type": "Sprite3D",
                  "name": "Door_03",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "2f268171-921d-4685-b0b2-c0ae2baf282f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08695064,
                        "y": 0.08695064,
                        "z": 0.1495098,
                        "w": 0.5524201
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "77a7ba1e-f110-4d7b-987b-ed60994e2e8c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "go08i8fb",
                  "_$type": "Sprite3D",
                  "name": "Godbox_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "6a1f896f-9ac8-404e-a8c4-410d1551f6a7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1164132,
                        "y": 0.1164132,
                        "z": 0.3682969,
                        "w": 0.615689
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "4ac2c09e-a292-452d-9283-4597d39b4a40",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "qk4v1ukv",
                  "_$type": "Sprite3D",
                  "name": "Godbox_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "a6ff2576-9428-42dd-80e9-5909ae6a7993",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.01978666,
                        "y": 0.01978666,
                        "z": 0.09890671,
                        "w": 0.3641678
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "4ac2c09e-a292-452d-9283-4597d39b4a40",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "dpcr55cv",
                  "_$type": "Sprite3D",
                  "name": "Godbox_03",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.18,
                      "y": 1.47,
                      "z": -0.18
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
                        "_$uuid": "db467c0d-5028-496e-9374-6c84134566e9",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1159024,
                        "y": 0.1159024,
                        "z": -0.0004527437,
                        "w": 0.6681489
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "4ac2c09e-a292-452d-9283-4597d39b4a40",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "bwjx3na9",
                  "_$type": "Sprite3D",
                  "name": "Godbox_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "3bd86c21-1386-4e00-bd4a-c196adcb8450",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08054454,
                        "y": 0.08054454,
                        "z": 0.1495348,
                        "w": 0.6398475
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "4ac2c09e-a292-452d-9283-4597d39b4a40",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "nwq7ov77",
                  "_$type": "Sprite3D",
                  "name": "Godbox_005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "14a2f852-ac74-4d1b-93c5-39658527d334",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1163941,
                        "y": 0.1163941,
                        "z": -0.0004546645,
                        "w": 0.8734092
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "4ac2c09e-a292-452d-9283-4597d39b4a40",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "w1pbli54",
                  "_$type": "Sprite3D",
                  "name": "Mushrooms_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "fa3f2c22-1750-4752-b168-86751348d097",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07861106,
                        "y": 0.07861106,
                        "z": -0.0003070745,
                        "w": 0.3854351
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "abe1e886-9fdf-40a6-b3c1-356a8e0fa337",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "svotcg91",
                  "_$type": "Sprite3D",
                  "name": "Mushrooms_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "7636d31e-761b-41cc-baf0-02736276d9c2",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.09037051,
                        "y": 0.09037051,
                        "z": 0.5738053,
                        "w": 0.1043855
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "abe1e886-9fdf-40a6-b3c1-356a8e0fa337",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "dtz9hxs9",
                  "_$type": "Sprite3D",
                  "name": "Mushrooms_03",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "4ab49cf9-0937-4003-859e-5d872942812d",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.05799334,
                        "y": 0.05799334,
                        "z": 0.7370177,
                        "w": 0.140161
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "abe1e886-9fdf-40a6-b3c1-356a8e0fa337",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9a4bupv7",
                  "_$type": "Sprite3D",
                  "name": "Mushrooms_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "c6690feb-1a4d-4fb3-a3bb-752b014e29f6",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06384482,
                        "y": 0.06384482,
                        "z": 0.5914941,
                        "w": 0.1984811
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "abe1e886-9fdf-40a6-b3c1-356a8e0fa337",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "p4z7sizz",
                  "_$type": "Sprite3D",
                  "name": "Object001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "f35263d3-b6f7-4d0f-8c80-18e4d7a90cb8",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1105162,
                        "y": 0.1105162,
                        "z": 0.4628868,
                        "w": -0.000431704
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "2be3e741-5823-4087-ba97-2fb23db3f12b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "azhl9ipn",
                  "_$type": "Sprite3D",
                  "name": "Object002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "4b70e2f3-ae25-4c61-bc71-3b9d34ab54e5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1090539,
                        "y": 0.1090539,
                        "z": 0.8349482,
                        "w": 0.2836808
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "8f0579ca-7dd6-4db9-96bd-66193be8fd19",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "35fa3ljf",
                  "_$type": "Sprite3D",
                  "name": "Object007",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "89905210-f4cd-4995-b1ef-c1188a602032",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.04425928,
                        "y": 0.04425928,
                        "z": 0.09881111,
                        "w": 0.3279521
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "62623127-0718-40d4-8e2e-1a8a7500e8a6",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "dpkp9h8l",
                  "_$type": "Sprite3D",
                  "name": "Object008",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "a2cf3b7f-6d15-4065-866d-eea058e7c95a",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.03083229,
                        "y": 0.03083229,
                        "z": 0.1160905,
                        "w": 0.6684812
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "2be3e741-5823-4087-ba97-2fb23db3f12b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ijvg86uh",
                  "_$type": "Sprite3D",
                  "name": "Object009",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "75e8388b-ec42-4504-8674-af499b05762e",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.03459896,
                        "y": 0.03459896,
                        "z": 0.4270505,
                        "w": 0.1144122
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "2be3e741-5823-4087-ba97-2fb23db3f12b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "pp2hxbwc",
                  "_$type": "Sprite3D",
                  "name": "Object012",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47,
                      "z": -0.12
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
                        "_$uuid": "8b6a8b14-61e1-457d-b6c7-1bcc21c65580",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1989037,
                        "y": 0.1989037,
                        "z": 0.1490725,
                        "w": -0.0007769677
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75767abe-c6bd-4f92-899d-ab183870c62a",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "s1cf5d5j",
                  "_$type": "Sprite3D",
                  "name": "Object020",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.411
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
                        "_$uuid": "93d41bc0-4e59-40e7-8163-164bbe15dfa7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1144451,
                        "y": 0.1144451,
                        "z": 0.3481253,
                        "w": -0.0004470513
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75d6a1e2-0c3c-49e4-8d82-46a3796b0e6c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "b9bjy04r",
                  "_$type": "Sprite3D",
                  "name": "Object021",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "c7820bc4-2baa-4f46-bf8e-9f844246e694",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1046104,
                        "y": 0.1046104,
                        "z": 0.5737497,
                        "w": -0.0004086343
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75767abe-c6bd-4f92-899d-ab183870c62a",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "i14w9xdi",
                  "_$type": "Sprite3D",
                  "name": "Object027",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "ad601361-eacb-4e61-916f-f4f13e5094ed",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1341873,
                        "y": 0.1341873,
                        "z": 0.1493253,
                        "w": 0.1982063
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75d6a1e2-0c3c-49e4-8d82-46a3796b0e6c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "8w09oss6",
                  "_$type": "Sprite3D",
                  "name": "Object030",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "0c6f1727-e80a-40ff-9f17-e347afeb60a3",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1370337,
                        "y": 0.1370337,
                        "z": 0.8192285,
                        "w": -0.000535288
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75767abe-c6bd-4f92-899d-ab183870c62a",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "44p1fy5h",
                  "_$type": "Sprite3D",
                  "name": "Object032",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47,
                      "z": -0.12
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
                        "_$uuid": "8320b5b6-33b2-4211-9272-05943f0fa2f0",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1719111,
                        "y": 0.1719111,
                        "z": 0.3680801,
                        "w": 0.2834353
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75d6a1e2-0c3c-49e4-8d82-46a3796b0e6c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "f1t4hpai",
                  "_$type": "Sprite3D",
                  "name": "Object033",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.35,
                      "y": 1.39,
                      "z": -0.49
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
                        "_$uuid": "75345cdb-106e-4c54-bf3d-be2ee19416e4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08987717,
                        "y": 0.08987717,
                        "z": 0.6348278,
                        "w": 0.2837557
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ikge8wfo",
                  "_$type": "Sprite3D",
                  "name": "Object034",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "ac546b3b-3012-4e3a-8eab-1017e15cb187",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1307306,
                        "y": 0.1307306,
                        "z": 0.1493388,
                        "w": 0.7207053
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "gbw8lsii",
                  "_$type": "Sprite3D",
                  "name": "Object035",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "06a69981-91b1-400d-a0ae-1ad685bf93e0",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1404613,
                        "y": 0.1404613,
                        "z": 0.6785901,
                        "w": -0.0005486768
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "z4a2y0z7",
                  "_$type": "Sprite3D",
                  "name": "Object037",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "7a98d2d7-917b-4e81-aaa4-4da6a2d899b5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.05718806,
                        "y": 0.05718806,
                        "z": 0.08913208,
                        "w": 0.7845535
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "a243b9be-52af-4990-974a-70634ca6ed4f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "4lw2fqnx",
                  "_$type": "Sprite3D",
                  "name": "Object038",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "7f70b3f5-3f5a-4b4f-afd3-61af2a465f01",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08889535,
                        "y": 0.08889535,
                        "z": -0.0003472475,
                        "w": 0.7844297
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0669cb4e-5e18-4185-883a-400d74233ca4",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "tj9nhuqg",
                  "_$type": "Sprite3D",
                  "name": "Object039",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "00b4445f-0b4d-4547-b7e2-ac9f0b421b63",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1216142,
                        "y": 0.1216142,
                        "z": 0.1493744,
                        "w": 0.3321566
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "2be3e741-5823-4087-ba97-2fb23db3f12b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "xp6520zu",
                  "_$type": "Sprite3D",
                  "name": "Object040",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "6e91b4e3-5a4f-47b1-b0de-2a158f8b0816",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1286723,
                        "y": 0.1286723,
                        "z": -0.000502626,
                        "w": 0.539245
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "befacee1-1013-48ca-9553-fc1098fc04f1",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "4fcpk01v",
                  "_$type": "Sprite3D",
                  "name": "polySurface2878",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "ffb47962-fb9c-47a1-a20e-b5f70f4a6e57",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08512652,
                        "y": 0.08512652,
                        "z": 0.8623881,
                        "w": 0.1983979
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "62623127-0718-40d4-8e2e-1a8a7500e8a6",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "3hkc39iq",
                  "_$type": "Sprite3D",
                  "name": "polySurface2886",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "1104953a-0f91-49cd-b7bf-4704b64291dd",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.09875556,
                        "y": 0.09875556,
                        "z": -0.0003857639,
                        "w": 0.2862353
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "8f0579ca-7dd6-4db9-96bd-66193be8fd19",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ko0bj15v",
                  "_$type": "Sprite3D",
                  "name": "polySurface2890",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "1b9f9576-6448-4b7e-b751-91cbb8bd2d5f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1365365,
                        "y": 0.1365365,
                        "z": -0.0005333457,
                        "w": 0.149369
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75d6a1e2-0c3c-49e4-8d82-46a3796b0e6c",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "2n37u1bl",
                  "_$type": "Sprite3D",
                  "name": "polySurface2902",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "fae010e1-8ce3-48e2-be65-d0630dc9e9c8",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1497987,
                        "y": 0.1497987,
                        "z": -0.0005851512,
                        "w": -0.0005851512
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "75767abe-c6bd-4f92-899d-ab183870c62a",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "8bnaq311",
                  "_$type": "Sprite3D",
                  "name": "polySurface2903",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "2fe53bd8-5e5c-4fc5-b660-ff89bbd028ae",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.1606316,
                        "y": 0.1606316,
                        "z": 0.3681242,
                        "w": 0.4550201
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "2be3e741-5823-4087-ba97-2fb23db3f12b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "t13gnfd0",
                  "_$type": "Sprite3D",
                  "name": "polySurface2904",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "f5cbb335-2f5a-4a75-a1ef-729e3406961f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08597806,
                        "y": 0.08597806,
                        "z": 0.2837909,
                        "w": 0.2837709
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "62623127-0718-40d4-8e2e-1a8a7500e8a6",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "plxzh21s",
                  "_$type": "Sprite3D",
                  "name": "Props_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "b10c460e-82e1-4aad-b2f2-38a634aaf970",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06679523,
                        "y": 0.06679523,
                        "z": 0.7950959,
                        "w": 0.1984695
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "ae0491ce-ddb6-4198-8113-30600fd1fe20",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "wsmeo8u7",
                  "_$type": "Sprite3D",
                  "name": "Props_03",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "88a02747-b354-4e30-8c60-bf91233356e7",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06089806,
                        "y": 0.06089806,
                        "z": 0.07886368,
                        "w": 0.3855043
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "ae0491ce-ddb6-4198-8113-30600fd1fe20",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "290g1xvy",
                  "_$type": "Sprite3D",
                  "name": "Props_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "328f44cc-4ccf-4c12-8033-fd5667e752d3",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07612256,
                        "y": 0.07612256,
                        "z": 0.4478919,
                        "w": 0.1984331
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "ae0491ce-ddb6-4198-8113-30600fd1fe20",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "c063f1dg",
                  "_$type": "Sprite3D",
                  "name": "Stone_01_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "d5071d88-2ea4-4c58-aa9c-829b337adb7d",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06259023,
                        "y": 0.06259023,
                        "z": 0.8195193,
                        "w": 0.1365844
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "06bbfb5b-d7e9-45c4-876d-6ce3a5baf5dc",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "7p4euhi6",
                  "_$type": "Sprite3D",
                  "name": "Stone_01_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "753f5c3a-7b02-416b-8760-fe7f139f6de4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.0669253,
                        "y": 0.0669253,
                        "z": 0.524588,
                        "w": 0.198469
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "06bbfb5b-d7e9-45c4-876d-6ce3a5baf5dc",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "3t3h5wd0",
                  "_$type": "Sprite3D",
                  "name": "Stone_02_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "233f531f-6ba3-494a-9ecc-ecc9ea711ada",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07466238,
                        "y": 0.07466238,
                        "z": -0.0002916499,
                        "w": 0.4644954
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "88ce70b1-003e-4d35-a86b-31d0a8c9a5f2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "g13jaovg",
                  "_$type": "Sprite3D",
                  "name": "Stone_02_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "3bbd2693-5c86-410c-92b1-a31c71ae2b71",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06974173,
                        "y": 0.06974173,
                        "z": 0.7247719,
                        "w": 0.198458
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "88ce70b1-003e-4d35-a86b-31d0a8c9a5f2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "d7swqpqb",
                  "_$type": "Sprite3D",
                  "name": "Stone_02_03",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "1f4e9c80-4c57-4988-82b3-fef611e362b4",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06834363,
                        "y": 0.06834363,
                        "z": 0.6559297,
                        "w": 0.1984635
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "88ce70b1-003e-4d35-a86b-31d0a8c9a5f2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "o5uzuy4v",
                  "_$type": "Sprite3D",
                  "name": "Stone_02_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "c2006f7d-d6fa-4a74-8edf-a246ee9bdb70",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.08500285,
                        "y": 0.08500285,
                        "z": 0.2837947,
                        "w": 0.1983984
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "88ce70b1-003e-4d35-a86b-31d0a8c9a5f2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jeaze6v6",
                  "_$type": "Sprite3D",
                  "name": "Stone_03_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "6d8b40a5-16c2-444f-be52-863aa0706625",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07048783,
                        "y": 0.07048783,
                        "z": 0.2838514,
                        "w": 0.3697689
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "a243b9be-52af-4990-974a-70634ca6ed4f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "njy97kyi",
                  "_$type": "Sprite3D",
                  "name": "Stone_03_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "2bf535a3-4b62-4037-8943-56ad5341183f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06494367,
                        "y": 0.06494367,
                        "z": 0.4630648,
                        "w": 0.1102295
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "a243b9be-52af-4990-974a-70634ca6ed4f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "l375pf3x",
                  "_$type": "Sprite3D",
                  "name": "Stone_04_01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "b43d47b6-6d0d-4b97-afdb-96ad3e99f411",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.04141212,
                        "y": 0.04141212,
                        "z": 0.09882224,
                        "w": 0.2864593
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0669cb4e-5e18-4185-883a-400d74233ca4",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "njrl43dm",
                  "_$type": "Sprite3D",
                  "name": "Stone_04_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "201cddbc-d60f-48eb-a0d0-61392608a7cc",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.05609582,
                        "y": 0.05609582,
                        "z": 0.882533,
                        "w": 0.1366098
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0669cb4e-5e18-4185-883a-400d74233ca4",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "bp8s38wh",
                  "_$type": "Sprite3D",
                  "name": "Stone_04_04",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "2cc30fea-7bc1-4e19-9f39-cef8821701c5",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.05746675,
                        "y": 0.05746675,
                        "z": 0.6789143,
                        "w": 0.140163
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0669cb4e-5e18-4185-883a-400d74233ca4",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "oi6hi11y",
                  "_$type": "Sprite3D",
                  "name": "Trees-01",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "0eb509a7-fdd8-42c3-8356-1db7d1e03cc0",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.06973977,
                        "y": 0.06973977,
                        "z": 0.2838543,
                        "w": 0.4404751
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0b22c4da-ccb1-4817-845b-d6529780f149",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "lz0fmbr4",
                  "_$type": "Sprite3D",
                  "name": "Trees_02",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.47
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
                        "_$uuid": "96c94074-8d91-4c76-9e97-cdea064e6a6a",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "lightmapIndex": 0,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.07170251,
                        "y": 0.07170251,
                        "z": 0.07491522,
                        "w": 0.464507
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "0b22c4da-ccb1-4817-845b-d6529780f149",
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
          "_$id": "2gfcgwiv",
          "_$type": "Sprite3D",
          "name": "New-Part-01",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 27.42,
              "z": -27.42
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
                "_$uuid": "52ce6eda-50d7-4ea2-b4ec-347956354e39",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "lightmapIndex": 0,
              "lightmapScaleOffset": {
                "_$type": "Vector4",
                "x": 0.418457,
                "y": 0.418457,
                "z": 0.5293962,
                "w": 0.4556476
              },
              "sharedMaterials": [
                {
                  "_$uuid": "5a10f69c-44be-4a3c-84ec-19b9a28848b4",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "jms9gipw",
          "_$type": "Camera",
          "name": "Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -22.444266803953482,
              "y": 15.774341992589562,
              "z": -25.02987887507706
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.05599290523963091,
              "y": -0.9328965698286381,
              "z": -0.166006765569027,
              "w": 0.3146594005430268
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearColor": {
            "_$type": "Color",
            "r": 0.39215686274509803,
            "g": 0.5843137254901961,
            "b": 0.9294117647058824
          }
        }
      ]
    }
  ]
}