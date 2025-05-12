{
  "_$ver": 1,
  "_$id": "dsfrsxsl",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "8f4a5998-a1d2-4a48-9184-2337bffd7946",
      "scriptPath": "../src/3D/LOD/LODDemo.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "directionLight": {
        "_$ref": "6ni3p096l5"
      },
      "hSlider": {
        "_$ref": "le6v2h2q"
      },
      "speed": 2
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
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.962137986128699,
              "y": 3.9917454334788722,
              "z": 2.6760485429067202
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.13404929052503228,
              "y": 0.35163835046673747,
              "z": 0.05095401745436194,
              "w": 0.9250864534172081
            }
          },
          "nearPlane": 0.01,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          }
        },
        {
          "_$id": "6ni3p096l5",
          "_$type": "Sprite3D",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5,
              "y": 5,
              "z": 5
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
              "color": {
                "_$type": "Color",
                "r": 0.6,
                "g": 0.6,
                "b": 0.6
              }
            }
          ]
        },
        {
          "_$id": "7kbn7eww",
          "_$type": "Sprite3D",
          "name": "grass",
          "transform": {
            "localScale": {
              "_$type": "Vector3",
              "x": 50,
              "y": 50,
              "z": 50
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
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
                  "_$uuid": "2460c262-4754-4086-83ce-a66b76ab5f41",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "c21kge0x",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01",
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
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            }
          },
          "_$comp": [
            {
              "_$type": "LODGroup",
              "lods": [
                {
                  "_$type": "LODInfo",
                  "mincullRate": 0.791044776119403,
                  "renders": [
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#44"
                      ]
                    },
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#48"
                      ]
                    }
                  ]
                },
                {
                  "_$type": "LODInfo",
                  "mincullRate": 0.5458422174840085,
                  "renders": [
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#45"
                      ]
                    },
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#49"
                      ]
                    }
                  ]
                },
                {
                  "_$type": "LODInfo",
                  "mincullRate": 0.28358208955223885,
                  "renders": [
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#46"
                      ]
                    },
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#50"
                      ]
                    }
                  ]
                },
                {
                  "_$type": "LODInfo",
                  "mincullRate": 0.20469083155650325,
                  "renders": [
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#47"
                      ]
                    },
                    {
                      "_$ref": [
                        "c21kge0x",
                        "#51"
                      ]
                    }
                  ]
                }
              ]
            }
          ],
          "_$child": [
            {
              "_$override": "#43",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3"
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 8.146034247147299e-8,
                  "w": 0.9999999999999967
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 0.02539999969303608,
                  "y": 0.02539999969303608,
                  "z": 0.02539999969303608
                }
              }
            },
            {
              "_$override": "#44",
              "active": true
            },
            {
              "_$override": "#45",
              "active": true
            },
            {
              "_$override": "#46",
              "active": true
            },
            {
              "_$override": "#47",
              "active": true
            },
            {
              "_$override": "#48",
              "active": true
            },
            {
              "_$override": "#49",
              "active": true
            },
            {
              "_$override": "#50",
              "active": true
            },
            {
              "_$override": "#52",
              "active": false
            }
          ]
        }
      ]
    },
    {
      "_$id": "le6v2h2q",
      "_$type": "VSlider",
      "name": "VSlider",
      "x": 1269,
      "y": 149,
      "width": 42,
      "height": 383,
      "_mouseState": 2,
      "right": 129,
      "centerY": 0,
      "skin": "res://fc3bb457-8d97-4456-b6b6-304c6b064689"
    }
  ]
}