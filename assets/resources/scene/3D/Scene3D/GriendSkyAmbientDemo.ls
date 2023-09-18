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
      "_$type": "a938acc9-7759-4f01-b580-ebd51eacad0b",
      "scriptPath": "../src/3D/Scene3D/GriendSkyAmbientDemo.ts",
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
        "meshType": "dome",
        "material": {
          "_$uuid": "7c156545-7e00-44d6-ba67-1b182308ba4c",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
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
        "r": 0.1691792861005948,
        "g": 0.7461240310077519,
        "b": 0.4599053489639667
      },
      "_reflectionsIblSamples": 128,
      "iblTex": {
        "_$uuid": "dd9ddec2-c4e4-4e0e-a97d-4082290198bf",
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
        }
      ]
    }
  ]
}