{
  "_$ver": 1,
  "_$id": "rzftg32l",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "d610a4a9-c75b-463a-a39a-848d8fa1ff89",
      "scriptPath": "../src/3D/Scene3D/EnvironmentalReflection.ts",
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
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.12385793775320053,
          0.10619205236434937,
          0.08616825193166733,
          0.04508036747574806,
          0.045333947986364365,
          0.033974453806877136,
          -0.06488952040672302,
          -0.040771741420030594,
          -0.017472300678491592,
          -0.03556367754936218,
          -0.022215088829398155,
          -0.009243164211511612,
          -0.014421734027564526,
          -0.010046920739114285,
          -0.004614028614014387,
          -0.03045407310128212,
          -0.0210751760751009,
          -0.009959095157682896,
          0.008590752258896828,
          0.00588414678350091,
          0.002829564269632101,
          0.03831017017364502,
          0.02638474479317665,
          0.01317161601036787,
          0.006225926335901022,
          0.0029086272697895765,
          -0.00009956751455320045
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 128,
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
              "y": 2,
              "z": 3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.13052619222005157,
              "w": 0.9914448613738104
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
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