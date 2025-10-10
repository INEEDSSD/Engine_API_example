{
  "_$ver": 1,
  "_$id": "x9ubnpfk",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1554,
  "height": 720,
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
              "x": -447.51185801524366,
              "y": 193.52632504891753,
              "z": 1040.2339044948117
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.17070940603666293,
              "y": 0.0892272055743226,
              "z": 0.015524557345506645,
              "w": 0.9811502395633573
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearColor": {
            "_$type": "Color",
            "r": 0.007751937984496138,
            "g": 0.007751937984496138,
            "b": 0.007751937984496138
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
          "_$id": "3yhcb945",
          "_$prefab": "cbbc35b2-8813-4f7e-b0ac-ebba4662f4e8",
          "name": "merge",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -230.66788828934585,
              "y": 120.63431768698716,
              "z": 533.8538109299445
            },
            "localRotation": {
              "_$type": "Quaternion"
            }
          }
        }
      ]
    }
  ]
}