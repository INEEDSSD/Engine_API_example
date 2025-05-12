{
  "_$ver": 1,
  "_$id": "ngr5q6xk",
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
        "_$ref": "qbxnrola"
      },
      "scene": {
        "_$ref": "txvhanxm"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "txvhanxm",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "c2177794-2f1b-4e8d-a934-5116ff89b196",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.06350398063659668,
          0.05197752267122269,
          0.05671636760234833,
          0.0034683197736740112,
          0.006331049371510744,
          0.0115611981600523,
          0.08526818454265594,
          0.0671970546245575,
          0.06669334322214127,
          0.001897683716379106,
          0.001400536042638123,
          0.0008505209116265178,
          0.0010248461039736867,
          0.0007734062965027988,
          0.0006579728797078133,
          0.005197882652282715,
          0.006199076771736145,
          0.007599067408591509,
          0.01458232756704092,
          0.01132543757557869,
          0.010404469445347786,
          0.005826145876199007,
          0.004535425920039415,
          0.004677598364651203,
          0.012654552236199379,
          0.010360724292695522,
          0.011916330084204674
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0,
        "b": 0,
        "a": null
      },
      "iblTex": {
        "_$uuid": "67c5b4e8-5f5b-444b-ad62-80093429cac7",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "_$child": [
        {
          "_$id": "2gjpqa3i",
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
              "_$id": "74d6nk0q",
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
                    "_$uuid": "1d75383d-b98a-4607-a32c-049377f6f038",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "07603871-e9c7-4405-9a08-9d82dece729a",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "d2l46qpe",
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
                        "_$uuid": "62999253-63b4-4c7e-9974-b531590cc8ad",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "07603871-e9c7-4405-9a08-9d82dece729a",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nb7d4u0i",
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
                    "_$uuid": "869bd959-2bc8-457f-8922-1d475ea057f2",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rtxa49pr",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3d1bfug2",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qyq3fwq6",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "invv2p20",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "l6syvu3s",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qozaczua",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "kysjx2np",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rry6cdzk",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jal952xd",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "e6pzlpcw",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6l4hftc3",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "t8ttbt9b",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "bq7qke50",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3gut7s6y",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rui8d9ls",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "l3kozm78",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7a9v8ftq",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fsu67j8q",
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
                    "_$uuid": "2b9255df-64f5-47b7-81b7-9a221bd16e3c",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa1e53b1-55ea-4c24-8c35-76b049a9bbd7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "x3ycvdnr",
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
                    "_$uuid": "cd05bd8d-9cb7-4189-9689-3b6805f5453a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mo1ia9lo",
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
                    "_$uuid": "1663a5bc-9333-4c25-a032-29552b99b8cc",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "grkejg01",
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
                    "_$uuid": "1663a5bc-9333-4c25-a032-29552b99b8cc",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mpnig3lm",
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
                    "_$uuid": "2ebf59d7-9338-4cef-9066-245c39578f45",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "99944ff4-c17a-4caf-8532-f1d5ef13c041",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "59aaa285-277f-4501-9731-b0d9268b177d",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "1d148ef4-8b3a-4b9d-a8dc-14d9d9b2bedf",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "lwbnfkc5",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "cak0dxi5",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qneygsmc",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "f5ptiug6",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fbfz4uq9",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "t1601g8y",
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
                  "_$id": "sk37ud9x",
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
                        "_$uuid": "0aca3f26-7364-4d84-9fe3-4623c310e242",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gl3x8oiv",
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
                    "_$uuid": "c7d9e0e9-459f-4b14-896e-a7397f6ed9f7",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6rqldw75",
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
                    "_$uuid": "2ebf59d7-9338-4cef-9066-245c39578f45",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "99944ff4-c17a-4caf-8532-f1d5ef13c041",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "59aaa285-277f-4501-9731-b0d9268b177d",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "1d148ef4-8b3a-4b9d-a8dc-14d9d9b2bedf",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "2ipuz14n",
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
                    "_$uuid": "1663a5bc-9333-4c25-a032-29552b99b8cc",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "vkoq3kd5",
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
                    "_$uuid": "40aca969-fa1a-4259-9034-f48471867463",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "frvl8pgw",
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
                    "_$uuid": "cd05bd8d-9cb7-4189-9689-3b6805f5453a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "e2c95190-b8ef-404c-a673-3368ce491b4a",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "y5n4uvi2",
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
                  "_$id": "4xqfzwdv",
                  "_$type": "Sprite3D",
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
                      "shadowCascadesMode": null,
                      "range": 7.740295
                    }
                  ]
                },
                {
                  "_$id": "s6o7vz3p",
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
                        "_$uuid": "75522432-018e-464d-acf9-935b49a645a9",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "03630bdc-7469-4768-9b68-e44423f2092d",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "fc15336c-2d9e-48e6-aa37-3d0a57bb4f4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "75lk5ivz",
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
                    "_$uuid": "942bf49d-3d98-47cd-bf01-e75c887f9d0e",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    {
                      "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "f59c3eb5-f23a-404e-9c3a-d8dd8afa3ee4",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "761f6e92-d150-4642-855a-2cf3d39a4edb",
                      "_$type": "Material"
                    }
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "2ulizw16",
                  "_$type": "Sprite3D",
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
                      "shadowCascadesMode": null,
                      "range": 13.61332
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nzwqk1ib",
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
                  "_$id": "jvskum2s",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ie6dr0jm",
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
                  "_$id": "j0ob7d2m",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "97rzxwoi",
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
                  "_$id": "6f1tbe2p",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "g9yc0by2",
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
                  "_$id": "3hopejco",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "0efe3ur3",
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
                  "_$id": "7d86huz4",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "16utsjni",
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
                  "_$id": "td2rmlmw",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "w8325dtw",
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
                  "_$id": "65f5uy50",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "g1cs2wxt",
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
                  "_$id": "ds77ye53",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "p3ekgife",
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
                  "_$id": "q9l0xw8p",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "encr91fn",
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
                  "_$id": "6j7y2yrq",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "msdrjcst",
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
                  "_$id": "ip71kma6",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "e2b6f97a",
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
                  "_$id": "l4p35tkv",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mzpldnlb",
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
                  "_$id": "h8919h7s",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "yms8oxzb",
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
                  "_$id": "exh4qyue",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "bfqkr8s9",
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
                  "_$id": "bmk7w6za",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5eemg6op",
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
                  "_$id": "olpnjhfo",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qre5p2ji",
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
                  "_$id": "um6vg5lf",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ctmbl8og",
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
                  "_$id": "u7pvksmb",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4oaqopsd",
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
                  "_$id": "gdj0imrl",
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
                        "_$uuid": "d1446810-9d46-4e95-82b4-d5288fcb71ba",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "0lsh2dv7",
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
                  "_$id": "cxidvvtb",
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
                        "_$uuid": "8cc8ea94-a8df-4cea-be64-79a2faa3e55f",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4"
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "dd189340-0dcd-40d1-9a90-a860864d58e3",
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
          "_$id": "pp87f0dv",
          "_$type": "Sprite3D",
          "name": "ReflectionProb",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.1275334952575626,
              "y": 2.01,
              "z": -0.941227520783674
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
                "x": -19.635737250676822,
                "y": -2.7318980229291423,
                "z": -5.951621595073838
              },
              "boundsMax": {
                "_$type": "Vector3",
                "x": -6.364262749323178,
                "y": 2.741898013392399,
                "z": 7.951621595073838
              },
              "ambientMode": 1,
              "ambientColor": {
                "_$type": "Color"
              },
              "reflectionIntensity": 1.474,
              "boxProjection": true,
              "cullingMask": 0,
              "clearFlag": 1,
              "resolution": 512,
              "ambientSH": {
                "_$type": "Float32Array",
                "value": [
                  0.0607287771999836,
                  0.049812935292720795,
                  0.05434893071651459,
                  0.003536877455189824,
                  0.0059636738151311874,
                  0.010864744894206524,
                  0.08034592866897583,
                  0.06344680488109589,
                  0.06274764239788055,
                  -0.0011056027142331004,
                  -0.0004913738230243325,
                  -0.0014001128729432821,
                  0.0004134081245865673,
                  -0.00006955851131351665,
                  -0.0007396022556349635,
                  0.005233411677181721,
                  0.006207416299730539,
                  0.007487593684345484,
                  0.014224126935005188,
                  0.010947399772703648,
                  0.010070625692605972,
                  0.00038062306703068316,
                  0.00043106527300551534,
                  0.0002867216826416552,
                  0.011494800448417664,
                  0.009660032577812672,
                  0.011049182154238224
                ]
              },
              "_reflectionsIblSamples": 512,
              "iblTex": {
                "_$uuid": "15af94ad-f800-4444-a286-14fa0704d5aa",
                "_$type": "TextureCube"
              },
              "iblTexRGBD": true
            }
          ]
        },
        {
          "_$id": "9oaoq7hv",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -9.18,
              "y": 2,
              "z": 4.12
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
                "_$uuid": "f182524d-8e29-4020-a7c9-c25ee43b59a6",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "b3da4628-c191-44e0-ae88-2bdd5fc3dfd5",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "SphereColliderShape"
              },
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        },
        {
          "_$id": "qbxnrola",
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
          "depthTextureFormat": 35
        },
        {
          "_$id": "zv7b9rrd",
          "_$type": "Sprite3D",
          "name": "Sprite3D",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.6579917669296265,
              "y": 3.9537227153778076,
              "z": 8.796426773071289
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "09szm64z",
          "_$type": "Sprite3D",
          "name": "Sphere(1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -9.18,
              "y": 2,
              "z": 7.586649133385227
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
                "_$uuid": "f182524d-8e29-4020-a7c9-c25ee43b59a6",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "b3da4628-c191-44e0-ae88-2bdd5fc3dfd5",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "SphereColliderShape"
              },
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        }
      ]
    }
  ]
}