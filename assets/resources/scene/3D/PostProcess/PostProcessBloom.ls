{
  "_$ver": 1,
  "_$id": "8tihfalf",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "42295c88-4869-49a6-80ce-44c4e80ce451",
      "scriptPath": "../src/3D/PostProcess/PostProcessBloom.ts",
      "camera": {
        "_$ref": "dgbwdjca"
      },
      "scene": {
        "_$ref": "l6f5e92f"
      },
      "directionLight": {
        "_$ref": "8u1vviaq"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "l6f5e92f",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "7ee7c351-2d32-409f-9c5c-0752aa71c95d",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.212,
        "g": 0.227,
        "b": 0.259,
        "a": null
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
          "_$id": "dgbwdjca",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 2,
              "z": -9
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
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
          "cullingMask": 2147483647,
          "postProcess": {
            "_$type": "PostProcess",
            "effects": [
              {
                "_$type": "BloomEffect",
                "color": {
                  "_$type": "Color"
                },
                "dirtIntensity": 0,
                "intensity": 7,
                "threshold": 0.9,
                "softKnee": 0.665,
                "diffusion": 6.345
              }
            ]
          },
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "8u1vviaq",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.10938160060059961,
              "y": 0.8754261048068466,
              "z": 0.4082179022414694,
              "w": -0.23456970128799057
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
              "intensity": 1,
              "lightmapBakedType": 1,
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
          "_$id": "32tz4zum",
          "_$type": "Sprite3D",
          "name": "Plane",
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
                "_$uuid": "4e22eebc-0308-4ca6-bd95-0662de8d2b50",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "77c94f7f-d986-4965-867d-bedc5ab58211",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "d0kb94ih",
          "_$type": "Sprite3D",
          "name": "LayaMonkey",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.5,
              "z": -3.5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.5,
              "y": 0.5,
              "z": 0.5
            }
          },
          "_$comp": [
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
                      "name": "Take 001",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "64933cc9-2780-468b-8b28-dbf28024dd5f",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "Take 001"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "xqcom85v",
              "_$type": "Sprite3D",
              "name": "Bip001",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04679767,
                  "y": 0.574905,
                  "z": -0.2284267
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.49482928257321646,
                  "y": 0.4948285825732411,
                  "z": 0.5051177822108783,
                  "w": -0.5051184822108538
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.9999999,
                  "y": 0.9999999,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$id": "v4qr10l6",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Footsteps",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.01304968,
                      "z": -0.634042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.007275574001644561,
                      "y": 0.007275586001644564,
                      "z": -0.7070689001598249,
                      "w": -0.7070698001598251
                    }
                  }
                },
                {
                  "_$id": "hibgesq1",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Pelvis",
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4801949942333983,
                      "y": 0.5190498937667947,
                      "z": 0.48019429423340676,
                      "w": -0.5190504937667875
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "m2g2bc0m",
                      "_$type": "Sprite3D",
                      "name": "Bip001 Spine",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.2355541,
                          "y": -0.0005083084,
                          "z": 0.00006329536
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.06738501344419189,
                          "y": -0.002220057784013208,
                          "z": -0.0698641832029964,
                          "w": -0.9952755031708255
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 0.9999999,
                          "z": 0.9999999
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "xlyxnhph",
                          "_$type": "Sprite3D",
                          "name": "Bip001 L Thigh",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2413928,
                              "y": -0.04609043,
                              "z": 0.5893101
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2479053969068333,
                              "y": 0.961169588007289,
                              "z": 0.033442109582735906,
                              "w": 0.11652279854612103
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "pnqs3gm2",
                              "_$type": "Sprite3D",
                              "name": "Bip001 L Calf",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540975,
                                  "y": -1.907349e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 1.4252900462867721e-9,
                                  "y": -1.659892053905551e-8,
                                  "z": 0.36905431198516253,
                                  "w": -0.929407830182831
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "s11sytqq",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Foot",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.302004,
                                      "y": 3.814697e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.03174374804942606,
                                      "y": -0.11805249274596953,
                                      "z": -0.19625098794086757,
                                      "w": -0.9729036402175043
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 1,
                                      "y": 0.9999999,
                                      "z": 1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "9041739l",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L Toe0",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.197286941538456e-8,
                                          "y": 2.210664941182518e-8,
                                          "z": -0.7071067811865472,
                                          "w": -0.7071067811865472
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "vj8xul2f",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Toe0Nub",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.846923e-14,
                                              "y": 3.582726e-23,
                                              "z": 1,
                                              "w": 9.313227e-10
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": -1,
                                              "y": -1,
                                              "z": -1
                                            }
                                          }
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
                          "_$id": "9vbidw1p",
                          "_$type": "Sprite3D",
                          "name": "Bip001 R Thigh",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2249689,
                              "y": 0.112762,
                              "z": -0.586945
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.28422829166445857,
                              "y": 0.9553825719815682,
                              "z": 0.014552589573217315,
                              "w": -0.07903569768212612
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "78prdbsq",
                              "_$type": "Sprite3D",
                              "name": "Bip001 R Calf",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540974,
                                  "y": -9.536743e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 3.04298587669858e-9,
                                  "y": 6.8008377244308765e-9,
                                  "z": 0.40842258345076626,
                                  "w": -0.9127929630137394
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 1,
                                  "y": 0.9999999,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "o7i4ige4",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Foot",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.3020039,
                                      "y": 1.907349e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.01241881044905029,
                                      "y": 0.07245327261982927,
                                      "z": -0.19757930714424668,
                                      "w": -0.9775268353462766
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 0.9999999,
                                      "y": 0.9999999,
                                      "z": 0.9999999
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "rsk65g9g",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R Toe0",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695,
                                          "z": 3.814697e-8
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -1.1873479684091352e-8,
                                          "y": -1.1791149686281842e-8,
                                          "z": -0.7071067811865474,
                                          "w": -0.7071067811865474
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "e1wn0cof",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Toe0Nub",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746,
                                              "z": -3.814697e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -1.776357e-15,
                                              "y": -1.554312e-15,
                                              "z": 9.313226e-10,
                                              "w": -1
                                            }
                                          }
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
                          "_$id": "n55339kc",
                          "_$type": "Sprite3D",
                          "name": "Bip001 Spine1",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.5115815,
                              "y": -0.0005630875,
                              "z": -0.000006546974
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.005887283711068041,
                              "y": 0.012753559374089807,
                              "z": -0.005980900706473573,
                              "w": -0.9998834509284251
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "fdjswmc3",
                              "_$type": "Sprite3D",
                              "name": "Bip001 Neck",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.7247889,
                                  "y": -0.009294013,
                                  "z": -1.192093e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 5.364079080967106e-8,
                                  "y": 6.890805104011991e-7,
                                  "z": -0.18228080275140407,
                                  "w": -0.9832465148414339
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 1,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "0gfeage2",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 Head",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.2215482,
                                      "y": 0.0367466,
                                      "z": -2.098083e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.02472959975429869,
                                      "y": -0.00524369594790118,
                                      "z": 0.1283306987249684,
                                      "w": -0.9914091901498391
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "4lndryf6",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 HeadNub",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 1.022001
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 1.136868e-13,
                                          "y": 5.684342e-14,
                                          "z": -1.490116e-8,
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                },
                                {
                                  "_$id": "6q4dgol6",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Clavicle",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939534,
                                      "y": 0.08459198,
                                      "z": 0.4362656
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.6073816426720205,
                                      "y": -0.054896834818538465,
                                      "z": 0.7700029273229401,
                                      "w": 0.18753498229942944
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "78neuuq7",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L UpperArm",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.07348462042953068,
                                          "y": -0.3933914022994427,
                                          "z": -0.18186170106301397,
                                          "w": -0.8982035052501592
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1,
                                          "y": 0.9999999,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "04f2am28",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Forearm",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265,
                                              "z": -1.525879e-7
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.913084013277352e-8,
                                              "y": -8.175836027741151e-8,
                                              "z": 0.5741315019480662,
                                              "w": -0.8187631027781173
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 1,
                                              "z": 0.9999999
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "a1wx5cdi",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 L Hand",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.682883,
                                                  "y": 3.814697e-8,
                                                  "z": 1.525879e-7
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.7068251751438108,
                                                  "y": -2.1081809258637836e-8,
                                                  "z": -2.106502925922792e-8,
                                                  "w": -0.7073882751240088
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 1,
                                                  "y": 0.9999999,
                                                  "z": 1
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "_$id": "mlqfj6mb",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Clavicle",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939539,
                                      "y": 0.0845945,
                                      "z": -0.4362651
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.5768870915082617,
                                      "y": 0.20370009700154856,
                                      "z": 0.7877060884050204,
                                      "w": 0.07229572893581185
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "6blr9xsd",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R UpperArm",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "y": -1.907349e-8,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.19904130089635166,
                                          "y": 0.46069560207467125,
                                          "z": -0.12523010056395437,
                                          "w": -0.855838503854136
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "7hwj0wat",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Forearm",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -2.0880979555802575e-8,
                                              "y": -8.188699825803221e-9,
                                              "z": 0.3456318926474332,
                                              "w": -0.9383701800382154
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999998,
                                              "y": 1,
                                              "z": 1
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "u76j1j4m",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 R Hand",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.6828828
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.7041476966742105,
                                                  "y": 0.06146459970969397,
                                                  "z": 0.061513559709462734,
                                                  "w": -0.7047085966715613
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999,
                                                  "y": 0.9999999,
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
                              ]
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
              "_$id": "961nf9v7",
              "_$type": "Sprite3D",
              "name": "LayaMonkey",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "z": -0.1750933
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071067811865476,
                  "w": -0.7071067811865476
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "71438a86-4173-4430-ad9f-b9677f0bfdac",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "bbc01e8c-73b0-4806-adbc-08cf42763917",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "xqcom85v"
                    },
                    {
                      "_$ref": "m2g2bc0m"
                    },
                    {
                      "_$ref": "n55339kc"
                    },
                    {
                      "_$ref": "hibgesq1"
                    },
                    {
                      "_$ref": "78neuuq7"
                    },
                    {
                      "_$ref": "04f2am28"
                    },
                    {
                      "_$ref": "xlyxnhph"
                    },
                    {
                      "_$ref": "pnqs3gm2"
                    },
                    {
                      "_$ref": "s11sytqq"
                    },
                    {
                      "_$ref": "0gfeage2"
                    },
                    {
                      "_$ref": "6q4dgol6"
                    },
                    {
                      "_$ref": "a1wx5cdi"
                    },
                    {
                      "_$ref": "9vbidw1p"
                    },
                    {
                      "_$ref": "78prdbsq"
                    },
                    {
                      "_$ref": "o7i4ige4"
                    },
                    {
                      "_$ref": "6blr9xsd"
                    },
                    {
                      "_$ref": "mlqfj6mb"
                    },
                    {
                      "_$ref": "7hwj0wat"
                    },
                    {
                      "_$ref": "u76j1j4m"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "xqcom85v"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -1.353806,
                      "y": -1.779651,
                      "z": -0.8496842
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 1.797849,
                      "y": 2.123889,
                      "z": 3.207856
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "fifisexw",
          "_$type": "Sprite3D",
          "name": "LayaMonkey (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.5,
              "z": -3.5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.5,
              "y": 0.5,
              "z": 0.5
            }
          },
          "_$comp": [
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
                      "name": "Take 001",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "64933cc9-2780-468b-8b28-dbf28024dd5f",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "Take 001"
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$id": "50jbss7d",
              "_$type": "Sprite3D",
              "name": "Bip001",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.04679767,
                  "y": 0.574905,
                  "z": -0.2284267
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.49482928257321646,
                  "y": 0.4948285825732411,
                  "z": 0.5051177822108783,
                  "w": -0.5051184822108538
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.9999999,
                  "y": 0.9999999,
                  "z": 1
                }
              },
              "_$child": [
                {
                  "_$id": "ng7c199d",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Footsteps",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 0.01304968,
                      "z": -0.634042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.007275574001644561,
                      "y": 0.007275586001644564,
                      "z": -0.7070689001598249,
                      "w": -0.7070698001598251
                    }
                  }
                },
                {
                  "_$id": "03v5qi8d",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Pelvis",
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4801949942333983,
                      "y": 0.5190498937667947,
                      "z": 0.48019429423340676,
                      "w": -0.5190504937667875
                    }
                  },
                  "_$child": [
                    {
                      "_$id": "vienve48",
                      "_$type": "Sprite3D",
                      "name": "Bip001 Spine",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.2355541,
                          "y": -0.0005083084,
                          "z": 0.00006329536
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.06738501344419189,
                          "y": -0.002220057784013208,
                          "z": -0.0698641832029964,
                          "w": -0.9952755031708255
                        },
                        "localScale": {
                          "_$type": "Vector3",
                          "x": 1,
                          "y": 0.9999999,
                          "z": 0.9999999
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "79136kxz",
                          "_$type": "Sprite3D",
                          "name": "Bip001 L Thigh",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2413928,
                              "y": -0.04609043,
                              "z": 0.5893101
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2479053969068333,
                              "y": 0.961169588007289,
                              "z": 0.033442109582735906,
                              "w": 0.11652279854612103
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "1a29131n",
                              "_$type": "Sprite3D",
                              "name": "Bip001 L Calf",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540975,
                                  "y": -1.907349e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 1.4252900462867721e-9,
                                  "y": -1.659892053905551e-8,
                                  "z": 0.36905431198516253,
                                  "w": -0.929407830182831
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "r8to0yev",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Foot",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.302004,
                                      "y": 3.814697e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.03174374804942606,
                                      "y": -0.11805249274596953,
                                      "z": -0.19625098794086757,
                                      "w": -0.9729036402175043
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 1,
                                      "y": 0.9999999,
                                      "z": 1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "ngld73p6",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L Toe0",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 2.197286941538456e-8,
                                          "y": 2.210664941182518e-8,
                                          "z": -0.7071067811865472,
                                          "w": -0.7071067811865472
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "rtma35w2",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Toe0Nub",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.846923e-14,
                                              "y": 3.582726e-23,
                                              "z": 1,
                                              "w": 9.313227e-10
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": -1,
                                              "y": -1,
                                              "z": -1
                                            }
                                          }
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
                          "_$id": "wo0arzi7",
                          "_$type": "Sprite3D",
                          "name": "Bip001 R Thigh",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2249689,
                              "y": 0.112762,
                              "z": -0.586945
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.28422829166445857,
                              "y": 0.9553825719815682,
                              "z": 0.014552589573217315,
                              "w": -0.07903569768212612
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "ebcamdud",
                              "_$type": "Sprite3D",
                              "name": "Bip001 R Calf",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.2540974,
                                  "y": -9.536743e-9
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 3.04298587669858e-9,
                                  "y": 6.8008377244308765e-9,
                                  "z": 0.40842258345076626,
                                  "w": -0.9127929630137394
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 1,
                                  "y": 0.9999999,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "kivqt56s",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Foot",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.3020039,
                                      "y": 1.907349e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.01241881044905029,
                                      "y": 0.07245327261982927,
                                      "z": -0.19757930714424668,
                                      "w": -0.9775268353462766
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 0.9999999,
                                      "y": 0.9999999,
                                      "z": 0.9999999
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "9ltqwgkh",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R Toe0",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.1310806,
                                          "y": 0.168695,
                                          "z": 3.814697e-8
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -1.1873479684091352e-8,
                                          "y": -1.1791149686281842e-8,
                                          "z": -0.7071067811865474,
                                          "w": -0.7071067811865474
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "tvh7qa25",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Toe0Nub",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.01709746,
                                              "z": -3.814697e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -1.776357e-15,
                                              "y": -1.554312e-15,
                                              "z": 9.313226e-10,
                                              "w": -1
                                            }
                                          }
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
                          "_$id": "zb44ti4m",
                          "_$type": "Sprite3D",
                          "name": "Bip001 Spine1",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.5115815,
                              "y": -0.0005630875,
                              "z": -0.000006546974
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.005887283711068041,
                              "y": 0.012753559374089807,
                              "z": -0.005980900706473573,
                              "w": -0.9998834509284251
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "0jz51s8e",
                              "_$type": "Sprite3D",
                              "name": "Bip001 Neck",
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 0.7247889,
                                  "y": -0.009294013,
                                  "z": -1.192093e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 5.364079080967106e-8,
                                  "y": 6.890805104011991e-7,
                                  "z": -0.18228080275140407,
                                  "w": -0.9832465148414339
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 1,
                                  "z": 1
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "5ui382ld",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 Head",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.2215482,
                                      "y": 0.0367466,
                                      "z": -2.098083e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.02472959975429869,
                                      "y": -0.00524369594790118,
                                      "z": 0.1283306987249684,
                                      "w": -0.9914091901498391
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "i6enqejr",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 HeadNub",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 1.022001
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 1.136868e-13,
                                          "y": 5.684342e-14,
                                          "z": -1.490116e-8,
                                          "w": -1
                                        }
                                      }
                                    }
                                  ]
                                },
                                {
                                  "_$id": "zfdvmkle",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Clavicle",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939534,
                                      "y": 0.08459198,
                                      "z": 0.4362656
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.6073816426720205,
                                      "y": -0.054896834818538465,
                                      "z": 0.7700029273229401,
                                      "w": 0.18753498229942944
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "utbmxhoj",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L UpperArm",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.07348462042953068,
                                          "y": -0.3933914022994427,
                                          "z": -0.18186170106301397,
                                          "w": -0.8982035052501592
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1,
                                          "y": 0.9999999,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "ruftdq1i",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Forearm",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265,
                                              "z": -1.525879e-7
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -3.913084013277352e-8,
                                              "y": -8.175836027741151e-8,
                                              "z": 0.5741315019480662,
                                              "w": -0.8187631027781173
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 1,
                                              "z": 0.9999999
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "xg9eo4vq",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 L Hand",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.682883,
                                                  "y": 3.814697e-8,
                                                  "z": 1.525879e-7
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.7068251751438108,
                                                  "y": -2.1081809258637836e-8,
                                                  "z": -2.106502925922792e-8,
                                                  "w": -0.7073882751240088
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 1,
                                                  "y": 0.9999999,
                                                  "z": 1
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "_$id": "86grdcgm",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Clavicle",
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.1939539,
                                      "y": 0.0845945,
                                      "z": -0.4362651
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.5768870915082617,
                                      "y": 0.20370009700154856,
                                      "z": 0.7877060884050204,
                                      "w": 0.07229572893581185
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "xp905eg2",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R UpperArm",
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 0.4320352,
                                          "y": -1.907349e-8,
                                          "z": 1.525879e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.19904130089635166,
                                          "y": 0.46069560207467125,
                                          "z": -0.12523010056395437,
                                          "w": -0.855838503854136
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "vtwye3s1",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Forearm",
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 0.9235265
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -2.0880979555802575e-8,
                                              "y": -8.188699825803221e-9,
                                              "z": 0.3456318926474332,
                                              "w": -0.9383701800382154
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999998,
                                              "y": 1,
                                              "z": 1
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "umm1gz6m",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 R Hand",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 0.6828828
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.7041476966742105,
                                                  "y": 0.06146459970969397,
                                                  "z": 0.061513559709462734,
                                                  "w": -0.7047085966715613
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999,
                                                  "y": 0.9999999,
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
                              ]
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
              "_$id": "eg3p1y7n",
              "_$type": "Sprite3D",
              "name": "LayaMonkey",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "z": -0.1750933
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7071067811865476,
                  "w": -0.7071067811865476
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "71438a86-4173-4430-ad9f-b9677f0bfdac",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "bbc01e8c-73b0-4806-adbc-08cf42763917",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "50jbss7d"
                    },
                    {
                      "_$ref": "vienve48"
                    },
                    {
                      "_$ref": "zb44ti4m"
                    },
                    {
                      "_$ref": "03v5qi8d"
                    },
                    {
                      "_$ref": "utbmxhoj"
                    },
                    {
                      "_$ref": "ruftdq1i"
                    },
                    {
                      "_$ref": "79136kxz"
                    },
                    {
                      "_$ref": "1a29131n"
                    },
                    {
                      "_$ref": "r8to0yev"
                    },
                    {
                      "_$ref": "5ui382ld"
                    },
                    {
                      "_$ref": "zfdvmkle"
                    },
                    {
                      "_$ref": "xg9eo4vq"
                    },
                    {
                      "_$ref": "wo0arzi7"
                    },
                    {
                      "_$ref": "ebcamdud"
                    },
                    {
                      "_$ref": "kivqt56s"
                    },
                    {
                      "_$ref": "xp905eg2"
                    },
                    {
                      "_$ref": "86grdcgm"
                    },
                    {
                      "_$ref": "vtwye3s1"
                    },
                    {
                      "_$ref": "umm1gz6m"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "50jbss7d"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -1.353806,
                      "y": -1.779651,
                      "z": -0.8496842
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 1.797849,
                      "y": 2.123889,
                      "z": 3.207856
                    }
                  }
                }
              ]
            }
          ]
        },
        {
          "_$id": "w80wztzj",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 3,
              "y": 0.6
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
                "_$uuid": "4def0f3b-ea06-4461-a6ca-b0fba37f6e5a",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "eaa6f036-2137-4908-9ca5-615835e11d6a",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ykacakgy",
          "_$type": "Sprite3D",
          "name": "Capsule",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1,
              "z": -3.5
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
                "_$uuid": "5b7503b3-cf8b-4c53-8386-8519d0ae84e9",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "eeca3630-9be7-488e-8b83-30f0e4a8b542",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "uv5t7vjl",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3,
              "y": 0.6800601
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
                "_$uuid": "24fa1f88-69d3-4ed3-9ec7-0159284cbfb2",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "6b8af728-869b-40d9-991c-fd607a675d66",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "82153dzc",
          "_$type": "Sprite3D",
          "name": "GameObject",
          "layer": 8,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.372697,
              "y": 3.642537,
              "z": -1.982886
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          }
        }
      ]
    }
  ]
}