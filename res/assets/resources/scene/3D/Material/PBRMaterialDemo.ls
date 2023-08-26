{
  "_$ver": 1,
  "_$id": "oap37eks",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "05d3d54e-0e48-467e-ad79-dd0e9eb95d46",
      "scriptPath": "../src/3D/Material/PBRMaterialDemo.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      },
      "directionLight": {
        "_$ref": "6ni3p096l5"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "403598c9-f7ab-4d1d-868d-bba41a9b78fe",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.3872479796409607,
          0.4247247576713562,
          0.438944548368454,
          0.14490510523319244,
          0.22596628963947296,
          0.32660096883773804,
          -0.0006439188728109002,
          -0.006651167757809162,
          -0.014900227077305317,
          -0.08131835609674454,
          -0.09395281970500946,
          -0.09951308369636536,
          -0.04679528996348381,
          -0.047089800238609314,
          -0.04470052942633629,
          0.04064559563994408,
          0.03496576100587845,
          0.02585231512784958,
          -0.0014228756772354245,
          0.004655110649764538,
          0.011286292225122452,
          -0.022889766842126846,
          -0.02407258003950119,
          -0.031070342287421227,
          0.05869198963046074,
          0.05091173201799393,
          0.030603457242250443
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 128,
      "iblTex": {
        "_$uuid": "796b481a-8801-46d8-8cb5-19e9dfc4dccc",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogRange": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": -1
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
            "r": 0.19215686274509805,
            "g": 0.30196078431372547,
            "b": 0.4745098039215686,
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
          "_$id": "6ni3p096l5",
          "_$type": "Sprite3D",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 5,
              "y": 5,
              "z": 5
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.40821789367673483,
              "y": 0.23456971600980447,
              "z": 0.109381654946615,
              "w": 0.875426098065593
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
        }
      ]
    }
  ]
}