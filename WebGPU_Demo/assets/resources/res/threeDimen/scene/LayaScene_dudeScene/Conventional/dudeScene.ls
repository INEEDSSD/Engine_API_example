{
  "_$ver": 1,
  "_$id": "fttp9hhw",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1440,
  "height": 680,
  "mouseThrough": true,
  "_$child": [
    {
      "_$id": "3zgcjkyu",
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
          0.18561969697475433,
          0.23250935971736908,
          0.3139866888523102,
          -0.00402871472761035,
          0.04063558578491211,
          0.12325479835271835,
          -0.014295632019639015,
          -0.021351061761379242,
          -0.035437192767858505,
          0.008377744816243649,
          0.01253290381282568,
          0.02081504464149475,
          0.006483490113168955,
          0.009480632841587067,
          0.015870092436671257,
          -0.011059807613492012,
          -0.016151180490851402,
          -0.02700968272984028,
          0.009251543320715427,
          0.012892268598079681,
          0.015754960477352142,
          -0.010321863926947117,
          -0.014523578807711601,
          -0.020468229427933693,
          0.022104822099208832,
          0.030724722892045975,
          0.03601601719856262
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.3970588,
        "g": 0.3970588,
        "b": 0.3970588,
        "a": null
      },
      "iblTex": {
        "_$uuid": "d662fc74-0aad-4f3e-b1f9-5a0a04efce2d",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "enableFog": true,
      "fogStart": 1,
      "fogEnd": 3,
      "fogColor": {
        "_$type": "Color",
        "r": 0.2642733,
        "g": 0.7206843,
        "b": 0.7647059,
        "a": null
      },
      "_$child": [
        {
          "_$id": "l512alr2",
          "_$type": "Sprite3D",
          "name": "Directional Light",
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
              "_$type": "DirectionLightCom"
            }
          ]
        },
        {
          "_$id": "t3axu5ck",
          "_$type": "Sprite3D",
          "name": "dude",
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
              "_$id": "b0c79vp0",
              "_$type": "Sprite3D",
              "name": "him",
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
                  "lightmapScaleOffset": {
                    "_$type": "Vector4"
                  },
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
                      "_$ref": "mw5feb22"
                    },
                    {
                      "_$ref": "lw9pzzrn"
                    },
                    {
                      "_$ref": "bx79twuf"
                    },
                    {
                      "_$ref": "11hsbkpi"
                    },
                    {
                      "_$ref": "7q8ozq2g"
                    },
                    {
                      "_$ref": "imklvy4w"
                    },
                    {
                      "_$ref": "poh4j5b8"
                    },
                    {
                      "_$ref": "n50mg9fg"
                    },
                    {
                      "_$ref": "6r8qc8jt"
                    },
                    {
                      "_$ref": "wnk7ouox"
                    },
                    {
                      "_$ref": "ewaisyuy"
                    },
                    {
                      "_$ref": "8o9z6iiw"
                    },
                    {
                      "_$ref": "z3wjjrxd"
                    },
                    {
                      "_$ref": "9a302j1f"
                    },
                    {
                      "_$ref": "b5o7k1qw"
                    },
                    {
                      "_$ref": "9gin0e0x"
                    },
                    {
                      "_$ref": "qyf62sco"
                    },
                    {
                      "_$ref": "8sp02ruk"
                    },
                    {
                      "_$ref": "e9iinffu"
                    },
                    {
                      "_$ref": "jszfvwn7"
                    },
                    {
                      "_$ref": "u1c0mus1"
                    },
                    {
                      "_$ref": "zjeiatk8"
                    },
                    {
                      "_$ref": "p1oaehqv"
                    },
                    {
                      "_$ref": "s7eq2i5y"
                    },
                    {
                      "_$ref": "04pxrf0g"
                    },
                    {
                      "_$ref": "m69jwi37"
                    },
                    {
                      "_$ref": "lwijdk9c"
                    },
                    {
                      "_$ref": "kvsrekfu"
                    },
                    {
                      "_$ref": "siugvph9"
                    },
                    {
                      "_$ref": "itb3wzll"
                    },
                    {
                      "_$ref": "x62p3rqe"
                    },
                    {
                      "_$ref": "hi59wyao"
                    },
                    {
                      "_$ref": "jn09ugd8"
                    },
                    {
                      "_$ref": "05l11p6o"
                    },
                    {
                      "_$ref": "c8zg8f8r"
                    },
                    {
                      "_$ref": "kynsme65"
                    },
                    {
                      "_$ref": "9n1b1xxf"
                    },
                    {
                      "_$ref": "di0vwyjw"
                    },
                    {
                      "_$ref": "eh0yqoge"
                    },
                    {
                      "_$ref": "qb9qk4qu"
                    },
                    {
                      "_$ref": "wax7j6hs"
                    },
                    {
                      "_$ref": "muz038j7"
                    },
                    {
                      "_$ref": "i150vgl2"
                    },
                    {
                      "_$ref": "cb6cm2qi"
                    },
                    {
                      "_$ref": "j8yu0al0"
                    },
                    {
                      "_$ref": "eg61ag59"
                    },
                    {
                      "_$ref": "xksc1ds6"
                    },
                    {
                      "_$ref": "r4j145wd"
                    },
                    {
                      "_$ref": "0o7vpxlc"
                    },
                    {
                      "_$ref": "jw626ann"
                    },
                    {
                      "_$ref": "w6vx3lry"
                    },
                    {
                      "_$ref": "f5aehkny"
                    },
                    {
                      "_$ref": "ulz26nqo"
                    },
                    {
                      "_$ref": "cyx02il7"
                    },
                    {
                      "_$ref": "f76elsxy"
                    },
                    {
                      "_$ref": "lql0myd0"
                    },
                    {
                      "_$ref": "t9ic32wp"
                    },
                    {
                      "_$ref": "hi445bih"
                    }
                  ],
                  "rootBone": {
                    "_$ref": "cb6cm2qi"
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
              "_$id": "cb6cm2qi",
              "_$type": "Sprite3D",
              "name": "Root",
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
                  "_$id": "j8yu0al0",
                  "_$type": "Sprite3D",
                  "name": "Pelvis",
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
                      "_$id": "8o9z6iiw",
                      "_$type": "Sprite3D",
                      "name": "Spine",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 3.786007,
                          "y": -0.003599882,
                          "z": 0.000005364418
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.0000020431429579314244,
                          "y": 6.547204865192212e-7,
                          "z": 0.047440209023200015,
                          "w": -0.9988740794330546
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "zjeiatk8",
                          "_$type": "Sprite3D",
                          "name": "L_Thigh1",
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
                              "_$id": "8sp02ruk",
                              "_$type": "Sprite3D",
                              "name": "L_Knee2",
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
                                  "_$id": "e9iinffu",
                                  "_$type": "Sprite3D",
                                  "name": "L_Ankle1",
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
                                      "_$id": "jszfvwn7",
                                      "_$type": "Sprite3D",
                                      "name": "L_Ball",
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
                          "_$id": "p1oaehqv",
                          "_$type": "Sprite3D",
                          "name": "R_Thigh",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -3.769314,
                              "y": -0.3552186,
                              "z": -3.495146
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.18203990255284477,
                              "y": 0.9807242137532302,
                              "z": -0.06934746097249724,
                              "w": 0.015245330213793575
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
                              "_$id": "b5o7k1qw",
                              "_$type": "Sprite3D",
                              "name": "R_Knee",
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
                                  "_$id": "9gin0e0x",
                                  "_$type": "Sprite3D",
                                  "name": "R_Ankle",
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
                                      "_$id": "qyf62sco",
                                      "_$type": "Sprite3D",
                                      "name": "R_Ball",
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
                          "_$id": "z3wjjrxd",
                          "_$type": "Sprite3D",
                          "name": "Spine1",
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 4.543316,
                              "y": -0.003599524,
                              "z": -1.192093e-7
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.036494830768156704,
                              "y": 0.010808840227508469,
                              "z": 0.051939841093249006,
                              "w": -0.9979246210046868
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
                              "_$id": "9a302j1f",
                              "_$type": "Sprite3D",
                              "name": "Spine2",
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
                                  "_$id": "poh4j5b8",
                                  "_$type": "Sprite3D",
                                  "name": "Spine3",
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
                                      "_$id": "bx79twuf",
                                      "_$type": "Sprite3D",
                                      "name": "Neck",
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
                                          "_$id": "mw5feb22",
                                          "_$type": "Sprite3D",
                                          "name": "Head",
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
                                              "_$id": "7q8ozq2g",
                                              "_$type": "Sprite3D",
                                              "name": "L_eye_joint1",
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
                                              "_$id": "imklvy4w",
                                              "_$type": "Sprite3D",
                                              "name": "L_eyeBall_joint2",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 4.482601,
                                                  "y": 3.247939,
                                                  "z": 1.274591
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.04042507112129346,
                                                  "y": -0.000012123080336264856,
                                                  "z": -0.00029964500831142606,
                                                  "w": -0.9991825277149008
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
                                              "_$id": "lw9pzzrn",
                                              "_$type": "Sprite3D",
                                              "name": "R_eye_joint",
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
                                              "_$id": "wnk7ouox",
                                              "_$type": "Sprite3D",
                                              "name": "R_eyeBall_joint",
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
                                          "_$id": "6r8qc8jt",
                                          "_$type": "Sprite3D",
                                          "name": "L_Clavicle",
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
                                              "_$id": "ewaisyuy",
                                              "_$type": "Sprite3D",
                                              "name": "L_UpperArm",
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 6.704924,
                                                  "y": 0.8875221,
                                                  "z": -0.1277451
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.09683058335263041,
                                                  "y": -0.467477416185785,
                                                  "z": -0.3451324119497516,
                                                  "w": -0.8080670279782481
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
                                                  "_$id": "u1c0mus1",
                                                  "_$type": "Sprite3D",
                                                  "name": "L_Forearm",
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
                                                      "_$id": "kvsrekfu",
                                                      "_$type": "Sprite3D",
                                                      "name": "L_Hand",
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
                                                          "_$id": "x62p3rqe",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Index1",
                                                          "transform": {
                                                            "localPosition": {
                                                              "_$type": "Vector3",
                                                              "x": 4.348743,
                                                              "y": 0.0162549,
                                                              "z": -1.561337
                                                            },
                                                            "localRotation": {
                                                              "_$type": "Quaternion",
                                                              "x": -0.10454359237737747,
                                                              "y": -0.01058594922814308,
                                                              "z": -0.03970220710517946,
                                                              "w": -0.9936711275481187
                                                            }
                                                          },
                                                          "_$child": [
                                                            {
                                                              "_$id": "muz038j7",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Index2",
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
                                                                  "_$id": "wax7j6hs",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Index3",
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
                                                          "_$id": "hi59wyao",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Middle1",
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
                                                              "_$id": "qb9qk4qu",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Middle2",
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
                                                                  "_$id": "eh0yqoge",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Middle3",
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
                                                          "_$id": "05l11p6o",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Pinky1",
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
                                                              "_$id": "c8zg8f8r",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Pinky2",
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
                                                                  "_$id": "jn09ugd8",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Pinky3",
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 0.8589554,
                                                                      "y": 6.749544e-7,
                                                                      "z": 5.439839e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 2.396032954253644e-8,
                                                                      "y": -2.187277958239307e-8,
                                                                      "z": -0.03376851935527318,
                                                                      "w": -0.9994296809183484
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
                                                          "_$id": "9n1b1xxf",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Ring1",
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
                                                              "_$id": "di0vwyjw",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Ring2",
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.403337,
                                                                  "y": 0.000001166872,
                                                                  "z": -2.302475e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -1.8840758576871923e-8,
                                                                  "y": -3.996201698148734e-9,
                                                                  "z": -0.22125968328725112,
                                                                  "w": -0.975214926337587
                                                                }
                                                              },
                                                              "_$child": [
                                                                {
                                                                  "_$id": "kynsme65",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Ring3",
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.388264,
                                                                      "y": 2.131085e-7,
                                                                      "z": -2.240952e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "z": -0.07864299553789841,
                                                                      "w": -0.9969028434370254
                                                                    }
                                                                  }
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "_$id": "siugvph9",
                                                          "_$type": "Sprite3D",
                                                          "name": "L_Thumb1",
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
                                                              "_$id": "i150vgl2",
                                                              "_$type": "Sprite3D",
                                                              "name": "L_Thumb2",
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
                                                                  "_$id": "itb3wzll",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "L_Thumb3",
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.382469,
                                                                      "y": -7.176536e-7,
                                                                      "z": 0.000003671683
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": 6.429655114752322e-8,
                                                                      "y": 3.388272060471686e-8,
                                                                      "z": -0.13514950241206083,
                                                                      "w": -0.990825217683607
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
                                          "_$id": "11hsbkpi",
                                          "_$type": "Sprite3D",
                                          "name": "R_Clavicle",
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
                                              "_$id": "n50mg9fg",
                                              "_$type": "Sprite3D",
                                              "name": "R_UpperArm",
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
                                                  "_$id": "04pxrf0g",
                                                  "_$type": "Sprite3D",
                                                  "name": "R_Forearm",
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
                                                      "_$id": "m69jwi37",
                                                      "_$type": "Sprite3D",
                                                      "name": "R_Hand",
                                                      "transform": {
                                                        "localPosition": {
                                                          "_$type": "Vector3",
                                                          "x": 10.82555,
                                                          "y": 4.455054e-7,
                                                          "z": -7.548039e-7
                                                        },
                                                        "localRotation": {
                                                          "_$type": "Quaternion",
                                                          "x": -0.5791631079279125,
                                                          "y": -0.010741590147036966,
                                                          "z": 0.18884720258504742,
                                                          "w": -0.7929637108545362
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
                                                          "_$id": "eg61ag59",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Index1",
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
                                                              "_$id": "t9ic32wp",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Index2",
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
                                                                  "_$id": "lql0myd0",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Index3",
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
                                                          "_$id": "xksc1ds6",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Middle1",
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
                                                              "_$id": "f76elsxy",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Middle2",
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
                                                                  "_$id": "cyx02il7",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Middle3",
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
                                                          "_$id": "0o7vpxlc",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Pinky1",
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
                                                              "_$id": "jw626ann",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Pinky2",
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
                                                                  "_$id": "r4j145wd",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Pinky3",
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
                                                          "_$id": "f5aehkny",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Ring1",
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
                                                              "_$id": "ulz26nqo",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Ring2",
                                                              "transform": {
                                                                "localPosition": {
                                                                  "_$type": "Vector3",
                                                                  "x": 1.403336,
                                                                  "y": 0.000003562375,
                                                                  "z": 8.684979e-7
                                                                },
                                                                "localRotation": {
                                                                  "_$type": "Quaternion",
                                                                  "x": -2.497239851456624e-9,
                                                                  "y": 1.3441439200462561e-8,
                                                                  "z": -0.23589008596854455,
                                                                  "w": -0.971779742195603
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
                                                                  "_$id": "w6vx3lry",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Ring3",
                                                                  "transform": {
                                                                    "localPosition": {
                                                                      "_$type": "Vector3",
                                                                      "x": 1.388262,
                                                                      "y": -2.602473e-7,
                                                                      "z": 1.204491e-7
                                                                    },
                                                                    "localRotation": {
                                                                      "_$type": "Quaternion",
                                                                      "x": -1.506814917398669e-8,
                                                                      "y": -1.6476659096774289e-9,
                                                                      "z": -0.1135931937729917,
                                                                      "w": -0.9935273455363227
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
                                                          "_$id": "lwijdk9c",
                                                          "_$type": "Sprite3D",
                                                          "name": "R_Thumb1",
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
                                                              "_$id": "hi445bih",
                                                              "_$type": "Sprite3D",
                                                              "name": "R_Thumb2",
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
                                                                  "_$id": "s7eq2i5y",
                                                                  "_$type": "Sprite3D",
                                                                  "name": "R_Thumb3",
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
          "_$id": "e74cf4gh",
          "_$type": "Sprite3D",
          "name": "Plane",
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
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        },
        {
          "_$id": "ue4ndtj0",
          "_$type": "Sprite3D",
          "name": "Cube",
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
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        },
        {
          "_$id": "nslydcc9",
          "_$type": "Sprite3D",
          "name": "Sphere",
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
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        },
        {
          "_$id": "ix86rnpi",
          "_$type": "Sprite3D",
          "name": "Capsule",
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
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        },
        {
          "_$id": "f1cg6tfl",
          "_$type": "Sprite3D",
          "name": "Cylinder",
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
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "52b874aa-9ef9-4afc-bd1a-c4972d864dc1",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "collisionGroup": 1,
              "canCollideWith": -1
            }
          ]
        }
      ]
    }
  ]
}