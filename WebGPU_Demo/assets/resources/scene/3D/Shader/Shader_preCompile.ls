{
  "_$ver": 1,
  "_$id": "viufaicx",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "78840c86-e0dd-449e-a496-cb250eaa17c7",
      "scriptPath": "../src/3D/Shader/Shader_preCompile.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "directionLight": {
        "_$ref": "6ni3p096l5"
      },
      "showIsPreCompile": {
        "_$ref": "5ejo25ly"
      },
      "reloadScene": {
        "_$ref": "bv3k5uhs"
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
              "y": 0.81,
              "z": -1.85
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -9.050715159916223e-18,
              "y": 0.9890158656837015,
              "z": 0.14780939559418574,
              "w": 6.055975571077468e-17
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
              "x": -0.4082178943749966,
              "y": 0.23456971479463096,
              "z": 0.10938165234066698,
              "w": 0.8754260983911978
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
        }
      ]
    },
    {
      "_$id": "5ejo25ly",
      "_$type": "Label",
      "name": "Label",
      "x": 85,
      "y": 41,
      "width": 120,
      "height": 28,
      "text": "需要查看控制台打印的Shader编译信息",
      "fontSize": 20,
      "color": "rgba(245, 65, 65, 1)",
      "valign": "top",
      "padding": "0,0,0,0"
    },
    {
      "_$id": "bv3k5uhs",
      "_$type": "Button",
      "name": "Button",
      "x": 161,
      "y": 613,
      "width": 120,
      "height": 40,
      "visible": false,
      "_mouseState": 2,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "是否编译",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    }
  ]
}