{
  "_$ver": 1,
  "_$id": "9sp42hta",
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
        "r": 0.1,
        "g": 0.1,
        "b": 0.1
      },
      "_reflectionsIblSamples": 1024,
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
              "y": 1.5,
              "z": 5.095547039643098e-16
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.7071067811865475,
              "w": 0.7071067811865476
            }
          },
          "fieldOfView": 90,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          },
          "_$comp": [
            {
              "_$type": "fd46c0e3-b05d-44fb-971a-9b00b0a1c5fd",
              "scriptPath": "../src/CameraMove.ts",
              "speed": 0.01
            }
          ]
        },
        {
          "_$id": "fmfzzu8q",
          "_$prefab": "f06cf265-6f31-4e9e-b97b-3859d3a27e7a",
          "name": "sponza",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3"
            },
            "localRotation": {
              "_$type": "Quaternion"
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          }
        },
        {
          "_$id": "107azan9",
          "_$type": "Sprite3D",
          "name": "Sprite3D",
          "_$comp": [
            {
              "_$type": "9c9f40bb-5115-4d76-80c0-1e24b3a04d87",
              "scriptPath": "ClusteredShading/ClusteredShading.ts",
              "manager": {
                "_$type": "d10e0afe-661a-43ac-bd44-b57d50db9d6c",
                "lightCount": 128,
                "lightDebugPrefab": {
                  "_$uuid": "98e56366-9726-4266-a425-678f3d4e9a87",
                  "_$type": "Prefab"
                },
                "lightPrefab": {
                  "_$uuid": "19aad9b5-9a4e-4fa8-a2b3-78f2b2587d27",
                  "_$type": "Prefab"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}