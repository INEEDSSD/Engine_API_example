{
  "_$ver": 1,
  "_$id": "dqmbir82",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "6a7bc5b7-ac78-40d1-975a-19b7d20e0e7b",
      "scriptPath": "../src/3D/Advance/BlurryGlass.ts",
      "camera": {
        "_$ref": "t5bb8j7t"
      },
      "scene": {
        "_$ref": "b9wb7hg5"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "b9wb7hg5",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "box",
        "material": {
          "_$uuid": "ce3faa08-bfc0-49a9-80ea-6995ba86819c",
          "_$type": "Material"
        }
      },
      "ambientMode": 1,
      "ambientSH": {
        "_$type": "Float32Array",
        "value": [
          0.09708904474973679,
          0.25958770513534546,
          0.47206076979637146,
          0.028514716774225235,
          0.08193251490592957,
          0.13897214829921722,
          -0.003651802660897374,
          -0.005448361858725548,
          -0.00608890550211072,
          0.061427973210811615,
          0.06441895663738251,
          0.0521073117852211,
          0.025665204972028732,
          0.033973243087530136,
          0.030004503205418587,
          -0.00019398597942199558,
          -0.002006854861974716,
          -0.002821393543854356,
          -0.0018577520968392491,
          -0.001632770523428917,
          -0.002548138378188014,
          0.00026451543089933693,
          0.00460398942232132,
          0.008447307161986828,
          0.02075071446597576,
          0.019173363223671913,
          0.008509567007422447
        ]
      },
      "ambientColor": {
        "_$type": "Color",
        "a": null
      },
      "iblTex": {
        "_$uuid": "ed7ecaef-d0e0-441d-8e28-b02330a4e09e",
        "_$type": "TextureCube"
      },
      "iblTexRGBD": true,
      "fogStart": 10,
      "fogEnd": 20,
      "fogColor": {
        "_$type": "Color"
      },
      "_$child": [
        {
          "_$id": "t5bb8j7t",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.5413697,
              "y": 2.915479,
              "z": 4.72047
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.07138656977965199,
              "y": 0.029916689907656537,
              "z": 0.00208380699356794,
              "w": 0.9969977969225797
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.27199387056066343,
            "g": 0.484331461156183,
            "b": 0.9883720930232558
          },
          "msaa": true,
          "depthTextureFormat": 35
        },
        {
          "_$id": "ycvddyrx",
          "_$type": "LightSprite",
          "name": "Directional light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -21.47881,
              "y": 109.2226,
              "z": 120.6995
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.3623708819230548,
              "y": 0.003946281803138929,
              "z": 0.001541189923117427,
              "w": -0.9320243535057754
            }
          },
          "_$comp": [
            {
              "_$type": "DirectionLightCom"
            }
          ]
        },
        {
          "_$id": "w6h7stqm",
          "_$type": "Sprite3D",
          "name": "floor",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.00001657009,
              "y": 0.9783633,
              "z": -0.007702351
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.66877,
              "y": 0.66877,
              "z": 0.66877
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "adb7ef91-3696-456c-b828-1e2b79169638",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "t47nelom",
          "_$type": "Sprite3D",
          "name": "Capsule",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 2.33,
              "y": 1.82,
              "z": -2.02
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "84a3faba-360c-4c60-877c-107927e063ba",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "4a2338yj",
          "_$type": "Sprite3D",
          "name": "Capsule (1)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0.2299999,
              "y": 1.82,
              "z": -2.02
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "9274673d-6c6c-4f2e-bb76-818d44a8025d",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "o65qrbfj",
          "_$type": "Sprite3D",
          "name": "Capsule (2)",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -1.7,
              "y": 1.82,
              "z": -2.02
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "384ac614-8c5e-4695-a153-e21966fcb11d",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "e3c3beb9-9ad0-435f-a42d-442dd34df43f",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "rkntmhz0",
          "_$type": "Sprite3D",
          "name": "glass01",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.256,
              "y": 1.75,
              "z": 0.7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.7071067811865476,
              "w": -0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.19819,
              "y": 0.19819,
              "z": 0.19819
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "d09cb158-ce94-4796-9bcd-ea27f1d70bfe",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "c0w1v1j1",
          "_$type": "Sprite3D",
          "name": "glass02",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -0.7199999,
              "y": 1.75,
              "z": 0.7
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.7071067811865475,
              "w": 0.7071067811865476
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 0.19819,
              "y": 0.19819,
              "z": 0.19819
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "15e24e55-cde3-4cc5-b83e-b7f9c04821a0",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "d09cb158-ce94-4796-9bcd-ea27f1d70bfe",
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