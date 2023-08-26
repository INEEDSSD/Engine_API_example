{
  "_$ver": 1,
  "_$id": "spbbq4f4",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "c7b9e97b-dab7-4d49-9974-6722b5ba39ee",
      "scriptPath": "../src/Advance/CommandBuffer_Outline.ts",
      "camera": {
        "_$ref": "nam9l511"
      },
      "scene": {
        "_$ref": "fls6h93w"
      },
      "directionLight": {
        "_$ref": "ytcpegbj"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "fls6h93w",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.7075472,
        "g": 0.7075472,
        "b": 0.7075472,
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
          "_$id": "nam9l511",
          "_$type": "Camera",
          "name": "Main Camera",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.4608335,
              "y": 0.6646955,
              "z": 8.88
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.03149479921955216,
              "y": 0.01259517968788876,
              "z": 0.00039670379016959543,
              "w": 0.9994244752340483
            }
          },
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.6839622,
            "g": 0.8068658,
            "a": 0
          },
          "cullingMask": 2147483647,
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "enableHDR": true,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "depthTextureFormat": 35,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          }
        },
        {
          "_$id": "ytcpegbj",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.003718011720382455,
              "y": 0.6101924541097423,
              "z": 0.7487841436867875,
              "w": -0.25879268053718507
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
          "_$id": "28nsww5b",
          "_$type": "Sprite3D",
          "name": "Cube",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.42,
              "y": -1.32
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.029020899600875043,
              "y": -0.045429579375206176,
              "z": 0.3957319945574907,
              "w": -0.9167824873914738
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "30b31c2a-b9ae-4e7e-a5f0-bca353653369",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "52497e78-3d6b-4474-8354-3046ecb68257",
                  "_$type": "Material"
                }
              ]
            },
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
                      "name": "cube",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "c381e9c3-0a39-41cc-9ae7-9f097cea3fca",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "cube"
                }
              ]
            }
          ]
        },
        {
          "_$id": "ejv2sqpk",
          "_$type": "Sprite3D",
          "name": "wall",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.76,
              "y": -1.65,
              "z": 4.01
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865476,
              "w": -0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.9392219,
              "y": 0.2370874,
              "z": 0.2370874
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "1dd66332-d4e3-4f27-97d4-01d2deede405",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "5ef4afea-8e61-441b-8404-409643bd346d",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "m9lyxp71",
          "_$type": "Sprite3D",
          "name": "floor",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.9641947,
              "y": -1.88766,
              "z": 0.51
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
                "_$uuid": "1dd66332-d4e3-4f27-97d4-01d2deede405",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "3f3c7575-896f-4136-934f-eb6a9113a022",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "33epyveq",
          "_$type": "Sprite3D",
          "name": "Particle",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -3.389583,
              "y": -1.423718,
              "z": 0.6306877
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.06114867550098928,
              "y": 0.7624629439018273,
              "z": 0.6402025528971294,
              "w": 0.07107594477059094
            }
          },
          "_$comp": [
            {
              "_$type": "ShurikenParticleRenderer",
              "_scaleInLightmap": 1,
              "sharedMaterials": [
                {
                  "_$uuid": "ae83c247-8019-46bc-956a-145631aef661",
                  "_$type": "Material"
                }
              ],
              "_particleSystem": {
                "startSpeedConstant": 2.5,
                "startSpeedConstantMax": 2.5,
                "startSizeConstantSeparate": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "startSizeConstantMinSeparate": {
                  "_$type": "Vector3"
                },
                "startSizeConstantMaxSeparate": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "startRotationConstantSeparate": {
                  "_$type": "Vector3"
                },
                "startRotationConstantMinSeparate": {
                  "_$type": "Vector3"
                },
                "startRotationConstantMaxSeparate": {
                  "_$type": "Vector3"
                },
                "startColorConstant": {
                  "_$type": "Vector4",
                  "x": 1,
                  "y": 1,
                  "z": 1,
                  "w": 1
                },
                "startColorConstantMin": {
                  "_$type": "Vector4"
                },
                "startColorConstantMax": {
                  "_$type": "Vector4",
                  "x": 1,
                  "y": 1,
                  "z": 1,
                  "w": 1
                },
                "maxParticles": 1000,
                "randomSeed": {
                  "_$type": "Uint32Array",
                  "value": [
                    0
                  ]
                },
                "shape": {
                  "_$type": "ConeShape"
                }
              }
            }
          ]
        },
        {
          "_$id": "w643zcey",
          "_$type": "Sprite3D",
          "name": "LayaMonkey",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.73,
              "y": -1.88
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.48151,
              "y": 0.48151,
              "z": 0.48151
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
                        "_$uuid": "94100374-de3e-40b5-bdd3-334d77ddec16",
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
              "_$id": "so4bt01a",
              "_$type": "Sprite3D",
              "name": "Bip001",
              "layer": 0,
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
                  "_$id": "j3j4jd36",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Footsteps",
                  "layer": 0,
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
                  "_$id": "rffsrubv",
                  "_$type": "Sprite3D",
                  "name": "Bip001 Pelvis",
                  "layer": 0,
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
                      "_$id": "53rh54oz",
                      "_$type": "Sprite3D",
                      "name": "Bip001 Spine",
                      "layer": 0,
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
                          "_$id": "m188sv1d",
                          "_$type": "Sprite3D",
                          "name": "Bip001 L Thigh",
                          "layer": 0,
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
                              "_$id": "8sz1kwcu",
                              "_$type": "Sprite3D",
                              "name": "Bip001 L Calf",
                              "layer": 0,
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
                                  "_$id": "fmqb26n2",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Foot",
                                  "layer": 0,
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
                                      "_$id": "5wzk0yt2",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L Toe0",
                                      "layer": 0,
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
                                          "_$id": "t3ktuukb",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Toe0Nub",
                                          "layer": 0,
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
                          "_$id": "q3qhihmb",
                          "_$type": "Sprite3D",
                          "name": "Bip001 R Thigh",
                          "layer": 0,
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
                              "_$id": "kopl80yx",
                              "_$type": "Sprite3D",
                              "name": "Bip001 R Calf",
                              "layer": 0,
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
                                  "_$id": "hfty4d01",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Foot",
                                  "layer": 0,
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
                                      "_$id": "y913foq1",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R Toe0",
                                      "layer": 0,
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
                                          "_$id": "86gzyda1",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Toe0Nub",
                                          "layer": 0,
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
                          "_$id": "yj0006wt",
                          "_$type": "Sprite3D",
                          "name": "Bip001 Spine1",
                          "layer": 0,
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
                              "_$id": "e7g8ua73",
                              "_$type": "Sprite3D",
                              "name": "Bip001 Neck",
                              "layer": 0,
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
                                  "_$id": "6103kqk0",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 Head",
                                  "layer": 0,
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
                                      "_$id": "3b5bl924",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 HeadNub",
                                      "layer": 0,
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
                                  "_$id": "yad8gjwe",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 L Clavicle",
                                  "layer": 0,
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
                                      "_$id": "1l28xmui",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 L UpperArm",
                                      "layer": 0,
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
                                          "_$id": "jz59i2t6",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 L Forearm",
                                          "layer": 0,
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
                                              "_$id": "rt6s5cyt",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 L Hand",
                                              "layer": 0,
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
                                  "_$id": "4bnq46d7",
                                  "_$type": "Sprite3D",
                                  "name": "Bip001 R Clavicle",
                                  "layer": 0,
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
                                      "_$id": "v3t74lt3",
                                      "_$type": "Sprite3D",
                                      "name": "Bip001 R UpperArm",
                                      "layer": 0,
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
                                          "_$id": "xr8ylfab",
                                          "_$type": "Sprite3D",
                                          "name": "Bip001 R Forearm",
                                          "layer": 0,
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
                                              "_$id": "ci6wgsyg",
                                              "_$type": "Sprite3D",
                                              "name": "Bip001 R Hand",
                                              "layer": 0,
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
              "_$id": "hjdftxtp",
              "_$type": "Sprite3D",
              "name": "LayaMonkey",
              "layer": 0,
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
                    "_$uuid": "f53ed2ae-fb22-424b-8fa8-7907979ba66a",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "SkinnedMeshRenderer",
                  "receiveShadow": true,
                  "castShadow": true,
                  "_scaleInLightmap": 1,
                  "sharedMaterials": [
                    {
                      "_$uuid": "aec3ba0d-88cc-46b5-b0c9-60a6e0a079d9",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "so4bt01a"
                    },
                    {
                      "_$ref": "53rh54oz"
                    },
                    {
                      "_$ref": "yj0006wt"
                    },
                    {
                      "_$ref": "rffsrubv"
                    },
                    {
                      "_$ref": "1l28xmui"
                    },
                    {
                      "_$ref": "jz59i2t6"
                    },
                    {
                      "_$ref": "m188sv1d"
                    },
                    {
                      "_$ref": "8sz1kwcu"
                    },
                    {
                      "_$ref": "fmqb26n2"
                    },
                    {
                      "_$ref": "6103kqk0"
                    },
                    {
                      "_$ref": "yad8gjwe"
                    },
                    {
                      "_$ref": "rt6s5cyt"
                    },
                    {
                      "_$ref": "q3qhihmb"
                    },
                    {
                      "_$ref": "kopl80yx"
                    },
                    {
                      "_$ref": "hfty4d01"
                    },
                    {
                      "_$ref": "v3t74lt3"
                    },
                    {
                      "_$ref": "4bnq46d7"
                    },
                    {
                      "_$ref": "xr8ylfab"
                    },
                    {
                      "_$ref": "ci6wgsyg"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "so4bt01a"
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
        }
      ]
    }
  ]
}