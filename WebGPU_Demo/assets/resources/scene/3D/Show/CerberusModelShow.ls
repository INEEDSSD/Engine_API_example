{
  "_$ver": 1,
  "_$id": "zffg90yk",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "9e930e25-774c-4af3-aa86-5a0f36168fa7",
      "scriptPath": "../src/3D/Show/CerberusModelShow.ts",
      "camera": {
        "_$ref": "n2br4ib8"
      },
      "scene": {
        "_$ref": "y3zzsepe"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "y3zzsepe",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "56b05bc5-64f5-44b3-b49a-2301db61ed58",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.4820356070995331,
          0.5287469029426575,
          0.5465632081031799,
          0.180592343211174,
          0.28159770369529724,
          0.40703245997428894,
          -0.0007326718186959624,
          -0.008197722025215626,
          -0.01846235990524292,
          -0.10147608071565628,
          -0.117291159927845,
          -0.12428119033575058,
          -0.05833956226706505,
          -0.05875203013420105,
          -0.055821944028139114,
          0.05059816688299179,
          0.04353401064872742,
          0.03221003711223602,
          -0.0017804080853238702,
          0.005779738537967205,
          0.014040198177099228,
          -0.028574755415320396,
          -0.03005506843328476,
          -0.03878200426697731,
          0.07316745817661285,
          0.06350290775299072,
          0.038228657096624374
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "a": null
      },
      "iblTex": {
        "_$uuid": "4d992913-da54-4543-8c59-cb60a05b0608",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "_$child": [
        {
          "_$id": "n2br4ib8",
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
          "depthTextureFormat": 35
        },
        {
          "_$id": "x689yysa",
          "_$type": "Sprite3D",
          "name": "Cerberus_LP",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.45,
              "z": -0.75
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.6601410591712208,
              "y": -0.25340438432730167,
              "z": -0.25340438432730167,
              "w": -0.6601410591712208
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "2a463e2c-c4fb-4b1b-9dc3-aaeda8e154fb",
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
                  "_$uuid": "baa3e668-b32a-42ba-acc0-401cebbb752f",
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