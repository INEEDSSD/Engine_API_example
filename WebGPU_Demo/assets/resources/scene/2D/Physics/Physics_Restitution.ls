{
  "_$ver": 1,
  "_$id": "px4f35qy",
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
      "_$type": "995764cb-6107-419a-8578-f9e71be8abff",
      "scriptPath": "../src/2D/Physics/Physics_Restitution.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "ryy6dxu3",
      "_$type": "Sprite",
      "name": "ground",
      "x": 94,
      "y": 523,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "vykn",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 57,
              "density": 1,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 1274,
              "height": 43
            }
          ]
        }
      ]
    },
    {
      "_$id": "hy0u2vkh",
      "_$type": "Sprite",
      "name": "box",
      "x": 144,
      "y": 55,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "4rb3",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 1,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            },
            {
              "_$type": "CircleShape2D",
              "x": 173,
              "y": 50,
              "density": 1,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "radius": 30
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "u3y1cx14",
      "_$type": "Sprite",
      "name": "shape",
      "x": 394,
      "y": 98,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawCircleCmd",
          "x": 0.5,
          "y": 0.5,
          "radius": 0.5,
          "percent": true,
          "lineWidth": 1,
          "lineColor": "#000000",
          "fillColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "xbfy",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": 50,
              "y": 50,
              "density": 1,
              "restitution": 0.5,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "radius": 35
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "3kbv27uo",
      "_$type": "Sprite",
      "name": "polygon",
      "x": 653,
      "y": 81,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "rkxs",
          "_$type": "RigidBody",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "PolygonShape2D",
              "x": 0,
              "y": 0,
              "density": 1,
              "restitution": 1,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                164,
                -13,
                100,
                100,
                0,
                100,
                0,
                0
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "82pq4rf7",
      "_$type": "Label",
      "name": "Label",
      "x": 499,
      "y": 50,
      "width": 120,
      "height": 28,
      "text": "弹力系数：从左到右弹力系数分别是0、0.5、 1",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}