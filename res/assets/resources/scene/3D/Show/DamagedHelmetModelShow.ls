{
  "_$ver": 1,
  "_$id": "fvtqn2us",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "56ac9a0b-bb60-47e3-aeac-5934275aea57",
      "scriptPath": "../src/3D/Show/DamagedHelmetModelShow.ts",
      "camera": {
        "_$ref": "243cja6i"
      },
      "scene": {
        "_$ref": "zox7kqxt"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "zox7kqxt",
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
          0.23843158781528473,
          0.4804883301258087,
          0.7983449697494507,
          0.12528541684150696,
          0.16001960635185242,
          0.17556197941303253,
          0.0714041218161583,
          0.061897266656160355,
          0.03537905961275101,
          -0.05716191232204437,
          -0.049319278448820114,
          -0.028065389022231102,
          -0.03479538485407829,
          -0.02548951655626297,
          -0.00936116836965084,
          0.044461190700531006,
          0.032874319702386856,
          0.011712153442203999,
          0.006333039607852697,
          0.010433457791805267,
          0.013574294745922089,
          -0.022673623636364937,
          -0.01724260114133358,
          -0.009005958214402199,
          0.013348139822483063,
          0.026793068274855614,
          0.038327738642692566
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "r": 0.4302325581395349,
        "g": 0.40188390120786016,
        "b": 0.40188390120786016
      },
      "_reflectionsIblSamples": 128,
      "iblTex": {
        "_$uuid": "715e3083-1995-48fd-9dca-aef46b6d09e7",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
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
          "_$id": "243cja6i",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": -3
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            }
          },
          "orthographicVerticalSize": 10,
          "fieldOfView": 60,
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.1921569,
            "g": 0.3019608,
            "b": 0.4745098,
            "a": 0
          },
          "msaa": true,
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
          },
          "depthTextureFormat": 35
        },
        {
          "_$id": "bakf8awl",
          "_$type": "Sprite3D",
          "name": "DamagedHelmet",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": 1.1
            },
            "localRotation": {
              "_$type": "Quaternion",
              "y": 1,
              "w": 0
            }
          },
          "_$child": [
            {
              "_$id": "ung3ocy7",
              "_$type": "Sprite3D",
              "name": "node_damagedHelmet_-6514",
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -2.1855689999999998e-8,
                  "w": -0.9999999999999998
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 100,
                  "y": 100,
                  "z": 100
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "7e0d6dda-3250-4b8c-bb3f-765d2299d9c3",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6efbcf2a-db92-4c0a-b28a-adfdc810ddef",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}