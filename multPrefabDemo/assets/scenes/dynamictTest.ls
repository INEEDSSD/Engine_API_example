{
  "_$ver": 1,
  "_$id": "6z7btymt",
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
      "_$id": "g34s6yiw",
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
        "r": 0.212,
        "g": 0.227,
        "b": 0.259
      },
      "_$comp": [
        {
          "_$type": "9a0b4f36-4fb6-4753-a691-36e1c23a1f9a",
          "scriptPath": "../src/dynamictTest/dynamictTest.ts"
        }
      ],
      "_$child": [
        {
          "_$id": "yypt1nh3",
          "_$type": "Camera",
          "name": "Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 6.2,
              "z": 10.5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.3420201433256687,
              "w": 0.9396926207859084
            }
          },
          "nearPlane": 0.1,
          "farPlane": 10000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.39215686274509803,
            "g": 0.5843137254901961,
            "b": 0.9294117647058824
          },
          "_$comp": [
            {
              "_$type": "fd46c0e3-b05d-44fb-971a-9b00b0a1c5fd",
              "scriptPath": "../src/CameraMove.ts",
              "speed": 0.01
            }
          ]
        }
      ]
    }
  ]
}