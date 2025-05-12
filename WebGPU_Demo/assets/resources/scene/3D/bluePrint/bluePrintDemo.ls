{
  "_$ver": 1,
  "_$id": "rpjr4ab8",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "a1e017bb-a350-4179-99b3-45dbf377c52b",
      "scriptPath": "../src/3D/bulePrint/bluePrintDemo.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "directionLight": {
        "_$ref": "6ni3p096l5"
      },
      "btn": {
        "_$ref": "efpoyxsk"
      },
      "btnShader": {
        "_$ref": "mbwxof4l"
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
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.32664087414741516,
          0.6582804322242737,
          1.0937315225601196,
          0.17162030935287476,
          0.21920692920684814,
          0.24049592018127441,
          0.09780493378639221,
          0.08478108048439026,
          0.048477452248334885,
          -0.07833477109670639,
          -0.06755927205085754,
          -0.03844846785068512,
          -0.04766345024108887,
          -0.03491285443305969,
          -0.012813261710107327,
          0.060916051268577576,
          0.04503144696354866,
          0.016025176271796227,
          0.008677678182721138,
          0.014294827356934547,
          0.018591856583952904,
          -0.031042827293276787,
          -0.02362092211842537,
          -0.012343129143118858,
          0.01827741600573063,
          0.03670955449342728,
          0.05251257121562958
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "iblTex": {
        "_$uuid": "38636a76-7b97-422b-bea7-830cd7ed7919",
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
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1,
              "z": 5
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
          "_$id": "58j2nc5g",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2,
              "y": 0.3
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
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "efpoyxsk",
      "_$type": "Button",
      "name": "Button",
      "x": 377,
      "y": 492,
      "width": 171,
      "height": 51,
      "_mouseState": 2,
      "centerX": -258,
      "centerY": 177,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "使用蓝图材质",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "mbwxof4l",
      "_$type": "Button",
      "name": "Button(1)",
      "x": 795,
      "y": 493,
      "width": 171,
      "height": 51,
      "_mouseState": 2,
      "centerX": 160,
      "centerY": 178,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "使用蓝图shader",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    }
  ]
}