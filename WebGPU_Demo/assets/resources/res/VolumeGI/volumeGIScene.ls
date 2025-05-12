{
  "_$ver": 1,
  "_$id": "tayawr8s",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "llan4ouw",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "18685de7-320e-40ef-9e83-77a618990f21",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.18212781846523285,
          0.18212781846523285,
          0.18212781846523285,
          -7.852936967367441e-9,
          -7.852936967367441e-9,
          -7.852936967367441e-9,
          0,
          0,
          0,
          6.556954978975682e-9,
          6.556954978975682e-9,
          6.556954978975682e-9,
          0,
          0,
          0,
          -1.5815829756959943e-9,
          -1.5815829756959943e-9,
          -1.5815829756959943e-9,
          3.7409458286674635e-7,
          3.7409458286674635e-7,
          3.7409458286674635e-7,
          -1.071690028386918e-10,
          -1.071690028386918e-10,
          -1.071690028386918e-10,
          2.57497760003389e-7,
          2.57497760003389e-7,
          2.57497760003389e-7
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 1024,
      "iblTex": {
        "_$uuid": "89ff20e5-6398-491d-aa46-14afb56fbf9f",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "6e8b7049-b4f0-4e19-bab0-650894685829",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "e076ddd8-83d7-4eda-a93d-27d5864fbc21",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "11547c7d-8d1d-43f6-a06d-13439f58cdfb",
            "_$type": "Texture2D"
          }
        }
      ],
      "lightingSettings": {
        "_$uuid": "758d6e34-209a-4659-9663-e552133cf7a1",
        "_$type": "LightingSettings"
      },
      "_device": "CUDA",
      "_$child": [
        {
          "_$id": "1nrhz961",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5.772246050156608,
              "y": 0.6861721357343447,
              "z": 16.2317169125737
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.018322778608452783,
              "y": -0.017449512779137057,
              "z": -0.000319826077356288,
              "w": 0.9996797927332116
            }
          },
          "nearPlane": 1,
          "farPlane": 100,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "t2ti48y8",
          "_$type": "Sprite3D",
          "name": "have'GI",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5.518707700624846
            }
          },
          "_$child": [
            {
              "_$id": "1zfdsnr8",
              "_$type": "Sprite3D",
              "name": "enviroment",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -4
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              },
              "_$child": [
                {
                  "_$id": "todgfdbl",
                  "_$type": "Sprite3D",
                  "name": "top",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 4
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 0.1,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.0039
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "lhtmnzl3",
                  "_$type": "Sprite3D",
                  "name": "button",
                  "isStatic": true,
                  "transform": {
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 0.1,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.4063
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "5qgfy6ma",
                  "_$type": "Sprite3D",
                  "name": "left",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2,
                      "y": 2
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.0039
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "10cb5833-b559-44c0-807d-24c366700852",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "w7oyuaov",
                  "_$type": "Sprite3D",
                  "name": "right",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2,
                      "y": 2
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.4063
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "37956a99-8f3f-406e-9072-7c2d2b52b425",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "jmiefcqe",
                  "_$type": "Sprite3D",
                  "name": "back",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 2,
                      "z": -2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.007889285307786013,
                      "y": 0.7088878138119261,
                      "z": -0.006705578454005026,
                      "w": 0.7052452494160294
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                        "x": 0.9941,
                        "y": 0.6406,
                        "z": 0.0059,
                        "w": 0.0059
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "i3xj1dsj",
                  "_$type": "Sprite3D",
                  "name": "SpotLight",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.063449501991272,
                      "z": 0.07810007780790329
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071067811865475,
                      "w": 0.7071067811865476
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
                      "_$type": "SpotLightCom",
                      "lightmapBakedType": 2,
                      "shadowCascadesMode": null,
                      "spotAngle": 48.83590274966026,
                      "power": 5000,
                      "radius": 0.25,
                      "maxBounces": 1024,
                      "blend": 0.15
                    }
                  ]
                },
                {
                  "_$id": "j4evvedp",
                  "_$type": "LightSprite",
                  "name": "Direction Light",
                  "active": false,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.5,
                      "y": 4.5,
                      "z": 2.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.482732808531683,
                      "y": 0.20124254297782115,
                      "z": 0.050772377957850584,
                      "w": 0.8508188056804095
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5000000061504419,
                      "y": 0.5000000113769384,
                      "z": 0.5000000119449671
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "DirectionLightCom",
                      "color": {
                        "_$type": "Color",
                        "r": 0.6,
                        "g": 0.6,
                        "b": 0.6
                      },
                      "shadowMode": 1,
                      "shadowDistance": 25,
                      "strength": 1,
                      "angle": 0.526,
                      "maxBounces": 1024
                    }
                  ]
                },
                {
                  "_$id": "m7pxy77t",
                  "_$type": "Sprite3D",
                  "name": "PointLight",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.3679371601912824,
                      "y": 3.035158349987586,
                      "z": 1.561865462394088
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "PointLightCom",
                      "color": {
                        "_$type": "Color",
                        "g": 0.8818748807907175,
                        "b": 0
                      },
                      "lightmapBakedType": 0,
                      "shadowCascadesMode": null,
                      "power": 200,
                      "radius": 0.01,
                      "maxBounces": 1024
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "xlr2a8ha",
              "_$type": "Sprite3D",
              "name": "volumeGI",
              "_$comp": [
                {
                  "_$type": "VolumetricGI",
                  "boundsMin": {
                    "_$type": "Vector3",
                    "x": -4,
                    "y": -4,
                    "z": -4
                  },
                  "boundsMax": {
                    "_$type": "Vector3",
                    "x": 4,
                    "y": 4,
                    "z": 4
                  },
                  "importance": 1,
                  "probeCounts": {
                    "_$type": "Vector3",
                    "x": 8,
                    "y": 8,
                    "z": 8
                  },
                  "probeStep": {
                    "_$type": "Vector3",
                    "x": 1,
                    "y": 1,
                    "z": 1
                  },
                  "normalBias": 1,
                  "viewBias": 1,
                  "irradiance": {
                    "_$uuid": "12721d67-7d09-43c6-bd04-54f28b6217c0",
                    "_$type": "Texture2D"
                  },
                  "distance": {
                    "_$uuid": "a694aeec-3404-4694-9083-533db8969fa9",
                    "_$type": "Texture2D"
                  }
                }
              ]
            },
            {
              "_$id": "dt4x4eg7",
              "_$type": "Sprite3D",
              "name": "dynamic",
              "_$child": [
                {
                  "_$id": "mxs585kt",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.4376903490179362,
                      "y": -2.7149695146088435,
                      "z": 3.0193650731713904
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.21038934625677375,
                      "w": 0.9776176773062399
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.5811168443474384,
                      "y": 1.5811168443474384,
                      "z": 1.5811168443474384
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                          "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ],
                  "_$child": [
                    {
                      "_$id": "wdtmf31b",
                      "_$type": "Sprite3D",
                      "name": "Sphere",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.19338490462111935,
                          "y": 0.9753657762085055,
                          "z": -0.6668272544296512
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
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "_$id": "v5h08iu1",
                      "_$type": "Sprite3D",
                      "name": "Sphere(1)",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.4744474550064868,
                          "y": 0.03824715538399914,
                          "z": 1.5683028974778441
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
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "e520rn8n",
                  "_$type": "Sprite3D",
                  "name": "Cube(1)",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.0097504965860216,
                      "y": -1.4892345915253453,
                      "z": -0.3729649431675912
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.5811168443474384,
                      "y": 3.8590811310807025,
                      "z": 1.5811168443474384
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                          "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "bdlmzu4u",
                  "_$prefab": "e860b0f8-e375-40f8-a61c-68dfb464ed1c",
                  "name": "untitled",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.277734689560223,
                      "y": -4.857870101928711,
                      "z": 2.789778470993042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0,
                      "y": 0,
                      "z": 0,
                      "w": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#39",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 1.97399,
                          "y": 1.95143,
                          "z": -1.4853541851043701
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071068407911895,
                          "w": -0.7071067215819006
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
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ],
                          "lightmapIndex": -1
                        },
                        {
                          "_$type": "Animator",
                          "controller": {
                            "_$uuid": "128fa800-7725-4931-86b3-07c2ea39a233",
                            "_$type": "AnimationController"
                          },
                          "controllerLayers": [
                            {
                              "_$type": "AnimatorControllerLayer",
                              "name": "Base Layer",
                              "states": [
                                {
                                  "_$type": "AnimatorState",
                                  "name": "dynamic",
                                  "_isLooping": 1,
                                  "speed": 0.5,
                                  "clipStart": 0,
                                  "clip": {
                                    "_$uuid": "be1a771c-19b8-47c6-bc07-e12537f03e74",
                                    "_$type": "AnimationClip"
                                  },
                                  "soloTransitions": []
                                }
                              ],
                              "defaultStateName": "dynamic"
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
          "_$id": "s1z7zr9d",
          "_$type": "Sprite3D",
          "name": "don'thaveGI",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 10.953419446585736
            }
          },
          "_$child": [
            {
              "_$id": "5k9o7e4v",
              "_$type": "Sprite3D",
              "name": "enviroment",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -4
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              },
              "_$child": [
                {
                  "_$id": "b0l25jbt",
                  "_$type": "Sprite3D",
                  "name": "top",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 4
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 0.1,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.0039
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "g9hapm3j",
                  "_$type": "Sprite3D",
                  "name": "button",
                  "isStatic": true,
                  "transform": {
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 0.1,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.4063
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "8snzq7wo",
                  "_$type": "Sprite3D",
                  "name": "left",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2,
                      "y": 2
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.0039
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "10cb5833-b559-44c0-807d-24c366700852",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "9ue1hs2y",
                  "_$type": "Sprite3D",
                  "name": "right",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2,
                      "y": 2
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.6172,
                        "y": 0.3984,
                        "z": 0.0039,
                        "w": 0.4063
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "37956a99-8f3f-406e-9072-7c2d2b52b425",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "smzqgjzo",
                  "_$type": "Sprite3D",
                  "name": "back",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 2,
                      "z": -2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.007889285307786013,
                      "y": 0.7088878138119261,
                      "z": -0.006705578454005026,
                      "w": 0.7052452494160294
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.1,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "lightmapScaleOffset": {
                        "_$type": "Vector4",
                        "x": 0.9941,
                        "y": 0.6406,
                        "z": 0.0059,
                        "w": 0.0059
                      },
                      "sharedMaterials": [
                        {
                          "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "axjdptcx",
                  "_$type": "Sprite3D",
                  "name": "SpotLight",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 1.063449501991272,
                      "z": 0.07810007780790329
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.7071067811865475,
                      "w": 0.7071067811865476
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
                      "_$type": "SpotLightCom",
                      "lightmapBakedType": 2,
                      "shadowCascadesMode": null,
                      "spotAngle": 48.83590274966026,
                      "power": 5000,
                      "radius": 0.25,
                      "maxBounces": 1024,
                      "blend": 0.15
                    }
                  ]
                },
                {
                  "_$id": "vjuadc9o",
                  "_$type": "LightSprite",
                  "name": "Direction Light",
                  "active": false,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.5,
                      "y": 4.5,
                      "z": 2.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": -0.4827328085316831,
                      "y": 0.2012425429778212,
                      "z": 0.0507723779578506,
                      "w": 0.8508188056804097
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 0.5000000061504419,
                      "y": 0.5000000113769384,
                      "z": 0.5000000119449671
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "DirectionLightCom",
                      "color": {
                        "_$type": "Color",
                        "r": 0.6,
                        "g": 0.6,
                        "b": 0.6
                      },
                      "shadowMode": 1,
                      "shadowDistance": 25,
                      "strength": 1,
                      "angle": 0.526,
                      "maxBounces": 1024
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "z8148jlr",
              "_$type": "Sprite3D",
              "name": "dynamic",
              "_$child": [
                {
                  "_$id": "g3m5rvpf",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2.4376903490179362,
                      "y": -2.7149695146088435,
                      "z": 3.0193650731713904
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 0.21038934625677375,
                      "w": 0.9776176773062399
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.5811168443474384,
                      "y": 1.5811168443474384,
                      "z": 1.5811168443474384
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                          "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ],
                  "_$child": [
                    {
                      "_$id": "ozm1r7wp",
                      "_$type": "Sprite3D",
                      "name": "Sphere",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.19338490462111935,
                          "y": 0.9753657762085055,
                          "z": -0.6668272544296512
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
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "_$id": "jwpbo2eo",
                      "_$type": "Sprite3D",
                      "name": "Sphere(1)",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.4744474550064868,
                          "y": 0.03824715538399914,
                          "z": 1.5683028974778441
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
                          "lightmapScaleOffset": {
                            "_$type": "Vector4"
                          },
                          "sharedMaterials": [
                            {
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "rrqzprxv",
                  "_$type": "Sprite3D",
                  "name": "Cube(1)",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 2.0097504965860216,
                      "y": -1.4892345915253453,
                      "z": -0.3729649431675912
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 1.5811168443474384,
                      "y": 3.8590811310807025,
                      "z": 1.5811168443474384
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
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
                          "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                          "_$type": "Material"
                        }
                      ]
                    }
                  ]
                },
                {
                  "_$id": "y67gnsm1",
                  "_$prefab": "e860b0f8-e375-40f8-a61c-68dfb464ed1c",
                  "name": "untitled",
                  "active": true,
                  "layer": 0,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1.930316910147667,
                      "y": -4.857870101928711,
                      "z": 2.789778470993042
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0,
                      "y": 0,
                      "z": 0,
                      "w": 1
                    }
                  },
                  "_$child": [
                    {
                      "_$override": "#39",
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 2.1047522753985923,
                          "y": 1.951429843902588,
                          "z": -1.4853541851043701
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071068407911895,
                          "w": -0.7071067215819006
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
                              "_$uuid": "865c7f44-56e4-4bc7-b608-5a2468f3d2be",
                              "_$type": "Material"
                            }
                          ],
                          "lightmapIndex": -1
                        },
                        {
                          "_$type": "Animator",
                          "controller": {
                            "_$uuid": "128fa800-7725-4931-86b3-07c2ea39a233",
                            "_$type": "AnimationController"
                          },
                          "controllerLayers": [
                            {
                              "_$type": "AnimatorControllerLayer",
                              "name": "Base Layer",
                              "states": [
                                {
                                  "_$type": "AnimatorState",
                                  "name": "dynamic",
                                  "_isLooping": 1,
                                  "speed": 0.5,
                                  "clipStart": 0,
                                  "clip": {
                                    "_$uuid": "be1a771c-19b8-47c6-bc07-e12537f03e74",
                                    "_$type": "AnimationClip"
                                  },
                                  "soloTransitions": []
                                }
                              ],
                              "defaultStateName": "dynamic"
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