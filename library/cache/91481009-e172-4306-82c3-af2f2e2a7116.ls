{
  "_$ver": 1,
  "_$id": "w3do1fen",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "autoDestroyAtClosed": true,
  "_$comp": [
    {
      "_$type": "dfc7da98-20e0-474c-a6df-4fbab1af1a8f",
      "scriptPath": "../src/3D/Resource/GarbageCollection.ts",
      "camera": {
        "_$ref": "ke3xtug7"
      },
      "scene": {
        "_$ref": "v1r6x6ol"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "v1r6x6ol",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.5147059,
        "g": 0.5147059,
        "b": 0.5147059,
        "a": null
      },
      "fogStart": 0,
      "fogEnd": 5,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0,
        "g": 0.07423934,
        "b": 0.1764706,
        "a": null
      },
      "lightmaps": [
        {
          "_$type": "Lightmap"
        }
      ],
      "_$child": [
        {
          "_$id": "ke3xtug7",
          "_$type": "Camera",
          "name": "Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 0.81,
              "z": -1.85
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -2.675667268030345e-17,
              "y": 0.9890158657893632,
              "z": 0.1478093948871867,
              "w": 6.320592850770507e-17
            }
          },
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
          "depthTextureFormat": 35
        }
      ]
    }
  ]
}