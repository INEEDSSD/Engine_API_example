{
  "_$ver": 1,
  "_$id": "#0",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1136,
  "height": 640,
  "_$child": [
    {
      "_$id": "#1",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "95a5b91e-d984-4731-ae4a-9e86911cbc74",
          "_$type": "Material"
        }
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.4117647058823529,
        "g": 0.4117647058823529,
        "b": 0.4117647058823529
      },
      "_reflectionsSource": 1,
      "enableFog": true,
      "fogStart": 100,
      "fogEnd": 600,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5294117647058824,
        "g": 0.8941176470588236,
        "b": 0.996078431372549
      },
      "_$comp": [
        {
          "_$type": "bf38a61e-064b-4470-830b-e0e254fb97b6",
          "scriptPath": "PiratesIsland/src/Scene3DSetting.ts",
          "colorSpace": 0,
          "enableCustomSH": false,
          "SHAr": {
            "_$type": "Vector4",
            "y": 0.0074358,
            "w": 0.012816
          },
          "SHAg": {
            "_$type": "Vector4",
            "y": -0.1863429,
            "w": 0.2011922
          },
          "SHAb": {
            "_$type": "Vector4",
            "y": -0.0619662,
            "w": 0.2966696
          },
          "SHBr": {
            "_$type": "Vector4",
            "z": -0.0002147
          },
          "SHBg": {
            "_$type": "Vector4",
            "z": -0.0649772
          },
          "SHBb": {
            "_$type": "Vector4",
            "z": -0.0441279
          },
          "SHC": {
            "_$type": "Vector4",
            "x": -0.0002147,
            "y": -0.0649772,
            "z": -0.0441279,
            "w": 1
          }
        }
      ],
      "_$child": [
        {
          "_$id": "#2",
          "_$type": "Camera",
          "name": "_Main Camera1",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -169.6481,
              "y": 35.63736,
              "z": 436.9817
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.07289512652985027,
              "y": 0.4457849787785452,
              "z": 0.02247352893015467,
              "w": 0.8918839575421427
            }
          },
          "orthographicVerticalSize": 200,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.4801038,
            "g": 0.8029819,
            "b": 0.8823529,
            "a": 0.01960784
          },
          "enableHDR": true,
          "msaa": true,
          "postProcess": {
            "_$type": "PostProcess",
            "enable": false,
            "effects": [
              {
                "_$type": "61e202aa-77e8-44ff-ade3-8c4fa7e817bb",
                "radius": 1,
                "sampleCount": 1,
                "occlusionIntensity": 3,
                "blur": 2,
                "downsampling": 2,
                "occlusionAttenuation": 1,
                "minZ": 0.01,
                "randomTexture": {
                  "_$uuid": "c6fd12ec-0add-4f91-b234-60b884c6bcd0",
                  "_$type": "Texture2D"
                }
              }
            ]
          },
          "depthTextureMode": 2,
          "_$comp": [
            {
              "_$type": "28c1e8d9-8f3b-46f0-ae96-79c0f7f7cfda",
              "scriptPath": "PiratesIsland/src/CameraMove.ts",
              "text": ""
            }
          ]
        },
        {
          "_$id": "#3",
          "_$type": "Sprite3D",
          "name": "_Directional light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -294.3922,
              "y": 62.02338,
              "z": 443.8846
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.40728768010137023,
              "y": 0.09572081532342087,
              "z": 0.07210558647717709,
              "w": -0.9054032557652121
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.8901960784313725,
                "b": 0.7294117647058823
              },
              "shadowMode": 1,
              "shadowDepthBias": 0.05,
              "shadowNormalBias": 0.4,
              "shadowNearPlane": 0.2
            }
          ]
        },
        {
          "_$id": "fpt76h76",
          "_$prefab": "aac70869-b036-461c-a441-11001330af1e",
          "name": "Tree4A (1)",
          "active": true,
          "isStatic": false,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -176.3464,
              "y": 33.34625,
              "z": 422.231
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 0.9809772351191426,
              "w": -0.1941228069496277
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          }
        }
      ]
    }
  ]
}