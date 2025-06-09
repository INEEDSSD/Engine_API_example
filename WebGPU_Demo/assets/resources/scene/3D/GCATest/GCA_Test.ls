{
  "_$ver": 1,
  "_$id": "hi235vdd",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1440,
  "height": 680,
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
      "_$comp": [
        {
          "_$type": "4ea77818-9a3a-44e5-bf0d-edd99b731c3b",
          "scriptPath": "../src/3D/GCA/GCA_Test.ts",
          "cam": {
            "_$ref": "6jx8h8bvc6"
          },
          "littleResCount": 400,
          "littleInstanceCount": 4,
          "someResCount": 100,
          "someInstanceCount": 16,
          "quaitResCount": 80,
          "quaitInstanceCount": 80,
          "largeResCount": 20,
          "largeInstanceCount": 500,
          "isDynamicChange": false,
          "preFrameChangeCount": 200,
          "insSpacing": 4,
          "tipLable": {
            "_$ref": "dja2d5bm"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -99.8021952,
              "y": 49.4481594,
              "z": 6.988694
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.06438292682020234,
              "y": -0.8717404528579703,
              "z": -0.11919540641342713,
              "w": 0.47086715395638234
            }
          },
          "nearPlane": 0.1,
          "farPlane": 3000,
          "clearColor": {
            "_$type": "Color",
            "r": 0,
            "g": 0,
            "b": 0
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
        }
      ]
    },
    {
      "_$id": "dja2d5bm",
      "_$type": "Label",
      "name": "Label",
      "x": 660,
      "y": 100,
      "width": 120,
      "height": 28,
      "top": 100,
      "centerX": 0,
      "text": "Label",
      "fontSize": 30,
      "color": "#f50000"
    }
  ]
}