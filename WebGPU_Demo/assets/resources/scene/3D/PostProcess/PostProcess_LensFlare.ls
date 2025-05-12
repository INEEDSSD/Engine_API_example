{
  "_$ver": 1,
  "_$id": "bsfosc9m",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "dba9edb7-80ba-4d0f-ab04-5eb70bff5438",
      "scriptPath": "../src/3D/PostProcess/PostProcess_LensFlare.ts",
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
          "_$uuid": "57af4741-0f13-412f-875c-6f0dfb2a273e",
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
              "x": 4.92,
              "y": -0.74,
              "z": -3.6
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.06985332823454057,
              "y": 0.923165745763393,
              "z": -0.3196769375665408,
              "w": 0.20172301299493284
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
          },
          "postProcess": {
            "_$type": "PostProcess",
            "effects": [
              {
                "_$type": "LensFlareEffect",
                "singleton": false,
                "lensFlareData": {
                  "_$uuid": "0c043bcc-35e2-411c-8794-1c73935f165e",
                  "_$type": "LensFlareData"
                },
                "bindLight": {
                  "_$ref": "6ni3p096l5",
                  "_$type": "DirectionLightCom"
                }
              }
            ]
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
    }
  ]
}