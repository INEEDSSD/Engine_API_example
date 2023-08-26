{
  "_$ver": 1,
  "_$id": "8apmpclr",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "50c4f116-02b5-4179-8360-c8c58b502952",
      "scriptPath": "../src/3D/Animation/CameraAnimation.ts",
      "camera": {
        "_$ref": "0yhtg693"
      },
      "scene": {
        "_$ref": "wroqu9cp"
      },
      "directionLight": {
        "_$ref": "4rvzen3t"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "wroqu9cp",
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
          "_$id": "0yhtg693",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 9.234777246093751e-17,
              "y": 1,
              "z": -5.7967634201049805
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 6.123233995736766e-17
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
            "b": 0.4745098
          },
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35,
          "_$comp": [
            {
              "_$type": "Animator",
              "controller": {
                "_$uuid": "c525d5a2-8249-4d38-93f4-f9046051cba6",
                "_$type": "AnimationController"
              },
              "cullingMode": 0,
              "controllerLayers": []
            }
          ]
        },
        {
          "_$id": "4rvzen3t",
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
              "color": {
                "_$type": "Color",
                "r": 0.6,
                "g": 0.6,
                "b": 0.6
              },
              "intensity": 1,
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
        },
        {
          "_$id": "v73hy08j",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "7313f583-adeb-4eeb-b680-31c12200dde4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "98510ace-6663-4b9e-9226-8eff54e0d43d",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape"
              }
            }
          ]
        }
      ]
    }
  ]
}