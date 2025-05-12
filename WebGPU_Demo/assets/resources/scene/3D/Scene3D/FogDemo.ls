{
  "_$ver": 1,
  "_$id": "vojj6nyg",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "c9c2bea8-c9a8-4977-a02d-2e9cffffed16",
      "scriptPath": "../src/3D/Scene3D/FogScene.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "slider": {
        "_$ref": "ceohd0iy"
      },
      "speed": 3,
      "fogEnableBTN": {
        "_$ref": "aj3on5rn"
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
      "enableFog": true,
      "fogMode": 1,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.05,
      "fogColor": {
        "_$type": "Color",
        "r": 0.4108527131782945,
        "g": 0.394928189411694,
        "b": 0.394928189411694
      },
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.704435197918973,
              "y": 6.520624547641282,
              "z": 17.67024958496145
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.09617581460400056,
              "y": 0.13421426637715436,
              "z": 0.013088959959040988,
              "w": 0.986187316138922
            }
          },
          "nearPlane": 0.3,
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
          "_$id": "bk86yu1m",
          "_$type": "Sprite3D",
          "name": "Plane",
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
          "_$id": "4hw243vo",
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
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "3q45nt2g",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(1)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.501071929931641,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
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
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "6mkz5svn",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(2)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 8.845952952595301,
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
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "jm9jovep",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(3)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 13.347024882526943,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
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
              "_$override": "#52",
              "active": false
            }
          ]
        }
      ]
    },
    {
      "_$id": "ceohd0iy",
      "_$type": "VSlider",
      "name": "VSlider",
      "x": 1263,
      "y": 140,
      "width": 52,
      "height": 400,
      "_mouseState": 2,
      "right": 125,
      "centerY": 0,
      "skin": "res://fc3bb457-8d97-4456-b6b6-304c6b064689"
    },
    {
      "_$id": "aj3on5rn",
      "_$type": "Button",
      "name": "Button",
      "x": 660,
      "y": 71,
      "width": 120,
      "height": 40,
      "_mouseState": 2,
      "top": 71,
      "centerX": 0,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "关闭雾效",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    }
  ]
}