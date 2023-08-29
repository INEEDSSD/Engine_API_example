{
  "_$ver": 1,
  "_$id": "e5mhma6b",
  "_$runtime": "res://ad3cf108-21a0-4a90-9e86-6a401327d722",
  "_$type": "Scene",
  "name": "Scene2D",
  "width": 1440,
  "height": 680,
  "visible": false,
  "_$child": [
    {
      "_$id": "0bglhl3s",
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
        "b": 0.259
      },
      "fogStart": 300,
      "fogEnd": 1000,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.7,
        "g": 0.7,
        "b": 0.7
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "tvfxh201",
          "_$type": "Sprite3D",
          "name": "Sprite3D"
        },
        {
          "_$id": "ioq6fi63",
          "_$type": "Sprite3D",
          "name": "Sphere",
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
          "_$id": "ndl5hrut",
          "_$type": "Sprite3D",
          "name": "DirectionLight",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": -0.15700067036684384,
              "z": 5.323929744824488
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
              "shadowCascadesMode": 0,
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "zqt7q7kc",
          "_$type": "Camera",
          "name": "Camera",
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 0,
          "clearColor": {
            "_$type": "Color",
            "r": 0.39215686274509803,
            "g": 0.5843137254901961,
            "b": 0.9294117647058824
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
                "_$uuid": "eefc9f11-72f1-4fde-8c54-14949519182f",
                "_$type": "AnimationController"
              },
              "controllerLayers": []
            }
          ]
        }
      ]
    },
    {
      "_$id": "yhxok13l",
      "_$type": "Box",
      "name": "Box",
      "x": -1,
      "width": 1441,
      "height": 681,
      "visible": false,
      "left": -1,
      "right": 0,
      "top": 0,
      "bottom": -1,
      "bgColor": "rgba(255, 255, 255, 1)",
      "_$child": [
        {
          "_$id": "uzo97aq6",
          "_$type": "Image",
          "name": "logo",
          "x": 421,
          "y": 261,
          "width": 600,
          "height": 159,
          "centerX": 0,
          "centerY": 0,
          "skin": "res://85ef9e2b-e885-467c-9a7f-16763154f6d0",
          "color": "#ffffff"
        },
        {
          "_$id": "pzugu9dg",
          "_$var": true,
          "_$type": "ProgressBar",
          "name": "loadingBar",
          "x": 501,
          "y": 492,
          "width": 440,
          "height": 20,
          "centerX": 0,
          "centerY": 161,
          "skin": "res://7105097b-a948-4370-84e7-d0280f9a6ab0",
          "sizeGrid": "0,0,0,0,1",
          "value": 0.453,
          "_$child": [
            {
              "_$id": "x5nyvggb",
              "_$type": "Text",
              "name": "Text",
              "x": 19.000000000000114,
              "y": 47.999999999999886,
              "width": 420,
              "height": 17,
              "text": "资源加载中……",
              "fontSize": 18,
              "color": "#030303",
              "align": "center",
              "leading": 0
            }
          ]
        }
      ]
    }
  ]
}