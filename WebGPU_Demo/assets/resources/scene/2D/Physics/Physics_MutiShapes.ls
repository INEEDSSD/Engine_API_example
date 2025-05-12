{
  "_$ver": 1,
  "_$id": "ljectjlc",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "width": 1440,
  "height": 680,
  "_$comp": [
    {
      "_$type": "e4efb7d9-14d8-43d8-aa41-368b0510b0a5",
      "scriptPath": "../src/2D/Physics/Physics_MutiShapes.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "4k89ud26",
      "_$type": "Sprite",
      "name": "ground",
      "x": 67,
      "y": 592,
      "width": 1328,
      "height": 44,
      "rotation": 0.5,
      "_$comp": [
        {
          "_$id": "r595",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 1,
              "restitution": 0.298,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 1328,
              "height": 44
            }
          ]
        }
      ]
    },
    {
      "_$id": "zda8of6n",
      "_$type": "Sprite",
      "name": "box",
      "x": 214,
      "y": 176,
      "width": 50,
      "height": 50,
      "_gcmds": [
        {
          "_$type": "DrawRectCmd",
          "fillColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "ptxq",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": -32,
              "y": -28,
              "density": 1,
              "restitution": 0,
              "friction": 0.2,
              "width": 50,
              "height": 50
            },
            {
              "_$type": "CircleShape2D",
              "x": 80,
              "y": 0,
              "density": 1,
              "restitution": 0,
              "friction": 0.2,
              "radius": 25
            }
          ]
        }
      ]
    },
    {
      "_$id": "625u5q6i",
      "_$type": "Sprite",
      "name": "circle",
      "x": 424,
      "y": 202,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawCircleCmd",
          "x": 0,
          "y": 0,
          "radius": 0.25,
          "percent": true,
          "lineWidth": 1,
          "lineColor": "#000000",
          "fillColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "f666",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": 1,
              "y": -27,
              "density": 1,
              "restitution": 0.298,
              "restitutionThreshold": 0.33,
              "friction": 0.2,
              "radius": 25
            }
          ],
          "allowRotation": false,
          "useAutoMass": false
        }
      ]
    },
    {
      "_$id": "420yjc5j",
      "_$type": "Sprite",
      "name": "edge",
      "x": 542,
      "y": 188,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawLineCmd",
          "fromX": 0,
          "fromY": 0,
          "toX": 0.988,
          "toY": 0.025,
          "percent": true,
          "lineWidth": 1,
          "lineColor": "#ff0000"
        }
      ],
      "_$comp": [
        {
          "_$id": "rv0t",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "EdgeShape2D",
              "x": 0,
              "y": 15,
              "density": 1.3,
              "restitution": 0.086,
              "friction": 0.2,
              "datas": [
                0,
                0,
                100,
                0
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "g7488i9h",
      "_$type": "Sprite",
      "name": "polygon",
      "x": 786,
      "y": 187,
      "width": 100,
      "height": 100,
      "rotation": -23,
      "_$comp": [
        {
          "_$id": "cfjh",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "PolygonShape2D",
              "x": 0,
              "y": 0,
              "density": 1,
              "restitution": 0,
              "friction": 0.2,
              "datas": [
                0,
                -130,
                75,
                -129,
                137,
                -30,
                208,
                13,
                85,
                130,
                22,
                203,
                -85,
                130,
                -38,
                -14
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "g317mkcb",
      "_$type": "Sprite",
      "name": "chain",
      "x": 1051,
      "y": 182,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "x548",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "ChainShape2D",
              "x": 0,
              "y": 0,
              "filterData": {
                "_$type": "FilterData",
                "group": 2147483647
              },
              "density": 1,
              "restitution": 0,
              "friction": 0.2,
              "datas": [
                0,
                0,
                31,
                153,
                200,
                50,
                124,
                162
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "s099jjfn",
      "_$type": "Label",
      "name": "Label",
      "x": 308,
      "y": 73,
      "width": 657,
      "height": 28,
      "text": "从左至右分别是：矩形形状、圆形状、线段形状、多边形形状、链条形状",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}