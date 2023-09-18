{
  "_$ver": 1,
  "_$id": "7ut6j7h0",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "mouseThrough": true,
  "_$comp": [
    {
      "_$type": "f243b4bd-0fe2-416c-a7a9-301c361c4296",
      "scriptPath": "../src/3D/Show/GunDemo.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "b79e2bca-62bc-48a7-9972-d48f6e8e6c7c",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.4367322027683258,
          0.5088143944740295,
          0.5880253314971924,
          -0.030109524726867676,
          0.011922460980713367,
          0.07460954040288925,
          0.04543987661600113,
          0.04254283010959625,
          0.03736990690231323,
          -0.030047282576560974,
          -0.028107328340411186,
          -0.02153661847114563,
          -0.013620591722428799,
          -0.011460301466286182,
          -0.006011615972965956,
          0.006998687982559204,
          0.00580591382458806,
          0.0029105585999786854,
          0.013877342455089092,
          0.014697081409394741,
          0.013312381692230701,
          -0.00909782201051712,
          -0.007941190153360367,
          -0.006651977077126503,
          0.04482651129364967,
          0.04692162573337555,
          0.04201839864253998
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.8565891472868217,
        "g": 0.8565891472868217,
        "b": 0.8565891472868217
      },
      "ambientIntensity": 0.6,
      "_reflectionsIblSamples": 128,
      "reflectionIntensity": 1.5,
      "iblTex": {
        "_$uuid": "a9467b0b-470e-4790-ba73-81d04dfcd310",
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
        "b": 0.5
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "6229de8d-951d-4822-aee3-bd637efd8d15",
            "_$type": "Texture2D"
          }
        },
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "47719d90-e851-443b-91a3-70a05a60b9a5",
            "_$type": "Texture2D"
          }
        }
      ],
      "lightingSettings": {
        "_$uuid": "d4f3d65d-e730-44da-bbea-91966848bdb8",
        "_$type": "LightingSettings"
      },
      "_device": "CUDA",
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.3105689974438258,
              "y": 0.13283394997278156,
              "z": 0.013114404509987113
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.13193823628328888,
              "y": 0.6520215989180368,
              "z": 0.11665197203562587,
              "w": 0.7374635270784728
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1.0000000263461393,
              "y": 0.9999999636731748,
              "z": 1.0000000167867436
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 90,
          "nearPlane": 0.01,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0,
            "g": 0,
            "b": 0
          },
          "enableHDR": true,
          "msaa": true,
          "fxaa": true,
          "cullingMask": 2147483647,
          "postProcess": {
            "_$type": "PostProcess",
            "_isGlobal": true,
            "effects": [
              {
                "_$type": "ScalableAO",
                "singleton": false,
                "active": false,
                "aoColor": {
                  "_$type": "Color",
                  "r": 0.09689922480620151,
                  "g": 0.09689922480620151,
                  "b": 0.09689922480620151
                },
                "intensity": 1,
                "radius": 0.2
              },
              {
                "_$type": "BloomEffect",
                "clamp": 65472.9,
                "color": {
                  "_$type": "Color"
                },
                "dirtIntensity": 0,
                "softKnee": 0.713,
                "diffusion": 5.005,
                "anamorphicRatio": -0.312
              },
              {
                "_$type": "ColorGradEffect",
                "toneMapping": 1,
                "lift": {
                  "_$type": "Vector3"
                },
                "gamma": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "gain": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "enableColorAdjust": true,
                "postExposure": 1.2,
                "contrast": 1,
                "colorFilter": {
                  "_$type": "Color"
                },
                "HueShift": 0,
                "saturation": 1.2,
                "temperature": 0,
                "tint": 0,
                "shadows": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "midtones": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "highlights": {
                  "_$type": "Vector3",
                  "x": 1,
                  "y": 1,
                  "z": 1
                },
                "shadowLimitStart": 0,
                "shadowLimitEnd": 0.33,
                "highLightLimitStart": 0.55,
                "highLightLimitEnd": 1,
                "splitShadow": {
                  "_$type": "Vector3",
                  "x": 0.5,
                  "y": 0.5,
                  "z": 0.5
                },
                "splithighlights": {
                  "_$type": "Vector3",
                  "x": 0.5,
                  "y": 0.5,
                  "z": 0.5
                },
                "splitBalance": 0
              }
            ]
          },
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureMode": 3,
          "depthTextureFormat": 35
        },
        {
          "_$id": "6ni3p096l5",
          "_$type": "DirectionLight",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.27941438651672795,
              "y": 0.14820631580244473,
              "z": 0.42379198274569113
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.40821789367673483,
              "y": 0.23456971600980447,
              "z": 0.109381654946615,
              "w": 0.875426098065593
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
          "_$id": "mn8v4enq",
          "_$prefab": "6c128cd3-8183-46c8-9c2c-8c3055c9179c",
          "name": "Gun",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.11049762234907251,
              "y": -0.12085566281034192,
              "z": 0.25059129024900306,
              "w": 0.9541426462920598
            }
          },
          "isStatic": true,
          "_$child": [
            {
              "_$override": "#39",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.547,
                    "w": 0.188
                  },
                  "renderMode": 0
                }
              ]
            },
            {
              "_$override": "#40",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.047,
                    "y": 0.047,
                    "z": 0.438,
                    "w": 0.594
                  }
                }
              ]
            },
            {
              "_$override": "#41",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.25,
                    "w": 0.469
                  }
                }
              ]
            },
            {
              "_$override": "#42",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.016,
                    "y": 0.031,
                    "z": 0.25,
                    "w": 0.328
                  }
                }
              ]
            },
            {
              "_$override": "#43",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "1b0d3ffa-2c79-4b80-91c6-f1f09473931e",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.875,
                    "w": 0.375
                  }
                }
              ]
            },
            {
              "_$override": "#44",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "1b0d3ffa-2c79-4b80-91c6-f1f09473931e",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.375,
                    "w": 0.375
                  }
                }
              ]
            },
            {
              "_$override": "#45",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "1b0d3ffa-2c79-4b80-91c6-f1f09473931e",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.875,
                    "w": 0.875
                  }
                }
              ]
            },
            {
              "_$override": "#46",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "1b0d3ffa-2c79-4b80-91c6-f1f09473931e",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 1,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.375,
                    "w": 0.875
                  }
                }
              ]
            },
            {
              "_$override": "#47",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.156,
                    "y": 0.156,
                    "z": 0.328,
                    "w": 0.063
                  }
                }
              ]
            },
            {
              "_$override": "#48",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.641,
                    "w": 0.297
                  }
                }
              ]
            },
            {
              "_$override": "#49",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.063,
                    "w": 0.516
                  }
                }
              ]
            },
            {
              "_$override": "#50",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.375,
                    "w": 0.469
                  }
                }
              ]
            },
            {
              "_$override": "#51",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.5,
                    "w": 0.469
                  }
                }
              ]
            },
            {
              "_$override": "#52",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.516,
                    "w": 0.281
                  }
                }
              ]
            },
            {
              "_$override": "#53",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.547,
                    "w": 0.063
                  }
                }
              ]
            },
            {
              "_$override": "#54",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.063,
                    "w": 0.641
                  }
                }
              ]
            },
            {
              "_$override": "#55",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.047,
                    "y": 0.047,
                    "z": 0.547,
                    "w": 0.594
                  }
                }
              ]
            },
            {
              "_$override": "#56",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.328,
                    "w": 0.281
                  }
                }
              ]
            },
            {
              "_$override": "#57",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.125,
                    "y": 0.125,
                    "z": 0.063,
                    "w": 0.328
                  }
                }
              ]
            },
            {
              "_$override": "#58",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.656,
                    "w": 0.516
                  }
                }
              ]
            },
            {
              "_$override": "#59",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.188,
                    "w": 0.594
                  }
                }
              ]
            },
            {
              "_$override": "#60",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.656,
                    "w": 0.609
                  }
                }
              ]
            },
            {
              "_$override": "#61",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.047,
                    "y": 0.031,
                    "z": 0.672,
                    "w": 0.063
                  }
                }
              ]
            },
            {
              "_$override": "#62",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.047,
                    "y": 0.047,
                    "z": 0.625,
                    "w": 0.406
                  }
                }
              ]
            },
            {
              "_$override": "#63",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.047,
                    "y": 0.047,
                    "z": 0.641,
                    "w": 0.188
                  }
                }
              ]
            },
            {
              "_$override": "#64",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.438,
                    "w": 0.703
                  }
                }
              ]
            },
            {
              "_$override": "#65",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.063,
                    "y": 0.063,
                    "z": 0.313,
                    "w": 0.594
                  }
                }
              ]
            },
            {
              "_$override": "#66",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.188,
                    "w": 0.719
                  }
                }
              ]
            },
            {
              "_$override": "#67",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.063,
                    "w": 0.766
                  }
                }
              ]
            },
            {
              "_$override": "#68",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.281,
                    "w": 0.719
                  }
                }
              ]
            },
            {
              "_$override": "#69",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.531,
                    "w": 0.703
                  }
                }
              ]
            },
            {
              "_$override": "#70",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.031,
                    "y": 0.031,
                    "z": 0.625,
                    "w": 0.703
                  }
                }
              ]
            },
            {
              "_$override": "#71",
              "isStatic": true,
              "_$comp": [
                {
                  "_$override": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "7cebc06f-56fa-46ca-b11d-9c728ceb22c0",
                      "_$type": "Material"
                    }
                  ],
                  "lightmapIndex": 0,
                  "lightmapScaleOffset": {
                    "_$type": "Vector4",
                    "x": 0.203,
                    "y": 0.203,
                    "z": 0.063,
                    "w": 0.063
                  },
                  "renderMode": 0
                }
              ]
            }
          ]
        },
        {
          "_$id": "haqjlq4o",
          "_$type": "Sprite3D",
          "name": "Probe",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -4.429896354675293,
              "y": -1.534625792074995,
              "z": 0.6769825220108032
            }
          },
          "_$comp": [
            {
              "_$type": "ReflectionProbe",
              "boundsMin": {
                "_$type": "Vector3",
                "x": -5,
                "y": -5,
                "z": -5
              },
              "boundsMax": {
                "_$type": "Vector3",
                "x": 5,
                "y": 5,
                "z": 5
              },
              "importance": 1,
              "ambientMode": 1,
              "ambientIntensity": 0.2,
              "ambientColor": {
                "_$type": "Color"
              },
              "reflectionIntensity": 5,
              "farPlane": 1000,
              "nearPlane": 0.3,
              "cullingMask": 0,
              "clearFlag": 1,
              "resolution": 256,
              "ambientSH": {
                "_$type": "Float32Array",
                "value": [
                  0.4366506338119507,
                  0.5086979269981384,
                  0.5878753066062927,
                  -0.03015914000570774,
                  0.01185138151049614,
                  0.0745178684592247,
                  0.04546419903635979,
                  0.04257741570472717,
                  0.03741423785686493,
                  -0.029900798574090004,
                  -0.027898084372282028,
                  -0.021267207339406013,
                  -0.013543622568249702,
                  -0.011350066401064396,
                  -0.005869441200047731,
                  0.007011348847299814,
                  0.0058239782229065895,
                  0.0029337829910218716,
                  0.013897356577217579,
                  0.014725707471370697,
                  0.013349266722798347,
                  -0.009135519154369831,
                  -0.007994701154530048,
                  -0.006720720324665308,
                  0.04477621987462044,
                  0.046849943697452545,
                  0.041926104575395584
                ]
              },
              "_reflectionsIblSamples": 128,
              "iblTex": {
                "_$uuid": "92cb4b97-1055-4d9f-b318-1c531e701b47",
                "_$type": "TextureCube"
              },
              "iblTexRGBD": true
            }
          ]
        },
        {
          "_$id": "gsw2pwwy",
          "_$type": "Sprite3D",
          "name": "SpotLight",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.022472517813513365,
              "y": 0.09414193354553693,
              "z": -0.20013030886034422
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.9812926639922451,
              "w": 0.19252196652590745
            }
          },
          "_$comp": [
            {
              "_$type": "SpotLightCom",
              "intensity": 1,
              "lightmapBakedType": 1,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "range": 50,
              "spotAngle": 49,
              "power": 10,
              "radius": 18.62,
              "maxBounces": 1024,
              "blend": 0.15
            }
          ]
        }
      ]
    }
  ]
}