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
        "r": 0.4117647,
        "g": 0.4117647,
        "b": 0.4117647
      },
      "_reflectionsResolution": 128,
      "fogStart": 100,
      "fogEnd": 600,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5294118,
        "g": 0.8941177,
        "b": 0.9960784
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
        },
        {
          "_$type": "e7a7a846-bbc7-4b91-8548-dbdece94b828",
          "scriptPath": "../src/ocean/RecCanvas.ts"
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
              "x": -97.76277923583984,
              "y": 37.40846633911133,
              "z": 221.88438415527344
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.005061243493729299,
              "y": 0.9238017091848372,
              "z": -0.012219195400845824,
              "w": 0.38264275399545544
            }
          },
          "orthographicVerticalSize": 200,
          "fieldOfView": 45,
          "nearPlane": 0.1,
          "farPlane": 1000,
          "clearColor": {
            "_$type": "Color",
            "r": 0.4801038,
            "g": 0.8029819,
            "b": 0.8823529,
            "a": 0.01960784
          },
          "msaa": true,
          "postProcess": {
            "_$type": "PostProcess",
            "effects": [
              {
                "_$type": "61e202aa-77e8-44ff-ade3-8c4fa7e817bb",
                "radius": 0.4,
                "sampleCount": 1,
                "occlusionIntensity": 1.322,
                "blur": 2,
                "downsampling": 2,
                "occlusionAttenuation": 1,
                "minZ": 0.5,
                "randomTexture": null
              }
            ]
          },
          "depthTextureMode": 2,
          "_$comp": [
            {
              "_$type": "28c1e8d9-8f3b-46f0-ae96-79c0f7f7cfda",
              "scriptPath": "PiratesIsland/src/CameraMove.ts",
              "text": ""
            },
            {
              "_$type": "Animator",
              "enabled": false,
              "controllerLayers": [
                {
                  "_$type": "AnimatorControllerLayer",
                  "name": "Base Layer",
                  "states": [
                    {
                      "_$type": "AnimatorState",
                      "name": "CameraAnim1",
                      "clipStart": 0,
                      "soloTransitions": []
                    }
                  ],
                  "defaultStateName": "CameraAnim1"
                }
              ]
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
              "intensity": 1.5,
              "shadowMode": 1,
              "shadowDepthBias": 0.4,
              "shadowNormalBias": 0.4,
              "shadowNearPlane": 0.2
            }
          ]
        },
        {
          "_$id": "xcgr1y2b",
          "_$type": "Sprite3D",
          "name": "ocean",
          "active": false,
          "layer": 6,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -293.75044801254785,
              "y": 78.88506527337404,
              "z": 460.58847203639226
            }
          },
          "_$comp": [
            {
              "_$type": "534c4528-0188-49ef-9673-42e6c32c0c8d",
              "scriptPath": "../src/ocean/ocean.ts"
            }
          ]
        },
        {
          "_$id": "8tjolmyf",
          "_$type": "Sprite3D",
          "name": "Terrain",
          "active": false,
          "layer": 1,
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "84ddb3b5-0d28-405f-88a9-f3f0807802c4",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "6c5574d0-a21a-456a-bb4c-e99b33bf52c0",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "f0e47265-8796-4f55-84b6-45b801e0b03a",
              "scriptPath": "PiratesIsland/src/Terrain.ts",
              "splat": {
                "_$uuid": "77961149-6e94-4fc4-a6d7-ec76e50e06e0",
                "_$type": "Texture2DArray"
              },
              "diffuse": {
                "_$uuid": "25a8dd1a-050e-4687-b34f-9c0df1dd4a27",
                "_$type": "Texture2DArray"
              },
              "normal": {
                "_$uuid": "8b60e6d1-f66c-431a-8df0-eaf6f8aa8944",
                "_$type": "Texture2DArray"
              }
            }
          ]
        },
        {
          "_$id": "3ruwhb3m",
          "_$type": "Sprite3D",
          "name": "diban",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -294.3922,
              "y": 49.47360615812548,
              "z": 443.8846
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1000,
              "y": 1,
              "z": 1000
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "18b9ae4a-82f8-43cc-9fe4-f8b72ac702e9",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "cuhmbojq",
          "_$type": "Sprite3D",
          "name": "xiepo",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -407.53813233398023,
              "y": 40.30151605103589,
              "z": 487.29136906380154
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.25881904510252074,
              "w": 0.9659258262890683
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 100,
              "y": 1,
              "z": 1000
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "bghez26i",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -398.9482149544947,
              "y": 80.47664784625667,
              "z": 563.0456105971682
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "f1e48cc9-d67d-4196-92dd-77d9ee2f076c",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "dbthys2n",
          "_$type": "Camera",
          "name": "_Main Camera1_1",
          "active": false,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -97.7627807135399,
              "y": 37.4084663208172,
              "z": 221.88439163706695
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.0071405252681858615,
              "y": -0.9534041790426266,
              "z": -0.022635276606746402,
              "w": -0.30076091590478554
            }
          },
          "orthographicVerticalSize": 200,
          "fieldOfView": 45,
          "nearPlane": 0.1,
          "farPlane": 1000,
          "clearFlag": 3,
          "clearColor": {
            "_$type": "Color",
            "r": 0.4801038,
            "g": 0.8029819,
            "b": 0.8823529,
            "a": 0.01960784
          },
          "msaa": true,
          "cullingMask": 4,
          "postProcess": {
            "_$type": "PostProcess",
            "enable": false
          },
          "depthTextureMode": 2,
          "_$comp": [
            {
              "_$type": "28c1e8d9-8f3b-46f0-ae96-79c0f7f7cfda",
              "scriptPath": "PiratesIsland/src/CameraMove.ts",
              "text": ""
            }
          ]
        }
      ]
    }
  ]
}