{
    "_$ver": 1,
    "_$child": [
      {
        "_$id": "n9gjxcltvl",
        "_$type": "Scene3D",
        "name": "Scene3D",
        "ambientMode": 0,
        "ambientColor": {
          "_$type": "Color",
          "r": 0.424308,
          "g": 0.4578516,
          "b": 0.5294118
        },
        "skyRenderer": {
          "meshType": "dome",
          "material": {
            "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
            "_$type": "Material"
          }
        },
        "fogStart": 0,
        "fogRange": 300,
        "fogColor": {
          "_$type": "Color",
          "r": 0.5,
          "g": 0.5,
          "b": 0.5
        },
        "lightmaps": [],
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
            "clearFlag": 1,
            "clearColor": {
              "_$type": "Color",
              "r": 0.3921,
              "g": 0.5843,
              "b": 0.9294
            },
            "orthographicVerticalSize": 10,
            "fieldOfView": 60,
            "nearPlane": 0.3,
            "farPlane": 1000,
            "normalizedViewport": {
              "_$type": "Viewport",
              "width": 1,
              "height": 1
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
              "localRotationEuler": {
                "_$type": "Vector3",
                "x": -50,
                "y": 30
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
                },
                "lightmapBakedType": 1,
                "shadowMode": 0,
                "shadowStrength": 1,
                "shadowDistance": 50,
                "shadowDepthBias": 1,
                "shadowNormalBias": 1,
                "shadowNearPlane": 0.1,
                "shadowCascadesMode": 0
              }
            ]
          }
        ]
      }
    ]
  }