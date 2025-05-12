{
  "_$ver": 1,
  "_$id": "ps8uito1",
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
      "_$child": [
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
          "_$id": "vp23vpkk",
          "_$prefab": "df984515-6bf3-4014-afae-5a33490838bf",
          "name": "Drunk Walk",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.2934840351616591
            }
          },
          "_$comp": [
            {
              "_$override": "Animator",
              "controller": {
                "_$uuid": "015a41a1-7fba-404f-b0e7-c21220777fdb",
                "_$type": "AnimationController"
              }
            }
          ]
        },
        {
          "_$id": "mxcgclvf",
          "_$prefab": "df984515-6bf3-4014-afae-5a33490838bf",
          "name": "Drunk Walk(1)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.4885818065080545
            }
          },
          "_$comp": [
            {
              "_$override": "Animator",
              "controller": {
                "_$uuid": "bc759258-8257-446b-9251-f098f23913c8",
                "_$type": "AnimationController"
              }
            }
          ]
        },
        {
          "_$id": "5bio6buw",
          "_$prefab": "df984515-6bf3-4014-afae-5a33490838bf",
          "name": "Drunk Walk(2)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.064000430280762
            }
          },
          "_$comp": [
            {
              "_$override": "Animator",
              "controller": {
                "_$uuid": "3c232cfa-442d-47f5-b7fd-2066db1bb582",
                "_$type": "AnimationController"
              }
            }
          ]
        }
      ]
    }
  ]
}