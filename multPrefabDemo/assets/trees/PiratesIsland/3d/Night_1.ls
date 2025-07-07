{
  "_$ver": 1,
  "_$id": "#0",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1136,
  "height": 640,
  "_$child": [
    {
      "_$id": "#1",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "7f08a4c8-60b3-4a4b-9456-a4aaff3f07b4",
          "_$type": "Material"
        }
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.1803922,
        "g": 0.372549,
        "b": 0.6313726
      },
      "_reflectionsSource": 1,
      "enableFog": true,
      "fogStart": 10,
      "fogEnd": 200,
      "fogColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0.3882353,
        "b": 0.372549
      },
      "_$comp": [
        {
          "_$type": "bf38a61e-064b-4470-830b-e0e254fb97b6",
          "scriptPath": "PiratesIsland/src/Scene3DSetting.ts",
          "colorSpace": 0,
          "enableCustomSH": false,
          "SHAr": {
            "_$type": "Vector4",
            "y": 0.0074358,
            "w": 0.012816
          },
          "SHAg": {
            "_$type": "Vector4",
            "y": -0.1863429,
            "w": 0.2011922
          },
          "SHAb": {
            "_$type": "Vector4",
            "y": -0.0619662,
            "w": 0.2966696
          },
          "SHBr": {
            "_$type": "Vector4",
            "z": -0.0002147
          },
          "SHBg": {
            "_$type": "Vector4",
            "z": -0.0649772
          },
          "SHBb": {
            "_$type": "Vector4",
            "z": -0.0441279
          },
          "SHC": {
            "_$type": "Vector4",
            "x": -0.0002147,
            "y": -0.0649772,
            "z": -0.0441279,
            "w": 1
          }
        }
      ],
      "_$child": [
        {
          "_$id": "#2",
          "_$type": "Camera",
          "name": "_Main Camera1",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -169.6481,
              "y": 35.63736,
              "z": 436.9817
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.07289512652985028,
              "y": 0.44578497877854534,
              "z": 0.022473528930154675,
              "w": 0.8918839575421429
            }
          },
          "orthographicVerticalSize": 200,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.4801038,
            "g": 0.8029819,
            "b": 0.8823529,
            "a": 0.01960784
          },
          "enableHDR": true,
          "depthTextureMode": 2,
          "_$comp": [
            {
              "_$type": "28c1e8d9-8f3b-46f0-ae96-79c0f7f7cfda",
              "scriptPath": "PiratesIsland/src/CameraMove.ts",
              "text": ""
            }
          ]
        },
        {
          "_$id": "#3",
          "_$type": "Sprite3D",
          "name": "_Directional light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -294.3922,
              "y": 62.02338,
              "z": 443.8846
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.40728768010137023,
              "y": 0.09572081532342087,
              "z": 0.07210558647717709,
              "w": -0.9054032557652121
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.7411765,
                "g": 0.9490196
              },
              "intensity": 0.2,
              "shadowDepthBias": 0.05,
              "shadowNormalBias": 0.4,
              "shadowNearPlane": 0.2
            }
          ]
        },
        {
          "_$id": "#4",
          "_$type": "Sprite3D",
          "name": "GameObject",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -305.5669,
              "y": 29.66994,
              "z": 365.7136
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 31.58862,
              "y": 31.58862,
              "z": 31.58862
            }
          }
        },
        {
          "_$id": "q6fkxaoa",
          "_$type": "Sprite3D",
          "name": "Rock6A(Clone)",
          "active": false,
          "isStatic": true,
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -175.6667938232422,
              "y": 31.247800827026367,
              "z": 435.9148864746094
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.02049454028044797,
              "y": -0.7625347561124302,
              "z": -0.07193798522547189,
              "w": 0.6426084700818608
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.9999999941662214,
              "y": 1.0000000236499706,
              "z": 0.9999999958278667
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "8388c97b-4911-4eb3-aea1-1f1c4bb7307a",
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
                  "_$uuid": "1bc65bf5-c2f5-4f84-9364-75b8140bf7e2",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "wmyzo9e1",
          "_$type": "Sprite3D",
          "name": "Terrain",
          "active": false,
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "84ddb3b5-0d28-405f-88a9-f3f0807802c4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "6c5574d0-a21a-456a-bb4c-e99b33bf52c0",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "f0e47265-8796-4f55-84b6-45b801e0b03a",
              "scriptPath": "PiratesIsland/src/Terrain.ts",
              "splat": {
                "_$uuid": "77961149-6e94-4fc4-a6d7-ec76e50e06e0",
                "_$type": "Texture2DArray"
              },
              "diffuse": {
                "_$uuid": "25a8dd1a-050e-4687-b34f-9c0df1dd4a27",
                "_$type": "Texture2DArray"
              },
              "normal": {
                "_$uuid": "8b60e6d1-f66c-431a-8df0-eaf6f8aa8944",
                "_$type": "Texture2DArray"
              }
            }
          ]
        },
        {
          "_$id": "xcpaww4i",
          "_$type": "Sprite3D",
          "name": "Rocks",
          "active": false,
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "4mvrwzk6",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -227.8866,
                  "y": 50.03654,
                  "z": 194.9761
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.21605,
                  "y": 3.21605,
                  "z": 3.21605
                }
              }
            },
            {
              "_$id": "e4xlb56u",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -512.3672,
                  "y": 32.33825,
                  "z": 241.2892
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04965971995266729,
                  "y": 0.5204034995039821,
                  "z": 0.03033455997108689,
                  "w": -0.8519353991879856
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "6cryi0rh",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -387.3448,
                  "y": 31.20107,
                  "z": 411.3729
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7741441046242841,
                  "w": -0.6330094037812279
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.606627,
                  "y": 1.606627,
                  "z": 1.606627
                }
              }
            },
            {
              "_$id": "ksf4haxi",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -507.1518,
                  "y": 31.09776,
                  "z": 191.9385
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7666115961677968,
                  "w": -0.6421110967901605
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.27296,
                  "y": 1.27296,
                  "z": 1.27296
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "5fcmqjf7",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -137.1298,
                  "y": 30.67772,
                  "z": 324.3355
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.8974435665704746,
                  "w": -0.4411292835680558
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ay0ggvvv",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -174.3565,
                  "y": 35.92059,
                  "z": 302.7296
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8237983892267892,
                  "w": 0.5668828925865975
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.407625,
                  "y": 1.407625,
                  "z": 1.407625
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vzel45e8",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -132.306,
                  "y": 30.67772,
                  "z": 327.1291
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.8687865464680679,
                  "w": 0.4951867694881273
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "i2mhh3u7",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -150.7194,
                  "y": 33.48668,
                  "z": 429.0951
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1355247055028958,
                  "y": 0.6510893264370744,
                  "z": 0.09049129367434232,
                  "w": -0.74130093010006
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.784731,
                  "y": 1.784732,
                  "z": 1.784731
                }
              }
            },
            {
              "_$id": "cl0pvejc",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -307.0659,
                  "y": 27.28895,
                  "z": 409.1724
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09069985325635915,
                  "y": 0.3192855762607416,
                  "z": -0.24783728157300644,
                  "w": -0.910168632327891
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.215289,
                  "y": 1.215289,
                  "z": 1.215289
                }
              }
            },
            {
              "_$id": "7pxt3qk9",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -452.8439,
                  "y": 33.16807,
                  "z": 162.6404
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8452744602551917,
                  "w": -0.5343323748756897
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mmc33mae",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -340.6205,
                  "y": 26.97215,
                  "z": 402.0456
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "q789myt2",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -194.2129,
                  "y": 32.43187,
                  "z": 275.0374
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.057743118361451774,
                  "y": -0.12705519639461685,
                  "z": 0.04866758861898363,
                  "w": -0.9890167719351548
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.596446,
                  "y": 1.596447,
                  "z": 1.596447
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "cixh8skb",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -293.4089,
                  "y": 27.73673,
                  "z": 377.4799
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xpsygiv3",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -257.7652,
                  "y": 30.40896,
                  "z": 355.1837
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7415649630840777,
                  "w": -0.6708810666028
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.505659,
                  "y": 1.505659,
                  "z": 1.505659
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "wiq5x9s4",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -267.515,
                  "y": 29.90931,
                  "z": 393.6239
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "tpnylo2y",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -111.595,
                  "y": 44.10074,
                  "z": 406.0846
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6143248891908768,
                  "w": -0.7890531861165107
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.594824,
                  "y": 1.594824,
                  "z": 1.594824
                }
              }
            },
            {
              "_$id": "ylvfziox",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -324.4918,
                  "y": 30.72998,
                  "z": 332.5776
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.35441,
                  "y": 1.35441,
                  "z": 1.35441
                }
              }
            },
            {
              "_$id": "z97lnofk",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -159.1861,
                  "y": 32.74022,
                  "z": 307.3114
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "alnqrqqp",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.6061,
                  "y": 34.74306,
                  "z": 368.7199
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.424754,
                  "y": 1.424754,
                  "z": 1.424754
                }
              }
            },
            {
              "_$id": "yradogie",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -153.4822,
                  "y": 29.83415,
                  "z": 181.7171
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1928194018205509,
                  "y": 0.960540409069174,
                  "z": -0.03945274037250257,
                  "w": 0.19653570185563926
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.378215,
                  "y": 1.378215,
                  "z": 1.378215
                }
              }
            },
            {
              "_$id": "sjai03ox",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -135.8587,
                  "y": 35.62665,
                  "z": 424.4756
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.30692707876831704,
                  "w": -0.9517330341638602
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.784731,
                  "y": 1.784731,
                  "z": 1.784731
                }
              }
            },
            {
              "_$id": "xxzqy03k",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -166.1141,
                  "y": 32.14789,
                  "z": 198.7215
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.620273,
                  "y": 1.620273,
                  "z": 1.620273
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "lks1b8sr",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -296.706,
                  "y": 29.84152,
                  "z": 120.8703
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9543735026996841,
                  "w": 0.2986155008447086
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.677163,
                  "y": 1.677163,
                  "z": 1.677163
                }
              }
            },
            {
              "_$id": "p0o6gnv8",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -224.1272,
                  "y": 31.32532,
                  "z": 160.3687
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.8217228757239649,
                  "w": -0.5698872831639057
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.050524,
                  "y": 2.050524,
                  "z": 2.050524
                }
              }
            },
            {
              "_$id": "7d99ow37",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -160.7897,
                  "y": 37.19386,
                  "z": 313.7145
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.001286119964892588,
                  "y": -0.9980600727558027,
                  "z": -0.0372778489824209,
                  "w": 0.04984775863929816
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.302384,
                  "y": 1.302384,
                  "z": 1.302384
                }
              }
            },
            {
              "_$id": "rssfziiu",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -106.8467,
                  "y": 33.27291,
                  "z": 419.8208
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.5439119827598152,
                  "w": -0.8391422734020058
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.551065,
                  "y": 1.551065,
                  "z": 1.551065
                }
              }
            },
            {
              "_$id": "uqa0asib",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -53.93533,
                  "y": 26.76997,
                  "z": 182.9692
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.999805832736879,
                  "w": -0.019705248674306067
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.520228,
                  "y": 1.520228,
                  "z": 1.520228
                }
              }
            },
            {
              "_$id": "xx3xcdum",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -244.2767,
                  "y": 30.50946,
                  "z": 351.6299
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.564365,
                  "y": 2.564365,
                  "z": 2.564365
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "oznsig1k",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -438.4615,
                  "y": 32.22245,
                  "z": 179.8587
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.41293,
                  "y": 1.41293,
                  "z": 1.41293
                }
              }
            },
            {
              "_$id": "nid4lbs6",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.9436,
                  "y": 37.84546,
                  "z": 287.6081
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.11159319694222147,
                  "w": -0.9937539727700286
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.264917,
                  "y": 1.264917,
                  "z": 1.264917
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "g0d8dfv6",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -74.89871,
                  "y": 26.87096,
                  "z": 198.6237
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.06670178705450905,
                  "w": -0.9977729559392433
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5t3phaoh",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -499.6907,
                  "y": 43.37208,
                  "z": 215.4976
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8246159514692912,
                  "w": -0.5656929667075556
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.23196,
                  "y": 1.23196,
                  "z": 1.23196
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "k9nw7asm",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -190.2643,
                  "y": 37.65359,
                  "z": 303.4986
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.903378912554782,
                  "w": -0.4288432584888558
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.314644,
                  "y": 1.314644,
                  "z": 1.314644
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "xn463ynx",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -184.0476,
                  "y": 30.71292,
                  "z": 282.1586
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.07821037819641573,
                  "w": -0.9969368770099608
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.67239,
                  "y": 0.67239,
                  "z": 0.67239
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "epobjfv5",
              "_$prefab": "718ed094-3e2a-4fe9-88c0-e74f28ea2dfc",
              "name": "Rock1",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -512.7894,
                  "y": 31.80502,
                  "z": 207.553
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.38461168520415423,
                  "w": -0.9230784644895692
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock1_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "qdu6z23k",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -419.0293,
                  "y": 45.42205,
                  "z": 343.551
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14100990196004468,
                  "y": 0.8161227113441465,
                  "z": -0.2240324031140616,
                  "w": -0.5136822071402084
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.238856,
                  "y": 2.238855,
                  "z": 2.238856
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ynxayd5k",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -255.4184,
                  "y": 40.59583,
                  "z": 163.7507
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0766077571097359,
                  "y": 0.05511512792061168,
                  "z": 0.03113750882524137,
                  "w": -0.9950497624586764
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.252477,
                  "y": 2.252477,
                  "z": 2.252477
                }
              }
            },
            {
              "_$id": "co8yx1ir",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -511.8649,
                  "y": 33.84074,
                  "z": 217.8099
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08963827877684186,
                  "y": 0.9176391874783646,
                  "z": 0.10960429850439576,
                  "w": -0.37133569493294283
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.706233,
                  "y": 1.706233,
                  "z": 1.706233
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "qfiojbzo",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -52.10807,
                  "y": 26.90291,
                  "z": 191.615
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8534882305951426,
                  "w": -0.5211121186803976
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.784912,
                  "y": 1.784912,
                  "z": 1.784912
                }
              }
            },
            {
              "_$id": "y02zmtfk",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -351.5734,
                  "y": 33.89229,
                  "z": 173.9503
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9682404132488405,
                  "w": -0.2500210034211424
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.386649,
                  "y": 2.38665,
                  "z": 2.386649
                }
              }
            },
            {
              "_$id": "h6bzuu2f",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -411.9031,
                  "y": 33.89229,
                  "z": 178.134
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.38665,
                  "y": 2.38665,
                  "z": 2.38665
                }
              }
            },
            {
              "_$id": "shs6p1cc",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -136.8805,
                  "y": 32.27301,
                  "z": 329.4948
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07067207224633218,
                  "y": -0.40379741283481707,
                  "z": -0.2524447080240278,
                  "w": -0.8764843278593069
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.640111,
                  "y": 1.640111,
                  "z": 1.640111
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "fqnvhyfb",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -481.8876,
                  "y": 34.33699,
                  "z": 175.6928
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.745729939072912,
                  "w": -0.6662483455666596
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.450412,
                  "y": 1.450412,
                  "z": 1.450412
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "z8vxw4s7",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 13.39338,
                  "y": 36.71763,
                  "z": -48.7816
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.031487749455938394,
                  "y": -0.8254345857377147,
                  "z": -0.04623653920110118,
                  "w": 0.5617191902943255
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.693085,
                  "y": 2.693086,
                  "z": 2.693085
                }
              }
            },
            {
              "_$id": "j8qtbbwo",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.5224,
                  "y": 32.95209,
                  "z": 296.998
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "xx7md5go",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -199.2439,
                  "y": 36.30982,
                  "z": 367.6845
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.41643540310301647,
                  "w": -0.9091653067745318
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.931511,
                  "y": 2.931511,
                  "z": 2.931511
                }
              }
            },
            {
              "_$id": "8bvtofjs",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -272.4144,
                  "y": 29.69029,
                  "z": 390.0532
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.407316,
                  "y": 1.407316,
                  "z": 1.407316
                }
              }
            },
            {
              "_$id": "9n8yzt9t",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -164.2864,
                  "y": 34.33768,
                  "z": 303.5865
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "f32qugxx",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -486.3918,
                  "y": 34.33699,
                  "z": 179.0268
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9852400173649825,
                  "w": 0.17117858564274166
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.450412,
                  "y": 1.450412,
                  "z": 1.450412
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "f2sopa1c",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -180.9906,
                  "y": 31.05571,
                  "z": 252.1929
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7088960117729907,
                  "w": -0.7053130117134859
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.566774,
                  "y": 1.566774,
                  "z": 1.566774
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "78jcpne7",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 19.13592,
                  "y": 12.27573,
                  "z": -56.13736
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05523400474870756,
                  "y": -0.15847398493331702,
                  "z": -0.008860045157644129,
                  "w": 0.9857772062786698
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.929451,
                  "y": 3.929451,
                  "z": 3.929451
                }
              }
            },
            {
              "_$id": "6trluncf",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -176.5861,
                  "y": 34.27417,
                  "z": 201.9254
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.402205,
                  "y": 2.402205,
                  "z": 2.402205
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vghcapwh",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -415.7033,
                  "y": 34.18348,
                  "z": 352.4365
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15519650304486152,
                  "w": -0.9878836193816792
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.238856,
                  "y": 2.238856,
                  "z": 2.238856
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "szo243gm",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -501.0943,
                  "y": 33.13791,
                  "z": 188.4476
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9554597946829954,
                  "w": 0.29512129835768985
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.266033,
                  "y": 1.266033,
                  "z": 1.266033
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "mzio0k75",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -565.9926,
                  "y": 16.4544,
                  "z": 268.6629
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.336202,
                  "y": 2.336202,
                  "z": 2.336202
                }
              }
            },
            {
              "_$id": "h7e5m81n",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -565.9926,
                  "y": 26.02913,
                  "z": 274.3044
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.6082391940906278,
                  "w": -0.7937537922882533
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.401059,
                  "y": 1.401059,
                  "z": 1.401059
                }
              }
            },
            {
              "_$id": "lvisxib5",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -490.9181,
                  "y": 33.49294,
                  "z": 321.8891
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.999422367564308,
                  "w": 0.0339842788970593
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.591623,
                  "y": 1.591623,
                  "z": 1.591623
                }
              }
            },
            {
              "_$id": "866bfzg2",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -492.305,
                  "y": 34.33699,
                  "z": 186.6026
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.6559888116930663,
                  "w": -0.7547706134538618
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.450412,
                  "y": 1.450412,
                  "z": 1.450412
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3zowhrtp",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -380.1857,
                  "y": 32.43134,
                  "z": 404.6428
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.882366,
                  "y": 1.882366,
                  "z": 1.882366
                }
              }
            },
            {
              "_$id": "iznnd7s0",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -229.183,
                  "y": 33.64019,
                  "z": 349.2543
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.990256,
                  "y": 2.990256,
                  "z": 2.990256
                }
              }
            },
            {
              "_$id": "s4185d1i",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -286.5786,
                  "y": 30.21094,
                  "z": 372.7001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08459036812108398,
                  "y": 0.5889936869173086,
                  "z": -0.11425359746220616,
                  "w": -0.7955356823296106
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.702468,
                  "y": 1.702468,
                  "z": 1.702468
                }
              }
            },
            {
              "_$id": "2p3acp82",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -193.598,
                  "y": 32.13932,
                  "z": 265.2565
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.753508,
                  "y": 1.753508,
                  "z": 1.753508
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "9rhqbwyt",
              "_$prefab": "cd4f7cb3-f663-4358-9327-09c7341a83f8",
              "name": "Rock2",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 19.13592,
                  "y": 12.27573,
                  "z": -84.28679
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02613927002518332,
                  "y": -0.8828887008506002,
                  "z": -0.049457400047648675,
                  "w": 0.46623840044918746
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.846823,
                  "y": 3.846822,
                  "z": 3.846822
                }
              }
            },
            {
              "_$id": "wbo94wdg",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -478.6026,
                  "y": 29.52682,
                  "z": 392.2039
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13801130165103942,
                  "y": -0.13737010164336869,
                  "z": 0.09089068108733193,
                  "w": 0.9766377116835893
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "upf603uq",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -145.7607,
                  "y": 30.38882,
                  "z": 201.9926
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15096990442333197,
                  "y": 0.17405290509965074,
                  "z": -0.05847573171330554,
                  "w": -0.9713363284595997
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "93nml3zc",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.4089,
                  "y": 30.4172,
                  "z": 264.409
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.021716127836679446,
                  "y": -0.8210328182102268,
                  "z": -0.15586378447313762,
                  "w": -0.5487622453333185
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "flm4yzt2",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -427.9277,
                  "y": 30.26077,
                  "z": 391.5288
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07108163713040382,
                  "y": -0.4789878806630538,
                  "z": -0.21559899129617624,
                  "w": -0.8479593657675167
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "u1f3bhmr",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -326.5216,
                  "y": 31.60077,
                  "z": 320.729
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18890348492592338,
                  "y": 0.1006158919710763,
                  "z": -0.06640828470076704,
                  "w": -0.9745675222316861
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "u56jzswo",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.5436,
                  "y": 30.49441,
                  "z": 357.0449
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18964869614176247,
                  "y": 0.6803281861593157,
                  "z": 0.0642492786929044,
                  "w": -0.7050240856568991
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "9lvn0zgs",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -119.6589,
                  "y": 30.11053,
                  "z": 445.8897
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15958419460251477,
                  "y": -0.8684203706281305,
                  "z": -0.12094399590941048,
                  "w": 0.4535983846583141
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2kcnsp09",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -243.172,
                  "y": 30.04618,
                  "z": 499.0054
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11233939722650096,
                  "y": -0.9680464761003171,
                  "z": -0.16575419590776597,
                  "w": 0.1509682962728087
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "b62pixxj",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -230.2732,
                  "y": 30.37546,
                  "z": 142.1334
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.05911644575578895,
                  "y": -0.5248990623153528,
                  "z": -0.2191819842640303,
                  "w": -0.8203325411049769
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wb3c0mj4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -143.7303,
                  "y": 30.39969,
                  "z": 120.8758
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21657409645366177,
                  "y": -0.8411619862262155,
                  "z": -0.06805244888566082,
                  "w": 0.4908268919628515
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4tf61cpe",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -549.0766,
                  "y": 30.26092,
                  "z": 368.3202
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19848378918249085,
                  "y": -0.5195478716842676,
                  "z": 0.01614047912033229,
                  "w": 0.8309113547147341
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3149sugl",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -193.4352,
                  "y": 30.04618,
                  "z": 536.4833
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19938899033150076,
                  "y": -0.3349446837583187,
                  "z": 0.01840073910773643,
                  "w": 0.920715755353906
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2p1ftvw2",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.498,
                  "y": 30.43593,
                  "z": 436.0526
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.17961850148095615,
                  "y": 0.07796689064283771,
                  "z": -0.13882610114462246,
                  "w": -0.9707655080039703
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "p8i6mtwx",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -290.9684,
                  "y": 30.85726,
                  "z": 316.5012
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19929109853957266,
                  "y": 0.33016749758049585,
                  "z": -0.019433949857585852,
                  "w": -0.92243959324026
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vd13h270",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -165.7412,
                  "y": 30.04618,
                  "z": 527.9016
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.18785270714334404,
                  "y": -0.6990378265818245,
                  "z": -0.06932493263617093,
                  "w": 0.6864776261042065
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kpiy3yb7",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -184.6848,
                  "y": 30.39969,
                  "z": 141.9675
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.22590108722434735,
                  "y": -0.580872467149229,
                  "z": 0.02245398873013289,
                  "w": 0.7816979557917065
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vgssm0ap",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -213.3632,
                  "y": 30.74012,
                  "z": 395.3789
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "01zr1tlo",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -160.2545,
                  "y": 31.49192,
                  "z": 297.9868
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "gr2t37w5",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -407.5502,
                  "y": 30.79689,
                  "z": 378.2473
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07108163713040382,
                  "y": -0.4789878806630538,
                  "z": -0.21559899129617624,
                  "w": -0.8479593657675167
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3lf3w538",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -332.5428,
                  "y": 29.92991,
                  "z": 371.2992
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15548330074923516,
                  "y": -0.882992904254922,
                  "z": -0.12617260060799423,
                  "w": 0.4245338020457223
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "svexqjxm",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -518.6021,
                  "y": 31.10227,
                  "z": 212.416
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "flzdwd0e",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -102.9771,
                  "y": 30.11053,
                  "z": 342.3304
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13531009543593236,
                  "y": 0.3705683875005692,
                  "z": 0.14759979502139553,
                  "w": 0.9069644694076989
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6z2ocqz5",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -542.3972,
                  "y": 29.21151,
                  "z": 179.4122
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "glgramop",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -207.64,
                  "y": 30.3821,
                  "z": 430.0324
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18011159319961362,
                  "y": -0.009992764622708015,
                  "z": -0.10550419601652906,
                  "w": -0.977920663077122
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6232576,
                  "y": 0.6232576,
                  "z": 0.6232576
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "lnkqzcod",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -126.7677,
                  "y": 30.35965,
                  "z": 332.22
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "u9ximgsp",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -317.1391,
                  "y": 30.17365,
                  "z": 92.74742
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19868128356284975,
                  "y": 0.9220663237163037,
                  "z": 0.10982359091415743,
                  "w": -0.313461674066925
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "w6wpol5d",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -137.3454,
                  "y": 29.88973,
                  "z": 215.942
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2577205799316497,
                  "y": -0.7761886395592485,
                  "z": -0.07162851442238521,
                  "w": 0.5709471555411232
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8zip8bwy",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -383.8421,
                  "y": 30.05002,
                  "z": 448.7784
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22131990406170468,
                  "y": 0.7992479146679486,
                  "z": 0.050527730927294456,
                  "w": -0.5564775102125803
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "65nkahxz",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -475.8284,
                  "y": 30.47772,
                  "z": 377.2763
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06401880991104247,
                  "y": 0.4297549994028327,
                  "z": 0.1523476997883048,
                  "w": 0.8876949987665008
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "k5uy2tdb",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -532.6063,
                  "y": 30.26092,
                  "z": 362.7521
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11898409874617177,
                  "y": 0.2806834970422191,
                  "z": 0.15968449831727993,
                  "w": 0.9389144901059259
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "dot2odhh",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -514.8465,
                  "y": 30.38882,
                  "z": 187.2602
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2885914007984568,
                  "y": 0.589348501630573,
                  "z": 0.04097329011336236,
                  "w": -0.7534617020846311
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7p23l7dg",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -524.5046,
                  "y": 30.41559,
                  "z": 340.0176
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13801130165103942,
                  "y": -0.13737010164336869,
                  "z": 0.09089068108733193,
                  "w": 0.9766377116835893
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8ndyfyp4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -532.1896,
                  "y": 30.00038,
                  "z": 350.0059
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22534927999303253,
                  "y": 0.5634406499765929,
                  "z": -0.027444807563394156,
                  "w": -0.794354529475589
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "2gt3frcv",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -368.4907,
                  "y": 30.49441,
                  "z": 401.742
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19827459100865719,
                  "y": 0.290316386834752,
                  "z": -0.027960238732060976,
                  "w": -0.9357466575658236
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "hfib4qss",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -144.6958,
                  "y": 30.58264,
                  "z": 303.8477
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07233371193144077,
                  "y": -0.3530355606201831,
                  "z": -0.13976038441024372,
                  "w": -0.9222801971230399
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "clc5dsde",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -258.0112,
                  "y": 30.37546,
                  "z": 111.149
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2074635927192983,
                  "y": 0.30642568924633473,
                  "z": -0.09216478676558035,
                  "w": -0.9244283675582251
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3j4lygsu",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -279.4211,
                  "y": 29.24297,
                  "z": 385.7553
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "b790ethj",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -398.1483,
                  "y": 30.26077,
                  "z": 430.0119
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1715305017331807,
                  "y": 0.023272710235152417,
                  "z": -0.14870370150253387,
                  "w": -0.9736133098375962
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qcd0p1j3",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -514.276,
                  "y": 30.07528,
                  "z": 257.0596
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19715139076020655,
                  "y": 0.21197539006545774,
                  "z": -0.11254689472532221,
                  "w": -0.9505424554514126
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6v4644yl",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -166.1328,
                  "y": 31.00307,
                  "z": 204.5963
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.08715952456043395,
                  "y": -0.9104402476368204,
                  "z": -0.25289091323197105,
                  "w": -0.3155122165084956
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ws20as21",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -256.8482,
                  "y": 30.4762,
                  "z": 362.0991
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2816524663271616,
                  "y": 0.24562387063454474,
                  "z": -0.07068291154953518,
                  "w": -0.9248484894301403
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "6queeihb",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -183.6176,
                  "y": 30.04618,
                  "z": 501.9857
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1911768882220247,
                  "y": -0.6627172591714898,
                  "z": -0.05954807633137782,
                  "w": 0.7216032555436569
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7anaqzu4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -142.3516,
                  "y": 30.07452,
                  "z": 184.7992
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2223589908235814,
                  "y": -0.7870484675197025,
                  "z": -0.04573796811246337,
                  "w": 0.5736019763283156
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xrsedfd4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -512.7182,
                  "y": 29.88594,
                  "z": 319.5915
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22549778708431922,
                  "y": 0.7340924579538941,
                  "z": 0.026195298499630006,
                  "w": -0.639978763344379
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "tcfpt4cz",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.573,
                  "y": 30.04618,
                  "z": 530.7556
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11233939722650096,
                  "y": -0.9680464761003171,
                  "z": -0.16575419590776597,
                  "w": 0.1509682962728087
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ytui1tl8",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -328.8804,
                  "y": 30.17365,
                  "z": 124.3334
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22334502665843586,
                  "y": 0.5157480615596274,
                  "z": -0.0406505448520442,
                  "w": -0.8261164986051671
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "nwt8377r",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -203.2459,
                  "y": 31.65868,
                  "z": 413.733
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21824089348724685,
                  "y": -0.6975968791822872,
                  "z": 0.07730175769315797,
                  "w": -0.6780515797655587
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "esq2liof",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -346.4382,
                  "y": 30.10792,
                  "z": 383.3767
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04082974343994181,
                  "y": -0.8265299696358772,
                  "z": -0.22331241881426778,
                  "w": -0.5150851433963765
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ehkpq715",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -159.3697,
                  "y": 30.15424,
                  "z": 218.403
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.21081691769109076,
                  "y": 0.0023822751999130207,
                  "z": -0.16464131381617972,
                  "w": -0.9635578808587381
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "b3936twz",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.6606,
                  "y": 31.77655,
                  "z": 401.3761
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.8144896596315722,
                  "w": -0.5801780712447221
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7aeky8ux",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -155.7418,
                  "y": 31.18297,
                  "z": 192.2335
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "bwlilid5",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -158.7847,
                  "y": 30.39969,
                  "z": 107.1445
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13796639988692025,
                  "y": -0.9703818992046576,
                  "z": -0.18027969985223952,
                  "w": -0.08260430993229603
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wqzg7i1g",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -194.8696,
                  "y": 30.07474,
                  "z": 440.8403
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.060335414992492724,
                  "y": -0.9708528194245609,
                  "z": -0.19092998415386245,
                  "w": -0.1317200890679578
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "o5foult9",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -102.9771,
                  "y": 30.11053,
                  "z": 432.2802
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13531009543593236,
                  "y": 0.3705683875005692,
                  "z": 0.14759979502139553,
                  "w": 0.9069644694076989
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3w817u08",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -77.117,
                  "y": 30.11053,
                  "z": 432.2802
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.18548929076302892,
                  "y": -0.05360774733044852,
                  "z": 0.07542061624421416,
                  "w": 0.9782799512837449
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "9pxwriq4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -324.4286,
                  "y": 29.92991,
                  "z": 354.9657
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.020715178062735155,
                  "y": -0.8380283216283441,
                  "z": -0.19916188137455976,
                  "w": -0.5075568525337391
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "lhmj6nhe",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -534.8979,
                  "y": 29.83455,
                  "z": 184.7737
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15860839661850615,
                  "y": -0.057544388773167116,
                  "z": -0.1624156965373354,
                  "w": -0.9721898792731396
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5h5jz0fc",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -126.9717,
                  "y": 30.30498,
                  "z": 320.8958
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09387138689616135,
                  "y": -0.9836760674749474,
                  "z": -0.12630639582370426,
                  "w": -0.08727113711439728
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1sn5si81",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -372.5735,
                  "y": 30.35262,
                  "z": 362.8268
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.11217529991226659,
                  "y": 0.9681952992427648,
                  "z": 0.16586519987027518,
                  "w": -0.1500109998826749
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "icscz0h3",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -193.0332,
                  "y": 30.77158,
                  "z": 431.6124
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15548330074923516,
                  "y": -0.882992904254922,
                  "z": -0.12617260060799423,
                  "w": 0.4245338020457223
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iree5s7q",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -302.1467,
                  "y": 30.17365,
                  "z": 89.90865
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22334502665843586,
                  "y": 0.5157480615596274,
                  "z": -0.0406505448520442,
                  "w": -0.8261164986051671
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "nauo111k",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -351.5223,
                  "y": 30.61746,
                  "z": 368.0344
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19513719565837892,
                  "y": 0.19518899565722642,
                  "z": -0.1160042974190123,
                  "w": -0.9541308787714755
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3htcyutg",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -237.6149,
                  "y": 30.43593,
                  "z": 486.1587
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.17961850148095615,
                  "y": 0.07796689064283771,
                  "z": -0.13882610114462246,
                  "w": -0.9707655080039703
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "jwx2ix59",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -152.2071,
                  "y": 30.07452,
                  "z": 167.512
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13796639988692025,
                  "y": -0.9703818992046576,
                  "z": -0.18027969985223952,
                  "w": -0.08260430993229603
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8uep0fnt",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -316.8966,
                  "y": 30.72944,
                  "z": 339.6674
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19513719565837892,
                  "y": 0.19518899565722642,
                  "z": -0.1160042974190123,
                  "w": -0.9541308787714755
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "wwo0s2ds",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -263.8084,
                  "y": 30.43593,
                  "z": 352.3622
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14116318314023593,
                  "y": 0.9717020839451795,
                  "z": 0.17778767876600507,
                  "w": 0.0652652822050691
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "2vl0f5gw",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -183.6176,
                  "y": 29.85267,
                  "z": 443.0237
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1911768882220247,
                  "y": -0.6627172591714898,
                  "z": -0.05954807633137782,
                  "w": 0.7216032555436569
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "k2frqtqa",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -333.3709,
                  "y": 30.17365,
                  "z": 103.1977
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15860839661850615,
                  "y": -0.057544388773167116,
                  "z": -0.1624156965373354,
                  "w": -0.9721898792731396
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "05gp6570",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -363.2867,
                  "y": 30.24124,
                  "z": 392.562
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "yj0ub8je",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -181.173,
                  "y": 30.54745,
                  "z": 282.9416
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2548314864435119,
                  "y": -0.45863187560176866,
                  "z": -0.21712518844940604,
                  "w": -0.8231490562102372
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8049942,
                  "y": 0.8049943,
                  "z": 0.8049942
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "apl04ov5",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -550.112,
                  "y": 30.00038,
                  "z": 381.1752
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12609019149425924,
                  "y": -0.23507268414256263,
                  "z": -0.18877688726556563,
                  "w": -0.945095436246137
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ef0e1a7d",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -516.3682,
                  "y": 31.18074,
                  "z": 206.9607
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2474991790926021,
                  "y": 0.7105012399806812,
                  "z": 0.023905737980571988,
                  "w": -0.6583013443902473
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "k4u2g5fi",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -508.0679,
                  "y": 30.37799,
                  "z": 276.0819
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12609019149425924,
                  "y": -0.23507268414256263,
                  "z": -0.18877688726556563,
                  "w": -0.945095436246137
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3wnn7n48",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -210.6174,
                  "y": 30.09486,
                  "z": 135.0381
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11517539838517529,
                  "y": -0.9532941866342723,
                  "z": -0.19562749725719103,
                  "w": -0.19923529720660763
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6bigysyp",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -303.7123,
                  "y": 30.46817,
                  "z": 119.6125
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.638398,
                  "y": 1.638398,
                  "z": 1.638398
                }
              }
            },
            {
              "_$id": "3x406j5t",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -337.8075,
                  "y": 30.36745,
                  "z": 368.8685
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18080128297570588,
                  "y": -0.1986950812908214,
                  "z": -0.12880598787159592,
                  "w": -0.9545890101156597
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5296491,
                  "y": 0.529649,
                  "z": 0.529649
                }
              }
            },
            {
              "_$id": "w4ztv0mi",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.1982,
                  "y": 30.77802,
                  "z": 427.7311
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10435459267491468,
                  "y": 0.20928718530925713,
                  "z": -0.12351689132983279,
                  "w": -0.9643923323052687
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.4588049,
                  "y": 0.4588049,
                  "z": 0.4588049
                }
              }
            },
            {
              "_$id": "bkeeqe1m",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -420.8565,
                  "y": 30.26077,
                  "z": 416.495
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22131990406170468,
                  "y": 0.7992479146679486,
                  "z": 0.050527730927294456,
                  "w": -0.5564775102125803
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zop13ux2",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -518.4285,
                  "y": 30.40316,
                  "z": 179.401
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.22549778708431922,
                  "y": 0.7340924579538941,
                  "z": 0.026195298499630006,
                  "w": -0.639978763344379
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "b5qrops4",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -429.8783,
                  "y": 30.47772,
                  "z": 368.943
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18378339761683657,
                  "y": 0.735509090462477,
                  "z": 0.07948751896926626,
                  "w": -0.6472493916069617
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "wo4fp0ed",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -358.9057,
                  "y": 30.24523,
                  "z": 353.9064
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12608229612723737,
                  "y": -0.4250467869441994,
                  "z": -0.15555659522190035,
                  "w": -0.8827460728854397
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock2B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock2B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "j9145u49",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -275.816,
                  "y": 30.17365,
                  "z": 100.0918
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.19868128356284975,
                  "y": 0.9220663237163037,
                  "z": 0.10982359091415743,
                  "w": -0.313461674066925
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "k338c786",
              "_$prefab": "a19e9ef1-461f-42cb-bb58-65456468e097",
              "name": "Rock2B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -138.5559,
                  "y": 29.88973,
                  "z": 199.4466
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.08715952456043395,
                  "y": -0.9104402476368204,
                  "z": -0.25289091323197105,
                  "w": -0.3155122165084956
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "pebscwe5",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -234.8784,
                  "y": 32.72747,
                  "z": 339.9363
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8595147373671462,
                  "w": 0.5111109627553353
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 4.64839,
                  "y": 4.64839,
                  "z": 4.64839
                }
              }
            },
            {
              "_$id": "0nr9xz2o",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -202.407,
                  "y": 34.51688,
                  "z": 394.0615
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.497356,
                  "y": 3.497356,
                  "z": 3.497356
                }
              }
            },
            {
              "_$id": "l4a7q3cw",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -142.6118,
                  "y": 35.71317,
                  "z": 425.3998
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.35488658490526853,
                  "w": -0.9349093602346036
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.210293,
                  "y": 2.210293,
                  "z": 2.210293
                }
              }
            },
            {
              "_$id": "1hlm25tv",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 10.02112,
                  "y": 14.68499,
                  "z": -45.06847
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.32717516813224373,
                  "w": 0.9449637079579501
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 5.733588,
                  "y": 5.733588,
                  "z": 5.733588
                }
              }
            },
            {
              "_$id": "evgtob8h",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -400.5792,
                  "y": 32.00748,
                  "z": 179.0329
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.188349,
                  "y": 3.188349,
                  "z": 3.188349
                }
              }
            },
            {
              "_$id": "168kornb",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -174.8827,
                  "y": 32.88446,
                  "z": 190.4346
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": -0.19056091417402615,
                  "w": -0.981675373017557
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.644733,
                  "y": 3.644733,
                  "z": 3.644733
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "m07zab0k",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -273.4593,
                  "y": 28.46378,
                  "z": 396.3932
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02170621990815134,
                  "y": 0.7638387967678588,
                  "z": -0.13924899941077565,
                  "w": -0.6298323973348994
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.139798,
                  "y": 1.139798,
                  "z": 1.139798
                }
              }
            },
            {
              "_$id": "qi6xlds8",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -562.3148,
                  "y": 19.7814,
                  "z": 270.1795
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8500938746541753,
                  "w": -0.5266311842983203
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.215997,
                  "y": 2.215997,
                  "z": 2.215997
                }
              }
            },
            {
              "_$id": "ce00az2x",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -142.6118,
                  "y": 30.28363,
                  "z": 430.9301
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.027208939110742996,
                  "y": 0.971396668252298,
                  "z": -0.13830879547971847,
                  "w": -0.19109909375439788
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.210294,
                  "y": 2.210293,
                  "z": 2.210293
                }
              }
            },
            {
              "_$id": "eizym86y",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -54.85386,
                  "y": 23.90092,
                  "z": 155.7824
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.05697511737954051,
                  "y": -0.030602838592482078,
                  "z": -0.021000879034105496,
                  "w": -0.9976854541134019
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.755077,
                  "y": 1.755077,
                  "z": 1.755077
                }
              }
            },
            {
              "_$id": "j9abli6p",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -566.8671,
                  "y": 16.44126,
                  "z": 277.5768
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.518178,
                  "y": 2.518178,
                  "z": 2.518178
                }
              }
            },
            {
              "_$id": "qvon4lo2",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -506.4842,
                  "y": 37.09185,
                  "z": 216.1814
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.10198779488667223,
                  "w": -0.9947856501247664
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.075363,
                  "y": 2.075363,
                  "z": 2.075363
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1zna6h2p",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -222.8302,
                  "y": 30.96442,
                  "z": 359.4452
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.59811,
                  "y": 3.59811,
                  "z": 3.59811
                }
              }
            },
            {
              "_$id": "a1fcc5xq",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -282.3668,
                  "y": 31.29753,
                  "z": 370.1905
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1781205883757742,
                  "y": -0.14179959074609808,
                  "z": -0.025947858306631672,
                  "w": -0.973392336476
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.548462,
                  "y": 1.548462,
                  "z": 1.548462
                }
              }
            },
            {
              "_$id": "podkdxju",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -183.4875,
                  "y": 34.46304,
                  "z": 234.7403
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03463899071641141,
                  "y": -0.16153000334079992,
                  "z": 0.1085107022442428,
                  "w": -0.9802722202742109
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.894578,
                  "y": 2.894577,
                  "z": 2.894577
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zd1e10rp",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -136.2589,
                  "y": 34.68079,
                  "z": 337.2124
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06261105588462962,
                  "y": 0.005876498613742846,
                  "z": -0.08393827448281005,
                  "w": -0.9944846346333879
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.363025,
                  "y": 2.363024,
                  "z": 2.363024
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "tyss7mge",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -314.6626,
                  "y": 35.54263,
                  "z": 140.3246
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.09394408762546093,
                  "w": -0.9955774748356956
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.188349,
                  "y": 3.188349,
                  "z": 3.188349
                }
              }
            },
            {
              "_$id": "8f7g88xb",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -252.9834,
                  "y": 30.42586,
                  "z": 361.7083
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.603614,
                  "y": 1.603614,
                  "z": 1.603614
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "f2w4zes5",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -158.8338,
                  "y": 37.38246,
                  "z": 419.6637
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.8061861201235304,
                  "w": -0.5916620147687094
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.95312,
                  "y": 1.95312,
                  "z": 1.95312
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ji9hrjhm",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -428.6844,
                  "y": 35.42714,
                  "z": 349.381
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.542829,
                  "y": 3.542829,
                  "z": 3.542829
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "c82g9r9z",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -140.5896,
                  "y": 41.43889,
                  "z": 418.7847
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7253746645550829,
                  "w": -0.6883542663640583
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 3.747493,
                  "y": 3.747493,
                  "z": 3.747493
                }
              }
            },
            {
              "_$id": "hk58d51j",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -271.0384,
                  "y": 30.44731,
                  "z": 361.2724
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.38332638031504856,
                  "w": -0.9236129525697238
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.636809,
                  "y": 1.636809,
                  "z": 1.636809
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "fz7uk4lr",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -460.5371,
                  "y": 41.81655,
                  "z": 341.8631
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.4127622096309231,
                  "w": -0.9108388212524751
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.611162,
                  "y": 2.611162,
                  "z": 2.611162
                }
              }
            },
            {
              "_$id": "hhydbcdv",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -488.7267,
                  "y": 40.50541,
                  "z": 188.2761
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7945672475284771,
                  "w": -0.6071761599033841
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.145765,
                  "y": 2.145765,
                  "z": 2.145765
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "0x933y05",
              "_$prefab": "83f31bc1-22b1-4172-8723-b8b37ef2942e",
              "name": "Rock3",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -482.2695,
                  "y": 41.13385,
                  "z": 179.9663
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.145765,
                  "y": 2.145765,
                  "z": 2.145765
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "o4lhbpsf",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -154.695,
                  "y": 31.04666,
                  "z": 302.3699
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05428954445533796,
                  "y": 0.21846257768813176,
                  "z": -0.031773166754965006,
                  "w": -0.973815800542921
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "f3kzanom",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -535.8763,
                  "y": 29.74833,
                  "z": 190.4664
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1739831885010426,
                  "y": 0.10656139295710737,
                  "z": -0.13398369114470332,
                  "w": -0.9697540359066791
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "rsrccuhx",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -177.3639,
                  "y": 30.44041,
                  "z": 256.3892
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.14238930408972542,
                  "y": 0.8506054244312073,
                  "z": 0.07865865225924476,
                  "w": -0.5000085143613141
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "eamf3kd8",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -548.9695,
                  "y": 29.91416,
                  "z": 386.8371
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19562619614978666,
                  "y": -0.07330947855716086,
                  "z": -0.09976022803657093,
                  "w": -0.9728329808532057
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "prnpq0ou",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -403.6561,
                  "y": 30.69445,
                  "z": 382.5127
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21516599292336072,
                  "y": -0.3305126891296991,
                  "z": -0.043878668556865306,
                  "w": -0.9178995698110094
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "9pkxoihb",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -554.7844,
                  "y": 30.18837,
                  "z": 369.2115
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08391513604403628,
                  "y": -0.6591583689256704,
                  "z": 0.1829196913767206,
                  "w": 0.7245749658417727
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8bim8uu6",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -209.4551,
                  "y": 29.81532,
                  "z": 441.2563
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15369969308874742,
                  "y": 0.24014558920162568,
                  "z": -0.1568377929476398,
                  "w": -0.9455730574814102
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7wrl75ep",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -209.6236,
                  "y": 31.15254,
                  "z": 397.6626
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09726447423175946,
                  "y": 0.25329721102039443,
                  "z": -0.15606150678988667,
                  "w": -0.9497499413214932
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "a63n9yq4",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -336.1997,
                  "y": 30.32187,
                  "z": 370.0744
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.418871,
                  "y": 0.418871,
                  "z": 0.418871
                }
              }
            },
            {
              "_$id": "0jyzkph6",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.5823,
                  "y": 30.627,
                  "z": 344.1142
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13353229209533657,
                  "y": 0.35311217909694437,
                  "z": -0.1743295896802735,
                  "w": -0.909444946163912
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "4th3aq57",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -161.3904,
                  "y": 31.34801,
                  "z": 201.3155
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19688629459728269,
                  "y": -0.8598620764046973,
                  "z": 0.06483835822078361,
                  "w": -0.4665500871974927
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "jsbcez4s",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -318.7393,
                  "y": 30.20229,
                  "z": 353.9978
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.14493939016397542,
                  "y": -0.7326486502802508,
                  "z": 0.07729544475449777,
                  "w": -0.6604876551773138
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3a4ipgmu",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -340.7436,
                  "y": 30.00547,
                  "z": 382.4126
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2099067966288752,
                  "y": -0.7296704882814168,
                  "z": 0.06450418896405608,
                  "w": -0.6475795895998051
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "gdh0d6os",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -355.7224,
                  "y": 30.51761,
                  "z": 358.7198
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1636328848194029,
                  "y": -0.2532677765037689,
                  "z": -0.014364118667407848,
                  "w": -0.9533485115556775
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1rd7us9k",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -182.5836,
                  "y": 30.71383,
                  "z": 285.2873
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.24657277967451124,
                  "y": 0.022911958111321337,
                  "z": 0.034497917156267495,
                  "w": -0.9682390201861156
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "xsiircj3",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -124.3529,
                  "y": 29.81253,
                  "z": 315.7699
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10618700371720675,
                  "y": -0.9382281328438304,
                  "z": 0.19809630693460503,
                  "w": -0.26307820920937647
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "sec0a4aa",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -243.1504,
                  "y": 30.31856,
                  "z": 493.2344
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06117143747967274,
                  "y": -0.9858340593826048,
                  "z": 0.1524468937190284,
                  "w": -0.03389995860328622
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4yqtxpxl",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -174.2136,
                  "y": 30.3821,
                  "z": 255.6399
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "8a67efia",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -127.2334,
                  "y": 29.21239,
                  "z": 187.4929
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1021918045510089,
                  "y": -0.9194174409453281,
                  "z": 0.16826790749364146,
                  "w": 0.3404619151621278
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6082698,
                  "y": 0.6082698,
                  "z": 0.6082698
                }
              }
            },
            {
              "_$id": "4jh4tokc",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -506.9254,
                  "y": 30.29177,
                  "z": 281.7437
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19562619614978666,
                  "y": -0.07330947855716086,
                  "z": -0.09976022803657093,
                  "w": -0.9728329808532057
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xe3fysjf",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -131.1307,
                  "y": 30.30249,
                  "z": 323.132
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "9746b6vh",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -518.116,
                  "y": 29.98907,
                  "z": 261.3741
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13043909063933248,
                  "y": 0.3690867735133191,
                  "z": -0.17665618732266666,
                  "w": -0.90307983519251
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ap5gxw6f",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -307.8433,
                  "y": 30.08743,
                  "z": 90.86395
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0643357266954816,
                  "y": 0.648164966707875,
                  "z": -0.20995878921574815,
                  "w": -0.7291504625481635
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ykhmva5p",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -250.5976,
                  "y": 30.3457,
                  "z": 486.289
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.043245337809529084,
                  "y": -0.8354530576824759,
                  "z": -0.16220029178420056,
                  "w": -0.5232963734938945
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "lftz757r",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -530.9949,
                  "y": 30.18837,
                  "z": 368.2997
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.192765284923108,
                  "y": 0.10862979150365877,
                  "z": 0.057817865477849055,
                  "w": 0.9734979238590958
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "aqvbec13",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -481.7313,
                  "y": 29.09111,
                  "z": 397.0412
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18619209236237633,
                  "y": -0.3095288873030851,
                  "z": 0.12102499503553907,
                  "w": 0.9245957620729625
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "18w82zk9",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -133.8135,
                  "y": 30.23467,
                  "z": 196.1658
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19688629459728269,
                  "y": -0.8598620764046973,
                  "z": 0.06483835822078361,
                  "w": -0.4665500871974927
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xkr9xoai",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -190.461,
                  "y": 30.31347,
                  "z": 141.992
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.047144185784829665,
                  "y": -0.7050134369646188,
                  "z": 0.21447438082380613,
                  "w": 0.6743398397071508
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7m12gjir",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -361.2629,
                  "y": 30.24482,
                  "z": 398.8139
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4ragbzrl",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.3252,
                  "y": 30.31856,
                  "z": 539.5479
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1039993950315294,
                  "y": -0.5054450758528498,
                  "z": 0.1271460939257182,
                  "w": 0.8470792595316068
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "swkuu9rd",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -142.1022,
                  "y": 30.23467,
                  "z": 212.6821
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05825245455968698,
                  "y": -0.871906418570919,
                  "z": 0.19893428142113034,
                  "w": 0.44363385856814835
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "gvot1fts",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -334.3492,
                  "y": 30.08743,
                  "z": 108.8903
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1739831885010426,
                  "y": 0.10656139295710737,
                  "z": -0.13398369114470332,
                  "w": -0.9697540359066791
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ivqollrc",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -372.5404,
                  "y": 30.625,
                  "z": 357.056
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.061322271206662,
                  "y": 0.9858000193979675,
                  "z": -0.15238650299856804,
                  "w": 0.034874840686245696
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "oqdna6p3",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -225.9336,
                  "y": 30.28924,
                  "z": 145.9456
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21725369746162088,
                  "y": -0.3804946955543229,
                  "z": -0.031978699626362794,
                  "w": -0.8983328895039325
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "umkl3x04",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.7937,
                  "y": 30.5814,
                  "z": 394.2161
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "hb8rb8m3",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -360.658,
                  "y": 29.95454,
                  "z": 410.4361
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.5483697766262763,
                  "w": -0.8362359643562624
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "n2ju2e4z",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -277.8885,
                  "y": 30.08743,
                  "z": 94.70011
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0830122213632799,
                  "y": 0.9632649158193538,
                  "z": -0.20329970333871805,
                  "w": -0.15459270253882046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mdvv11hf",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -523.6902,
                  "y": 30.31694,
                  "z": 177.0182
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0003627264838687822,
                  "y": 0.8325074629766234,
                  "z": -0.21959429023417512,
                  "w": -0.5086349773799212
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ieqkgjd8",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -435.098,
                  "y": 30.7501,
                  "z": 366.4815
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.030272789258256973,
                  "y": 0.8497993791782396,
                  "z": -0.16144859604419104,
                  "w": -0.5008581877279868
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "y0r6ag95",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -161.0923,
                  "y": 30.49918,
                  "z": 223.9063
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12532528660053815,
                  "y": 0.16165858271587427,
                  "z": -0.16511148234669898,
                  "w": -0.9648306968427485
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1fgvjidv",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -400.0541,
                  "y": 30.69445,
                  "z": 435.4642
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.16227329117456935,
                  "y": 0.18661108985092853,
                  "z": -0.14794969195357574,
                  "w": -0.9575774479209838
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ae4960hg",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -156.2293,
                  "y": 30.31347,
                  "z": 101.9643
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15757059014852157,
                  "y": -0.9444146409542068,
                  "z": 0.15294869043748754,
                  "w": -0.24466138470351378
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4ihvx4ev",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -165.6799,
                  "y": 29.92475,
                  "z": 263.8513
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1882463942463187,
                  "y": -0.696769478703499,
                  "z": 0.12280529624650162,
                  "w": -0.6811713791802492
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "2041n6y0",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -100.4016,
                  "y": 30.38291,
                  "z": 437.4445
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.16245599262357485,
                  "y": 0.19481359115435604,
                  "z": 0.0242900788970924,
                  "w": 0.9669879560932523
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "sqp1uyyj",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -319.2115,
                  "y": 30.08743,
                  "z": 87.35574
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0830122213632799,
                  "y": 0.9632649158193538,
                  "z": -0.20329970333871805,
                  "w": -0.15459270253882046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cbvu0qw1",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -250.7858,
                  "y": 29.32768,
                  "z": 399.4236
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qqi7ycis",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -147.743,
                  "y": 30.31347,
                  "z": 116.7209
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.040858432423481944,
                  "y": -0.913176754164275,
                  "z": 0.21576001279761517,
                  "w": 0.3433459203652609
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ch350bzw",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -149.6517,
                  "y": 29.9883,
                  "z": 162.3318
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15757059014852157,
                  "y": -0.9444146409542068,
                  "z": 0.15294869043748754,
                  "w": -0.24466138470351378
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "242z2h49",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -189.239,
                  "y": 30.31856,
                  "z": 500.6804
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.047224408923811745,
                  "y": -0.7918884819538009,
                  "z": 0.15732719641469983,
                  "w": 0.5881586865965613
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "js7lbmp2",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -527.6334,
                  "y": 29.97987,
                  "z": 344.8549
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18619209236237633,
                  "y": -0.3095288873030851,
                  "z": 0.12102499503553907,
                  "w": 0.9245957620729625
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ucju2oc1",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.1478,
                  "y": 30.97003,
                  "z": 424.1908
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.19663889107577323,
                  "y": 0.5315333758769776,
                  "z": -0.3051506861510919,
                  "w": -0.7653028652676218
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6904482,
                  "y": 0.6904482,
                  "z": 0.6904482
                }
              }
            },
            {
              "_$id": "yezg66a0",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -373.0638,
                  "y": 30.76679,
                  "z": 405.2619
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10998879977870638,
                  "y": 0.46415819906612993,
                  "z": -0.12200219975453584,
                  "w": -0.87038789824881
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vpt1enb0",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -128.207,
                  "y": 29.52936,
                  "z": 187.2188
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "firl3395",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -156.4344,
                  "y": 31.06098,
                  "z": 195.3561
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "sxvaitmz",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -147.1201,
                  "y": 29.9883,
                  "z": 181.5394
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.018766710734146378,
                  "y": -0.8736486341767927,
                  "z": 0.21879120855902645,
                  "w": 0.4341846169851323
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "p9bgb6wd",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -382.0937,
                  "y": 30.76679,
                  "z": 355.4639
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04332635731683974,
                  "y": 0.8061660500749002,
                  "z": -0.1584452901876333,
                  "w": -0.568431364797584
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "fmz4bcpm",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -517.9799,
                  "y": 29.79972,
                  "z": 317.2087
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0003627264838687822,
                  "y": 0.8325074629766234,
                  "z": -0.21959429023417512,
                  "w": -0.5086349773799212
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2utpenn1",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -123.1492,
                  "y": 30.38291,
                  "z": 441.2939
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.009021969531391874,
                  "y": -0.9445851509375114,
                  "z": 0.1640139914809855,
                  "w": 0.2842127852377665
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "m9t6gh4n",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.5514,
                  "y": 30.31856,
                  "z": 524.9847
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06117143747967274,
                  "y": -0.9858340593826048,
                  "z": 0.1524468937190284,
                  "w": -0.03389995860328622
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ynht7cq8",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -425.4794,
                  "y": 30.69445,
                  "z": 413.0325
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.023485579615804497,
                  "y": 0.8828178855581738,
                  "z": -0.2183348964283068,
                  "w": -0.4152238932074424
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "np7ems9y",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -100.4016,
                  "y": 30.38291,
                  "z": 347.4946
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.16245599262357485,
                  "y": 0.19481359115435604,
                  "z": 0.0242900788970924,
                  "w": 0.9669879560932523
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2el7jcs8",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -527.3775,
                  "y": 30.31326,
                  "z": 191.3064
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qkaspory",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -187.6271,
                  "y": 30.52828,
                  "z": 262.4947
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2684970863058663,
                  "y": 0.10131379483270125,
                  "z": 0.15194669225027596,
                  "w": -0.9458102517609214
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "px6yxljp",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -537.9586,
                  "y": 29.91416,
                  "z": 350.2857
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05187629794666173,
                  "y": 0.6899256726917524,
                  "z": -0.21337899155415352,
                  "w": -0.6897686726979667
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "guevz0qj",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -142.266,
                  "y": 30.09019,
                  "z": 309.0657
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.22459948889795547,
                  "y": -0.17510859134431078,
                  "z": -0.008537499577987906,
                  "w": -0.9585505526184545
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ppdbvoez",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -262.6366,
                  "y": 30.28924,
                  "z": 114.6089
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11202590052062526,
                  "y": 0.45797190212836264,
                  "z": -0.18887030087774925,
                  "w": -0.8614174040033212
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1rc4pq8c",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.8941,
                  "y": 30.00864,
                  "z": 130.622
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1748947948648143,
                  "y": -0.9079384733415014,
                  "z": 0.1327915961010303,
                  "w": -0.3569676895188683
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "129e9lvh",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -334.5771,
                  "y": 30.08743,
                  "z": 125.2887
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0643357266954816,
                  "y": 0.648164966707875,
                  "z": -0.20995878921574815,
                  "w": -0.7291504625481635
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "477e9tbr",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.2112,
                  "y": 31.04396,
                  "z": 427.3987
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.014459178285307895,
                  "y": -0.953495486926411,
                  "z": 0.16362438059603193,
                  "w": 0.25271397003103213
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ej5behg2",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -295.8264,
                  "y": 31.12963,
                  "z": 319.6162
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10465700185646085,
                  "y": 0.5010473088878402,
                  "z": -0.12660550224579487,
                  "w": -0.8496879150722104
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "dgx4yq4u",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -329.3837,
                  "y": 31.87314,
                  "z": 325.7402
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1318345882148437,
                  "y": 0.28391647461971037,
                  "z": -0.09798828124048381,
                  "w": -0.9446742155522581
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ynh2kc8m",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -472.5419,
                  "y": 30.04201,
                  "z": 382.0078
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2220463026781945,
                  "y": 0.2577791031091829,
                  "z": -0.003160057038114786,
                  "w": 0.9403379113418138
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "t1ny6t4j",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -189.239,
                  "y": 30.12504,
                  "z": 441.7185
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.047224408923811745,
                  "y": -0.7918884819538009,
                  "z": 0.15732719641469983,
                  "w": 0.5881586865965613
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "nqnj93sj",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.1984,
                  "y": 30.31856,
                  "z": 526.0245
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.039050699228612415,
                  "y": -0.8211575837792722,
                  "z": 0.15955269684827744,
                  "w": 0.5465511892037067
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "omcv89mt",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -355.208,
                  "y": 30.51501,
                  "z": 372.4811
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13353229209533657,
                  "y": 0.35311217909694437,
                  "z": -0.1743295896802735,
                  "w": -0.909444946163912
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "opg3w38h",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -388.465,
                  "y": 30.4837,
                  "z": 445.3158
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.023485579615804497,
                  "y": 0.8828178855581738,
                  "z": -0.2183348964283068,
                  "w": -0.4152238932074424
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "fgn64w43",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -159.5413,
                  "y": 32.87971,
                  "z": 302.361
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iltszggi",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -143.7802,
                  "y": 31.22822,
                  "z": 323.0791
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.20716819155237534,
                  "y": 0.5026297795044419,
                  "z": 0.12085109507209729,
                  "w": -0.830565866132307
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "6tx41uaa",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -261.4395,
                  "y": 30.33348,
                  "z": 347.0948
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15481449080297066,
                  "y": 0.9486326436447958,
                  "z": -0.1557375907481323,
                  "w": 0.2277594864695439
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "mmxhivtv",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -79.48409,
                  "y": 29.42217,
                  "z": 437.5433
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13639649169412277,
                  "y": -0.2381339854988085,
                  "z": 0.09153131442619197,
                  "w": 0.9572409417087225
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "sfx6pkwr",
              "_$prefab": "0bf207de-97fd-403c-8fcb-e40d658ec446",
              "name": "Rock3B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -424.0336,
                  "y": 30.69445,
                  "z": 395.7943
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21516599292336072,
                  "y": -0.3305126891296991,
                  "z": -0.043878668556865306,
                  "w": -0.9178995698110094
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3wzh5jqm",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -517.1394,
                  "y": 30.10587,
                  "z": 319.3211
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.048279687992355935,
                  "y": 0.5875356755681413,
                  "z": 0.14427989400032012,
                  "w": -0.794766766950723
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "li33xot1",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.494,
                  "y": 31.13884,
                  "z": 424.7901
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1155324959228294,
                  "y": 0.458955583803343,
                  "z": -0.23517079170076413,
                  "w": -0.8489444700405379
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5293524,
                  "y": 0.5293524,
                  "z": 0.5293524
                }
              }
            },
            {
              "_$id": "x816k30e",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -278.7738,
                  "y": 30.39358,
                  "z": 96.79426
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0994288608344448,
                  "y": 0.8452268070934648,
                  "z": 0.11515870096645561,
                  "w": -0.5122929042993569
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "j4049hze",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -293.5787,
                  "y": 31.14295,
                  "z": 320.0755
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0012186940199563551,
                  "y": 0.13087430214309254,
                  "z": 0.21133470346064748,
                  "w": -0.9686114158612031
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "wah91wzv",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.6412,
                  "y": 31.05728,
                  "z": 429.6522
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14759679646855112,
                  "y": -0.773596581490677,
                  "z": -0.15125819638094729,
                  "w": 0.5973980857064595
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "e37p6qaj",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.0825,
                  "y": 30.33188,
                  "z": 540.0304
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.00012325389971503122,
                  "y": -0.13589359968580764,
                  "z": -0.21133809951137641,
                  "w": 0.9679199977621237
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "rk9ncb3d",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -355.2949,
                  "y": 30.53093,
                  "z": 356.466
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15134388872451598,
                  "y": -0.5978474554589254,
                  "z": 0.14750898901022524,
                  "w": -0.7732493423910627
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "6m2azm3y",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -514.1334,
                  "y": 30.38882,
                  "z": 184.2624
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.21565188017052375,
                  "y": -0.14270888687772867,
                  "z": -0.24021297791209825,
                  "w": -0.9356421139664672
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1pgsim21",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -515.8494,
                  "y": 30.29522,
                  "z": 261.2001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04662370511978196,
                  "y": 0.002193729770376902,
                  "z": 0.14482348484096916,
                  "w": -0.9883559965463435
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "20m5n8c5",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -398.0249,
                  "y": 30.4807,
                  "z": 434.4393
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07387058051826467,
                  "y": -0.18985860133201884,
                  "z": 0.13300650093315322,
                  "w": -0.9699516068050319
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "pd76z820",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -139.4853,
                  "y": 30.39993,
                  "z": 318.8232
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18589279832410083,
                  "y": 0.15130129863595726,
                  "z": -0.05314105952091174,
                  "w": -0.9693955912605046
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5zz68bmc",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -126.5185,
                  "y": 30.03732,
                  "z": 316.4918
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1680029989990194,
                  "y": -0.9762383941834627,
                  "z": -0.001929883988501536,
                  "w": 0.13685709918459013
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "uobkpaeb",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -186.9428,
                  "y": 32.08963,
                  "z": 283.7314
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.014329529387139507,
                  "y": -0.15534049335623318,
                  "z": 0.13764279411314717,
                  "w": -0.9781198581667336
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3bfwrm3b",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -226.1222,
                  "y": 30.5954,
                  "z": 143.6799
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13559729738500004,
                  "y": -0.6995813865085415,
                  "z": 0.06899998866933212,
                  "w": -0.6981677865358029
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "d2pszthw",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -547.747,
                  "y": 30.22032,
                  "z": 384.9203
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.10641949358609998,
                  "y": -0.4396448735026153,
                  "z": 0.10873129344676787,
                  "w": -0.8851919466495051
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qsdg0a2r",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -141.5027,
                  "y": 30.31498,
                  "z": 306.9144
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07542442500814443,
                  "y": -0.5511908365987982,
                  "z": 0.15013290996875078,
                  "w": -0.8172881542675281
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2zjdofgb",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -403.5949,
                  "y": 30.4807,
                  "z": 380.2403
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1315970953451383,
                  "y": -0.6601250766500095,
                  "z": 0.07635295729923783,
                  "w": -0.7355863739807871
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "bdmbumpl",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -359.9784,
                  "y": 29.69603,
                  "z": 416.1234
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.00918594626139191,
                  "y": -0.1822532853456849,
                  "z": 0.22769148169216694,
                  "w": -0.9564810230928854
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "15kro5hj",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -342.6211,
                  "y": 29.79173,
                  "z": 381.1305
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15209018495116153,
                  "y": -0.9317461078066959,
                  "z": 0.004019865602247126,
                  "w": -0.32969926737730954
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8mecww90",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -505.7029,
                  "y": 30.59793,
                  "z": 279.827
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.10641949358609998,
                  "y": -0.4396448735026153,
                  "z": 0.10873129344676787,
                  "w": -0.8851919466495051
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zgiklg4g",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -187.9993,
                  "y": 30.33188,
                  "z": 502.6107
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08101214718468323,
                  "y": -0.4970360827271086,
                  "z": -0.19519429321664974,
                  "w": 0.8416004707528808
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ypw01kcr",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -208.1574,
                  "y": 30.33188,
                  "z": 526.6229
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18504029492686597,
                  "y": -0.9133300749598007,
                  "z": -0.10209759720085404,
                  "w": 0.34808669045672497
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "a6pusfb5",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -352.9486,
                  "y": 30.30127,
                  "z": 372.2274
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04916899827284126,
                  "y": -0.015226879465125612,
                  "z": 0.14397899494245178,
                  "w": -0.988241165286066
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "p1su35tz",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -99.70364,
                  "y": 30.39623,
                  "z": 435.2593
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.14209170345067504,
                  "y": 0.5497094133496081,
                  "z": -0.15644090379914313,
                  "w": 0.8081805196265389
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "yq95pez6",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -361.7821,
                  "y": 30.24132,
                  "z": 396.0035
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "llmt797x",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -159.1064,
                  "y": 30.76243,
                  "z": 222.7883
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12056750618266086,
                  "y": -0.19941891022613417,
                  "z": 0.1277069065487669,
                  "w": -0.964046949436001
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "i62cx8ld",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -205.7852,
                  "y": 32.43898,
                  "z": 403.1791
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.061364449636008414,
                  "y": 0.7662236954550398,
                  "z": -0.1900036988729672,
                  "w": -0.6107652963771625
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "gmu4gciu",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -259.8246,
                  "y": 29.7308,
                  "z": 396.8143
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bysxbu9m",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -200.382,
                  "y": 30.81118,
                  "z": 422.4113
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12974170166389018,
                  "y": 0.7171149091967383,
                  "z": 0.029643630380168793,
                  "w": -0.6841305087737253
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.4296592,
                  "y": 0.4296592,
                  "z": 0.4296592
                }
              }
            },
            {
              "_$id": "gbobgy8h",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -327.1791,
                  "y": 31.88646,
                  "z": 325.106
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051591489410790885,
                  "y": -0.10393809881295782,
                  "z": 0.20494429765939987,
                  "w": -0.9718708889005883
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "pe193uh0",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -472.1581,
                  "y": 30.27107,
                  "z": 379.7578
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0932105072157295,
                  "y": 0.6179105478344717,
                  "z": -0.13727931062723936,
                  "w": 0.7685393594951395
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wzmm0fd6",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -374.1496,
                  "y": 30.63832,
                  "z": 358.6909
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.18514128596867477,
                  "y": 0.9136737307552973,
                  "z": 0.10191459227618635,
                  "w": -0.3471835736879561
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "q958ik4m",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -249.1031,
                  "y": 28.8414,
                  "z": 401.2343
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7qx9hhps",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -147.7406,
                  "y": 30.61962,
                  "z": 118.9945
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07450101514802729,
                  "y": -0.7262612527013186,
                  "z": -0.1326545913607022,
                  "w": 0.6703707563412578
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8drahtuk",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -163.644,
                  "y": 31.61126,
                  "z": 200.976
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.159966802696578,
                  "y": -0.9765097164611318,
                  "z": -0.07249960122213375,
                  "w": -0.12483270210431861
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3dxsl615",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -507.0023,
                  "y": 31.31314,
                  "z": 179.2209
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1959669901889708,
                  "y": 0.42952267849607456,
                  "z": 0.07364966631275131,
                  "w": -0.8784548560204184
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mbc866e9",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -209.1555,
                  "y": 30.31479,
                  "z": 130.8566
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.144186590293156,
                  "y": -0.9882968334664677,
                  "z": -0.04855776673102287,
                  "w": 0.011033559257205278
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "b5fni8y0",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -154.5521,
                  "y": 31.87004,
                  "z": 307.8495
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "0e1ceoqp",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -133.9052,
                  "y": 30.36238,
                  "z": 321.3789
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "uf0lw1yg",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -529.922,
                  "y": 30.37947,
                  "z": 366.281
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10443349317121003,
                  "y": 0.47892326868374013,
                  "z": -0.1381307909677812,
                  "w": 0.8606079437258037
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7f327ta3",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -380.9508,
                  "y": 30.78011,
                  "z": 357.4528
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.08580604394789004,
                  "y": 0.5176596634881989,
                  "z": 0.19313518637770336,
                  "w": -0.8290745415233466
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "bqugbh51",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -479.5041,
                  "y": 29.32017,
                  "z": 396.5417
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0009748875329204184,
                  "y": 0.08526608413305324,
                  "z": -0.16593028858275036,
                  "w": 0.9824438324004883
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "j0zhhhbc",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -217.5256,
                  "y": 30.62861,
                  "z": 390.2085
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "87oq60da",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -202.0414,
                  "y": 31.6931,
                  "z": 415.5963
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.014346598758970985,
                  "y": 0.28972497493781585,
                  "z": -0.189090883643003,
                  "w": -0.9381355188481243
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "eb34ec2h",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -425.1146,
                  "y": 30.4807,
                  "z": 415.2765
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06366178060325081,
                  "y": 0.6703664063523055,
                  "z": 0.13818380130941185,
                  "w": -0.7262653068819962
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2lhqup7y",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -141.6154,
                  "y": 30.49792,
                  "z": 214.9086
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.031004978646097255,
                  "y": -0.6566054713278321,
                  "z": -0.17287069245120892,
                  "w": 0.7335009679700157
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "rpphvn86",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -146.659,
                  "y": 30.29446,
                  "z": 183.7658
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.06066386866851343,
                  "y": -0.6545318856339459,
                  "z": -0.13952619693759624,
                  "w": 0.7405675837455834
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6g7p6ad4",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -187.9993,
                  "y": 30.13836,
                  "z": 443.6488
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08101214718468323,
                  "y": -0.4970360827271086,
                  "z": -0.19519429321664974,
                  "w": 0.8416004707528808
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "0nhod8nu",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -370.7853,
                  "y": 30.78011,
                  "z": 405.5268
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.010278000349840664,
                  "y": 0.08922706303709416,
                  "z": 0.2110882071849811,
                  "w": -0.9733317331300844
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3oovov0b",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.4742,
                  "y": 30.98692,
                  "z": 425.6781
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004413867290102356,
                  "y": -0.5351728351743471,
                  "z": 0.13301190874223567,
                  "w": -0.834193254827527
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.3068509,
                  "y": 0.3068508,
                  "z": 0.3068509
                }
              }
            },
            {
              "_$id": "ebe3yxfb",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -332.7016,
                  "y": 30.39358,
                  "z": 126.5739
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0041419688184656965,
                  "y": 0.33044698551716206,
                  "z": 0.15208709333432344,
                  "w": -0.9314811591750227
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "9ue1biga",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -145.78,
                  "y": 30.38882,
                  "z": 188.958
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14338809854634724,
                  "y": 0.3027623969306282,
                  "z": 0.2746439972156894,
                  "w": -0.9013020908626986
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "piaoiy6o",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.0968,
                  "y": 30.39358,
                  "z": 89.44988
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0994288608344448,
                  "y": 0.8452268070934648,
                  "z": 0.11515870096645561,
                  "w": -0.5122929042993569
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mjjtr6al",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -167.4555,
                  "y": 30.14954,
                  "z": 262.4163
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14830640723148816,
                  "y": -0.9220986449619512,
                  "z": 0.07895517384989036,
                  "w": -0.3485762169967356
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "w0mdk68q",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -534.0441,
                  "y": 30.05449,
                  "z": 189.1202
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08464579935510991,
                  "y": -0.26963779794571324,
                  "z": 0.12642269903682465,
                  "w": -0.9508668927556401
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "e0h5dswl",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -172.2825,
                  "y": 31.56505,
                  "z": 293.5399
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "24hsxnar",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -136.0671,
                  "y": 30.49792,
                  "z": 195.8264
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.159966802696578,
                  "y": -0.9765097164611318,
                  "z": -0.07249960122213375,
                  "w": -0.12483270210431861
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1s1f7rh7",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -158.3685,
                  "y": 30.61962,
                  "z": 102.7344
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13726399593439506,
                  "y": -0.9797246709816588,
                  "z": -0.06562190805635301,
                  "w": 0.13035309613908813
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ziqm5hf8",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -423.9724,
                  "y": 30.4807,
                  "z": 393.5219
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1315970953451383,
                  "y": -0.6601250766500095,
                  "z": 0.07635295729923783,
                  "w": -0.7355863739807871
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "i21v0uey",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -260.3807,
                  "y": 30.5954,
                  "z": 114.8917
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.031833859617659756,
                  "y": 0.10150599878086324,
                  "z": 0.1487757982131298,
                  "w": -0.9831321881921009
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cy60dma7",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -77.35064,
                  "y": 29.43554,
                  "z": 436.7001
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06139273644046345,
                  "y": 0.15057969126942458,
                  "z": -0.2022244882750713,
                  "w": 0.9657442440063737
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "64fjywuw",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -522.8497,
                  "y": 30.62309,
                  "z": 179.1306
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.048279687992355935,
                  "y": 0.5875356755681413,
                  "z": 0.14427989400032012,
                  "w": -0.794766766950723
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4ktdtetb",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -336.1507,
                  "y": 30.2156,
                  "z": 368.7354
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14759679646855112,
                  "y": -0.773596581490677,
                  "z": -0.15125819638094729,
                  "w": 0.5973980857064595
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bqr92663",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -263.5497,
                  "y": 30.11974,
                  "z": 347.9406
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1360701024819497,
                  "y": 0.9772410178250991,
                  "z": 0.06806212124146863,
                  "w": -0.14782580269637635
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "djpt4dhp",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -191.2506,
                  "y": 30.54251,
                  "z": 431.2413
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.5780249,
                  "y": 0.5780249,
                  "z": 0.5780249
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "jvnrt3pd",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -237.9891,
                  "y": 30.11974,
                  "z": 490.572
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.06627692096407914,
                  "y": -0.13503350196422795,
                  "z": 0.13694850199208397,
                  "w": -0.9790906142420742
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qa1liyu2",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -99.70364,
                  "y": 30.39623,
                  "z": 345.3094
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.14209170345067504,
                  "y": 0.5497094133496081,
                  "z": -0.15644090379914313,
                  "w": 0.8081805196265389
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "65mup7o9",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -188.8172,
                  "y": 30.61962,
                  "z": 143.5628
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.016428739173141436,
                  "y": -0.404700079631442,
                  "z": -0.15125389238739045,
                  "w": 0.9017040546172282
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "yy4wjv59",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -151.7909,
                  "y": 30.29446,
                  "z": 163.1019
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13726399593439506,
                  "y": -0.9797246709816588,
                  "z": -0.06562190805635301,
                  "w": 0.13035309613908813
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3zv1t8ia",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -123.4289,
                  "y": 30.39623,
                  "z": 443.5709
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.14249658983817737,
                  "y": -0.7533484462766562,
                  "z": -0.15607218887006416,
                  "w": 0.6227377555908628
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ie93ee10",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -209.8054,
                  "y": 30.37357,
                  "z": 432.4903
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04957449211633923,
                  "y": -0.9894917422414854,
                  "z": -0.11665500498001194,
                  "w": -0.06957062296997572
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1oxv0ft5",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -170.908,
                  "y": 30.3541,
                  "z": 251.5027
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.36455958531040544,
                  "w": -0.9311800624789522
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "kymhkdfj",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -305.9678,
                  "y": 30.39358,
                  "z": 92.14911
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0041419688184656965,
                  "y": 0.33044698551716206,
                  "z": 0.15208709333432344,
                  "w": -0.9314811591750227
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "asht1zny",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -434.2933,
                  "y": 30.76342,
                  "z": 368.6298
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10125669365281599,
                  "y": 0.5834884634245548,
                  "z": 0.18550188837198237,
                  "w": -0.7841411508468231
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1mw1zjee",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -552.9189,
                  "y": 30.37947,
                  "z": 370.5329
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.034729407955467174,
                  "y": -0.32981318058377856,
                  "z": -0.16964769001277905,
                  "w": 0.9280284453666293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "g3m2n8es",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -388.1002,
                  "y": 30.26995,
                  "z": 447.5598
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06366178060325081,
                  "y": 0.6703664063523055,
                  "z": 0.13818380130941185,
                  "w": -0.7262653068819962
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "a8a4l3gk",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -332.5171,
                  "y": 30.39358,
                  "z": 107.5441
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08464579935510991,
                  "y": -0.26963779794571324,
                  "z": 0.12642269903682465,
                  "w": -0.9508668927556401
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wc3c9mar",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -170.1639,
                  "y": 30.33188,
                  "z": 528.0721
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09096757681302213,
                  "y": -0.5397634810898088,
                  "z": -0.19075829331693245,
                  "w": 0.8148567714521306
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "9gh4di6b",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -536.2471,
                  "y": 30.22032,
                  "z": 351.7819
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.013079310355239461,
                  "y": 0.38465701044744305,
                  "z": 0.15158010411697811,
                  "w": -0.9104347247277825
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ln1a7w8v",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.6285,
                  "y": 30.2156,
                  "z": 352.6964
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.20732960036298226,
                  "y": -0.9230309016159961,
                  "z": 0.04096698007172293,
                  "w": -0.32148110056283297
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vw9zgjq9",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -318.323,
                  "y": 30.41325,
                  "z": 343.8604
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04916899827284126,
                  "y": -0.015226879465125612,
                  "z": 0.14397899494245178,
                  "w": -0.988241165286066
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iprz1cv7",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -244.7564,
                  "y": 30.33188,
                  "z": 494.8726
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18504029492686597,
                  "y": -0.9133300749598007,
                  "z": -0.10209759720085404,
                  "w": 0.34808669045672497
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "h5xy9yco",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.8722,
                  "y": 30.11974,
                  "z": 440.466
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.06627692096407914,
                  "y": -0.13503350196422795,
                  "z": 0.13694850199208397,
                  "w": -0.9790906142420742
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock3C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock3C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iqbcuxo4",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -525.4061,
                  "y": 30.20893,
                  "z": 344.3555
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0009748875329204184,
                  "y": 0.08526608413305324,
                  "z": -0.16593028858275036,
                  "w": 0.9824438324004883
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1i5gd61v",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -128.1584,
                  "y": 29.15278,
                  "z": 185.5333
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.21058188468621483,
                  "y": 0.27475488001947224,
                  "z": -0.0933646132104054,
                  "w": -0.933513832113675
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "e7ce92f5",
              "_$prefab": "f79359e6-a51b-44f0-b8f0-cf8d2f32130b",
              "name": "Rock3C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -536.8036,
                  "y": 29.51407,
                  "z": 172.7633
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.17045069999137416,
                  "y": 0.18560899999060704,
                  "z": -0.06310417999680654,
                  "w": -0.9656674999511312
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "f7pfa1dg",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -300.4621,
                  "y": 27.59015,
                  "z": 405.1068
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12673879153078638,
                  "y": -0.29157498051574604,
                  "z": 0.2464889835285801,
                  "w": -0.9155132388215944
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.783366,
                  "y": 1.783366,
                  "z": 1.783366
                }
              }
            },
            {
              "_$id": "50u0kjsz",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -188.7708,
                  "y": 38.23104,
                  "z": 404.2928
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9465434073596715,
                  "w": -0.3225764684287168
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.700462,
                  "y": 1.700462,
                  "z": 1.700462
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "lk5rypqf",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -259.2768,
                  "y": 30.32263,
                  "z": 389.6964
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "a6kop6x5",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.0202,
                  "y": 34.19573,
                  "z": 375.8809
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9884212277603972,
                  "w": -0.1517348889103271
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.406495,
                  "y": 2.406495,
                  "z": 2.406495
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "f7t7lx6c",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -437.8939,
                  "y": 30.44925,
                  "z": 170.6103
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.463599,
                  "y": 1.463599,
                  "z": 1.463599
                }
              }
            },
            {
              "_$id": "f7l7fd9s",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -341.9547,
                  "y": 34.31175,
                  "z": 319.839
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.930783,
                  "y": 2.930783,
                  "z": 2.930783
                }
              }
            },
            {
              "_$id": "nhdlq9fp",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -515.4921,
                  "y": 31.5849,
                  "z": 217.3256
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.6121500445854564,
                  "w": -0.7907416284185522
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.297318,
                  "y": 1.297318,
                  "z": 1.297318
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "raejzkpn",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.5122,
                  "y": 38.31258,
                  "z": 303.7264
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "bjotjoht",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -370.3478,
                  "y": 30.46858,
                  "z": 352.9181
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.575043,
                  "y": 1.575043,
                  "z": 1.575043
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "pfz237uu",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -295.4634,
                  "y": 31.58275,
                  "z": 359.1419
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11647599864754987,
                  "y": 0.9092010894428969,
                  "z": 0.05079394941021083,
                  "w": 0.39649299539615884
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "49k0id1r",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -338.7886,
                  "y": 32.08428,
                  "z": 327.0775
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9992678588000203,
                  "w": 0.03825893842257762
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.38974,
                  "y": 1.38974,
                  "z": 1.38974
                }
              }
            },
            {
              "_$id": "2e027g58",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -177.9651,
                  "y": 32.1733,
                  "z": 297.2546
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8442276965887376,
                  "w": -0.535984697834252
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.480048,
                  "y": 1.480048,
                  "z": 1.480048
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "74ewt3qu",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -293.5123,
                  "y": 28.4537,
                  "z": 369.5728
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.11410610224101526,
                  "y": 0.16249420319134544,
                  "z": 0.03160704062075436,
                  "w": -0.9795797192387002
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.810217,
                  "y": 1.810217,
                  "z": 1.810217
                }
              }
            },
            {
              "_$id": "qywe1i91",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -232.2469,
                  "y": 30.73382,
                  "z": 154.7997
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.965918,
                  "y": 1.965918,
                  "z": 1.965918
                }
              }
            },
            {
              "_$id": "e0gequsq",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -254.3989,
                  "y": 36.14113,
                  "z": 157.124
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2474262952325096,
                  "y": -0.013968939730841923,
                  "z": 0.034151739341953175,
                  "w": -0.9682038813443326
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.264189,
                  "y": 2.264189,
                  "z": 2.264189
                }
              }
            },
            {
              "_$id": "xsj0rq3i",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.3731,
                  "y": 33.70373,
                  "z": 404.2928
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.20347907806076795,
                  "w": -0.9790792944351036
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.153797,
                  "y": 2.153797,
                  "z": 2.153797
                }
              }
            },
            {
              "_$id": "kyu3tkex",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -245.3262,
                  "y": 28.79141,
                  "z": 399.935
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cgl61bvt",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -419.2556,
                  "y": 32.42503,
                  "z": 360.4523
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8024885764524937,
                  "w": -0.5966674824919237
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.203351,
                  "y": 2.203351,
                  "z": 2.203351
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "xstdtxfq",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -489.7537,
                  "y": 33.97303,
                  "z": 175.4734
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.8103735995708221,
                  "w": -0.5859134996896972
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.643519,
                  "y": 1.643519,
                  "z": 1.643519
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "3viovqm8",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -178.0823,
                  "y": 30.79535,
                  "z": 247.6683
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.05665,
                  "y": 2.05665,
                  "z": 2.05665
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "nb0ssjr9",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -177.6757,
                  "y": 36.66388,
                  "z": 213.2454
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10968739632127401,
                  "y": -0.6512866781569687,
                  "z": 0.14154669525276808,
                  "w": -0.737400075268874
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.217242,
                  "y": 2.217242,
                  "z": 2.217242
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "gp7rko7l",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -482.8157,
                  "y": 49.04035,
                  "z": 189.0586
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.27846317304988427,
                  "w": -0.9604469070463969
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.448203,
                  "y": 1.448203,
                  "z": 1.448203
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "h1mwdyul",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -266.9851,
                  "y": 30.61668,
                  "z": 367.1618
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.42605008850726284,
                  "w": -0.9046995755956525
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.332765,
                  "y": 1.332765,
                  "z": 1.332765
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "i4h16oq8",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.9381,
                  "y": 32.78389,
                  "z": 342.9574
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 4.074945,
                  "y": 4.074945,
                  "z": 4.074945
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "6xs7d3c9",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -344.9723,
                  "y": 28.02657,
                  "z": 398.0333
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.332742,
                  "y": 1.332742,
                  "z": 1.332742
                }
              }
            },
            {
              "_$id": "76e7597w",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -109.8418,
                  "y": 40.94707,
                  "z": 412.4695
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.08856244369535621,
                  "y": 0.906101135495853,
                  "z": 0.22501268398164326,
                  "w": -0.3471407752875052
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.131558,
                  "y": 2.131558,
                  "z": 2.131558
                }
              }
            },
            {
              "_$id": "ohdd5s2e",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.5475,
                  "y": 30.72349,
                  "z": 410.0624
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.394974,
                  "y": 1.394974,
                  "z": 1.394974
                }
              }
            },
            {
              "_$id": "egb9hkgx",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.3598,
                  "y": 31.70912,
                  "z": 406.8741
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.204787,
                  "y": 1.204787,
                  "z": 1.204787
                }
              }
            },
            {
              "_$id": "ztls4ese",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -316.7085,
                  "y": 30.69617,
                  "z": 130.2555
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.9253392835509378,
                  "w": -0.37914009326031095
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.204829,
                  "y": 2.204829,
                  "z": 2.204829
                }
              }
            },
            {
              "_$id": "l4rqhdfv",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -147.1898,
                  "y": 30.7029,
                  "z": 436.4921
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9352303952021511,
                  "w": -0.3540396981837321
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.657138,
                  "y": 1.657138,
                  "z": 1.657138
                }
              }
            },
            {
              "_$id": "ib72po0e",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -182.9806,
                  "y": 37.04011,
                  "z": 302.4436
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.47039767242847624,
                  "w": -0.8824545482764946
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.470516,
                  "y": 1.470516,
                  "z": 1.470516
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "bt47boce",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -364.58,
                  "y": 30.38882,
                  "z": 361.0431
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.722439567385116,
                  "w": -0.6914340687848745
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.693733,
                  "y": 1.693733,
                  "z": 1.693733
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zglse4gk",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.2398,
                  "y": 31.63705,
                  "z": 398.6805
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08772012681980568,
                  "y": 0.41246868504641276,
                  "z": 0.15967279421124284,
                  "w": -0.8925689676409182
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.736878,
                  "y": 1.736878,
                  "z": 1.736878
                }
              }
            },
            {
              "_$id": "1zhzllq2",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -188.7621,
                  "y": 33.13549,
                  "z": 281.137
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "x4xhzv70",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -511.1198,
                  "y": 31.28195,
                  "z": 246.0556
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.553831,
                  "y": 1.553831,
                  "z": 1.553831
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "8m2cks9i",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -166.5852,
                  "y": 34.41596,
                  "z": 186.4393
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.27637277507944036,
                  "w": -0.9610505133419831
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.395088,
                  "y": 2.395088,
                  "z": 2.395088
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7d8bvitp",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -212.4178,
                  "y": 30.56312,
                  "z": 418.936
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.9497553105934964,
                  "w": -0.3129933705359448
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bzhtwpuc",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -162.3687,
                  "y": 32.50772,
                  "z": 300.524
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.15457328826643102,
                  "w": -0.9879813250029086
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "i5meuf0m",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -55.84762,
                  "y": 28.9132,
                  "z": 146.1765
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.6000330234900813,
                  "w": -0.7999752313174149
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.930914,
                  "y": 1.930914,
                  "z": 1.930914
                }
              }
            },
            {
              "_$id": "kmx9l1md",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -143.6192,
                  "y": 32.78778,
                  "z": 328.2714
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.853587946238711,
                  "w": -0.5209487671892307
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.514078,
                  "y": 1.514078,
                  "z": 1.514078
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "c403zlhl",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -131.2094,
                  "y": 31.31842,
                  "z": 334.3848
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.1319932028479778,
                  "w": -0.9912506213879176
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.244117,
                  "y": 1.244117,
                  "z": 1.244117
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "mept453i",
              "_$prefab": "11953b6f-522d-4655-b2c9-7ef8071b0908",
              "name": "Rock4",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -497.7101,
                  "y": 38.76955,
                  "z": 191.9682
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7822359586160855,
                  "w": -0.6229822670413452
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.617278,
                  "y": 1.617278,
                  "z": 1.617278
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock4(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock4_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "sbl9paaw",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.8791,
                  "y": 29.87037,
                  "z": 537.1743
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.009749228862493816,
                  "y": -0.39143209447911886,
                  "z": -0.03625105948870368,
                  "w": 0.9194409870319157
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kxhrdd2y",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -226.4539,
                  "y": 29.83327,
                  "z": 406.9434
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0682142956055411,
                  "y": 0.07660129506523902,
                  "z": -0.17945528843924305,
                  "w": -0.978404236969851
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wjk8tjee",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -135.1775,
                  "y": 29.54877,
                  "z": 198.5309
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03174116032730235,
                  "y": -0.9271505095604111,
                  "z": -0.06305111065015823,
                  "w": -0.3679796037944608
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5wohfo97",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -432.3192,
                  "y": 30.30191,
                  "z": 366.4169
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.008832586391450308,
                  "y": 0.7844639459518117,
                  "z": 0.03648529748622707,
                  "w": -0.6190372573494201
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "fn8hgcez",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -550.6374,
                  "y": 29.47463,
                  "z": 384.6129
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.002159597979941596,
                  "y": -0.20105499813259575,
                  "z": -0.03582964966721324,
                  "w": -0.9789220909077452
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3xvxdwke",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -552.4948,
                  "y": 29.82776,
                  "z": 367.6136
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0002046314944325166,
                  "y": -0.5683392845369867,
                  "z": 0.0013426279634706332,
                  "w": 0.8227931776139672
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "cyv90vvk",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -156.2683,
                  "y": 29.87394,
                  "z": 104.7444
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03460857812244275,
                  "y": -0.9914160462144795,
                  "z": -0.009522413483397543,
                  "w": -0.12572109317947852
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4sa29a7p",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -186.5364,
                  "y": 29.87037,
                  "z": 500.0314
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004913311521856329,
                  "y": -0.7143876304786755,
                  "z": -0.037216216378267844,
                  "w": 0.6987425320011934
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "c5xjc2wa",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -385.5679,
                  "y": 30.23205,
                  "z": 445.6567
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.20934188228351422,
                  "y": 0.7324617380121751,
                  "z": -0.004939849581943308,
                  "w": -0.6478050451766234
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7dpup8vi",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -294.405,
                  "y": 30.68145,
                  "z": 317.2277
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.009936996484129025,
                  "y": 0.38666107992680904,
                  "z": 0.03620006812070333,
                  "w": -0.9214575521632914
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ak6xrq4e",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -278.3774,
                  "y": 30.32354,
                  "z": 372.7039
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.20412539886230277,
                  "y": -0.3403566981030147,
                  "z": -0.01757744990203171,
                  "w": -0.9177042948851557
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ifpoztfg",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -422.5823,
                  "y": 30.4428,
                  "z": 413.3733
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.20934188228351422,
                  "y": 0.7324617380121751,
                  "z": -0.004939849581943308,
                  "w": -0.6478050451766234
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "62w1d9ci",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -261.3421,
                  "y": 29.84971,
                  "z": 112.1483
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01732397865788687,
                  "y": 0.35325627263273696,
                  "z": -0.0314373775645019,
                  "w": -0.9348377275767991
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "y3oq84p6",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -520.9105,
                  "y": 29.87741,
                  "z": 176.9653
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.030907741707343513,
                  "y": 0.7797056430709363,
                  "z": -0.018252121008247083,
                  "w": -0.6251165345314346
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "t5er13yu",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -212.5167,
                  "y": 31.28884,
                  "z": 389.8958
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "4ojfgh8v",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -213.542,
                  "y": 29.71335,
                  "z": 429.1018
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.2909430911344215,
                  "y": 0.2395197927013853,
                  "z": 0.14941679544699163,
                  "w": -0.9141427721443652
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ege5e9qq",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -446.0529,
                  "y": 30.82419,
                  "z": 161.5121
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15225628796428067,
                  "y": 0.37164547062176784,
                  "z": 0.028309377762169758,
                  "w": -0.9153667276411032
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.396601,
                  "y": 1.396601,
                  "z": 1.396601
                }
              }
            },
            {
              "_$id": "jc8j9g0r",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -187.9556,
                  "y": 29.87394,
                  "z": 140.7865
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.026308948586677313,
                  "y": -0.628605366231177,
                  "z": 0.02441861868822626,
                  "w": 0.7768956582649889
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wjtuwnb1",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -102.6238,
                  "y": 29.93473,
                  "z": 435.775
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03157808957292668,
                  "y": 0.32787589556568975,
                  "z": -0.020298059725481817,
                  "w": 0.9439746872333505
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ycqsam8c",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -535.5094,
                  "y": 29.47463,
                  "z": 348.9706
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.025762389886359625,
                  "y": 0.6112676973036395,
                  "z": -0.02499450988974682,
                  "w": -0.7906094965125456
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "01exzegi",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -362.3011,
                  "y": 29.17652,
                  "z": 425.7325
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07209282994925786,
                  "y": -0.45799919967763986,
                  "z": 0.21003419985216862,
                  "w": -0.860769999394152
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bbuhm2pn",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -240.3447,
                  "y": 30.08184,
                  "z": 488.4541
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1368019956512965,
                  "y": -0.03499201888766304,
                  "z": 0.15853569496041903,
                  "w": -0.9772037689363489
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5fip52ii",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -371.311,
                  "y": 30.17682,
                  "z": 359.5489
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02707127954096368,
                  "y": 0.9942895831402491,
                  "z": 0.026006499559018705,
                  "w": -0.09989510830612058
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1rnvoyyw",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -515.2002,
                  "y": 29.36018,
                  "z": 317.1558
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.030907741707343513,
                  "y": 0.7797056430709363,
                  "z": -0.018252121008247083,
                  "w": -0.6251165345314346
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xhysr90l",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -139.4063,
                  "y": 29.54877,
                  "z": 213.1125
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06993226405953233,
                  "y": -0.8288795481160358,
                  "z": -0.009613502558058928,
                  "w": 0.554955632214892
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "d5nafbp2",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -252.9481,
                  "y": 30.08284,
                  "z": 393.0867
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ijbjxm4e",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -174.004,
                  "y": 30.38384,
                  "z": 252.7369
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13019269741988346,
                  "y": -0.1491413970443643,
                  "z": 0.11756129767020843,
                  "w": -0.973132080714785
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "lw8ufml2",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -400.6035,
                  "y": 30.4428,
                  "z": 432.5994
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1276738936274791,
                  "y": -0.08986918551440591,
                  "z": 0.1659754917157513,
                  "w": -0.9736914514006433
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "h0e2vmge",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -388.2394,
                  "y": 31.44305,
                  "z": 420.7803
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.755592,
                  "y": 1.755592,
                  "z": 1.755592
                }
              }
            },
            {
              "_$id": "qsc96jkr",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.9814,
                  "y": 29.7541,
                  "z": 355.6405
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.037454777734975506,
                  "y": -0.8257955500611868,
                  "z": -0.002515353847887548,
                  "w": -0.5627188659703757
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "7wwtftvb",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -333.3139,
                  "y": 29.7541,
                  "z": 367.8723
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01835884838826231,
                  "y": -0.9225081190122894,
                  "z": -0.03274354712541834,
                  "w": 0.3841478662753578
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5ulkq8vo",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -224.1074,
                  "y": 30.60102,
                  "z": 152.3051
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.001939452828624497,
                  "y": 0.41913436296410966,
                  "z": 0.23885277889429712,
                  "w": -0.8759406225994246
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.286503,
                  "y": 1.286503,
                  "z": 1.286503
                }
              }
            },
            {
              "_$id": "mdnorrgc",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -144.4592,
                  "y": 29.97872,
                  "z": 307.3043
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03428531988282476,
                  "y": -0.3166849989176813,
                  "z": 0.030005829897450556,
                  "w": -0.9474358967619951
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vqiyg15o",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -241.9162,
                  "y": 29.87037,
                  "z": 495.7248
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.027045479845448563,
                  "y": -0.994190294318698,
                  "z": -0.026033229851233068,
                  "w": 0.10087849942352965
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vqlrffyi",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -193.8044,
                  "y": 30.59577,
                  "z": 428.789
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01835884838826231,
                  "y": -0.9225081190122894,
                  "z": -0.03274354712541834,
                  "w": 0.3841478662753578
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "js4b0nuz",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -228.6083,
                  "y": 29.84971,
                  "z": 145.1864
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.013501660145579793,
                  "y": -0.5034816054287211,
                  "z": -0.03325860035860628,
                  "w": -0.8632600093079823
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6p0uae5v",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -358.1308,
                  "y": 30.06942,
                  "z": 357.3323
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.032754239629171934,
                  "y": -0.3846834956447948,
                  "z": 0.01833985979236475,
                  "w": -0.9222848895583252
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "rcf9pgah",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -168.07,
                  "y": 29.81328,
                  "z": 265.3344
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.010645619268626358,
                  "y": -0.8058991446332451,
                  "z": 0.04430014695649835,
                  "w": -0.5902971594454983
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "r2xm8w4u",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -329.2306,
                  "y": 31.42496,
                  "z": 322.965
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01828469918178467,
                  "y": 0.15571319303204714,
                  "z": 0.03278504853291383,
                  "w": -0.9870887558291255
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kdg1fafg",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -275.8724,
                  "y": 29.64789,
                  "z": 96.61469
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03552257041263493,
                  "y": 0.9586253111355197,
                  "z": -0.00515516705988311,
                  "w": -0.28239880328038225
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kvdzwmpq",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -512.4122,
                  "y": 30.40225,
                  "z": 251.0037
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.16059180307734852,
                  "y": -0.6435298123316724,
                  "z": -0.15120290289743324,
                  "w": -0.7329511140452125
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "52lw22ep",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -511.8196,
                  "y": 30.46806,
                  "z": 185.8661
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.17537398353594205,
                  "y": 0.32921686909321723,
                  "z": 0.08253909225125432,
                  "w": -0.9241469132413599
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "dn4vwt71",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -514.8036,
                  "y": 32.59932,
                  "z": 237.0719
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08680087808641057,
                  "y": 0.15528039657672904,
                  "z": -0.05484254879095553,
                  "w": -0.9825201783396174
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "pfgfpd33",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -481.403,
                  "y": 28.93899,
                  "z": 394.2492
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03755553047677965,
                  "y": -0.18162600230580106,
                  "z": -0.005671990072007756,
                  "w": 0.9826339124748564
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "nbv22weh",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -268.5328,
                  "y": 30.45902,
                  "z": 372.6421
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09860912779657136,
                  "y": 0.3354525925042856,
                  "z": -0.22531479496532333,
                  "w": -0.9093849796797217
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.755635,
                  "y": 1.755635,
                  "z": 1.755635
                }
              }
            },
            {
              "_$id": "8hxbno46",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -369.5836,
                  "y": 29.67814,
                  "z": 411.9128
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "z": 0.15015920449547535,
                  "w": -0.9886618295986177
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "v7b3u3bu",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -317.1955,
                  "y": 29.64789,
                  "z": 89.27032
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03552257041263493,
                  "y": 0.9586253111355197,
                  "z": -0.00515516705988311,
                  "w": -0.28239880328038225
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "6vbe7rl6",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -125.2969,
                  "y": 27.9698,
                  "z": 180.3884
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.15897639504758493,
                  "y": -0.6551080795921456,
                  "z": 0.1071899966608291,
                  "w": -0.7308010772341657
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8177553,
                  "y": 0.8177552,
                  "z": 0.8177553
                }
              }
            },
            {
              "_$id": "djgupmdk",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -124.3922,
                  "y": 29.70105,
                  "z": 318.5827
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01192701912471158,
                  "y": -0.9903385273220042,
                  "z": 0.043972496772989395,
                  "w": -0.13097239038832625
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "dnw5f9v0",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -162.7544,
                  "y": 30.66211,
                  "z": 203.6805
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03174116032730235,
                  "y": -0.9271505095604111,
                  "z": -0.06305111065015823,
                  "w": -0.3679796037944608
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zb0ridsc",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -145.1395,
                  "y": 29.87394,
                  "z": 117.6966
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03378417974641525,
                  "y": -0.8831753933708674,
                  "z": 0.012126829908975765,
                  "w": 0.46766739648967887
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mfjb2fv9",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -214.2284,
                  "y": 32.90953,
                  "z": 374.3156
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "o9l5vtz5",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -209.2278,
                  "y": 30.08184,
                  "z": 438.3481
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1368019956512965,
                  "y": -0.03499201888766304,
                  "z": 0.15853569496041903,
                  "w": -0.9772037689363489
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "36kmty0r",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -474.9999,
                  "y": 29.88989,
                  "z": 380.6436
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.028035197384971105,
                  "y": 0.396334963031208,
                  "z": -0.025624517609831206,
                  "w": 0.9173200144354751
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "49c0kiqa",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -218.257,
                  "y": 32.61118,
                  "z": 416.0055
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15977470856086173,
                  "y": 0.17033060912645567,
                  "z": 0.1556258083385602,
                  "w": -0.9598125514275546
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "j0ppnnvx",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -527.305,
                  "y": 29.82776,
                  "z": 342.0629
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03755553047677965,
                  "y": -0.18162600230580106,
                  "z": -0.005671990072007756,
                  "w": 0.9826339124748564
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "b0ahjnc6",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -335.1017,
                  "y": 29.64789,
                  "z": 106.2139
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004455907833229054,
                  "y": -0.017894119330278065,
                  "z": -0.03561702866696399,
                  "w": -0.999195362603186
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3s8f8c8v",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -307.9554,
                  "y": 30.38956,
                  "z": 120.1949
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.17101848938962164,
                  "y": 0.31584618040418033,
                  "z": 0.25138498440350043,
                  "w": -0.8987766442378406
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.353674,
                  "y": 1.353674,
                  "z": 1.353674
                }
              }
            },
            {
              "_$id": "tr1ewdzw",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -379.3623,
                  "y": 30.3186,
                  "z": 354.9488
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.005830538020807706,
                  "y": 0.7314190026102483,
                  "z": 0.037083640132342076,
                  "w": -0.6808943024299384
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zvsu26eo",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -168.4433,
                  "y": 29.87037,
                  "z": 525.6573
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0068254347700222795,
                  "y": -0.7494611747474881,
                  "z": -0.03691340875623138,
                  "w": 0.6609831777286854
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "u0kbhvs3",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -546.5935,
                  "y": 28.76395,
                  "z": 182.1112
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.21095539268641084,
                  "y": 0.451619284342861,
                  "z": 0.07412648743011702,
                  "w": -0.8637378700551673
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4r9rf13u",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -359.0638,
                  "y": 29.88513,
                  "z": 365.1127
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "jbgqscb7",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -161.471,
                  "y": 29.81328,
                  "z": 221.2025
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0493067388383336,
                  "y": 0.04656683890288562,
                  "z": -0.05051524880986111,
                  "w": -0.9964178765244022
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "epf1we9z",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -241.06090250702584,
                  "y": 29.00303479206386,
                  "z": 385.4846259813438
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.08938039394259886,
                  "y": 0.14086949045312988,
                  "z": 0.17113338840211442,
                  "w": -0.9710202341929609
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "2qdscpu4",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -508.5933,
                  "y": 29.85224,
                  "z": 279.5195
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.002159597979941596,
                  "y": -0.20105499813259575,
                  "z": -0.03582964966721324,
                  "w": -0.9789220909077452
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "14z2884o",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -192.6532,
                  "y": 34.6185,
                  "z": 411.3833
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13006739413592466,
                  "w": -0.9915051552980902
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.463393,
                  "y": 1.463393,
                  "z": 1.463393
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vjq3k23o",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -219.3761,
                  "y": 28.73809,
                  "z": 426.3813
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1268033911712977,
                  "y": 0.13990179025931998,
                  "z": 0.10137889294148164,
                  "w": -0.9767654319925821
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bg67tqri",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -226.0581,
                  "y": 28.40347,
                  "z": 411.3442
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 0.7889200951080446,
                  "w": -0.6144957961896191
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5jol3s53",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -149.6907,
                  "y": 29.54877,
                  "z": 165.1119
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03460857812244275,
                  "y": -0.9914160462144795,
                  "z": -0.009522413483397543,
                  "w": -0.12572109317947852
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2chijvbd",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -206.8669,
                  "y": 32.2991,
                  "z": 398.2929
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2442709870297227,
                  "y": 0.6808118638503173,
                  "z": -0.19309938974682728,
                  "w": -0.6629777647972706
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.501868,
                  "y": 1.501868,
                  "z": 1.501868
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "gk1o3wup",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -261.1396,
                  "y": 30.08184,
                  "z": 349.996
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1603111968710528,
                  "y": 0.9766625809375411,
                  "z": -0.13471719737059545,
                  "w": -0.04776818906766251
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "v5al1gjj",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -305.5651,
                  "y": 29.64789,
                  "z": 89.27032
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02424784981421501,
                  "y": 0.5637125956808814,
                  "z": -0.026466399797216666,
                  "w": -0.8251906936774581
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "0mldl49h",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -79.59851,
                  "y": 29.93473,
                  "z": 434.7662
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.019841009399929384,
                  "y": -0.10803799673250357,
                  "z": -0.03186726903620772,
                  "w": 0.9934377699545118
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zuv42qfu",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -364.17,
                  "y": 29.60984,
                  "z": 396.254
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.012073109001615002,
                  "y": 0.3938997674264833,
                  "z": -0.20504908304347885,
                  "w": -0.8959085259129003
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bma4qc81",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -186.5364,
                  "y": 29.67686,
                  "z": 441.0695
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004913311521856329,
                  "y": -0.7143876304786755,
                  "z": -0.037216216378267844,
                  "w": 0.6987425320011934
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "0otiq5ae",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -126.7181,
                  "y": 28.67043,
                  "z": 183.0675
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2025315908511144,
                  "y": -0.1796408918851476,
                  "z": -0.05710745742030568,
                  "w": -0.9609624565907939
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.9371026,
                  "y": 0.9371026,
                  "z": 0.9371026
                }
              }
            },
            {
              "_$id": "5ur65fet",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -512.8054,
                  "y": 30.19971,
                  "z": 195.791
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1169974010695844,
                  "y": -0.48446510442895574,
                  "z": -0.1529883013986114,
                  "w": -0.8533462078012484
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "320ewr4u",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -406.4382,
                  "y": 30.4428,
                  "z": 381.6364
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02457065893963634,
                  "y": -0.5761818751344755,
                  "z": 0.20795369102561564,
                  "w": -0.790041765905205
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "n3cp6dbg",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -536.6287,
                  "y": 29.3088,
                  "z": 187.7899
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004455907833229054,
                  "y": -0.017894119330278065,
                  "z": -0.03561702866696399,
                  "w": -0.999195362603186
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xoekw8ep",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -371.8525,
                  "y": 30.3186,
                  "z": 402.7602
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.011479859313695748,
                  "y": 0.3468003792671175,
                  "z": 0.03574079786329598,
                  "w": -0.937187443971811
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kdvvkywu",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -125.9021,
                  "y": 30.1929,
                  "z": 327.5612
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09215061463082044,
                  "y": 0.35920467907084586,
                  "z": 0.23036208657789303,
                  "w": -0.8996741475802515
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1jfvc9xy",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -207.5988,
                  "y": 29.56911,
                  "z": 133.3116
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.033204628456088806,
                  "y": -0.968965154946156,
                  "z": -0.013633859366068254,
                  "w": -0.24457738862791767
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cz8xn6wh",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -205.3173,
                  "y": 29.87037,
                  "z": 527.4751
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.027045479845448563,
                  "y": -0.994190294318698,
                  "z": -0.026033229851233068,
                  "w": 0.10087849942352965
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cu0fmqpm",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -374.5327,
                  "y": 27.71883,
                  "z": 458.1314
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02844240820292,
                  "y": 0.24405128458007913,
                  "z": -0.15358629029593945,
                  "w": -0.957100439527411
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "10ffuq7f",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -354.7247,
                  "y": 30.26337,
                  "z": 369.6047
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15502889915937887,
                  "y": 0.08384634954535565,
                  "z": 0.14076389923672872,
                  "w": -0.9742285947173905
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "e3s3h2g6",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -426.8158,
                  "y": 30.4428,
                  "z": 394.918
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02457065893963634,
                  "y": -0.5761818751344755,
                  "z": 0.20795369102561564,
                  "w": -0.790041765905205
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "jamk3ldj",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -332.2989,
                  "y": 29.64789,
                  "z": 123.6951
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02424784981421501,
                  "y": 0.5637125956808814,
                  "z": -0.026466399797216666,
                  "w": -0.8251906936774581
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "u6at58y1",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -156.6697,
                  "y": 32.01388,
                  "z": 302.4379
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12091521182679786,
                  "y": 0.32978473225646554,
                  "z": 0.20811232035560545,
                  "w": -0.91285858928731
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1kh9hh3n",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -120.6555,
                  "y": 29.93473,
                  "z": 442.5215
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.01726228144816124,
                  "y": -0.9092535762787811,
                  "z": -0.03333468279650148,
                  "w": 0.4145464347769836
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "eiqukplh",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -517.3398,
                  "y": 29.54953,
                  "z": 258.7046
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.014077019253217747,
                  "y": 0.25752258633849295,
                  "z": -0.033019168248341606,
                  "w": -0.9656053487748842
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "81o8scui",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -263.319,
                  "y": 29.48941,
                  "z": 396.2102
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09991090800706326,
                  "y": 0.3563659928915181,
                  "z": -0.1545828969165135,
                  "w": -0.9160377817276673
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7oyfbr64",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -102.6238,
                  "y": 29.93473,
                  "z": 345.8251
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03157808957292668,
                  "y": 0.32787589556568975,
                  "z": -0.020298059725481817,
                  "w": 0.9439746872333505
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ytxzfwh7",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -377.5101,
                  "y": 30.37388,
                  "z": 444.6658
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2uu4h1aq",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -532.8716,
                  "y": 29.82776,
                  "z": 366.2325
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.001143219904622177,
                  "y": 0.24236047978008013,
                  "z": 0.0007331935388303133,
                  "w": 0.9701853190582992
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "kxn06fmr",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.0991,
                  "y": 30.37535,
                  "z": 341.2377
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.15502889915937887,
                  "y": 0.08384634954535565,
                  "z": 0.14076389923672872,
                  "w": -0.9742285947173905
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "9whd04rk",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -520.5383,
                  "y": 31.04099,
                  "z": 217.5099
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.211562998263522,
                  "y": 0.2852714976585335,
                  "z": -0.07689507936885649,
                  "w": -0.9316374923532564
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "90yfb0ss",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -342.9869,
                  "y": 29.75383,
                  "z": 384.2768
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07800154149514207,
                  "y": -0.8841256169470165,
                  "z": 0.1943301037249407,
                  "w": -0.4177002080065233
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "82ltlex2",
              "_$prefab": "0ed83ad8-56d2-4daa-b2cd-4c057765e53b",
              "name": "Rock5A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -144.3732,
                  "y": 29.54877,
                  "z": 181.9698
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03238017976614982,
                  "y": -0.8311939939971036,
                  "z": 0.015490489888127432,
                  "w": 0.5548225959930623
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2fjaroae",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -318.3167,
                  "y": 30.72367,
                  "z": 335.5769
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.626891,
                  "y": 1.626891,
                  "z": 1.626891
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iqe3g65x",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -511.6017,
                  "y": 31.71964,
                  "z": 202.6896
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2663513083380928,
                  "y": 0.2113145066151729,
                  "z": -0.06270144196286041,
                  "w": -0.9383345293744393
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "pl7yovht",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -388.2405,
                  "y": 30.46706,
                  "z": 425.5269
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "hkqqkwv3",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -129.7734,
                  "y": 29.16898,
                  "z": 182.7893
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12614749537017905,
                  "y": -0.04388910838919741,
                  "z": -0.05758592788650156,
                  "w": -0.98936566368865
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ffhcjn7o",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -224.2561,
                  "y": 30.79212,
                  "z": 410.4228
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.8355841210497964,
                  "y": 0.1258670881074425,
                  "z": 0.48948925375058566,
                  "w": -0.21530657965674804
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "cfxxun16",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -361.5332,
                  "y": 30.05546,
                  "z": 413.1506
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "t5qscr62",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -366.8587,
                  "y": 29.79471,
                  "z": 443.5671
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18817499728532344,
                  "y": -0.2112429969525366,
                  "z": 0.09531095862501165,
                  "w": -0.9544015862314776
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "hii26syu",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -222.2512,
                  "y": 29.00747,
                  "z": 425.3908
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.25893149754073597,
                  "y": 0.4670982955636219,
                  "z": -0.17538949833419618,
                  "w": -0.8270502921448915
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "du2974gd",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -246.3131,
                  "y": 28.97912,
                  "z": 403.8954
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.7397862531598097,
                  "w": -0.6728419573984443
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bwwlfd0h",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -216.4258,
                  "y": 28.86548,
                  "z": 446.1542
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12708439768819565,
                  "y": 0.21635669606423483,
                  "z": -0.11524149790363097,
                  "w": -0.9611236825161079
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "majv0gz7",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -277.0258,
                  "y": 29.43073,
                  "z": 387.2533
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vth6wwtf",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -205.3968,
                  "y": 32.85199,
                  "z": 394.1874
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6819568273314663,
                  "w": -0.7313924293127464
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.484228,
                  "y": 1.484228,
                  "z": 1.484228
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "fhf75rx5",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -513.3378,
                  "y": 30.40095,
                  "z": 191.311
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2875788930788303,
                  "y": -0.03213799922653382,
                  "z": -0.1324928968112895,
                  "w": -0.9480037771843649
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "2diu0m7h",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -250.0104,
                  "y": 29.51667,
                  "z": 397.5346
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.007189950868966787,
                  "y": -0.3559894935122718,
                  "z": -0.0027390699500818376,
                  "w": -0.9344582829699711
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "n7kb62vp",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -214.1799,
                  "y": 30.76174,
                  "z": 392.4989
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.3708312814065608,
                  "w": -0.9287002534350728
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zdrgk5cy",
              "_$prefab": "422dfb38-da14-4c1a-9592-97199c4edbc1",
              "name": "Rock5B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.087,
                  "y": 30.36181,
                  "z": 248.3118
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "i4qvc1i8",
              "_$prefab": "f364b6d0-15a7-4e9f-acf3-f285ec65138a",
              "name": "Rock5C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -176.1969,
                  "y": 30.39553,
                  "z": 254.3599
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1399348959418986,
                  "y": 0.17369479496286408,
                  "z": -0.10876739684575372,
                  "w": -0.9687197719071998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "nn4yfsn3",
              "_$prefab": "f364b6d0-15a7-4e9f-acf3-f285ec65138a",
              "name": "Rock5C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -250.2405,
                  "y": 28.58774,
                  "z": 403.519
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1654939954538203,
                  "y": -0.020831959427738567,
                  "z": 0.3827017894870439,
                  "w": -0.9086897750379643
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "st9jl3ey",
              "_$prefab": "f364b6d0-15a7-4e9f-acf3-f285ec65138a",
              "name": "Rock5C",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -194.6769,
                  "y": 31.49461,
                  "z": 425.7842
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.4180742804186344,
                  "y": 0.3573848832611467,
                  "z": -0.017619019174777133,
                  "w": -0.8349727608923397
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock5C(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock5C_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "tb00bd07",
              "_$prefab": "f364b6d0-15a7-4e9f-acf3-f285ec65138a",
              "name": "Rock5C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.5912,
                  "y": 30.25784,
                  "z": 426.1015
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2186532929105357,
                  "y": -0.10315509665536994,
                  "z": -0.09276927699211263,
                  "w": -0.9658900686826434
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "64x5fqqd",
              "_$prefab": "f364b6d0-15a7-4e9f-acf3-f285ec65138a",
              "name": "Rock5C",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -384.4055,
                  "y": 30.68313,
                  "z": 419.7699
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09593634011822352,
                  "y": -0.7520409009267492,
                  "z": 0.19269110023745561,
                  "w": -0.6229774007677027
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.358733,
                  "y": 1.358733,
                  "z": 1.358733
                }
              }
            },
            {
              "_$id": "00od0rx0",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -168.2692,
                  "y": 31.27682,
                  "z": 214.9485
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.6536799636738453,
                  "y": -0.05084713717433443,
                  "z": -0.7370795590391819,
                  "w": 0.16380109089728292
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vfc0jjcu",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -432.6956,
                  "y": 31.01026,
                  "z": 400.2183
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03329973741295399,
                  "y": 0.9382047271111732,
                  "z": 0.08825504314349378,
                  "w": 0.33297757413107815
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "roe9s4zv",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -198.9595,
                  "y": 31.38013,
                  "z": 529.1125
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04296431772946629,
                  "y": 0.9442732500980264,
                  "z": 0.04457986764408938,
                  "w": 0.3232873829152436
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "uqsgvht1",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -255.0056,
                  "y": 29.15293,
                  "z": 416.7457
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0890774057294515,
                  "y": 0.4156976800706241,
                  "z": 0.008469882593936934,
                  "w": 0.9050905566081534
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012998,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "79alq951",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -311.9108,
                  "y": 30.65535,
                  "z": 84.03851
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09282855336475619,
                  "y": 0.5592072600287155,
                  "z": -0.11002599213550941,
                  "w": -0.8164339416425436
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "jrnsgo2f",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -436.0655,
                  "y": 29.61306,
                  "z": 407.2413
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13124000316229323,
                  "y": 0.5703092137418845,
                  "z": -0.08946943215581052,
                  "w": -0.8059272194192176
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "382l09pk",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.4953,
                  "y": 30.8756,
                  "z": 436.0765
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.6109768934659963,
                  "y": -0.12840029862684163,
                  "z": -0.7786673916726545,
                  "w": -0.06243149933233538
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "z2ge4vcv",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -501.7508,
                  "y": 32.03186,
                  "z": 286.7017
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03329973741295399,
                  "y": 0.9382047271111732,
                  "z": 0.08825504314349378,
                  "w": 0.33297757413107815
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "4zbccp49",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -547.1122,
                  "y": 30.39259,
                  "z": 364.0619
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04706913795840633,
                  "y": -0.8876844614972557,
                  "z": 0.11555569498784583,
                  "w": 0.4432241807754354
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012998,
                  "z": 0.8012996
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "scu6d9xb",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -557.7845,
                  "y": 33.33442,
                  "z": 357.1091
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13633609765087246,
                  "y": 0.8297299857034081,
                  "z": 0.1236770978689923,
                  "w": 0.5269388909206243
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909691,
                  "z": 0.7909694
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "1lkrxfza",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -555.831,
                  "y": 31.82483,
                  "z": 360.294
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.061343349064327375,
                  "y": -0.9603256853521128,
                  "z": -0.12453989810038782,
                  "w": 0.24187059631073785
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "jit7aupq",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -303.806,
                  "y": 29.81441,
                  "z": 369.8846
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.13877249820104076,
                  "w": -0.99032428716206
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "y6yqjjwk",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -110.3062,
                  "y": 31.7282,
                  "z": 313.2544
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7128790640049967,
                  "y": 0.16553809164157787,
                  "z": 0.6799905656656172,
                  "w": 0.04487104773435133
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "uqsv3rqv",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -113.2735,
                  "y": 30.36973,
                  "z": 442.0931
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.031115056883364477,
                  "y": -0.9529084045520567,
                  "z": 0.1262589873532854,
                  "w": 0.27396367255846527
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909692,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "1sav3e43",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -373.712,
                  "y": 30.38129,
                  "z": 434.8662
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.005133788894141352,
                  "y": -0.8889166816705519,
                  "z": 0.08933176815798033,
                  "w": 0.4492444907365856
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "xqjqg663",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -216.0646,
                  "y": 29.81441,
                  "z": 440.5937
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2ndw4p8t",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -505.1172,
                  "y": 32.2238,
                  "z": 289.9402
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.513697394576562,
                  "y": 0.0733356492257478,
                  "z": 0.8337340911977263,
                  "w": -0.18874409800730566
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "y8jfsxg1",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -237.55599599375188,
                  "y": 29.912460720250763,
                  "z": 471.66452088788867
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09992489598077019,
                  "y": 0.7562369338280934,
                  "z": -0.03022572481599554,
                  "w": -0.6459157225496713
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "izowavjf",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -522.3611,
                  "y": 29.48323,
                  "z": 262.5789
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12382660261028476,
                  "y": -0.046661500983631976,
                  "z": 0.015349240323564464,
                  "w": 0.9910873208922807
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012998,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "ln0sefsh",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -300.7207,
                  "y": 29.8666,
                  "z": 84.58292
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.055224316221266015,
                  "y": -0.8536614415880589,
                  "z": 0.1118878923440504,
                  "w": 0.5056614654000213
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012997,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "rjnz9vb2",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -548.1054,
                  "y": 30.89346,
                  "z": 186.0356
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13138109602697332,
                  "y": -0.1335717959607255,
                  "z": -0.9763824704737307,
                  "w": 0.10758649674653328
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "xsia1cc6",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -487.5309,
                  "y": 29.37238,
                  "z": 395.3327
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1164530974778389,
                  "y": 0.47489988971453695,
                  "z": -0.05786324874678786,
                  "w": 0.8703795811491701
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909691,
                  "y": 0.7909693,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "qxkr0d8u",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -373.5596,
                  "y": 31.93631,
                  "z": 449.5477
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03521552597864915,
                  "y": -0.9108003959933767,
                  "z": -0.11248878715461812,
                  "w": 0.3956624548182938
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.790969,
                  "y": 0.7909693,
                  "z": 0.7909692
                }
              }
            },
            {
              "_$id": "zotfmzg7",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -232.7359,
                  "y": 29.858,
                  "z": 416.5164
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.054404139565678925,
                  "y": -0.9878152921140375,
                  "z": 0.07104017943286949,
                  "w": -0.1273358989834475
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "tqyp8uxf",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -538.2939,
                  "y": 31.54114,
                  "z": 333.0095
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07835341094380688,
                  "y": -0.26098870314374234,
                  "z": -0.11460350138045775,
                  "w": 0.9553071115071624
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "jch916al",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -106.2134,
                  "y": 31.82483,
                  "z": 445.6081
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1083173976087276,
                  "y": -0.9723786785332519,
                  "z": -0.08683622808295731,
                  "w": -0.18763399585769228
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "akr80cie",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -278.5121,
                  "y": 30.8756,
                  "z": 395.5229
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4970076929694434,
                  "y": -0.13582169807869748,
                  "z": -0.8559199878923527,
                  "w": -0.04400901937745853
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013001,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "gdf2k71p",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -436.062,
                  "y": 31.20221,
                  "z": 403.4568
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.513697394576562,
                  "y": 0.0733356492257478,
                  "z": 0.8337340911977263,
                  "w": -0.18874409800730566
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "uwr0im45",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -167.0705,
                  "y": 29.8666,
                  "z": 218.6124
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1082468070142174,
                  "y": -0.4264467276330558,
                  "z": 0.062058494021289684,
                  "w": 0.8958652580506147
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012996,
                  "z": 0.8012998
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "ro6piumf",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -137.0922,
                  "y": 29.8666,
                  "z": 117.9234
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0190209198445625,
                  "y": -0.9892637919158122,
                  "z": 0.12331589899227194,
                  "w": -0.0760824793782598
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012996,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "ggwan11g",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -371.0334,
                  "y": 30.58827,
                  "z": 446.7119
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07678579618614828,
                  "y": 0.35596668231959283,
                  "z": 0.029362898541582604,
                  "w": -0.9308756537646037
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "eovrnrez",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -531.8483,
                  "y": 30.08604,
                  "z": 337.5538
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12825849123575708,
                  "y": 0.2007537862819613,
                  "z": -0.021429858535640924,
                  "w": 0.970972933650844
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909696
                }
              }
            },
            {
              "_$id": "xeg9gc4l",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -232.605,
                  "y": 29.6292,
                  "z": 393.0061
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7446657,
                  "y": 0.7446657,
                  "z": 0.7446657
                }
              }
            },
            {
              "_$id": "rv6mvdcl",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -180.2806,
                  "y": 30.74318,
                  "z": 133.0525
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.05617013999219563,
                  "y": -0.19394069997305358,
                  "z": -0.017103939997623555,
                  "w": -0.9792544998639409
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "bp7nbf90",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -482.3837,
                  "y": 30.3377,
                  "z": 382.9312
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6708591725566009,
                  "w": -0.7415847696633696
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zatalku0",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -140.0193,
                  "y": 33.05074,
                  "z": 173.6624
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.029512690891475464,
                  "y": 0.97726872951988,
                  "z": 0.18169360548833016,
                  "w": -0.10517730317703951
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909698,
                  "y": 0.7909692,
                  "z": 0.7909698
                }
              }
            },
            {
              "_$id": "fclz4aka",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -540.0081,
                  "y": 33.05074,
                  "z": 336.3291
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04076823922268202,
                  "y": 0.8665312834780616,
                  "z": 0.17950359657744916,
                  "w": -0.46393959115417815
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.790969,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "uadxqbay",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -525.8153,
                  "y": 30.89346,
                  "z": 260.8668
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.8879331205952149,
                  "y": 0.016481260382275525,
                  "z": -0.4268003098994439,
                  "w": 0.1707180039597284
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "97uqsk3f",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -505.1207,
                  "y": 30.63466,
                  "z": 293.7248
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13124000316229323,
                  "y": 0.5703092137418845,
                  "z": -0.08946943215581052,
                  "w": -0.8059272194192176
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "o4tevt1x",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -563.0552,
                  "y": 30.36973,
                  "z": 363.4577
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08166244553419529,
                  "y": -0.747181659139512,
                  "z": 0.10119649446595336,
                  "w": 0.6517745643569587
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909692,
                  "y": 0.7909694,
                  "z": 0.7909694
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "wzfubj9p",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -415.0816,
                  "y": 33.05074,
                  "z": 409.9499
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07591156150683487,
                  "y": 0.9708468913793525,
                  "z": 0.16769318123809007,
                  "w": 0.15353418282223233
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909692,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "ol0tfr1a",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -133.7459,
                  "y": 31.27682,
                  "z": 119.8375
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4529891846922613,
                  "y": -0.17113229421697354,
                  "z": -0.8748625704360103,
                  "w": 0.011402599614675093
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012998,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "mcfzxv1r",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -172.7251,
                  "y": 31.85009,
                  "z": 437.3553
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.9758635028456636,
                  "y": -0.06289878018341578,
                  "z": -0.03262778009514413,
                  "w": -0.2065662006023567
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012996,
                  "z": 0.8013
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "c8enz7i0",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -128.4822,
                  "y": 31.27682,
                  "z": 206.5515
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.7128790640049967,
                  "y": 0.16553809164157787,
                  "z": 0.6799905656656172,
                  "w": 0.04487104773435133
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "atvldf0l",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -277.8178,
                  "y": 29.81441,
                  "z": 400.0226
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.13877249820104076,
                  "w": -0.99032428716206
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5kea9iit",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -213.6412,
                  "y": 32.3789,
                  "z": 468.7284
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.23783348275687108,
                  "y": 0.23366698305894584,
                  "z": -0.04924332642981713,
                  "w": -0.9414935317409217
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "1rl5crsw",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.2523,
                  "y": 33.28317,
                  "z": 411.8135
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.3166786770717596,
                  "y": -0.14186398972873168,
                  "z": -0.9377261321065429,
                  "w": -0.016091148834965045
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013002,
                  "y": 0.8012999,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "20valkxv",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -168.5292,
                  "y": 30.8756,
                  "z": 515.9475
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06928521479990125,
                  "y": -0.1371023897099841,
                  "z": -0.9873273258976162,
                  "w": 0.039840247009849526
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012998,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "ww7czkcb",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -105.0221,
                  "y": 33.33442,
                  "z": 442.0667
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1758861054505854,
                  "y": 0.5284515163763369,
                  "z": 0.054292051682472094,
                  "w": 0.8287674256829135
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909692,
                  "y": 0.7909693,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "rva7079e",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -262.9073,
                  "y": 29.10934,
                  "z": 417.1869
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.766146663067698,
                  "w": 0.6426657690201271
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2rkonvnm",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -192.9023,
                  "y": 30.08604,
                  "z": 128.6248
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09108227809342151,
                  "y": 0.7337472846408454,
                  "z": -0.09280893805727823,
                  "w": 0.6668623860409126
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909695,
                  "z": 0.7909696
                }
              }
            },
            {
              "_$id": "imhfdce9",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -119.9683,
                  "y": 33.05074,
                  "z": 124.4775
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1475872990632472,
                  "y": 0.7752682950792869,
                  "z": 0.11000699930177348,
                  "w": 0.6042147961649823
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909693,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "dzn155l2",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.9711,
                  "y": 31.19456,
                  "z": 455.9825
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.026326869172490604,
                  "y": 0.8431276734987072,
                  "z": 0.05248359835032907,
                  "w": 0.5344979831995936
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "g485y0c5",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -339.9176,
                  "y": 31.54114,
                  "z": 111.6182
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07835341094380688,
                  "y": -0.26098870314374234,
                  "z": -0.11460350138045775,
                  "w": 0.9553071115071624
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mf9d8ji8",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -527.646,
                  "y": 31.54114,
                  "z": 168.9995
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13079409980327325,
                  "y": 0.3512185994717339,
                  "z": -0.04654148992999718,
                  "w": 0.9259439986072924
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "btdfy0z4",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -521.3409,
                  "y": 30.08604,
                  "z": 164.262
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09108227809342151,
                  "y": 0.7337472846408454,
                  "z": -0.09280893805727823,
                  "w": 0.6668623860409126
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909695,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "2nlgh2qj",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -217.8738,
                  "y": 29.858,
                  "z": 432.8893
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06373615780900951,
                  "y": -0.9605867669789248,
                  "z": 0.06280298784108812,
                  "w": -0.26318539095275423
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "iql0ek6p",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -262.3277,
                  "y": 33.05074,
                  "z": 98.26593
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.18343128485726212,
                  "y": -0.180398385107636,
                  "z": 0.015380778730276023,
                  "w": -0.966215720236336
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909692,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "482l16g4",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.3928,
                  "y": 31.85009,
                  "z": 386.5725
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.544162772071407,
                  "y": 0.1419744927133056,
                  "z": 0.8107163583908191,
                  "w": -0.16269329164993462
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012998,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "ap565zca",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -104.7657,
                  "y": 33.05074,
                  "z": 327.8773
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07591156150683487,
                  "y": 0.9708468913793525,
                  "z": 0.16769318123809007,
                  "w": 0.15353418282223233
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909692,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "8v9kefsm",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -221.4902,
                  "y": 32.39247,
                  "z": 420.602
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.007285672379760018,
                  "y": -0.7094007396076739,
                  "z": -0.11764678998455609,
                  "w": 0.6948789408439359
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909693
                }
              }
            },
            {
              "_$id": "jump0t9v",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -539.3145,
                  "y": 31.26918,
                  "z": 363.0315
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.039390498439472024,
                  "y": -0.6697016734685206,
                  "z": -0.04354325827495271,
                  "w": -0.7403053706714237
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "x9dky430",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -310.1088,
                  "y": 30.87235,
                  "z": 358.1425
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0788164085584409,
                  "y": 0.5413003900995678,
                  "z": -0.1433527973780646,
                  "w": -0.8247616849150357
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012994,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "a8q2xxce",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -238.828,
                  "y": 30.87235,
                  "z": 480.4323
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.16334350208714973,
                  "y": -0.4132956052809558,
                  "z": -0.008997087114961833,
                  "w": -0.8957816114460039
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012993,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "bq0zwfow",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -494.9884,
                  "y": 32.33707,
                  "z": 398.864
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.09129105667875001,
                  "y": 0.6937992747589642,
                  "z": 0.1598420941848022,
                  "w": -0.6962463746699366
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909691,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "3rde7och",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -178.1253,
                  "y": 30.31798,
                  "z": 460.8805
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07622798575955596,
                  "y": 0.7370219590006171,
                  "z": -0.09878218450490105,
                  "w": -0.6642514630487264
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012992,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "5ec01gx3",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -129.9434,
                  "y": 29.8666,
                  "z": 202.9842
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.058090467173773634,
                  "y": 0.9107467556902085,
                  "z": -0.11042699462748884,
                  "w": 0.393664480847375
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "b52ahj8d",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -365.8652,
                  "y": 30.3377,
                  "z": 433.8358
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6708591725566009,
                  "w": -0.7415847696633696
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "76403h3d",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -376.1818,
                  "y": 30.87235,
                  "z": 390.5534
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0788164085584409,
                  "y": 0.5413003900995678,
                  "z": -0.1433527973780646,
                  "w": -0.8247616849150357
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012993,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "aligrn5w",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -101.1061,
                  "y": 31.54114,
                  "z": 328.6292
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.006760061399538034,
                  "y": -0.7849482302770302,
                  "z": -0.13866328768324346,
                  "w": 0.6038071463668737
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "tk8iqg3z",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -370.303,
                  "y": 31.3989,
                  "z": 432.8181
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06928521479990125,
                  "y": -0.1371023897099841,
                  "z": -0.9873273258976162,
                  "w": 0.039840247009849526
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "ta3gu9ef",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -341.6317,
                  "y": 33.05074,
                  "z": 114.9379
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04076823922268202,
                  "y": 0.8665312834780616,
                  "z": 0.17950359657744916,
                  "w": -0.46393959115417815
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909691,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "vcsegw3l",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -525.0135,
                  "y": 33.05074,
                  "z": 171.6506
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13860259733297142,
                  "y": 0.42753209177331214,
                  "z": 0.12113159766915312,
                  "w": -0.8850608829694198
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909691,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "bjptjv1t",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -126.3558,
                  "y": 30.08604,
                  "z": 129.7006
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07156265306424477,
                  "y": -0.8063422218504059,
                  "z": 0.10857378947717565,
                  "w": 0.5769772440801485
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909696
                }
              }
            },
            {
              "_$id": "lr3p2uwr",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -262.5396,
                  "y": 28.69737,
                  "z": 398.2737
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "tew3jyr9",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -130.2578,
                  "y": 30.74318,
                  "z": 210.8433
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05867922777122122,
                  "y": -0.1350641948699357,
                  "z": -0.0020928139205098734,
                  "w": 0.9890955624317619
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "3df3jl24",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -265.6413,
                  "y": 31.54114,
                  "z": 99.99172
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13292289192690965,
                  "y": 0.831779549481753,
                  "z": 0.04005904756700816,
                  "w": 0.5374658673569357
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "sk7em0qf",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -111.7674,
                  "y": 30.31798,
                  "z": 309.687
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.058090467173773634,
                  "y": 0.9107467556902085,
                  "z": -0.11042699462748884,
                  "w": 0.393664480847375
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "ifu8tr47",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -333.472,
                  "y": 30.08604,
                  "z": 116.1625
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.12825849123575708,
                  "y": 0.2007537862819613,
                  "z": -0.021429858535640924,
                  "w": 0.970972933650844
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909696
                }
              }
            },
            {
              "_$id": "j2fajh7e",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -166.1871,
                  "y": 30.74318,
                  "z": 210.7967
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004220316030055156,
                  "y": -0.9835443070043517,
                  "z": -0.05856463041707045,
                  "w": -0.17085950121678303
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "5xo1f5fr",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -176.38,
                  "y": 31.7282,
                  "z": 457.4433
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.3215679968711418,
                  "y": 0.10970109893260775,
                  "z": 0.931223790939188,
                  "w": -0.1318405987171903
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012997,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "dekuj4v1",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -269.6998,
                  "y": 31.27682,
                  "z": 104.9498
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4529891846922613,
                  "y": -0.17113229421697354,
                  "z": -0.8748625704360103,
                  "w": 0.011402599614675093
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "ay9u5tkw",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -293.1502,
                  "y": 30.74318,
                  "z": 82.44902
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03617079696910441,
                  "y": -0.7210022395843416,
                  "z": -0.04625258612431101,
                  "w": -0.6904405421452283
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wegyg4f2",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -296.6477,
                  "y": 28.86785,
                  "z": 411.4055
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03532067788383896,
                  "y": -0.20474818773296088,
                  "z": 0.15547959068478093,
                  "w": -0.9657415421397112
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "s3fkam0u",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -194.8044,
                  "y": 31.90285,
                  "z": 418.5716
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.3331325071696362,
                  "w": -0.9428800202925461
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8n2a4dwr",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -136.4794,
                  "y": 31.54114,
                  "z": 172.4678
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.02966520821905233,
                  "y": -0.6001483639701558,
                  "z": -0.13562149185797795,
                  "w": 0.7877491527075621
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "torpulaa",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -175.6668,
                  "y": 31.2478,
                  "z": 435.9149
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.020494538913191623,
                  "y": 0.7625347595634151,
                  "z": 0.07193798618518835,
                  "w": -0.6426084659230068
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vi1c0igg",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -162.4078,
                  "y": 31.27682,
                  "z": 94.56996
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.6536799636738453,
                  "y": -0.05084713717433443,
                  "z": -0.7370795590391819,
                  "w": 0.16380109089728292
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012996,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "2fyj5buz",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -196.575,
                  "y": 33.05074,
                  "z": 136.0134
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.13860259733297142,
                  "y": 0.42753209177331214,
                  "z": 0.12113159766915312,
                  "w": -0.8850608829694198
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909691,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "iys0cez5",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -199.5814,
                  "y": 32.26556,
                  "z": 412.133
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09122737545639427,
                  "y": -0.9840715509880329,
                  "z": -0.12151589394786588,
                  "w": 0.09227478540422772
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8013,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "0baljugp",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -255.3891,
                  "y": 28.83419,
                  "z": 406.9016
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04189491869398501,
                  "y": -0.00863362373085896,
                  "z": -0.15476939517528243,
                  "w": -0.987024169230914
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ad19l7pp",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -308.6559,
                  "y": 31.38013,
                  "z": 76.86141
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04296431772946629,
                  "y": 0.9442732500980264,
                  "z": 0.04457986764408938,
                  "w": 0.3232873829152436
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "gxet5n6t",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -161.2091,
                  "y": 29.8666,
                  "z": 98.23385
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1082468070142174,
                  "y": -0.4264467276330558,
                  "z": 0.062058494021289684,
                  "w": 0.8958652580506147
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012996,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "a16cqbsm",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -221.2761,
                  "y": 32.66816,
                  "z": 412.3588
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04718346745219768,
                  "y": -0.3770379796407875,
                  "z": -0.07621637588448518,
                  "w": -0.921849850222158
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.6898902,
                  "y": 0.6898902,
                  "z": 0.6898903
                }
              }
            },
            {
              "_$id": "x4hxbfes",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -495.4156,
                  "y": 30.82747,
                  "z": 395.1521
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10834019560002776,
                  "y": 0.028620138837663015,
                  "z": -0.08680793647450784,
                  "w": 0.9899028597975149
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "m0ba6i20",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -373.1612,
                  "y": 31.2478,
                  "z": 383.2482
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07188363116809617,
                  "y": 0.9488041154178973,
                  "z": 0.02068453033611992,
                  "w": 0.30688050498675334
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "5g91oifm",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -304.5003,
                  "y": 30.8756,
                  "z": 365.3849
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4970076929694434,
                  "y": -0.13582169807869748,
                  "z": -0.8559199878923527,
                  "w": -0.04400901937745853
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013002,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "svcpei95",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -562.5227,
                  "y": 29.84091,
                  "z": 396.8178
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13124000316229323,
                  "y": 0.5703092137418845,
                  "z": -0.08946943215581052,
                  "w": -0.8059272194192176
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012995,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "6zim1y96",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -215.4574,
                  "y": 34.69053,
                  "z": 471.4849
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0425389669606436,
                  "y": -0.8577904387119376,
                  "z": 0.04633564668937554,
                  "w": 0.510136263551397
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909693,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "ydp3oxna",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -486.8215,
                  "y": 31.3989,
                  "z": 381.9134
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06928521479990125,
                  "y": -0.1371023897099841,
                  "z": -0.9873273258976162,
                  "w": 0.039840247009849526
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8013,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "9vihz8zd",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -414.0529,
                  "y": 30.08604,
                  "z": 418.1366
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.11516970208441196,
                  "y": -0.4263795077168781,
                  "z": 0.06037723109274419,
                  "w": 0.8951486162009491
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "gxki8mj9",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -364.0468,
                  "y": 32.39247,
                  "z": 421.4998
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09753535227439228,
                  "y": 0.11591279081874693,
                  "z": -0.066186954757445,
                  "w": 0.9862405218815823
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909693,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "twhss74p",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -221.5008,
                  "y": 31.04443,
                  "z": 416.8042
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.08220850605450725,
                  "w": -0.9966151521687225
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "fl2gyqhx",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -90.66721,
                  "y": 30.31798,
                  "z": 442.4095
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.11196990072283738,
                  "y": 0.36868470238009576,
                  "z": -0.05505786035543374,
                  "w": -0.9211422059465627
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012993,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "b4bveeza",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -562.5192,
                  "y": 31.43005,
                  "z": 393.0333
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.513697394576562,
                  "y": 0.0733356492257478,
                  "z": 0.8337340911977263,
                  "w": -0.18874409800730566
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "xfatn2oh",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -229.573,
                  "y": 30.8756,
                  "z": 418.9271
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4970076929694434,
                  "y": -0.13582169807869748,
                  "z": -0.8559199878923527,
                  "w": -0.04400901937745853
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "pymyyitp",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -297.7808,
                  "y": 31.27682,
                  "z": 82.08916
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13138109602697332,
                  "y": -0.1335717959607255,
                  "z": -0.9763824704737307,
                  "w": 0.10758649674653328
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "20gnliii",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -490.2305,
                  "y": 30.38129,
                  "z": 383.9616
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.005133788894141352,
                  "y": -0.8889166816705519,
                  "z": 0.08933176815798033,
                  "w": 0.4492444907365856
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "rcrrbb6w",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -228.8787,
                  "y": 29.81441,
                  "z": 423.4269
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.13877249820104076,
                  "w": -0.99032428716206
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ob5no3dc",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -258.5581,
                  "y": 30.17054,
                  "z": 418.5333
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.9892273631257157,
                  "y": 0.03468668870702442,
                  "z": 0.03232474879506772,
                  "w": 0.13849609483744127
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013002,
                  "y": 0.8012998,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "59m377mw",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -202.265,
                  "y": 31.89762,
                  "z": 532.3778
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5293477998235393,
                  "y": 0.1066802999644376,
                  "z": 0.8259286997246725,
                  "w": -0.16202469994598825
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012997,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "f3fk835l",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -328.3353,
                  "y": 30.78863,
                  "z": 364.7875
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12201679286509194,
                  "y": -0.8247382517735924,
                  "z": -0.016893959012129055,
                  "w": 0.5519359677256525
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909692,
                  "y": 0.7909692,
                  "z": 0.7909694
                }
              }
            },
            {
              "_$id": "tcapr1yt",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -90.78162,
                  "y": 31.19456,
                  "z": 434.545
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0004920337997934709,
                  "y": 0.99241059958344,
                  "z": 0.05871446997535486,
                  "w": 0.10804429995464888
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "hrt8h78n",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -160.3257,
                  "y": 30.74318,
                  "z": 90.4182
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.004220316030055156,
                  "y": -0.9835443070043517,
                  "z": -0.05856463041707045,
                  "w": -0.17085950121678303
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "8u2lnut7",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -171.9381,
                  "y": 29.858,
                  "z": 517.9957
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.005133788894141352,
                  "y": -0.8889166816705519,
                  "z": 0.08933176815798033,
                  "w": 0.4492444907365856
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8012999,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "1oe7dfbk",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -543.8461,
                  "y": 31.80282,
                  "z": 362.0137
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.06111551387244098,
                  "y": -0.14093408586967737,
                  "z": -0.9832846014139938,
                  "w": 0.09774390020000848
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8013,
                  "y": 0.8013,
                  "z": 0.8012999
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "dbnlm7t1",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -311.9615,
                  "y": 31.89762,
                  "z": 80.1267
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5293477998235393,
                  "y": 0.1066802999644376,
                  "z": 0.8259286997246725,
                  "w": -0.16202469994598825
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012998,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "hvv4ka24",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -181.5203,
                  "y": 31.27682,
                  "z": 128.5764
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.4529891846922613,
                  "y": -0.17113229421697354,
                  "z": -0.8748625704360103,
                  "w": 0.011402599614675093
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012999,
                  "z": 0.8012997
                }
              }
            },
            {
              "_$id": "3k99uz2j",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -307.6632,
                  "y": 29.858,
                  "z": 362.9741
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.054404139565678925,
                  "y": -0.9878152921140375,
                  "z": 0.07104017943286949,
                  "w": -0.1273358989834475
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "snd5vq89",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -103.7369,
                  "y": 30.08604,
                  "z": 336.064
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.11516970208441196,
                  "y": -0.4263795077168781,
                  "z": 0.06037723109274419,
                  "w": 0.8951486162009491
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909694,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "uyjpjx14",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -199.2075,
                  "y": 31.54114,
                  "z": 133.3623
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.13079409980327325,
                  "y": 0.3512185994717339,
                  "z": -0.04654148992999718,
                  "w": 0.9259439986072924
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "9helty3j",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -551.0453,
                  "y": 29.48323,
                  "z": 188.5294
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.055224316221266015,
                  "y": -0.8536614415880589,
                  "z": 0.1118878923440504,
                  "w": 0.5056614654000213
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012998,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "d45hldem",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -164.0914,
                  "y": 29.81441,
                  "z": 516.9653
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": -0.6708591725566009,
                  "w": -0.7415847696633696
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "rn3ipu9f",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -320.92,
                  "y": 33.33442,
                  "z": 363.4312
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1758861054505854,
                  "y": 0.5284515163763369,
                  "z": 0.054292051682472094,
                  "w": 0.8287674256829135
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909693,
                  "y": 0.7909693,
                  "z": 0.7909695
                }
              }
            },
            {
              "_$id": "xhb8yyeq",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -112.0818,
                  "y": 31.19456,
                  "z": 317.5461
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.05867922777122122,
                  "y": -0.1350641948699357,
                  "z": -0.0020928139205098734,
                  "w": 0.9890955624317619
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "nmecwxrm",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -367.7194,
                  "y": 31.04443,
                  "z": 422.4668
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.050277631405954454,
                  "y": -0.788499522049456,
                  "z": -0.06504153181880946,
                  "w": -0.6095164170444052
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xm9lzrpr",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -322.1113,
                  "y": 31.82483,
                  "z": 366.9727
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.1083173976087276,
                  "y": -0.9723786785332519,
                  "z": -0.08683622808295731,
                  "w": -0.18763399585769228
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mj45sck7",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -307.0882,
                  "y": 31.2478,
                  "z": 350.8373
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12462068750241186,
                  "y": 0.9816873015514693,
                  "z": 0.06300647368139453,
                  "w": 0.12957588700547956
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "456b3w1i",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -242.3105,
                  "y": 31.85009,
                  "z": 482.3726
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.9758635028456636,
                  "y": -0.06289878018341578,
                  "z": -0.03262778009514413,
                  "w": -0.2065662006023567
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012996,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "pcvjuea4",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -281.675,
                  "y": 29.858,
                  "z": 393.1121
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.054404139565678925,
                  "y": -0.9878152921140375,
                  "z": 0.07104017943286949,
                  "w": -0.1273358989834475
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012999,
                  "z": 0.8012998
                }
              }
            },
            {
              "_$id": "1t6i8g8y",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -169.2425,
                  "y": 30.87235,
                  "z": 435.415
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.16334350208714973,
                  "y": -0.4132956052809558,
                  "z": -0.008997087114961833,
                  "w": -0.8957816114460039
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012999,
                  "y": 0.8012993,
                  "z": 0.8012997
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6A(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6A_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "vwlurpyv",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -268.4601,
                  "y": 30.74318,
                  "z": 109.4258
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.05617013999219563,
                  "y": -0.19394069997305358,
                  "z": -0.017103939997623555,
                  "w": -0.9792544998639409
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "mnmx9u0w",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -268.2917,
                  "y": 30.08604,
                  "z": 92.56395
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.018329639085246464,
                  "y": 0.9862441507807918,
                  "z": -0.12873819357522986,
                  "w": 0.10204399490742264
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.7909694,
                  "y": 0.7909694,
                  "z": 0.7909697
                }
              }
            },
            {
              "_$id": "2b9gqrq3",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -118.6599,
                  "y": 31.54114,
                  "z": 127.9771
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07302431012093753,
                  "y": -0.9791204016215478,
                  "z": -0.1180706001955399,
                  "w": 0.14849250024592245
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2hztn6mx",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -184.8666,
                  "y": 29.8666,
                  "z": 126.6623
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0190209198445625,
                  "y": -0.9892637919158122,
                  "z": 0.12331589899227194,
                  "w": -0.0760824793782598
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012996,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "wmnci8rq",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -411.422,
                  "y": 31.54114,
                  "z": 410.7018
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.006760061399538034,
                  "y": -0.7849482302770302,
                  "z": -0.13866328768324346,
                  "w": 0.6038071463668737
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zktqib61",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -273.0461,
                  "y": 29.8666,
                  "z": 103.0357
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0190209198445625,
                  "y": -0.9892637919158122,
                  "z": 0.12331589899227194,
                  "w": -0.0760824793782598
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012997,
                  "y": 0.8012996,
                  "z": 0.8012996
                }
              }
            },
            {
              "_$id": "eom3l9pw",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -132.5062,
                  "y": 30.74318,
                  "z": 124.3136
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.05617013999219563,
                  "y": -0.19394069997305358,
                  "z": -0.017103939997623555,
                  "w": -0.9792544998639409
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "emlksuzf",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -543.4749,
                  "y": 30.35982,
                  "z": 186.3955
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.03617079696910441,
                  "y": -0.7210022395843416,
                  "z": -0.04625258612431101,
                  "w": -0.6904405421452283
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "q0lqi98a",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -202.2144,
                  "y": 30.65535,
                  "z": 536.2896
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09282855336475619,
                  "y": 0.5592072600287155,
                  "z": -0.11002599213550941,
                  "w": -0.8164339416425436
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012994,
                  "z": 0.8012995
                }
              }
            },
            {
              "_$id": "9uenbi6h",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -92.32059,
                  "y": 31.7282,
                  "z": 438.9272
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.6991758609572699,
                  "y": 0.040340667747333844,
                  "z": 0.694072661242238,
                  "w": -0.16669999069129368
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.8012998,
                  "y": 0.8012996,
                  "z": 0.8012999
                }
              }
            },
            {
              "_$id": "a39c5hrb",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -559.1528,
                  "y": 31.23811,
                  "z": 389.7947
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.03329973741295399,
                  "y": 0.9382047271111732,
                  "z": 0.08825504314349378,
                  "w": 0.33297757413107815
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qk1oqq5p",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -527.3185,
                  "y": 30.35982,
                  "z": 256.4723
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.018764989537708183,
                  "y": -0.9730610760277953,
                  "z": -0.0556372386293283,
                  "w": 0.22294509450755398
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vazoa88j",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -481.8901,
                  "y": 28.73197,
                  "z": 386.2648
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0846399414460974,
                  "y": -0.8381359152961019,
                  "z": 0.06866909306014721,
                  "w": -0.5344612459861461
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "741u18kh",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -524.8323,
                  "y": 28.82303,
                  "z": 254.1501
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.015208668540817327,
                  "y": -0.880105915558992,
                  "z": 0.048938865304602494,
                  "w": 0.47200345471403293
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "zw9ijlpp",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -412.6543,
                  "y": 30.07333,
                  "z": 404.8773
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.020560328309503224,
                  "y": 0.9993440178326428,
                  "z": 0.014715778790049643,
                  "w": -0.025927837868179652
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kmxe1u48",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -195.882,
                  "y": 30.61624,
                  "z": 418.3797
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10456959994832586,
                  "y": -0.5673254997196503,
                  "z": 0.030733479984812736,
                  "w": -0.8162489995966422
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ehy4hgd6",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -121.3291,
                  "y": 30.07333,
                  "z": 125.7252
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07851475954253086,
                  "y": -0.9828445942734197,
                  "z": -0.08144968952543039,
                  "w": 0.14566359915128568
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wgxzcyvt",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -201.4035,
                  "y": 30.07333,
                  "z": 138.8958
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.020029340049420755,
                  "y": 0.2639610006513021,
                  "z": -0.015430720038074037,
                  "w": -0.9642019023790891
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "i6vnzt8f",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -339.7934,
                  "y": 30.07333,
                  "z": 115.1082
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.042648906832679086,
                  "y": -0.2650841803135243,
                  "z": -0.10478409221820978,
                  "w": 0.9575655288863996
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ayaxriys",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -100.2827,
                  "y": 30.35702,
                  "z": 445.0928
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0026064380683854583,
                  "y": 0.6817272178865666,
                  "z": 0.02514930065984551,
                  "w": 0.7311694191837882
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "a2ty1zdk",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -544.2347,
                  "y": 30.07333,
                  "z": 332.6199
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.025274658493769583,
                  "y": 0.7808642534647919,
                  "z": -0.0006876431590202557,
                  "w": -0.6241888628017823
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "68npiv2v",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -212.9582,
                  "y": 32.43458,
                  "z": 472.4542
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.2025333881342312,
                  "y": 0.23166658642741236,
                  "z": -0.05792894660613248,
                  "w": -0.949713144359413
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "0hzcjrfg",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -365.5108,
                  "y": 29.80147,
                  "z": 419.651
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.027496800567824994,
                  "y": -0.7903774163217554,
                  "z": -0.03557118073456566,
                  "w": -0.6109682126168504
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ma7nkqdt",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -263.7323,
                  "y": 30.07333,
                  "z": 97.06761
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.1127732022968008,
                  "y": 0.8326948169591186,
                  "z": 0.008991037183116387,
                  "w": 0.5420523110397343
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "em1ehmjy",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -219.3322,
                  "y": 29.80147,
                  "z": 419.651
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.04495976992258169,
                  "w": -0.9989887982797949
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "7mydksqk",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -247.0596,
                  "y": 30.13299,
                  "z": 477.3861
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10403809803547721,
                  "y": 0.569923889238284,
                  "z": -0.023183519562231972,
                  "w": -0.8147547846152096
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "qcfrn8gy",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -500.5648,
                  "y": 29.35966,
                  "z": 398.1397
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02397815083633604,
                  "y": 0.565165319712451,
                  "z": -0.00802055027974948,
                  "w": -0.8245901287609518
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "9i4y63fl",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -263.1505,
                  "y": 27.5036,
                  "z": 413.8258
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.06545675944881293,
                  "y": -0.5654215952387946,
                  "z": 0.08714799926615906,
                  "w": 0.817568993115555
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "r28v3yh1",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -292.0024,
                  "y": 29.20639,
                  "z": 85.65161
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0325289077043153,
                  "y": -0.8779988380363916,
                  "z": 0.0396003372052585,
                  "w": -0.4759114664131768
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "hek8niim",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -538.1697,
                  "y": 30.07333,
                  "z": 336.4994
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.042648906832679086,
                  "y": -0.2650841803135243,
                  "z": -0.10478409221820978,
                  "w": 0.9575655288863996
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "fwi8dwkv",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -322.7632,
                  "y": 30.35702,
                  "z": 363.5416
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.10123979043912959,
                  "y": -0.9749419079285604,
                  "z": -0.0504887052319541,
                  "w": -0.19154548191085224
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vt7atrxr",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -280.733,
                  "y": 28.20867,
                  "z": 401.7132
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10859480098346157,
                  "y": -0.3934859035635063,
                  "z": 0.009302417084245005,
                  "w": -0.9128469082669689
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "wklyq7ou",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -414.7482,
                  "y": 30.07333,
                  "z": 411.7657
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02928801931025221,
                  "y": -0.7895764814050712,
                  "z": -0.10927409742653928,
                  "w": 0.6031337857958918
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "n75mxh02",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -306.7212,
                  "y": 28.20867,
                  "z": 371.5752
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10859480098346157,
                  "y": -0.3934859035635063,
                  "z": 0.009302417084245005,
                  "w": -0.9128469082669689
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "h5jrr2ul",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -524.2866,
                  "y": 30.07333,
                  "z": 169.9535
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09614873777777962,
                  "y": 0.3492368919283253,
                  "z": -0.05961572862214221,
                  "w": 0.9301800785013805
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "r03hybva",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -493.3672,
                  "y": 29.35966,
                  "z": 397.9806
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.07132363832399498,
                  "y": 0.025360519404063527,
                  "z": -0.0878154479364607,
                  "w": 0.9932563766598747
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "isdhx54v",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -140.4788,
                  "y": 30.07333,
                  "z": 168.0579
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.023688488390789682,
                  "y": 0.9579387349251471,
                  "z": 0.00883949339951407,
                  "w": -0.28585678058112984
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "axphwwgh",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -104.4322,
                  "y": 30.07333,
                  "z": 329.6931
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.02928801931025221,
                  "y": -0.7895764814050712,
                  "z": -0.10927409742653928,
                  "w": 0.6031337857958918
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "fpg6i6iw",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -87.39163,
                  "y": 29.65777,
                  "z": 434.2596
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0016584089135988243,
                  "y": 0.9861529486225782,
                  "z": -0.05122083733145394,
                  "w": -0.15772139178289893
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "e6221iax",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -529.842,
                  "y": 30.07333,
                  "z": 174.533
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.020029340049420755,
                  "y": 0.2639610006513021,
                  "z": -0.015430720038074037,
                  "w": -0.9642019023790891
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "w5q1l7f3",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -156.9268,
                  "y": 29.20639,
                  "z": 90.56492
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.004908374921077604,
                  "y": -0.9941794840144592,
                  "z": 0.05101203917977081,
                  "w": 0.09476725847622498
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ao8c8kcq",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -552.4233,
                  "y": 30.35702,
                  "z": 355.4126
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.013012899136313915,
                  "y": 0.9272418384575362,
                  "z": 0.021678208561184027,
                  "w": 0.37360847520303214
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "91z6cd90",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -369.8257,
                  "y": 30.13299,
                  "z": 384.5002
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0353921302668786,
                  "y": 0.9929241074872632,
                  "z": -0.10054250075815278,
                  "w": 0.05234806039473683
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "fc769lre",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -365.3716,
                  "y": 28.73197,
                  "z": 437.1694
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0846399414460974,
                  "y": -0.8381359152961019,
                  "z": 0.06866909306014721,
                  "w": -0.5344612459861461
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "xp62mryj",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -271.0797,
                  "y": 29.20639,
                  "z": 111.5964
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04936907787287394,
                  "y": -0.4456502807986219,
                  "z": 0.013748139407644888,
                  "w": -0.8937390614921782
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "svwr2ngg",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -133.6584,
                  "y": 29.20639,
                  "z": 210.9434
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051156558085194447,
                  "y": 0.130773395105112,
                  "z": 0.003054427885671834,
                  "w": 0.9900868629407471
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ktvn65je",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -429.4549,
                  "y": 29.6,
                  "z": 401.4202
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.01339772004199756,
                  "y": 0.9967549031245073,
                  "z": -0.024314100076216916,
                  "w": 0.07555785023684965
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "jacfm7yj",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -498.5101,
                  "y": 30.6216,
                  "z": 287.9036
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.01339772004199756,
                  "y": 0.9967549031245073,
                  "z": -0.024314100076216916,
                  "w": 0.07555785023684965
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "lvdeulsh",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -555.9122,
                  "y": 29.82785,
                  "z": 390.9966
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.01339772004199756,
                  "y": 0.9967549031245073,
                  "z": -0.024314100076216916,
                  "w": 0.07555785023684965
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "aq71i89q",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -138.8162,
                  "y": 30.07333,
                  "z": 175.0629
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0002475405979972705,
                  "y": -0.6047916951069272,
                  "z": -0.11313069908471503,
                  "w": 0.7883072936221925
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "uxzofi4b",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -292.286,
                  "y": 28.58887,
                  "z": 412.9297
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.00959611291002869,
                  "y": 0.15933458190203426,
                  "z": 0.24210447250064362,
                  "w": -0.9570296912960993
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "94dux6am",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -542.327,
                  "y": 28.82303,
                  "z": 189.5981
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0325289077043153,
                  "y": -0.8779988380363916,
                  "z": 0.0396003372052585,
                  "w": -0.4759114664131768
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "av6122tk",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -106.8653,
                  "y": 30.35702,
                  "z": 442.1771
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.10123979043912959,
                  "y": -0.9749419079285604,
                  "z": -0.0504887052319541,
                  "w": -0.19154548191085224
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "s7x3npfs",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -261.0099,
                  "y": 30.07333,
                  "z": 103.7327
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.006982096112532362,
                  "y": -0.35904325436337975,
                  "z": -0.024300856911210655,
                  "w": -0.9329783814126722
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vdvntgzv",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -303.7527,
                  "y": 30.13299,
                  "z": 352.0894
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0353921302668786,
                  "y": 0.9929241074872632,
                  "z": -0.10054250075815278,
                  "w": 0.05234806039473683
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "zuhj4nzl",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -115.4823,
                  "y": 29.65777,
                  "z": 317.6463
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.051156558085194447,
                  "y": 0.130773395105112,
                  "z": 0.003054427885671834,
                  "w": 0.9900868629407471
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "x91jpk1z",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -316.1805,
                  "y": 30.35702,
                  "z": 366.4573
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.0026064380683854583,
                  "y": 0.6817272178865666,
                  "z": 0.02514930065984551,
                  "w": 0.7311694191837882
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "nt0hwhbb",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -135.1258,
                  "y": 29.20639,
                  "z": 126.4841
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04936907787287394,
                  "y": -0.4456502807986219,
                  "z": 0.013748139407644888,
                  "w": -0.8937390614921782
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "yqr472p7",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -558.8816,
                  "y": 30.35702,
                  "z": 358.5942
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.07032662566107875,
                  "y": -0.9643043405055971,
                  "z": -0.08861588453269169,
                  "w": 0.23941288522901324
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "dfhc440c",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -231.7939,
                  "y": 28.20867,
                  "z": 425.1174
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10859480098346157,
                  "y": -0.3934859035635063,
                  "z": 0.009302417084245005,
                  "w": -0.9128469082669689
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "d00t10wg",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -169.673,
                  "y": 29.65777,
                  "z": 458.491
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.024070088091824416,
                  "y": 0.9546781243171243,
                  "z": -0.045243306413300516,
                  "w": 0.29319507675672457
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2kb1jpwg",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -538.6359,
                  "y": 29.73239,
                  "z": 366.3651
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0352815171522919,
                  "y": -0.8416596320663866,
                  "z": 0.03716893699995093,
                  "w": -0.5375711566105469
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "awdduvs4",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -305.4066,
                  "y": 30.04995,
                  "z": 78.12957
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.012194898843060815,
                  "y": 0.9953270055725817,
                  "z": -0.06944102341207811,
                  "w": 0.0659801537404134
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "q00yb4nf",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -162.7882,
                  "y": 29.20639,
                  "z": 210.9434
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.004908374921077604,
                  "y": -0.9941794840144592,
                  "z": 0.05101203917977081,
                  "w": 0.09476725847622498
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "iiht74vy",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -182.9003,
                  "y": 29.20639,
                  "z": 135.223
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.04936907787287394,
                  "y": -0.4456502807986219,
                  "z": 0.013748139407644888,
                  "w": -0.8937390614921782
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "orpo46jm",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -195.7102,
                  "y": 30.04995,
                  "z": 530.3807
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.012194898843060815,
                  "y": 0.9953270055725817,
                  "z": -0.06944102341207811,
                  "w": 0.0659801537404134
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "m9us88w0",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -219.3322,
                  "y": 28.20867,
                  "z": 441.4179
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10883499838843866,
                  "y": -0.2630005961056498,
                  "z": -0.005857559913264875,
                  "w": -0.9586194858053555
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "2b7bkeuc",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -114.3814,
                  "y": 30.07333,
                  "z": 123.8373
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.010870069139674123,
                  "y": 0.8870596297925022,
                  "z": 0.022828118193238645,
                  "w": 0.4609619635165608
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "agn0mchh",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -102.3384,
                  "y": 30.07333,
                  "z": 322.8047
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.020560328309503224,
                  "y": 0.9993440178326428,
                  "z": 0.014715778790049643,
                  "w": -0.025927837868179652
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "svxfkv63",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -163.5977,
                  "y": 28.20867,
                  "z": 520.2988
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.0846399414460974,
                  "y": -0.8381359152961019,
                  "z": 0.06866909306014721,
                  "w": -0.5344612459861461
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "vfgtxqe8",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -371.3177,
                  "y": 29.34531,
                  "z": 450.2792
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.041994127881145614,
                  "y": 0.3568146819965697,
                  "z": 0.016058549189750353,
                  "w": -0.9330926529199067
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "p90t0lik",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -345.8584,
                  "y": 30.07333,
                  "z": 111.2287
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.025274658493769583,
                  "y": 0.7808642534647919,
                  "z": -0.0006876431590202557,
                  "w": -0.6241888628017823
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "ulew6gyp",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 8,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -177.4742,
                  "y": 30.13299,
                  "z": 432.3688
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.10403809803547721,
                  "y": 0.569923889238284,
                  "z": -0.023183519562231972,
                  "w": -0.8147547846152096
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$override": "#1",
                  "name": "Rock6B(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1,
                      "y": 1,
                      "z": 1
                    }
                  }
                },
                {
                  "_$override": "#2",
                  "name": "Rock6B_LOD1(Clone)",
                  "active": true,
                  "isStatic": true,
                  "layer": 8,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
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
            },
            {
              "_$id": "79sdavcs",
              "_$prefab": "f834b9bb-57d4-460b-bd19-232c54d67882",
              "name": "Rock6B",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -195.8481,
                  "y": 30.07333,
                  "z": 134.3163
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.09614873777777962,
                  "y": 0.3492368919283253,
                  "z": -0.05961572862214221,
                  "w": 0.9301800785013805
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                }
              }
            },
            {
              "_$id": "kqjegn3b",
              "_$prefab": "c39e171a-0015-4efb-ad2d-25be7cf41284",
              "name": "Rock6A_1",
              "active": true,
              "isStatic": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -233.06588004395212,
                  "y": 29.590250101913746,
                  "z": 465.06999632102446
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.9758635028456636,
                  "y": -0.06289878018341578,
                  "z": -0.03262778009514413,
                  "w": -0.2065662006023567
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 1.245322808440367,
                  "y": 1.2453224976146786,
                  "z": 1.245322963853211
                }
              }
            }
          ]
        },
        {
          "_$id": "z7rtv4l0",
          "_$type": "Sprite3D",
          "name": "Rock6A_LOD1(Clone)",
          "isStatic": true,
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -175.6667938232422,
              "y": 31.247800827026367,
              "z": 435.9148864746094
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.02049454028044797,
              "y": -0.7625347561124302,
              "z": -0.07193798522547189,
              "w": 0.6426084700818608
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.9999999941662214,
              "y": 1.0000000236499706,
              "z": 0.9999999958278667
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "62afaa12-3baf-4239-92e4-d9bb5ce979ca",
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
                  "_$uuid": "f774b447-022e-4c9d-ae24-edfbb5c8c5a1",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "0io6v81m",
          "_$type": "Sprite3D",
          "name": "Lights",
          "_$child": [
            {
              "_$id": "g5yotxlm",
              "_$type": "Sprite3D",
              "name": "Point Light",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -170.7428,
                  "y": 35.70576,
                  "z": 436.3091
                }
              },
              "_$comp": [
                {
                  "_$type": "PointLightCom",
                  "color": {
                    "_$type": "Color",
                    "r": 0.09803922,
                    "g": 0.8862745
                  },
                  "intensity": 2,
                  "shadowDepthBias": 0.05,
                  "shadowNormalBias": 0.4,
                  "shadowNearPlane": 0.2,
                  "shadowCascadesMode": null,
                  "range": 30
                }
              ]
            },
            {
              "_$id": "hwx870s1",
              "_$type": "Sprite3D",
              "name": "Point Light (2)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -212.00046146239686,
                  "y": 35.70576095581055,
                  "z": 403.07763671875
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 6.123233995736766e-17
                }
              },
              "_$comp": [
                {
                  "_$type": "PointLightCom",
                  "color": {
                    "_$type": "Color",
                    "r": 0.8862745,
                    "g": 0.3333333
                  },
                  "intensity": 2,
                  "shadowDepthBias": 0.05,
                  "shadowNormalBias": 0.4,
                  "shadowNearPlane": 0.2,
                  "shadowCascadesMode": null,
                  "range": 30
                }
              ]
            },
            {
              "_$id": "pmmfdx4d",
              "_$type": "Sprite3D",
              "name": "Point Light (1)",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -239.39179381591785,
                  "y": 35.70576095581055,
                  "z": 381.8929748535156
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "y": 1,
                  "w": 6.123233995736766e-17
                }
              },
              "_$comp": [
                {
                  "_$type": "PointLightCom",
                  "color": {
                    "_$type": "Color",
                    "r": 0.09803922,
                    "b": 0.4862745
                  },
                  "shadowDepthBias": 0.05,
                  "shadowNormalBias": 0.4,
                  "shadowNearPlane": 0.2,
                  "shadowCascadesMode": null,
                  "range": 15
                }
              ]
            }
          ]
        },
        {
          "_$id": "la9c0pch",
          "_$prefab": "aac70869-b036-461c-a441-11001330af1e",
          "name": "Tree4A (1)",
          "active": true,
          "isStatic": false,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -176.3464,
              "y": 33.34625,
              "z": 422.231
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.9809772351191426,
              "w": -0.1941228069496277
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          },
          "_$comp": [
            {
              "_$override": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "90450d91-cb12-4a0a-ae0d-da81f0341b30",
                  "_$type": "Material"
                },
                {
                  "_$uuid": "ac06f166-1279-4ad6-a994-db393e80eb29",
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