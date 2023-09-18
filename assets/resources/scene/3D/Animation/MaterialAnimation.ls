{
  "_$ver": 1,
  "_$id": "jcwcdhnd",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "f2170105-c2c6-437f-8654-18d17eda81a1",
      "scriptPath": "../src/3D/Animation/MaterialAnimation.ts",
      "camera": {
        "_$ref": "jyfy7uvx"
      },
      "scene": {
        "_$ref": "yhc6dyrv"
      },
      "directionLight": {
        "_$ref": "4g257w6v"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "yhc6dyrv",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.212,
        "g": 0.227,
        "b": 0.259,
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "fogStart": 0,
      "fogRange": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "jyfy7uvx",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1,
              "z": -10
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
          },
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "4g257w6v",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.10938160060059961,
              "y": 0.8754261048068466,
              "z": 0.4082179022414694,
              "w": -0.23456970128799057
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "intensity": 1,
              "lightmapBakedType": 0,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "shadowCascadesMode": 0
            }
          ]
        },
        {
          "_$id": "433d5n0d",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.26,
              "y": 1.094911,
              "z": -4.5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "a6728e04-2082-4b01-b776-63ccf1d42431",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "fa016d6e-ec8c-4adc-bea3-ffc003f94d40",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "Animator",
              "controller": {
                "_$uuid": "7080959c-890e-4cef-a782-b18a148d2c3b",
                "_$type": "AnimationController"
              },
              "cullingMode": 0,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "New Animation",
                      "clipStart": 0,
                      "clip": {
                        "_$uuid": "162526c0-b09f-4729-a846-d377669b32e5",
                        "_$type": "AnimationClip"
                      },
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "New Animation"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}