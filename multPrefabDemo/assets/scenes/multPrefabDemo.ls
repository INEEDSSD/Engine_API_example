{
  "_$ver": 1,
  "_$id": "k185cg8q",
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
      "_$id": "n9gjxcltvl",
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
      "_reflectionsIblSamples": 1024,
      "fogStart": 0,
      "fogEnd": 300,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "_$comp": [
        {
          "_$type": "7bad1742-6eed-4d8d-81c0-501dc5bf03d6",
          "scriptPath": "../src/multPrefabDemo/Main.ts",
          "customShader3DCount": 45,
          "customShader3DChangeColor": true,
          "meshCount": 60,
          "insCount": 1010,
          "prefab3DTransprent": {
            "_$uuid": "ec29c835-1009-4cb6-9bc0-65f69345b305",
            "_$type": "Prefab"
          },
          "prefab3DTransparentCount": 45,
          "ChangeTransform": true,
          "prefab3DOpaque": {
            "_$uuid": "13c82152-28ab-4044-98a0-b0064ea3c6fc",
            "_$type": "Prefab"
          },
          "prefab3DOpaqueCount": 45,
          "prefab2D": {
            "_$uuid": "0bd62904-b031-4e55-b66b-6e82da685bb4",
            "_$type": "Prefab"
          },
          "prefab2DCount": 27,
          "transCount": 20,
          "custom3DShaderRoot": {
            "_$ref": "xrv9nlyp"
          },
          "boxShader2D": {
            "_$ref": "b4huktag"
          },
          "boxBagUI": {
            "_$ref": "hfs94yz6"
          },
          "bagBtn": {
            "_$ref": "s4ljiyxs"
          },
          "custom2DShaderBtn": {
            "_$ref": "7l71n4ta"
          },
          "insMeshBtn": {
            "_$ref": "n1hqiaf9"
          },
          "custom3DShaderBtn": {
            "_$ref": "yk9hf1r4"
          },
          "opaqueBtn": {
            "_$ref": "o4mxmmrj"
          },
          "transparentBtn": {
            "_$ref": "f1c6jfa6"
          }
        }
      ],
      "_$child": [
        {
          "_$id": "6jx8h8bvc6",
          "_$type": "Camera",
          "name": "Main Camera",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 24.44263222553743,
              "y": 6.3634245320837435,
              "z": 22.654505731531913
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": -0.02857226646285893,
              "y": 0.3732801756252751,
              "z": 0.01150277990450643,
              "w": 0.9272072163916799
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
          },
          "_$comp": [
            {
              "_$type": "fd46c0e3-b05d-44fb-971a-9b00b0a1c5fd",
              "scriptPath": "../src/CameraMove.ts",
              "speed": 0.1
            }
          ]
        },
        {
          "_$id": "6ni3p096l5",
          "_$type": "LightSprite",
          "name": "Direction Light",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": -2.147521536364947,
              "y": -1.3224794983343564,
              "z": -0.9273109671492978
            },
            "localRotation": {
              "_$type": "Quaternion",
              "x": 0.0025399624137317084,
              "y": 0.9627905650243613,
              "z": 0.2700849768085716,
              "w": -0.009054379786684148
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
              "shadowMode": 1,
              "strength": 1,
              "angle": 0.526,
              "maxBounces": 1024
            }
          ]
        },
        {
          "_$id": "xrv9nlyp",
          "_$prefab": "296a8d45-44a4-4660-93cc-51e8d700e576",
          "name": "customShader3D",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "z": 3.900379855634079
            },
            "localRotation": {
              "_$type": "Quaternion"
            }
          }
        },
        {
          "_$id": "ro95fzyu",
          "_$type": "Sprite3D",
          "name": "Plane",
          "transform": {
            "localScale": {
              "_$type": "Vector3",
              "x": 60,
              "y": 60,
              "z": 60
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
              "receiveShadow": true,
              "castShadow": true,
              "lightmapScaleOffset": {
                "_$type": "Vector4"
              },
              "sharedMaterials": [
                {
                  "_$uuid": "ba26a47a-26db-40a2-a572-795e978af93b",
                  "_$type": "Material"
                }
              ]
            }
          ]
        },
        {
          "_$id": "bfder5j7",
          "_$prefab": "e24efc6a-2668-413e-b59b-8927762783dc",
          "name": "cleaner",
          "active": true,
          "layer": 0,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 20.051468391863946
            },
            "localRotation": {
              "_$type": "Quaternion"
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 3,
              "y": 3,
              "z": 3
            }
          }
        }
      ]
    },
    {
      "_$id": "b4huktag",
      "_$type": "Box",
      "name": "Box",
      "x": 1192,
      "y": 149,
      "width": 680,
      "height": 714,
      "scaleX": 0.5,
      "scaleY": 0.5,
      "right": 22,
      "centerY": -33
    },
    {
      "_$id": "s4ljiyxs",
      "_$type": "Button",
      "name": "bagUIBtn",
      "x": 318,
      "y": 574,
      "width": 120,
      "height": 43,
      "left": 318,
      "bottom": 103,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "关闭背包界面",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "hfs94yz6",
      "_$type": "Box",
      "name": "Box_1",
      "x": 393,
      "y": 81,
      "width": 769,
      "height": 435,
      "centerX": 0,
      "centerY": -62
    },
    {
      "_$id": "7l71n4ta",
      "_$type": "Button",
      "name": "customShader2DBtn",
      "x": 1196,
      "y": 574,
      "width": 295,
      "height": 43,
      "right": 63,
      "bottom": 103,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "关闭自定义2Dshader绘制色块",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "n1hqiaf9",
      "_$type": "Button",
      "name": "insMeshBtn",
      "x": 57,
      "y": 575,
      "width": 173,
      "height": 43,
      "left": 57,
      "bottom": 102,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "隐藏instanceMesh",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "o4mxmmrj",
      "_$type": "Button",
      "name": "opqaueBtn",
      "x": 58,
      "y": 652,
      "width": 173,
      "height": 43,
      "left": 58,
      "bottom": 25,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "隐藏不透明材质实例",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "f1c6jfa6",
      "_$type": "Button",
      "name": "transBtn",
      "x": 305,
      "y": 652,
      "width": 173,
      "height": 43,
      "left": 305,
      "bottom": 25,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "隐藏透明材质实例",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    },
    {
      "_$id": "yk9hf1r4",
      "_$type": "Button",
      "name": "customShader3DBtn",
      "x": 548,
      "y": 652,
      "width": 246,
      "height": 43,
      "left": 548,
      "bottom": 25,
      "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
      "label": "隐藏i自定义Shader3D实例",
      "labelSize": 20,
      "labelAlign": "center",
      "labelVAlign": "middle"
    }
  ]
}