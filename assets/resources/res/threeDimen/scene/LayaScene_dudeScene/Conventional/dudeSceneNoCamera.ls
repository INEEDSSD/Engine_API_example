{
  "_$ver": 1,
  "_$id": "y71gkrtq",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "9oj8b1ig",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "85380998-fbcf-4649-b18a-6c99a90c27cb",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.3970588,
        "g": 0.3970588,
        "b": 0.3970588,
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "enableFog": true,
      "fogStart": 1,
      "fogRange": 2,
      "fogColor": {
        "_$type": "Color",
        "r": 0.2642733,
        "g": 0.7206843,
        "b": 0.7647059,
        "a": null
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "1kx1kzz4",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.004191816,
              "y": 0.3383333,
              "z": 0.0225434
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
          "_$id": "shlknk91",
          "_$type": "Sprite3D",
          "name": "dude",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": -0.63
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
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
                        "_$uuid": "f6add863-68a5-4248-8ced-853ff10095d6",
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
              "_$id": "og0pk27n",
              "_$type": "Sprite3D",
              "name": "him",
              "layer": 0,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.01,
                  "y": 0.01,
                  "z": 0.01
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "cd921b50-ae84-473b-be0b-60923087c0f6",
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
                      "_$uuid": "5b3b1da2-33ba-433b-819c-d108f76b1ea7",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "caa3d221-a9fd-44b4-ba1b-c5bb15ebd228",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "fa5face4-e9cf-49c3-8bc6-cd8d6e1d2c71",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "00094399-b60b-4711-ac71-1093866588c4",
                      "_$type": "Material"
                    },
                    {
                      "_$uuid": "c0184aa5-70f1-490d-acf6-6f9c88c503b2",
                      "_$type": "Material"
                    }
                  ],
                  "_bones": [
                    {
                      "_$ref": "fko8b585"
                    },
                    {
                      "_$ref": "cvtnr8ri"
                    },
                    {
                      "_$ref": "23lle13e"
                    },
                    {
                      "_$ref": "bgxbavfw"
                    },
                    {
                      "_$ref": "cmlkc7xv"
                    },
                    {
                      "_$ref": "jfs4lxci"
                    },
                    {
                      "_$ref": "59kgrel1"
                    },
                    {
                      "_$ref": "h7ui2n26"
                    },
                    {
                      "_$ref": "2digcxsr"
                    },
                    {
                      "_$ref": "ib1qw2i5"
                    },
                    {
                      "_$ref": "vxu7k1qt"
                    },
                    {
                      "_$ref": "7esu20jp"
                    },
                    {
                      "_$ref": "1okldakx"
                    },
                    {
                      "_$ref": "780q84uj"
                    },
                    {
                      "_$ref": "ncmje1qn"
                    },
                    {
                      "_$ref": "n0dcg5qf"
                    },
                    {
                      "_$ref": "zhtlxl3z"
                    },
                    {
                      "_$ref": "rd7hb4m3"
                    },
                    {
                      "_$ref": "9lqsyqcw"
                    },
                    {
                      "_$ref": "lpq27mw4"
                    },
                    {
                      "_$ref": "5x0zvvo5"
                    },
                    {
                      "_$ref": "zn5oyk0c"
                    },
                    {
                      "_$ref": "13zecmw2"
                    },
                    {
                      "_$ref": "7zn528gn"
                    },
                    {
                      "_$ref": "mnaq5pin"
                    },
                    {
                      "_$ref": "jxuai3a3"
                    },
                    {
                      "_$ref": "4v2k70zb"
                    },
                    {
                      "_$ref": "gm1wvsoo"
                    },
                    {
                      "_$ref": "glmq3l3t"
                    },
                    {
                      "_$ref": "v9h44nan"
                    },
                    {
                      "_$ref": "qvdzv6dc"
                    },
                    {
                      "_$ref": "z0ngisxr"
                    },
                    {
                      "_$ref": "ufd00zxp"
                    },
                    {
                      "_$ref": "tcb04j27"
                    },
                    {
                      "_$ref": "ytyyeoku"
                    },
                    {
                      "_$ref": "jlb4ppby"
                    },
                    {
                      "_$ref": "gljg8fbq"
                    },
                    {
                      "_$ref": "r93tv2kv"
                    },
                    {
                      "_$ref": "p2b1lv45"
                    },
                    {
                      "_$ref": "qptyhd2s"
                    },
                    {
                      "_$ref": "84o7d323"
                    },
                    {
                      "_$ref": "n971762q"
                    },
                    {
                      "_$ref": "ihdk2kdj"
                    },
                    {
                      "_$ref": "mu1c5lni"
                    },
                    {
                      "_$ref": "n4ek6edx"
                    },
                    {
                      "_$ref": "xl0u0ajf"
                    },
                    {
                      "_$ref": "3rdvm5y9"
                    },
                    {
                      "_$ref": "3k6kcbrw"
                    },
                    {
                      "_$ref": "y27d6ol3"
                    },
                    {
                      "_$ref": "g3y4dijr"
                    },
                    {
                      "_$ref": "ys5dtr3z"
                    },
                    {
                      "_$ref": "gd6mcf6b"
                    },
                    {
                      "_$ref": "tm3y3txb"
                    },
                    {
                      "_$ref": "xlkk0t6o"
                    },
                    {
                      "_$ref": "88cppamq"
                    },
                    {
                      "_$ref": "v5oz6tz8"
                    },
                    {
                      "_$ref": "6s8b65k9"
                    },
                    {
                      "_$ref": "ds0n58fd"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "mu1c5lni"
                  },
                  "localBounds": {
                    "_$type": "Bounds",
                    "min": {
                      "_$type": "Vector3",
                      "x": -28.70251,
                      "y": -20.1811,
                      "z": -43.31205
                    },
                    "max": {
                      "_$type": "Vector3",
                      "x": 28.75009,
                      "y": 19.26761,
                      "z": 36.05674
                    }
                  }
                }
              ]
            },
            {
              "_$id": "mu1c5lni",
              "_$type": "Sprite3D",
              "name": "Root",
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0.0003756338,
                  "y": 0.3746099,
                  "z": 0.02230549
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.5000003499998426,
                  "y": 0.4999996499999125,
                  "z": 0.4999996499999125,
                  "w": -0.5000003499998426
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.01,
                  "y": 0.01,
                  "z": 0.01
                }
              },
              "_$child": [
                {
                  "_$id": "n4ek6edx",
                  "_$type": "Sprite3D",
                  "name": "Pelvis",
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -0.5862113,
                      "y": -0.06803528,
                      "z": -0.06857681
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.45984149803005053,
                      "y": 0.5545884976241569,
                      "z": -0.46106279802481853,
                      "w": -0.518071897780593
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
                      "_$id": "7esu20jp",
                      "_$type": "Sprite3D",
                      "name": "Spine",
                      "layer": 0,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 3.786007,
                          "y": -0.003599882,
                          "z": 0.000005364418
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.000002043142957931424,
                          "y": 6.547204865192211e-7,
                          "z": 0.0474402090232,
                          "w": -0.9988740794330544
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "zn5oyk0c",
                          "_$type": "Sprite3D",
                          "name": "L_Thigh1",
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -3.769306,
                              "y": -0.3552377,
                              "z": 3.495145
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2699663962616385,
                              "y": 0.9504408868387633,
                              "z": 0.13789819809045376,
                              "w": -0.06902428904418569
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
                              "_$id": "rd7hb4m3",
                              "_$type": "Sprite3D",
                              "name": "L_Knee2",
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 18.25719,
                                  "y": -6.12689e-7,
                                  "z": 0.000001202237
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -0.017443820266370563,
                                  "y": -0.00525435608023505,
                                  "z": 0.22335800341072062,
                                  "w": -0.9745662148818178
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
                                  "_$id": "9lqsyqcw",
                                  "_$type": "Sprite3D",
                                  "name": "L_Ankle1",
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 15.42801,
                                      "y": -1.324247e-7,
                                      "z": 3.407733e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.03702329815644427,
                                      "y": 0.03895981806001628,
                                      "z": -0.01629160918876786,
                                      "w": -0.9984217502841122
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
                                      "_$id": "lpq27mw4",
                                      "_$type": "Sprite3D",
                                      "name": "L_Ball",
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 5.250222,
                                          "y": 6.27385,
                                          "z": -7.130623e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -5.036040081245295e-8,
                                          "y": -1.7162000276870667e-8,
                                          "z": -0.7911951127641718,
                                          "w": -0.6115638098662206
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
                          "_$id": "13zecmw2",
                          "_$type": "Sprite3D",
                          "name": "R_Thigh",
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -3.769314,
                              "y": -0.3552186,
                              "z": -3.495146
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.18203990255284475,
                              "y": 0.9807242137532299,
                              "z": -0.06934746097249722,
                              "w": 0.015245330213793571
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
                              "_$id": "ncmje1qn",
                              "_$type": "Sprite3D",
                              "name": "R_Knee",
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 18.2572,
                                  "y": -0.000001206932,
                                  "z": -0.000001281466
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 0.033529519401625844,
                                  "y": -0.0012594729775232069,
                                  "z": 0.0967470282734342,
                                  "w": -0.994743282247623
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 1,
                                  "z": 0.9999999
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "n0dcg5qf",
                                  "_$type": "Sprite3D",
                                  "name": "R_Ankle",
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 15.428,
                                      "y": 1.896547e-7,
                                      "z": 5.168786e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.03168426931193354,
                                      "y": -0.03351905927208862,
                                      "z": -0.20810259548077267,
                                      "w": -0.977018878782723
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
                                      "_$id": "zhtlxl3z",
                                      "_$type": "Sprite3D",
                                      "name": "R_Ball",
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 5.250221,
                                          "y": 6.273849,
                                          "z": -4.15015e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -5.589910748322043e-9,
                                          "y": -7.2318036743980984e-9,
                                          "z": -0.7911950643775427,
                                          "w": -0.6115638724651873
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1,
                                          "y": 1,
                                          "z": 0.9999999
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
                          "_$id": "1okldakx",
                          "_$type": "Sprite3D",
                          "name": "Spine1",
                          "layer": 0,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 4.543316,
                              "y": -0.003599524,
                              "z": -1.192093e-7
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.0364948307681567,
                              "y": 0.010808840227508467,
                              "z": 0.05193984109324899,
                              "w": -0.9979246210046866
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
                              "_$id": "780q84uj",
                              "_$type": "Sprite3D",
                              "name": "Spine2",
                              "layer": 0,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 4.544044,
                                  "y": -0.003600121,
                                  "z": 4.768372e-7
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -0.036338378733433756,
                                  "y": -0.01044706963586967,
                                  "z": -0.04157106855104949,
                                  "w": -0.9984198652002938
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999998,
                                  "y": 0.9999997,
                                  "z": 0.9999999
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "59kgrel1",
                                  "_$type": "Sprite3D",
                                  "name": "Spine3",
                                  "layer": 0,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 4.543961,
                                      "y": -0.004399538,
                                      "z": 2.384186e-7
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.03705678004497147,
                                      "y": -0.0077245870093744255,
                                      "z": -0.022701840027550563,
                                      "w": -0.9990254012124
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "23lle13e",
                                      "_$type": "Sprite3D",
                                      "name": "Neck",
                                      "layer": 0,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": 5.536259,
                                          "y": -0.002881885,
                                          "z": 1.192093e-7
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.061708414535965816,
                                          "y": -0.012104028928236477,
                                          "z": -0.24975407788527176,
                                          "w": -0.9662652144410661
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 0.9999999,
                                          "y": 1,
                                          "z": 0.9999999
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "fko8b585",
                                          "_$type": "Sprite3D",
                                          "name": "Head",
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 3.953899,
                                              "y": 0.000001907349,
                                              "z": -1.192093e-7
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.015586220539448853,
                                              "y": -0.002385009082546658,
                                              "z": 0.1521227052650621,
                                              "w": -0.9882358342034612
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "cmlkc7xv",
                                              "_$type": "Sprite3D",
                                              "name": "L_eye_joint1",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 4.220684,
                                                  "y": 1.406052,
                                                  "z": 1.394846
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.03907848063131893,
                                                  "y": 0.7070750114229069,
                                                  "z": -0.006703028108288462,
                                                  "w": -0.7060261114059617
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999998,
                                                  "y": 0.9999998,
                                                  "z": 1
                                                }
                                              }
                                            },
                                            {
                                              "_$id": "jfs4lxci",
                                              "_$type": "Sprite3D",
                                              "name": "L_eyeBall_joint2",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 4.482601,
                                                  "y": 3.247939,
                                                  "z": 1.274591
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.040425071121293454,
                                                  "y": -0.000012123080336264853,
                                                  "z": -0.000299645008311426,
                                                  "w": -0.9991825277149006
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999,
                                                  "y": 0.9999999,
                                                  "z": 0.9999999
                                                }
                                              }
                                            },
                                            {
                                              "_$id": "cvtnr8ri",
                                              "_$type": "Sprite3D",
                                              "name": "R_eye_joint",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 4.296261,
                                                  "y": 1.333192,
                                                  "z": -1.066092
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.03907848063131893,
                                                  "y": 0.7070750114229069,
                                                  "z": -0.006703028108288462,
                                                  "w": -0.7060261114059617
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999998,
                                                  "y": 0.9999998,
                                                  "z": 1
                                                }
                                              }
                                            },
                                            {
                                              "_$id": "ib1qw2i5",
                                              "_$type": "Sprite3D",
                                              "name": "R_eyeBall_joint",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 4.577007,
                                                  "y": 3.107061,
                                                  "z": -1.207679
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.016248619766386,
                                                  "y": -0.0038525809446096427,
                                                  "z": -0.0167776697587796,
                                                  "w": -0.9997197856265614
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999,
                                                  "y": 0.9999998,
                                                  "z": 0.9999998
                                                }
                                              }
                                            }
                                          ]
                                        },
                                        {
                                          "_$id": "2digcxsr",
                                          "_$type": "Sprite3D",
                                          "name": "L_Clavicle",
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -0.3079605,
                                              "y": -0.7705936,
                                              "z": 1.223297
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.6309622920621695,
                                              "y": -0.13286529832848612,
                                              "z": 0.7479490905904154,
                                              "w": 0.1574977980185966
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999999,
                                              "y": 1,
                                              "z": 0.9999999
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "vxu7k1qt",
                                              "_$type": "Sprite3D",
                                              "name": "L_UpperArm",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 6.704924,
                                                  "y": 0.8875221,
                                                  "z": -0.1277451
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.09683058335263038,
                                                  "y": -0.46747741618578487,
                                                  "z": -0.3451324119497515,
                                                  "w": -0.8080670279782479
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999998,
                                                  "y": 0.9999999,
                                                  "z": 0.9999999
                                                }
                                              },
                                              "_$child": [
                                                {
                                                  "_$id": "5x0zvvo5",
                                                  "_$type": "Sprite3D",
                                                  "name": "L_Forearm",
                                                  "layer": 0,
                                                  "transform": {
                                                    "localPosition": {
                                                      "_$type": "Vector3",
                                                      "x": 13.14219,
                                                      "y": 0.000003814697
                                                    },
                                                    "localRotation": {
                                                      "_$type": "Quaternion",
                                                      "x": -0.29436990367735427,
                                                      "y": -0.10342280129198764,
                                                      "z": 0.13613660170065792,
                                                      "w": -0.940274911746187
                                                    },
                                                    "localScale": {
                                                      "_$type": "Vector3",
                                                      "x": 0.9999999,
                                                      "y": 0.9999998,
                                                      "z": 0.9999999
                                                    }
                                                  },
                                                  "_$child": [
                                                    {
                                                      "_$id": "gm1wvsoo",
                                                      "_$type": "Sprite3D",
                                                      "name": "L_Hand",
                                                      "layer": 0,
                                                      "transform": {
                                                        "localPosition": {
                                                          "_$type": "Vector3",
                                                          "x": 10.82557,
                                                          "z": -0.000001907349
                                                        },
                                                        "localRotation": {
                                                          "_$type": "Quaternion",
                                                          "x": 0.6023548858208133,
                                                          "y": -0.05393242873045278,
                                                          "z": -0.07413661825485444,
                                                          "w": -0.7929461813343726
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
                                                          "_$id": "qvdzv6dc",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Index1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.348743,
                                                              "y": 0.0162549,
                                                              "z": -1.561337
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.10454359237737744,
                                                              "y": -0.010585949228143078,
                                                              "z": -0.03970220710517945,
                                                              "w": -0.9936711275481185
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "n971762q",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Index2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.473694,
                                                                  "y": 9.018095e-8,
                                                                  "z": 5.823262e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -3.774008035452086e-9,
                                                                  "y": 2.7733790260524284e-8,
                                                                  "z": -0.14505830136264136,
                                                                  "w": -0.989423109294393
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
                                                                  "_$id": "84o7d323",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Index3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.062845,
                                                                      "y": 1.397325e-7,
                                                                      "z": 0.000002218714
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 6.959475e-9,
                                                                      "y": -6.694885e-9,
                                                                      "z": 5.596729e-10,
                                                                      "w": -1
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999998,
                                                                      "y": 0.9999999,
                                                                      "z": 0.9999999
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "z0ngisxr",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Middle1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.359985,
                                                              "y": -0.0002945374,
                                                              "z": -0.3668594
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.01636030981940377,
                                                              "y": -0.010037619889197925,
                                                              "z": -0.14250339842695056,
                                                              "w": -0.9896081890760318
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "qptyhd2s",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Middle2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.529125,
                                                                  "y": 7.808657e-7,
                                                                  "z": -3.643785e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": 4.952067849137604e-9,
                                                                  "y": -3.777051884933908e-8,
                                                                  "z": -0.1495135954451393,
                                                                  "w": -0.9887596698779062
                                                                },
                                                                "localScale": {
                                                                  "_$type": "Vector3",
                                                                  "x": 0.9999999,
                                                                  "y": 1,
                                                                  "z": 0.9999999
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "p2b1lv45",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Middle3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.529127,
                                                                      "y": 7.279796e-7,
                                                                      "z": 6.759388e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": -2.7739658447337107e-8,
                                                                      "y": 2.2735148727452904e-8,
                                                                      "z": -0.03320854814122873,
                                                                      "w": -0.9994484440581969
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "tcb04j27",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Pinky1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 3.972679,
                                                              "y": 0.2234902,
                                                              "z": 1.742834
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": 0.17446370831708952,
                                                              "y": 0.04180707199304006,
                                                              "z": -0.19030400907223338,
                                                              "w": -0.9651937460130239
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "ytyyeoku",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Pinky2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.131794,
                                                                  "y": -0.000002161949,
                                                                  "z": -4.037946e-8
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "w": -1
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
                                                                  "_$id": "ufd00zxp",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Pinky3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.8589554,
                                                                      "y": 6.749544e-7,
                                                                      "z": 5.439839e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 2.3960329542536435e-8,
                                                                      "y": -2.1872779582393066e-8,
                                                                      "z": -0.033768519355273176,
                                                                      "w": -0.9994296809183482
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999999,
                                                                      "y": 1,
                                                                      "z": 1
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "gljg8fbq",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Ring1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.29501,
                                                              "y": -0.09474087,
                                                              "z": 0.8064651
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": 0.0748897600700433,
                                                              "y": 0.025982540024301087,
                                                              "z": -0.17708240016562257,
                                                              "w": -0.9809986009175137
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "r93tv2kv",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Ring2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.403337,
                                                                  "y": 0.000001166872,
                                                                  "z": -2.302475e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -1.884075857687192e-8,
                                                                  "y": -3.996201698148733e-9,
                                                                  "z": -0.22125968328725107,
                                                                  "w": -0.9752149263375868
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "jlb4ppby",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Ring3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.388264,
                                                                      "y": 2.131085e-7,
                                                                      "z": -2.240952e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "z": -0.0786429955378984,
                                                                      "w": -0.9969028434370252
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "glmq3l3t",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Thumb1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 1.625107,
                                                              "y": 0.6266322,
                                                              "z": -1.678762
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.8008248017298617,
                                                              "y": -0.2589474005593523,
                                                              "z": 0.13130260028362675,
                                                              "w": -0.5238182011314998
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "ihdk2kdj",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Thumb2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.14043,
                                                                  "y": 0.000002859354,
                                                                  "z": -0.000001814263
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -2.453208985841058e-8,
                                                                  "y": -3.5771749793539755e-9,
                                                                  "z": -0.15517119910441388,
                                                                  "w": -0.9878875942983076
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "v9h44nan",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Thumb3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.382469,
                                                                      "y": -7.176536e-7,
                                                                      "z": 0.000003671683
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 6.429655114752321e-8,
                                                                      "y": 3.3882720604716855e-8,
                                                                      "z": -0.1351495024120608,
                                                                      "w": -0.9908252176836068
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999999,
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
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        },
                                        {
                                          "_$id": "bgxbavfw",
                                          "_$type": "Sprite3D",
                                          "name": "R_Clavicle",
                                          "layer": 0,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -0.3079605,
                                              "y": -0.7705898,
                                              "z": -1.223302
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -0.6309618696455767,
                                              "y": 0.13286319360819437,
                                              "z": 0.7479494640175172,
                                              "w": 0.15749949242298703
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "h7ui2n26",
                                              "_$type": "Sprite3D",
                                              "name": "R_UpperArm",
                                              "layer": 0,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 6.882456,
                                                  "y": -1.112103,
                                                  "z": 0.03336836
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.16042309131510638,
                                                  "y": 0.46309597492917476,
                                                  "z": 0.26806368548772136,
                                                  "w": -0.8294265550969792
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
                                                  "_$id": "mnaq5pin",
                                                  "_$type": "Sprite3D",
                                                  "name": "R_Forearm",
                                                  "layer": 0,
                                                  "transform": {
                                                    "localPosition": {
                                                      "_$type": "Vector3",
                                                      "x": 13.14218,
                                                      "y": 9.030945e-7,
                                                      "z": 0.00000316086
                                                    },
                                                    "localRotation": {
                                                      "_$type": "Quaternion",
                                                      "x": 0.29954808600197247,
                                                      "y": 0.08987943579989031,
                                                      "z": 0.4449128792090051,
                                                      "w": -0.839193160784096
                                                    },
                                                    "localScale": {
                                                      "_$type": "Vector3",
                                                      "x": 0.9999998,
                                                      "y": 0.9999998,
                                                      "z": 0.9999997
                                                    }
                                                  },
                                                  "_$child": [
                                                    {
                                                      "_$id": "jxuai3a3",
                                                      "_$type": "Sprite3D",
                                                      "name": "R_Hand",
                                                      "layer": 0,
                                                      "transform": {
                                                        "localPosition": {
                                                          "_$type": "Vector3",
                                                          "x": 10.82555,
                                                          "y": 4.455054e-7,
                                                          "z": -7.548039e-7
                                                        },
                                                        "localRotation": {
                                                          "_$type": "Quaternion",
                                                          "x": -0.5791631079279124,
                                                          "y": -0.010741590147036965,
                                                          "z": 0.18884720258504736,
                                                          "w": -0.792963710854536
                                                        },
                                                        "localScale": {
                                                          "_$type": "Vector3",
                                                          "x": 0.9999999,
                                                          "y": 0.9999998,
                                                          "z": 0.9999999
                                                        }
                                                      },
                                                      "_$child": [
                                                        {
                                                          "_$id": "xl0u0ajf",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Index1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.348743,
                                                              "y": 0.01625061,
                                                              "z": 1.561335
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": 0.10376389978258786,
                                                              "y": 0.028222149940867317,
                                                              "z": 0.040362939915429226,
                                                              "w": -0.9933817979186088
                                                            },
                                                            "localScale": {
                                                              "_$type": "Vector3",
                                                              "x": 0.9999998,
                                                              "y": 0.9999999,
                                                              "z": 1
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "6s8b65k9",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Index2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.473696,
                                                                  "y": -0.000003317978,
                                                                  "z": 3.016286e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -2.8161839822624746e-8,
                                                                  "y": -2.2559349857911612e-8,
                                                                  "z": -0.15900489899851947,
                                                                  "w": -0.9872777937817042
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
                                                                  "_$id": "v5oz6tz8",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Index3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.062846,
                                                                      "y": -7.713862e-8,
                                                                      "z": -3.799391e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": -5.186984087946216e-8,
                                                                      "y": -1.644980027890922e-8,
                                                                      "z": -0.11503260195039774,
                                                                      "w": -0.9933617168426204
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "3rdvm5y9",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Middle1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.359985,
                                                              "y": -0.0002935269,
                                                              "z": 0.3668594
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": 0.0096637417340996,
                                                              "y": 0.01891751947947947,
                                                              "z": 0.009482685739081405,
                                                              "w": -0.999729372492183
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
                                                              "_$id": "88cppamq",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Middle2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.529123,
                                                                  "y": -0.000003339358,
                                                                  "z": 2.394216e-9
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -3.267331727362807e-8,
                                                                  "y": 2.1437448211186926e-8,
                                                                  "z": -0.16131898653899898,
                                                                  "w": -0.9869023176495377
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "xlkk0t6o",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Middle3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.529126,
                                                                      "y": -0.000001972138,
                                                                      "z": -3.193875e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 4.5790388285382645e-8,
                                                                      "y": 2.041402923559834e-9,
                                                                      "z": -0.031410688823829316,
                                                                      "w": -0.9995065625735583
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999999,
                                                                      "y": 0.9999999,
                                                                      "z": 0.9999999
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "y27d6ol3",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Pinky1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 3.972675,
                                                              "y": 0.2234879,
                                                              "z": -1.742839
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.1939404030908748,
                                                              "y": -0.10035940159945189,
                                                              "z": -0.19565480311819758,
                                                              "w": -0.956051415236821
                                                            },
                                                            "localScale": {
                                                              "_$type": "Vector3",
                                                              "x": 0.9999999,
                                                              "y": 1,
                                                              "z": 0.9999999
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "g3y4dijr",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Pinky2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.131794,
                                                                  "y": -0.000004572158,
                                                                  "z": -2.546499e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -1.0975980239780774e-8,
                                                                  "y": -2.382342052044538e-9,
                                                                  "z": -0.18967970414373433,
                                                                  "w": -0.9818460214493643
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
                                                                  "_$id": "3k6kcbrw",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Pinky3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.8589554,
                                                                      "y": -0.000002683744,
                                                                      "z": 3.0937e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "z": -0.05023537033763703,
                                                                      "w": -0.9987374067126156
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999998,
                                                                      "y": 0.9999999,
                                                                      "z": 0.9999999
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "gd6mcf6b",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Ring1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.295012,
                                                              "y": -0.09473419,
                                                              "z": -0.8064671
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.07874372024803647,
                                                              "y": -0.07450313023467894,
                                                              "z": -0.08906556028054943,
                                                              "w": -0.990109103118765
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
                                                              "_$id": "tm3y3txb",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Ring2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.403336,
                                                                  "y": 0.000003562375,
                                                                  "z": 8.684979e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -2.4972398514566236e-9,
                                                                  "y": 1.3441439200462558e-8,
                                                                  "z": -0.2358900859685445,
                                                                  "w": -0.9717797421956028
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
                                                                  "_$id": "ys5dtr3z",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Ring3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.388262,
                                                                      "y": -2.602473e-7,
                                                                      "z": 1.204491e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": -1.5068149173986686e-8,
                                                                      "y": -1.6476659096774284e-9,
                                                                      "z": -0.11359319377299167,
                                                                      "w": -0.9935273455363225
                                                                    },
                                                                    "localScale": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.9999999,
                                                                      "y": 0.9999999,
                                                                      "z": 0.9999999
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "4v2k70zb",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Thumb1",
                                                          "layer": 0,
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 1.625105,
                                                              "y": 0.6266289,
                                                              "z": 1.67876
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.7343465610254899,
                                                              "y": -0.41122897817454485,
                                                              "z": -0.2316516877053812,
                                                              "w": 0.48781487410984575
                                                            },
                                                            "localScale": {
                                                              "_$type": "Vector3",
                                                              "x": 0.9999999,
                                                              "y": 0.9999997,
                                                              "z": 0.9999998
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "ds0n58fd",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Thumb2",
                                                              "layer": 0,
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.140432,
                                                                  "y": -0.000001382952,
                                                                  "z": 7.557305e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -3.114816094420775e-8,
                                                                  "y": 2.1773600660032625e-8,
                                                                  "z": -0.2761612083713948,
                                                                  "w": -0.9611113291345856
                                                                },
                                                                "localScale": {
                                                                  "_$type": "Vector3",
                                                                  "x": 0.9999999,
                                                                  "y": 1,
                                                                  "z": 0.9999999
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "7zn528gn",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Thumb3",
                                                                  "layer": 0,
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.382469,
                                                                      "y": 3.763222e-8,
                                                                      "z": -0.000003129955
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 6.491403058345164e-8,
                                                                      "y": -2.065605018565796e-8,
                                                                      "z": 0.009796924088055409,
                                                                      "w": -0.9999520089876355
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
          "_$id": "4lxz7pr6",
          "_$type": "Sprite3D",
          "name": "Plane",
          "layer": 0,
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "y": -1,
              "w": 0
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.2,
              "y": 0.2,
              "z": 0.2
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "ca738b8a-c041-41d7-bfad-e171c6118a8a",
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
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "MeshColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                },
                "mesh": {
                  "_$uuid": "ca738b8a-c041-41d7-bfad-e171c6118a8a",
                  "_$type": "Mesh"
                }
              }
            }
          ]
        },
        {
          "_$id": "n1pstr31",
          "_$type": "Sprite3D",
          "name": "Cube",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.4088883,
              "y": 0.067,
              "z": 0.726
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.1,
              "y": 0.1,
              "z": 0.1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "f5aa148f-57bd-46b4-916b-9920e34f996e",
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
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                }
              }
            }
          ]
        },
        {
          "_$id": "ydm07ebs",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.5,
              "y": 0.05,
              "z": -0.8
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.1,
              "y": 0.1,
              "z": 0.1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2e71b4ff-f78a-4304-ab59-8b9e0c191b45",
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
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
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
          "_$id": "kmq2yhym",
          "_$type": "Sprite3D",
          "name": "Capsule",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.622,
              "y": 0.107,
              "z": 0.547
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.1,
              "y": 0.1,
              "z": 0.1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4019d0d2-b961-4a9c-8897-6accef373091",
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
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "CapsuleColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                },
                "length": 2
              }
            }
          ]
        },
        {
          "_$id": "7tmdxlcy",
          "_$type": "Sprite3D",
          "name": "Cylinder",
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.5,
              "y": 0.1,
              "z": -0.8
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.1,
              "y": 0.1,
              "z": 0.1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "9523b400-e0e7-4305-aac9-9b2f97ed0483",
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
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "CapsuleColliderShape",
                "localOffset": {
                  "_$type": "Vector3",
                  "x": 5.960464e-8,
                  "z": -8.940697e-8
                },
                "radius": 0.5000001,
                "length": 2
              }
            }
          ]
        }
      ]
    }
  ]
}