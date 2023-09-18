{
  "_$ver": 1,
  "_$id": "qyk9ztpk",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "405e2005-76bf-4c43-82c8-d1af69cf3061",
      "scriptPath": "../src/3D/Scene3D/LightmapScene.ts",
      "camera": {
        "_$ref": "6jx8h8bvc6"
      },
      "scene": {
        "_$ref": "n9gjxcltvl"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 128,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [
        {
          "_$type": "Lightmap",
          "lightmapColor": {
            "_$uuid": "cddb1dc0-1d07-467c-b26c-ff487aedde95",
            "_$type": "Texture2D"
          }
        }
      ],
      "lightingSettings": {
        "_$uuid": "c8a1e0c7-4ae0-4e7d-8ad5-2125184d0872",
        "_$type": "LightingSettings"
      },
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.8479818105697632,
              "y": 3.0020058155059814,
              "z": 9.04156494140625
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.14262919234335697,
              "y": 0.0021593625199590994,
              "z": 0.00031117077682560026,
              "w": 0.9897737892153624
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.9999999826046587,
              "y": 0.9999999899938531,
              "z": 1.0000000088697485
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 90,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.207,
            "g": 0.269,
            "b": 0.383
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
          "_$id": "2srbcgje",
          "_$prefab": "1227503b-bd3e-46ba-96ce-e52be2904241",
          "name": "baishe",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.35068684816360474,
              "y": 2.868421792984009,
              "z": -0.04339837655425072
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            }
          }
        },
        {
          "_$id": "ems76mew",
          "_$type": "Sprite3D",
          "name": "PointLight",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 5.078084349920843
            }
          },
          "_$comp": [
            {
              "_$type": "PointLightCom",
              "color": {
                "_$type": "Color",
                "r": 0.9244186046511628,
                "g": 0.6690026175466469,
                "b": 0.07524337479718761
              },
              "intensity": 1,
              "lightmapBakedType": 2,
              "shadowMode": 0,
              "shadowStrength": 1,
              "shadowDistance": 50,
              "shadowDepthBias": 1,
              "shadowNormalBias": 1,
              "shadowNearPlane": 0.1,
              "shadowCascadesMode": 2,
              "range": 6,
              "power": 1000,
              "radius": 0.25,
              "maxBounces": 1024
            }
          ]
        }
      ]
    }
  ]
}