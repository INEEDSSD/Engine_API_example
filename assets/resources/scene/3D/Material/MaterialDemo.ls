{
  "_$ver": 1,
  "_$id": "bkn4ni1r",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "c1827786-5bfe-44a2-9cb6-75d7084f93b2",
      "scriptPath": "../src/3D/Material/MaterialDemo.ts",
      "camera": {
        "_$ref": "mppqxddu"
      },
      "scene": {
        "_$ref": "lwtkud4o"
      },
      "directionLight": {
        "_$ref": "ann092im"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "lwtkud4o",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
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
          "_$id": "mppqxddu",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": 2
            },
            "localRotation": {
              "_$type": "Quaternion"
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 0,
          "clearColor": {
            "_$type": "Color",
            "r": 0.19591671173607358,
            "g": 0.32773720864208905,
            "b": 0.5348837209302326
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
          "_$id": "ann092im",
          "_$type": "DirectionLight",
          "name": "Directional Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.42261825594781355,
              "y": -2.5064981895083644e-8,
              "z": -5.3752028033448795e-8,
              "w": 0.9063077897379149
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom",
              "color": {
                "_$type": "Color",
                "g": 0.9568627,
                "b": 0.8392157
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
        },
        {
          "_$id": "jdcnpjw4",
          "_$type": "Sprite3D",
          "name": "Sphere",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion"
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2a6375ab-8663-4608-a352-91cd74ee5577",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "dfd56e61-2bd4-4c88-a8d7-fa41e234dbd8",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "SphereColliderShape",
                "localOffset": {
                  "_$type": "Vector3"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}