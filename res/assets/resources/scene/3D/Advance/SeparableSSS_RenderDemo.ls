{
  "_$ver": 1,
  "_$id": "yem33q4h",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "3c9bc866-29a5-4bec-a511-58ef2b18c156",
      "scriptPath": "../src/3D/Advance/SeparableSSS_RenderDemo.ts",
      "camera": {
        "_$ref": "q8sn4lk5"
      },
      "scene": {
        "_$ref": "32s7vkcp"
      },
      "directionLight": {
        "_$ref": "c2h5x1wg"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "32s7vkcp",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "box",
        "material": {
          "_$uuid": "124a1da6-c890-4226-8a2e-bb01ab0b0b1a",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientColor": {
        "_$type": "Color",
        "a": null
      },
      "ambientIntensity": 1.27,
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
          "_$id": "q8sn4lk5",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.109,
              "y": 0.38,
              "z": 2.044
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.04557581726139039,
              "y": 0.014024889157257104,
              "z": 0.0017233538964452242,
              "w": 0.9988609399793501
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 20,
          "nearPlane": 0.1,
          "farPlane": 100,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "g": 0.6644307,
            "b": 0.6084906,
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
          "_$id": "c2h5x1wg",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.3094237129105855,
              "y": -1.5219212892553629,
              "z": 0.35451305819183193
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.32190397621355005,
              "y": 0.10551975102483677,
              "z": -0.5189712303175569,
              "w": -0.7848007864064894
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.9422510666426297,
                "g": 0.9496124031007753,
                "b": 0.9496124031007753
              },
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
        }
      ]
    }
  ]
}