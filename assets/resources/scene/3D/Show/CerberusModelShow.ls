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
        "a": null
      },
      "_reflectionsIblSamples": 128,
      "iblTex": {
        "_$uuid": "986abf5d-80eb-4a81-8c8c-bd07a83dd07e",
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
          "cullingMask": 2147483647,
          "normalizedViewport": {
            "_$type": "Viewport",
            "width": 1,
            "height": 1
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