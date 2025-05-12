{
  "_$ver": 1,
  "_$id": "2fp509z5",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "mouseThrough": true,
  "_$child": [
    {
      "_$id": "5nh3etwn",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "7c156545-7e00-44d6-ba67-1b182308ba4c",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.12374459207057953,
          0.10613985359668732,
          0.08657346665859222,
          0.04526051878929138,
          0.04544087126851082,
          0.033470697700977325,
          -0.06491713225841522,
          -0.04079898074269295,
          -0.017361881211400032,
          -0.035584449768066406,
          -0.02222704328596592,
          -0.009188842959702015,
          -0.014421571046113968,
          -0.010052907280623913,
          -0.00465368153527379,
          -0.030450481921434402,
          -0.02109227515757084,
          -0.009999345988035202,
          0.008594983257353306,
          0.005884814076125622,
          0.0027768679428845644,
          0.038298871368169785,
          0.02633255161345005,
          0.012982935644686222,
          0.006234047934412956,
          0.002942848252132535,
          -0.00016141237574629486
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "a": null
      },
      "iblTex": {
        "_$uuid": "1a86acbf-dc93-4dbf-b043-060221d3a596",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "lightmaps": [],
      "componentElementDatasMap": {
        "_$type": "Record"
      },
      "_$child": [
        {
          "_$id": "k1xijs2q",
          "_$type": "Sprite3D",
          "name": "GameObject",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "7c1oti6l",
              "_$type": "Sprite3D",
              "name": "Boxes (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 38.65984,
                  "y": 0.2435496,
                  "z": 64.03349
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.26919569929891474,
                  "w": -0.963085497491769
                }
              },
              "_$child": [
                {
                  "_$id": "krcw19rl",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "nosr34v2",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "y963zvkq",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "zf2ml2uv",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "f48lcknw",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "7gssaxoz",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "hgynxqds",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9ojw8fog",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "q1b2my73",
              "_$type": "Sprite3D",
              "name": "Barrels (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 41.77931,
                  "y": 0.2435496,
                  "z": 63.93331
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "q0q379a0",
                  "_$type": "Sprite3D",
                  "name": "barrel.003",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.41,
                      "z": -0.3000031
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "r5plf1jw",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.1599998,
                      "z": -0.1700058
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "y37w95mw",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.6499977,
                      "z": -1.290001
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "po4vgnaz",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.6100006,
                      "z": -1.060005
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "13hky7rp",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (4)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.75,
                      "z": 0.08999634
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "33g01pc3",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (5)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.3800011,
                      "y": 1.86,
                      "z": -0.1700058
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071058811859987,
                      "w": -0.7071076811859509
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "0l6koyli",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (6)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.7099991,
                      "y": 1.86,
                      "z": -0.1700058
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071058811859987,
                      "w": -0.7071076811859509
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fc3uwnq3",
              "_$type": "Sprite3D",
              "name": "Boxes (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 46.45,
                  "y": 0.2435496,
                  "z": 63.89
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.44242388046954767,
                  "w": -0.8968060604112058
                }
              },
              "_$child": [
                {
                  "_$id": "c3tfhjmo",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ktdp1jdr",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "km7cqfn6",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "r9peal69",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "fgue4704",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "qppqekbk",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "whz6j88b",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ccr1gn5x",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "270fnj63",
              "_$type": "Sprite3D",
              "name": "bowl",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 55.96932,
                  "y": 1.966742,
                  "z": 71.40445
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
                    "_$uuid": "733af078-b6db-4fff-b4b9-63815ca67ed7",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ofrjlyk3",
              "_$type": "Sprite3D",
              "name": "mug (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 60.05794,
                  "y": 0.9653207,
                  "z": 67.13928
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
                    "_$uuid": "35aaf609-621f-4cea-b7eb-b16895dbf766",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "dvgzd954",
              "_$type": "Sprite3D",
              "name": "well.001",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 51.31726,
                  "z": 57.8326
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
                    "_$uuid": "388ad38c-055f-4a9c-9e45-4f8fb1aa8d72",
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
                      "_$uuid": "7ab907c9-d9f6-4f6e-90d7-125456c52028",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "88eae1aa-5006-4779-8237-e5a8fffe4e86",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mbn0ad0f",
              "_$type": "Sprite3D",
              "name": "barrel.002",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 61.11366,
                  "z": 71.85554
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
                    "_$uuid": "a89e65c5-4aae-4ea8-acf0-5d1ddb480e5c",
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
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "yf8mps18",
              "_$type": "Sprite3D",
              "name": "box.001",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 61.42567,
                  "y": -0.001420934,
                  "z": 70.26081
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
                    "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                      "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wo5bf6d1",
              "_$type": "Sprite3D",
              "name": "box.001 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 60.67095,
                  "y": -0.001420934,
                  "z": 68.97128
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
                    "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                      "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "d85x70f4",
              "_$type": "Sprite3D",
              "name": "pot",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.79418,
                  "y": 0.7795983,
                  "z": 78.05002
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.3504530612812874,
                  "w": -0.9365802965248492
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cc836677-b38b-42a2-8381-e52c5f572f36",
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
                      "_$uuid": "543f051f-0762-4bfc-bb29-4e29ccb373cc",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "eg6l77ub",
              "_$type": "Sprite3D",
              "name": "bottle.003",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 55.27292,
                  "y": 0.9567416,
                  "z": 70.92178
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
                    "_$uuid": "5c2dd8fa-31a2-4f61-a758-99fbe2ba9067",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
                  "sharedMaterials": [
                    null,
                    {
                      "_$uuid": "7a131a0a-6e82-4d5d-a58e-a260cd3443cf",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qzx1nvbn",
              "_$type": "Sprite3D",
              "name": "mug",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.6992,
                  "y": 0.7807362,
                  "z": 77.66991
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
                    "_$uuid": "35aaf609-621f-4cea-b7eb-b16895dbf766",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jc14h9d6",
              "_$type": "Sprite3D",
              "name": "bottle",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 60.42189,
                  "y": 0.9653207,
                  "z": 65.33488
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
                    "_$uuid": "0aa704a5-89b4-4b13-bebe-5684b38cefc2",
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
                      "_$uuid": "d1157dae-f846-4e17-92c6-dedb2802f512",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7a131a0a-6e82-4d5d-a58e-a260cd3443cf",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4tgin2wi",
              "_$type": "Sprite3D",
              "name": "Boxes (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 61.88,
                  "y": 0.008579075,
                  "z": 65.57
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.24576768957051287,
                  "w": -0.969328758865212
                }
              },
              "_$child": [
                {
                  "_$id": "iod036mz",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "oxr18k87",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "2od94imd",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "eg2rr4hp",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "zyusg4hc",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "kg8p8gux",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jjn8yunp",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jxajgv5u",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "2n780n23",
              "_$type": "Sprite3D",
              "name": "frying_pan",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 47.951,
                  "y": 0.955,
                  "z": 61.053
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
                    "_$uuid": "6783fb30-7d4e-4877-ac4e-852864c89551",
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
                      "_$uuid": "543f051f-0762-4bfc-bb29-4e29ccb373cc",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "h70mzai4",
              "_$type": "Sprite3D",
              "name": "vase.002",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 46.27104,
                  "z": 59.13861
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
                    "_$uuid": "b29f4de9-2576-4082-98f6-22923f9dc053",
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
                      "_$uuid": "b3cdd30e-3462-49d9-b2e7-d16b0b3e996e",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "b0i0xwea",
              "_$type": "Sprite3D",
              "name": "brick.025",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 37.98547,
                  "z": 68.44947
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
                    "_$uuid": "6227e36c-37f6-43d5-9cc7-deca0d5acd6a",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1mqaih39",
              "_$type": "Sprite3D",
              "name": "brick.024 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 47.29759,
                  "z": 73.45896
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6091322628968474,
                  "w": -0.7930686516930082
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "1f5f7acf-2b2e-4f83-9c0b-1311555d9dc8",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mepqhxk5",
              "_$type": "Sprite3D",
              "name": "brick.024",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.45984,
                  "z": 71.33947
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
                    "_$uuid": "1f5f7acf-2b2e-4f83-9c0b-1311555d9dc8",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "b25du34f",
              "_$type": "Sprite3D",
              "name": "Three firewoods (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 52.82877,
                  "z": 62.87741
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7913130828583587,
                  "y": 0.5587090878970903,
                  "z": 0.20211369562175763,
                  "w": -0.14428379687448475
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7310051,
                  "y": 0.7310051,
                  "z": 0.7310051
                }
              },
              "_$child": [
                {
                  "_$id": "oeu99waj",
                  "_$type": "Sprite3D",
                  "name": "firewood_single",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.07382663,
                      "y": -0.3540869,
                      "z": -0.200524
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.8226883176144194,
                      "y": -0.511386510949197,
                      "z": -0.19331290413898497,
                      "w": -0.1558778033374693
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "f2iajma4",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.5296425571209851,
                      "y": -0.3323059730970395,
                      "z": -0.4496236635991868,
                      "w": -0.6378793483583074
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jyjqr9mu",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.009295010273500942,
                      "y": 0.026611160783019852,
                      "z": -0.0513637915113534,
                      "w": -0.9982821293739431
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ponmdsjn",
              "_$type": "Sprite3D",
              "name": "Boxes (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 46.94359,
                  "z": 60.90543
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.44053517558285404,
                  "w": -0.8977353502420321
                }
              },
              "_$child": [
                {
                  "_$id": "vqhejhnj",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "3pdax3sj",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "7uts4xoi",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9yhtud36",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "hxwq8n2w",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "wxdkhjxq",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "5ah4lif8",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "g30af2ba",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fh03bhu3",
              "_$type": "Sprite3D",
              "name": "rack_for_weapons_small",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.16,
                  "z": 73.45
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "9b2fde7c-422d-4ce4-9ef5-097944de5c56",
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
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "m3hp2sm4",
              "_$type": "Sprite3D",
              "name": "basket (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 40.719,
                  "y": 0.8648018,
                  "z": 73.001
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
                    "_$uuid": "e691f756-2bb9-4a7d-b7e0-8c1eb8d04518",
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
                      "_$uuid": "dff0001f-4d37-4e0d-86cd-4345307df690",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "hrfvo3j5",
              "_$type": "Sprite3D",
              "name": "firewood (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 43.34148,
                  "z": 73.36068
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
                    "_$uuid": "f5aa0820-9811-4714-bee9-e5657d4be781",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "387gbk0i",
              "_$type": "Sprite3D",
              "name": "bag",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 36.62986,
                  "z": 73.46598
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12899610011808177,
                  "w": -0.9916451009077422
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "3ddb86b9-9d37-42c3-99da-1ddd48a5d709",
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
                      "_$uuid": "0bb5fd4f-b189-4c9a-bdda-08804e4e0ded",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fd6a5c29-10f1-4413-9645-507019e92b07",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "s8eyas92",
              "_$type": "Sprite3D",
              "name": "cage",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 40.87251,
                  "z": 73.09182
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
                    "_$uuid": "83db9c99-5b33-49be-8674-06772b64cc1f",
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
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "sabmwzvh",
              "_$type": "Sprite3D",
              "name": "bucket (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 37.46982,
                  "z": 73.44208
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
                    "_$uuid": "81031859-8a74-44f5-b120-335c20d0bbfc",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4lyz3d7n",
              "_$type": "Sprite3D",
              "name": "cauldron",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 38.43888,
                  "z": 72.90252
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
                    "_$uuid": "6e14fe25-2536-4ae1-b2c0-d2cf80aec90b",
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
                      "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "juo1h0tl",
              "_$type": "Sprite3D",
              "name": "bucket (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.44732,
                  "z": 64.61984
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
                    "_$uuid": "81031859-8a74-44f5-b120-335c20d0bbfc",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "kv9u5m9v",
              "_$type": "Sprite3D",
              "name": "trunk (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 52.07895,
                  "z": 66.24255
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
                    "_$uuid": "eecf79a0-e234-41b3-8445-c3051635c9f1",
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
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "33b1a998-7cb7-412b-8d78-a7405c49f8da",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "2r814z5d",
              "_$type": "Sprite3D",
              "name": "sawing_wood",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.43,
                  "z": 64.72
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
                    "_$uuid": "2924581c-83f1-41c8-af0a-6a4a53967d52",
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
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "33b1a998-7cb7-412b-8d78-a7405c49f8da",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "433ffb7d-9823-409e-a7b3-57e5d0babb2d",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9qx0ckbj",
              "_$type": "Sprite3D",
              "name": "spice_bag",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 49.88,
                  "y": 0.6814113,
                  "z": 66.367
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12200878690875862,
                  "y": 0.5708804387459394,
                  "z": 0.17374268135783957,
                  "w": -0.7931096149012979
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "f16b290e-5738-4e4c-832f-3b1203a1708d",
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
                      "_$uuid": "0bb5fd4f-b189-4c9a-bdda-08804e4e0ded",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "2a305e3b-d7c4-4747-8953-c89806ae402e",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "sai6cca5",
              "_$type": "Sprite3D",
              "name": "tree",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 46.33493,
                  "y": 0.46,
                  "z": 68.74136
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5772373904768184,
                  "w": -0.8165763865282373
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "b4d15e57-12e5-43e9-8b37-b3ee6f4fd17b",
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
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "33b1a998-7cb7-412b-8d78-a7405c49f8da",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "aykprx83",
              "_$type": "Sprite3D",
              "name": "wagon",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 49.94511,
                  "z": 67.02017
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
                    "_$uuid": "736ede8e-e72d-4053-8ebb-28ab6776d98b",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "7a7cphgj",
              "_$type": "Sprite3D",
              "name": "trunk",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 52.2131,
                  "z": 74.83611
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
                    "_$uuid": "eecf79a0-e234-41b3-8445-c3051635c9f1",
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
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "33b1a998-7cb7-412b-8d78-a7405c49f8da",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "a5hwpwum",
              "_$type": "Sprite3D",
              "name": "basket",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 55.04105,
                  "y": 1.926742,
                  "z": 73.23456
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
                    "_$uuid": "e691f756-2bb9-4a7d-b7e0-8c1eb8d04518",
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
                      "_$uuid": "dff0001f-4d37-4e0d-86cd-4345307df690",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "84g5w8vx",
              "_$type": "Sprite3D",
              "name": "firewood",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.78054,
                  "z": 74.91692
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
                    "_$uuid": "f5aa0820-9811-4714-bee9-e5657d4be781",
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
                      "_$uuid": "dff0001f-4d37-4e0d-86cd-4345307df690",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "zxdktmbu",
              "_$type": "Sprite3D",
              "name": "bucket",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 50.30456,
                  "z": 78.24366
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
                    "_$uuid": "81031859-8a74-44f5-b120-335c20d0bbfc",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3g7csifc",
              "_$type": "Sprite3D",
              "name": "vase.001",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 55.42157,
                  "z": 77.10751
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
                    "_$uuid": "805cd9f3-9315-490f-bc70-394321379692",
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
                      "_$uuid": "b3cdd30e-3462-49d9-b2e7-d16b0b3e996e",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5xl0p0wa",
              "_$type": "Sprite3D",
              "name": "book_single_with_free_pages",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 51.417,
                  "y": 0.805,
                  "z": 77.578
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.28925930127877636,
                  "y": 0.2892600012787795,
                  "z": 0.6452347028524956,
                  "w": -0.6452363028525027
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "888cd5ec-f9dd-44d1-a927-9fd4c16365a4",
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
                      "_$uuid": "04ddfa68-5c95-40f4-a103-1c4282d85fb1",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "7a87f8e5-adf4-4d8f-9582-8dc41c90fc0d",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "e5fabce1-5f09-4a5f-a417-3905245e6527",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "sjvgxsio",
              "_$type": "Sprite3D",
              "name": "candle.003",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.97405,
                  "y": 1.31385,
                  "z": 76.32321
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
                    "_$uuid": "4ebdf596-5777-4dc7-9195-7d8c7b1cdbb1",
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
                      "_$uuid": "38e60dee-035c-42c1-88ab-2ba755ef81ee",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fd6a5c29-10f1-4413-9645-507019e92b07",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ygxrxryu",
              "_$type": "Sprite3D",
              "name": "pile_of_planks",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.62947,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "xlxj1rof",
              "_$type": "Sprite3D",
              "name": "Three firewoods",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.79804,
                  "z": 74.83534
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7913130828583587,
                  "y": 0.5587090878970903,
                  "z": 0.20211369562175763,
                  "w": -0.14428379687448475
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7310051,
                  "y": 0.7310051,
                  "z": 0.7310051
                }
              },
              "_$child": [
                {
                  "_$id": "4s86dcm6",
                  "_$type": "Sprite3D",
                  "name": "firewood_single",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.07382663,
                      "y": -0.3540869,
                      "z": -0.200524
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.8226883176144194,
                      "y": -0.511386510949197,
                      "z": -0.19331290413898497,
                      "w": -0.1558778033374693
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "1vmyjxqp",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.5296425571209851,
                      "y": -0.3323059730970395,
                      "z": -0.4496236635991868,
                      "w": -0.6378793483583074
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "dl4cxwub",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.009295010273500942,
                      "y": 0.026611160783019852,
                      "z": -0.0513637915113534,
                      "w": -0.9982821293739431
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1gnox5sx",
              "_$type": "Sprite3D",
              "name": "Boxes",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 56.44,
                  "z": 71.78
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "ngs2xbwk",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "y5vbr9y3",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "rf7tt7e0",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "vgrnnhb2",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "lx0psqvr",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "zfk57fe1",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ui4bvdsp",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "abomvs94",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6003kozk",
              "_$type": "Sprite3D",
              "name": "bench.002",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 53.05304,
                  "z": 77.97497
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
                    "_$uuid": "db11216f-5468-4919-8444-65b7cfed28ef",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "xkl8uvpg",
              "_$type": "Sprite3D",
              "name": "big_fence.001",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.54066,
                  "z": 79.48649
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
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qeknabbp",
              "_$type": "Sprite3D",
              "name": "platform.003",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 36.48303,
                  "y": 0.15,
                  "z": 61.90024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.00077,
                  "y": 1,
                  "z": 1.442021
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "5935b391-cac0-4b3e-b776-c772b9e643bd",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "hismhuy4",
              "_$type": "Sprite3D",
              "name": "wood_wall.014",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 42.58603,
                  "y": 7.97,
                  "z": 64.93024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.6161127776004873,
                  "y": 0.3480878873448509,
                  "z": 0.6168896775722421,
                  "w": -0.34450978747493693
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.215519,
                  "y": 1.977231,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c9207330-d05d-40b7-bfdf-a19ae4f182cd",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5mbeluud",
              "_$type": "Sprite3D",
              "name": "wood_wall.018",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.44603,
                  "z": 67.84808
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
                    "_$uuid": "4d499b36-ad22-40f3-9448-e0ea7ea5ff37",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ci42cbfd",
              "_$type": "Sprite3D",
              "name": "wood_wall.007",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.44813,
                  "y": 3.94,
                  "z": 67.79024
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
                    "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4ch3o9pg",
              "_$type": "Sprite3D",
              "name": "wood_wall_enter.004",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.44813,
                  "z": 67.84808
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
                    "_$uuid": "773f7be8-dd52-4893-8cf0-92e44e12de3a",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "eus732b8",
              "_$type": "Sprite3D",
              "name": "wood_wall.016 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.44603,
                  "z": 64.85023
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7071058811859987,
                  "w": -0.7071076811859509
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cadc8960-0929-427e-aa65-276f335b6653",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1sz1lfcc",
              "_$type": "Sprite3D",
              "name": "wood_wall.016 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.44603,
                  "z": 61.85024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -1.1920929999999915e-7,
                  "w": -0.9999999999999929
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cadc8960-0929-427e-aa65-276f335b6653",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gbmww5ra",
              "_$type": "Sprite3D",
              "name": "wood_wall.016 (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 36.44603,
                  "z": 64.85023
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7071060811862198,
                  "w": -0.7071074811861825
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cadc8960-0929-427e-aa65-276f335b6653",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "fec4ppnr",
              "_$type": "Sprite3D",
              "name": "wood_wall.007 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.44603,
                  "y": 3.94,
                  "z": 67.79024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "g62lk2hk",
              "_$type": "Sprite3D",
              "name": "wood_wall.007 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.44603,
                  "y": 3.89,
                  "z": 61.85024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9999999999972982,
                  "w": -0.000002324580999993719
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "1jxh0oo0",
              "_$type": "Sprite3D",
              "name": "wood_wall.018 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.44603,
                  "z": 61.85024
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
                    "_$uuid": "4d499b36-ad22-40f3-9448-e0ea7ea5ff37",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "eswqee6v",
              "_$type": "Sprite3D",
              "name": "wood_wall.007 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.44813,
                  "y": 3.89,
                  "z": 61.85024
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
                    "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "0kkrof8d",
              "_$type": "Sprite3D",
              "name": "wood_wall.014 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 42.30603,
                  "y": 7.97,
                  "z": 64.93024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.6168883964939889,
                  "y": 0.34451059804201534,
                  "z": 0.61611399649839,
                  "w": 0.34808719802168814
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.215519,
                  "y": 1.977231,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c9207330-d05d-40b7-bfdf-a19ae4f182cd",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "9kifujei",
              "_$type": "Sprite3D",
              "name": "platform.003 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 42.43603,
                  "y": 0.15,
                  "z": 61.90024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.00077,
                  "y": 1,
                  "z": 1.442021
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "5935b391-cac0-4b3e-b776-c772b9e643bd",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "hh2dnzq7",
              "_$type": "Sprite3D",
              "name": "wood_column.004",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 42.54474,
                  "y": 5.226468,
                  "z": 61.86024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 0.984817,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "e2c833c5-45e8-447f-8636-3ed50f908007",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gpzzjayt",
              "_$type": "Sprite3D",
              "name": "wood_column.004 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 45.54603,
                  "y": 5.226468,
                  "z": 61.86024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 0.984817,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "e2c833c5-45e8-447f-8636-3ed50f908007",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "p3dcv7ey",
              "_$type": "Sprite3D",
              "name": "wood_column.004 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 38.54603,
                  "y": 5.226468,
                  "z": 61.86024
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7071059811861163,
                  "w": -0.7071075811860736
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 0.984817,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "e2c833c5-45e8-447f-8636-3ed50f908007",
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
                      "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3iohhj13",
              "_$type": "Sprite3D",
              "name": "brick.022",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 57.13962,
                  "y": 0.994,
                  "z": 71.00723
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
                    "_$uuid": "0e4f6e5a-a912-4e34-a026-3af3e8a234e5",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qg5wjlp5",
              "_$type": "Sprite3D",
              "name": "house.002",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 57.23,
                  "z": 81.78
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "5bv3ox7m",
                  "_$type": "Sprite3D",
                  "name": "wood_column.010",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.710001,
                      "y": 0.2135496,
                      "z": -0.7400017
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7400146978012019,
                      "w": -0.672590698001538
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.4192108,
                      "y": 0.4192107,
                      "z": 0.4192107
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "3f9de0b0-c1ad-4f36-8050-bdf15460daca",
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
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "u8yii1bz",
                  "_$type": "Sprite3D",
                  "name": "wood_stairs",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.870001,
                      "y": 0.25,
                      "z": -1.300003
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7254082601728752,
                      "w": -0.6883188622091961
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.6468704,
                      "y": 0.6468704,
                      "z": 0.6468705
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "e960e742-539f-4aa9-961e-7b8a5f6ba9fe",
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
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "3x0ez7qr",
                  "_$type": "Sprite3D",
                  "name": "platform",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.789999,
                      "y": 4.004075,
                      "z": -8.357334
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 2.079524
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "skhbd0xh",
                  "_$type": "Sprite3D",
                  "name": "wood_column.003",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.919998,
                      "y": 4.11,
                      "z": 4.060997
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7070145251657407,
                      "w": -0.7071990251723078
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 3.619274,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4ab416e7-d147-4d22-9a88-d719e4c32cb1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "3x6e1t0q",
                  "_$type": "Sprite3D",
                  "name": "platform.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.470001,
                      "y": 6.1,
                      "z": -2.900002
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.27515840137417275,
                      "w": -0.9613989048013367
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.890644
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "5vpsiyc7",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.017",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.060001,
                      "y": 0.125,
                      "z": -2.540001
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
                        "_$uuid": "68e0f0e1-c531-4fa6-b164-99431825ebfd",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "smd9c8ca",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.018",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7.060001,
                      "y": 0.125,
                      "z": 0.4599991
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071066311865251,
                      "w": -0.7071069311865382
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4d499b36-ad22-40f3-9448-e0ea7ea5ff37",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "4733ak3y",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.060001,
                      "y": 4.083,
                      "z": 3.455391
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
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "xrdxxg8i",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.000",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.939999,
                      "y": 0.125,
                      "z": -5.540001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071066311865251,
                      "w": -0.7071069311865382
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "0cca625d-d1d3-44c5-a18d-6acf3c35091f",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jqgk5vl1",
                  "_$type": "Sprite3D",
                  "name": "wood_wall_enter.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.93631,
                      "y": 0.125,
                      "z": 3.455391
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
                        "_$uuid": "c1372e42-d9ec-4815-8cf2-da7490dca2ee",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "os9npwus",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.939999,
                      "y": 4.083,
                      "z": 3.455391
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.999999999999936,
                      "w": -3.5762789999997714e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "uhpcssl6",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.939999,
                      "y": 4.083,
                      "z": -8.540001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.999999999999936,
                      "w": -3.5762789999997714e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "mibhzskt",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.018 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.060001,
                      "y": 0.125,
                      "z": -5.540001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071066311865251,
                      "w": -0.7071069311865382
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4d499b36-ad22-40f3-9448-e0ea7ea5ff37",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "z8mlo698",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.017 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.939999,
                      "y": 0.125,
                      "z": -8.540001
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
                        "_$uuid": "68e0f0e1-c531-4fa6-b164-99431825ebfd",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "grfk9vhv",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.060001,
                      "y": 4.083,
                      "z": -2.540001
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
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "05g6piwg",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.43,
                      "y": 6.1,
                      "z": -2.130001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.2751584938022052,
                      "y": 0.9613988783450154,
                      "z": -5.289911880847624e-7,
                      "w": -0.0000022734749487912182
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.705056
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jj51tbj8",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.43,
                      "y": 6.1,
                      "z": 4.669998
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.2751584938022052,
                      "y": 0.9613988783450154,
                      "z": -5.289911880847624e-7,
                      "w": -0.0000022734749487912182
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.705056
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "qvhlwd4u",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.018 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.060001,
                      "y": 4.1,
                      "z": -5.540001
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.7071066311865251,
                      "w": -0.7071069311865382
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4d499b36-ad22-40f3-9448-e0ea7ea5ff37",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "q1nifbry",
                  "_$type": "Sprite3D",
                  "name": "wood_column.003 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.950001,
                      "y": 4.11,
                      "z": 3.799995
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7070145251657407,
                      "w": -0.7071990251723078
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1.893766,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "4ab416e7-d147-4d22-9a88-d719e4c32cb1",
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
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "kt5hwmhu",
                  "_$type": "Sprite3D",
                  "name": "platform (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.789999,
                      "y": 0.12,
                      "z": -8.357334
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1.596295
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "owjm4zcy",
                  "_$type": "Sprite3D",
                  "name": "platform (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.789999,
                      "y": 0.12,
                      "z": -1.965
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1.367345
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ndk14eyo",
                  "_$type": "Sprite3D",
                  "name": "platform (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3.958,
                      "y": 0.12,
                      "z": -2.361
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.9149216,
                      "y": 1.001788,
                      "z": 1.457335
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "p8agd4df",
              "_$type": "Sprite3D",
              "name": "house.003",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.85171,
                  "z": 77.99967
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "xyohy0ue",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.856203,
                      "y": 4.01,
                      "z": 8.22
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
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "r4cgjz3a",
                  "_$type": "Sprite3D",
                  "name": "wood_wall_enter.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.140108,
                      "y": 0.05,
                      "z": 8.22
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
                        "_$uuid": "c1372e42-d9ec-4815-8cf2-da7490dca2ee",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "p28acc17",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.143797,
                      "y": 4.01,
                      "z": 8.22
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.999999999999936,
                      "w": -3.5762789999997714e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "j0n45x2a",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.633799,
                      "y": 6.02,
                      "z": 8.73
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.2751584938022052,
                      "y": 0.9613988783450154,
                      "z": -5.289911880847624e-7,
                      "w": -0.0000022734749487912182
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.632427
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "52wnlv31",
                  "_$type": "Sprite3D",
                  "name": "platform (7)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.9228802,
                      "y": 0.04,
                      "z": 2.58
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.996183,
                      "y": 1.001788,
                      "z": 1.501384
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "rtixmxdc",
                  "_$type": "Sprite3D",
                  "name": "platform (8)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.9228802,
                      "y": 0.04,
                      "z": -3.61
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.995176,
                      "y": 1.001788,
                      "z": 1.544781
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "07944a81-a334-4f69-a912-c75a2377f9c1",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "731flo5y",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.001 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4.857119,
                      "y": 0.05,
                      "z": -0.78
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
                        "_$uuid": "715f69e5-4ff7-4feb-aaed-7fa2d7c22902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "wzamgnma",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.633799,
                      "y": 6.02,
                      "z": 2.19
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.2751584938022052,
                      "y": 0.9613988783450154,
                      "z": -5.289911880847624e-7,
                      "w": -0.0000022734749487912182
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.632427
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "2uw7565s",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.001 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7.142881,
                      "y": 0.05,
                      "z": -0.78
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
                        "_$uuid": "715f69e5-4ff7-4feb-aaed-7fa2d7c22902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "iuqicz7t",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (4)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.367119,
                      "y": 6.02,
                      "z": -4.34
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.0000010896469754482348,
                      "y": 0.000004365644901633932,
                      "z": 0.2751584938001693,
                      "w": 0.9613988783379019
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.632427
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "58pfsjnl",
                  "_$type": "Sprite3D",
                  "name": "platform.004 (5)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.367119,
                      "y": 6.02,
                      "z": 2.2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.0000010896469754482348,
                      "y": 0.000004365644901633932,
                      "z": 0.2751584938001693,
                      "w": 0.9613988783379019
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.377228,
                      "y": 1,
                      "z": 1.632427
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d51c44f0-c4cc-46e8-a57e-d1fdaf1416ba",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "2jvjk4hi",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (4)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.143797,
                      "y": 4.01,
                      "z": -3.78
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.999999999999936,
                      "w": -3.5762789999997714e-7
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "cmq2y9kx",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.007 (5)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.856203,
                      "y": 4.01,
                      "z": -3.78
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
                        "_$uuid": "cba4d80c-79e3-4b1d-9c21-7aaa9a858902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "zt2h3o10",
                  "_$type": "Sprite3D",
                  "name": "wood_column.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 1.070436,
                      "y": 7.63,
                      "z": -3.61
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.7071067311865435,
                      "y": -1.4210850626761551e-14,
                      "z": -1.4210850626761551e-14,
                      "w": -0.7071068311865479
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1.986334,
                      "z": 1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "315fda28-4f34-490f-85ac-fde33ddb19d2",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "v7rrssgb",
                  "_$type": "Sprite3D",
                  "name": "wood_wall.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 4.140108,
                      "y": 0.05,
                      "z": -3.78
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
                        "_$uuid": "715f69e5-4ff7-4feb-aaed-7fa2d7c22902",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "30feaded-6efc-490f-8de6-2d15f1574f9b",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "3o1so76y",
              "_$type": "Sprite3D",
              "name": "Barrels",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 59.21,
                  "z": 72.37
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "0x6eu5kh",
                  "_$type": "Sprite3D",
                  "name": "barrel.003",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.41,
                      "z": -0.3000031
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ynxsa5of",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.1599998,
                      "z": -0.1700058
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "lizrkrfs",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.6499977,
                      "z": -1.290001
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "o9iv9uy1",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.6100006,
                      "z": -1.060005
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "aw30x212",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (4)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.75,
                      "z": 0.08999634
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
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "r443ji3o",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (5)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.3800011,
                      "y": 1.86,
                      "z": -0.1700058
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071058811859987,
                      "w": -0.7071076811859509
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "dggi6efr",
                  "_$type": "Sprite3D",
                  "name": "barrel.003 (6)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.7099991,
                      "y": 1.86,
                      "z": -0.1700058
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071058811859987,
                      "w": -0.7071076811859509
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "aabec28f-e06b-476c-925f-ae8f17bcaed9",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9b87073f-7f72-4376-b837-a7e22f674dbb",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "a750945b-8909-47f7-bacc-8a195a6fdc4e",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "px2wpj3f",
              "_$type": "Sprite3D",
              "name": "pile_of_planks (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.59,
                  "y": 0.21,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "anmt3365",
              "_$type": "Sprite3D",
              "name": "pile_of_planks (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.59,
                  "y": 0.65,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "x3avgf8n",
              "_$type": "Sprite3D",
              "name": "pile_of_planks (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.62947,
                  "y": 0.44,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wywoitex",
              "_$type": "Sprite3D",
              "name": "pile_of_planks (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.62947,
                  "y": 0.87,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wwvur1vw",
              "_$type": "Sprite3D",
              "name": "pile_of_planks (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.59,
                  "y": 1.08,
                  "z": 77.3446
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
                    "_$uuid": "3fe56c5a-6cb7-4236-9ab3-a57a4fa76d74",
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
                      "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "rcz5ch8z",
              "_$type": "Sprite3D",
              "name": "bag (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 36.53,
                  "z": 73.14
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12899610011808177,
                  "w": -0.9916451009077422
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "3ddb86b9-9d37-42c3-99da-1ddd48a5d709",
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
                      "_$uuid": "0bb5fd4f-b189-4c9a-bdda-08804e4e0ded",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fd6a5c29-10f1-4413-9645-507019e92b07",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "wfplhgyw",
              "_$type": "Sprite3D",
              "name": "Three firewoods (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 56.2,
                  "z": 63.23
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21906310538830953,
                  "y": 0.15329960377072038,
                  "z": 0.7867893193527083,
                  "w": -0.5563031136834241
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7310055,
                  "y": 0.731005,
                  "z": 0.7310052
                }
              },
              "_$child": [
                {
                  "_$id": "ygetb7s5",
                  "_$type": "Sprite3D",
                  "name": "firewood_single",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.07382663,
                      "y": -0.3540869,
                      "z": -0.200524
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.8226883176144194,
                      "y": -0.511386510949197,
                      "z": -0.19331290413898497,
                      "w": -0.1558778033374693
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9coch5cl",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.5296425571209851,
                      "y": -0.3323059730970395,
                      "z": -0.4496236635991868,
                      "w": -0.6378793483583074
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "5rs7ha82",
                  "_$type": "Sprite3D",
                  "name": "firewood_single (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.3769585,
                      "y": -0.1246112,
                      "z": 0.004048827
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.009295010273500942,
                      "y": 0.026611160783019852,
                      "z": -0.0513637915113534,
                      "w": -0.9982821293739431
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "d8393fe1-f7e9-488b-a131-ca2f90e5319f",
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
                          "_$uuid": "194f5a6b-a5d9-4f14-960c-097e373f2467",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "9cb1992e-bedf-410d-86a3-83d95abadb29",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "imntbwlw",
              "_$type": "Sprite3D",
              "name": "brick.024 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 39.41,
                  "z": 73.4
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6091322628968474,
                  "w": -0.7930686516930082
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "1f5f7acf-2b2e-4f83-9c0b-1311555d9dc8",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "v7ms3uoa",
              "_$type": "Sprite3D",
              "name": "brick.024 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 40.81,
                  "z": 68.6
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7964875338999962,
                  "w": -0.6046549498200627
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "1f5f7acf-2b2e-4f83-9c0b-1311555d9dc8",
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
                      "_$uuid": "600a27c6-0b1e-4919-80ca-deccfa09e672",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "o2bz6e9k",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (1)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 35.49,
                  "y": 0.01,
                  "z": 72.34
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8007429776133848,
                  "w": -0.5990080832533486
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156027,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "mq9kdoxr",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (2)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 36.29,
                  "y": 0.01,
                  "z": 69.28
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8007429776133848,
                  "w": -0.5990080832533486
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156027,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "zcgjg0hx",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (3)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 43.15,
                  "y": 0.00999999,
                  "z": 56.84
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7591203716217088,
                  "w": -0.6509502756654449
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156027,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "sthogc9c",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 42.76,
                  "y": 0.00999999,
                  "z": 59.98
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7591203716217088,
                  "w": -0.6509502756654449
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156027,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "73ocsngy",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (5)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 44.96,
                  "y": 0.00999999,
                  "z": 55.41
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9993985474052517,
                  "w": -0.03467770817503704
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "zmdork5z",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (6)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.11,
                  "y": 0.00999999,
                  "z": 55.1
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9993985474052517,
                  "w": -0.03467770817503704
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ty5z595p",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (7)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 54.35,
                  "y": 0.00999999,
                  "z": 54.56
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9993985474052517,
                  "w": -0.03467770817503704
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "bwy7wyds",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (8)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 51.2,
                  "y": 0.00999999,
                  "z": 54.87
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9993985474052517,
                  "w": -0.03467770817503704
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "o6755ndx",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (9)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 60.6,
                  "y": 0.00999999,
                  "z": 60.86
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8917952209483411,
                  "w": 0.4524392598942973
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "l02jy6y7",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (10)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 62.54,
                  "y": 0.00999999,
                  "z": 63.36
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8917952209483411,
                  "w": 0.4524392598942973
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "y8ns67lu",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (11)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 58.75,
                  "y": 0.00999999,
                  "z": 58.37
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8917952209483411,
                  "w": 0.4524392598942973
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "ep6tdy9k",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (12)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 56.81,
                  "y": 0.00999999,
                  "z": 55.87
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8917952209483411,
                  "w": 0.4524392598942973
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "5y2sspnp",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (13)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 63.06,
                  "y": 0.00999999,
                  "z": 66.06
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.645367682781042,
                  "w": 0.763872079619244
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "cpfsegag",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (14)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 62.62,
                  "y": 0.00999999,
                  "z": 69.19
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.645367682781042,
                  "w": 0.763872079619244
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "j4astmpi",
              "_$type": "Sprite3D",
              "name": "big_fence.001 (16)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 62.13,
                  "y": 0.00999999,
                  "z": 72.25
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.645367682781042,
                  "w": 0.763872079619244
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.156028,
                  "y": 1,
                  "z": 1
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "c57faf64-f447-4cec-b788-d285190c6149",
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
                      "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "qwqpiyvd",
              "_$type": "Sprite3D",
              "name": "Boxes (4)",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 46.68,
                  "y": 0.2435496,
                  "z": 66.46
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.44242388046954767,
                  "w": -0.8968060604112058
                }
              },
              "_$child": [
                {
                  "_$id": "m4uaz1qi",
                  "_$type": "Sprite3D",
                  "name": "box",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.41,
                      "y": 1,
                      "z": -0.39
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.5983085169255828,
                      "w": -0.8012658226670533
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "25790da8-75d9-4c2a-96ac-dce497b49c42",
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
                          "_$uuid": "e6f4074b-dbee-48cb-bd98-31b2b9077aee",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "pxk1uj55",
                  "_$type": "Sprite3D",
                  "name": "box.002 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.48,
                      "y": 0.96,
                      "z": 0.14
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
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "k2syljmt",
                  "_$type": "Sprite3D",
                  "name": "box.004 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.27,
                      "y": 0.96,
                      "z": 1.47
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "b7psd27f",
                  "_$type": "Sprite3D",
                  "name": "box.004 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.05,
                      "y": -0.01,
                      "z": 0.47
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.25999670123483615,
                      "w": -0.9656095045860947
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jo67gdy8",
                  "_$type": "Sprite3D",
                  "name": "box.002",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.43,
                      "y": -0.01,
                      "z": 1.83
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.2565761766147182,
                      "w": -0.9665240119075019
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "7fd80370-1c6e-456d-8e81-cf1d4e4116cb",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "b43zvbvf",
                  "_$type": "Sprite3D",
                  "name": "box.001",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.9,
                      "y": -0.01,
                      "z": -0.61
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
                        "_$uuid": "e3dbdb85-1070-4f61-af6a-aa6ffb87e491",
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
                          "_$uuid": "4a215fe9-79a6-44ae-863d-7410cade04fa",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "ay83xlnx",
                  "_$type": "Sprite3D",
                  "name": "box.005",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5,
                      "y": -0.01,
                      "z": 0.74
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": -0.19553379288731765,
                      "w": -0.9806969643264425
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "5d4c5941-0849-4878-9237-3422cc16c22e",
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
                          "_$uuid": "d89e4539-03f7-41b0-b82d-8f4bb92477b2",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "iktjvts0",
                  "_$type": "Sprite3D",
                  "name": "box.004",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.61,
                      "y": -0.01,
                      "z": -0.67
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
                        "_$uuid": "5e4a839c-ca15-4b16-9369-442531e17c91",
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
                          "_$uuid": "6fb01348-3815-4a5c-9cf1-6c94518d128f",
                          "_$type": "Material"
                        },
                        {
                          "_$uuid": "7267da45-7707-4b91-bc3f-bc19ca1d2942",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "63bvf5wu",
              "_$type": "Sprite3D",
              "name": "Plane",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 43.4,
                  "z": 74.2
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 20,
                  "y": 20,
                  "z": 20
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "a5bd7e57-7833-45e4-aa5d-1031802067e0",
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
                      "_$uuid": "0a26fbcd-87fe-45e2-98df-8109ec94b4e6",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "121lp555",
              "_$type": "Sprite3D",
              "name": "RenderTarget",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 48.519,
                  "y": 2.071,
                  "z": 64.66
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5,
                  "y": 0.5,
                  "z": -0.5,
                  "w": 0.5
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.41,
                  "y": 1,
                  "z": 0.2600001
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "a5bd7e57-7833-45e4-aa5d-1031802067e0",
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
                      "_$uuid": "7a131a0a-6e82-4d5d-a58e-a260cd3443cf",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "mqtsycxj",
          "_$type": "Sprite3D",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.12790719377490412,
              "y": 0.8664214578322651,
              "z": 0.28394348618079746,
              "w": 0.3902943810048218
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
              "intensity": 2,
              "lightmapBakedType": 1,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "strength": null,
              "angle": null,
              "maxBounces": null
            }
          ]
        }
      ]
    }
  ]
}