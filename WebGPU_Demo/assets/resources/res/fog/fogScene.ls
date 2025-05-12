{
  "_$ver": 1,
  "_$id": "duozic4b",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "t381x6yq",
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
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "enableFog": true,
      "fogMode": 1,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.05,
      "fogColor": {
        "_$type": "Color",
        "r": 0.4108527131782945,
        "g": 0.394928189411694,
        "b": 0.394928189411694
      },
      "_$child": [
        {
          "_$id": "k8bdg4u2",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 1.704435197918973,
              "y": 6.520624547641282,
              "z": 17.67024958496145
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.09617581460400056,
              "y": 0.13421426637715436,
              "z": 0.013088959959040988,
              "w": 0.986187316138922
            }
          },
          "nearPlane": 0.3,
          "farPlane": 1000,
          "clearFlag": 1,
          "clearColor": {
            "_$type": "Color",
            "r": 0.3921,
            "g": 0.5843,
            "b": 0.9294
          }
        },
        {
          "_$id": "py0xdfi0",
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
              }
            }
          ]
        },
        {
          "_$id": "v0ccaql6",
          "_$type": "Sprite3D",
          "name": "Plane",
          "transform": {
            "localScale": {
              "_$type": "Vector3",
              "x": 50,
              "y": 50,
              "z": 50
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
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
                  "_$uuid": "2460c262-4754-4086-83ce-a66b76ab5f41",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "d61utnc3",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 0,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            }
          },
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "iaqttgut",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(1)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 4.501071929931641,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          },
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "mtyg6z6v",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(2)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 8.845952952595301,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            }
          },
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        },
        {
          "_$id": "7famk17c",
          "_$prefab": "9cd1a667-d129-4de2-b7ea-32914994fcb0",
          "name": "IL3DN_Tree_Birch_01(3)",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 13.347024882526943,
              "y": 0,
              "z": 0
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0,
              "y": 0,
              "z": 0,
              "w": 1
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 1,
              "y": 1,
              "z": 1
            }
          },
          "_$child": [
            {
              "_$override": "#52",
              "active": false
            }
          ]
        }
      ]
    }
  ]
}