{
  "_$ver": 1,
  "_$id": "jic660ng",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1920,
  "height": 1080,
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
          "_$type": "0325560a-075b-4d46-b8b0-3a04bd41d4eb",
          "scriptPath": "../src/3D/GCA/GCA_WebGPU.ts",
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
            "_$ref": "usuirq8r"
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
              "x": -0.06438292521140024,
              "y": -0.8717404529767894,
              "z": -0.11919540728241522,
              "w": 0.47086715373640653
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
      "_$id": "usuirq8r",
      "_$type": "Label",
      "name": "Label",
      "x": 586,
      "y": 54,
      "width": 120,
      "height": 28,
      "text": "Label",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}