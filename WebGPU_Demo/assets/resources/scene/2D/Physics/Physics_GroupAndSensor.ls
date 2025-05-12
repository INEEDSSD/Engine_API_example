{
  "_$ver": 1,
  "_$id": "9ncobzgw",
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
      "_$type": "8a5e2099-be3c-48fc-8699-b7e398b8a3c2",
      "scriptPath": "../src/2D/Physics/Physics_GroupAndSensor.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "aw2tud4p",
      "_$type": "Sprite",
      "name": "wall",
      "x": 754,
      "y": 157,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "01sj",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 24,
              "y": -2,
              "filterData": {
                "_$type": "FilterData",
                "group": -1,
                "category": 4,
                "mask": 2
              },
              "density": 1,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 58,
              "height": 286
            },
            {
              "_$type": "BoxShape2D",
              "x": 230,
              "y": 0,
              "filterData": {
                "_$type": "FilterData",
                "category": 8,
                "mask": 2
              },
              "density": 1,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 24,
              "height": 283
            }
          ]
        }
      ],
      "_$child": [
        {
          "_$id": "ktp7ta6q",
          "_$type": "Label",
          "name": "Label",
          "x": 37,
          "y": -22,
          "width": 120,
          "height": 28,
          "text": "wall\n",
          "fontSize": 20,
          "color": "#ffffff"
        },
        {
          "_$id": "ajiznztj",
          "_$type": "Label",
          "name": "Label_1",
          "x": 206,
          "y": -21,
          "width": 120,
          "height": 28,
          "text": "wall 1\n",
          "fontSize": 20,
          "color": "#ffffff"
        },
        {
          "_$id": "kn399bir",
          "_$type": "Label",
          "name": "Label_2",
          "x": 31,
          "y": 274,
          "width": 120,
          "height": 28,
          "text": "group:-1 \ncate: wall \nmask: bullet",
          "fontSize": 20,
          "color": "#ffffff"
        },
        {
          "_$id": "vafe9eis",
          "_$type": "Label",
          "name": "Label_2_1",
          "x": 220,
          "y": 274,
          "width": 120,
          "height": 28,
          "text": "group:0\ncate: wall 1\nmask: bullet",
          "fontSize": 20,
          "color": "#ffffff"
        }
      ]
    },
    {
      "_$id": "fjbxa0wm",
      "_$type": "Sprite",
      "name": "bullets",
      "x": 278,
      "y": 152,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "amm8n0xx",
          "_$type": "Sprite",
          "name": "bullet1",
          "x": 60,
          "y": 30,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "2h5r",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "filterData": {
                    "_$type": "FilterData",
                    "group": -1,
                    "category": 2,
                    "mask": 8
                  },
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0,
              "linearVelocity": {
                "_$type": "Vector2",
                "x": 100
              },
              "allowSleep": false
            }
          ],
          "_$child": [
            {
              "_$id": "34znry6k",
              "_$type": "Label",
              "name": "Label",
              "width": 120,
              "height": 28,
              "text": "group:-1 cate:bullet mask: wall 1",
              "fontSize": 20,
              "color": "#ffffff"
            }
          ]
        },
        {
          "_$id": "hukv77c2",
          "_$type": "Sprite",
          "name": "bullet2",
          "x": 60,
          "y": 110,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "2h5r",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "filterData": {
                    "_$type": "FilterData",
                    "group": -1,
                    "category": 2,
                    "mask": 1
                  },
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0,
              "linearVelocity": {
                "_$type": "Vector2",
                "x": 100
              },
              "allowSleep": false
            }
          ],
          "_$child": [
            {
              "_$id": "vtjbkzco",
              "_$type": "Label",
              "name": "Label",
              "width": 120,
              "height": 28,
              "text": "group:-1 cate: bullet mask: 0",
              "fontSize": 20,
              "color": "#ffffff"
            }
          ]
        },
        {
          "_$id": "6mu5fljs",
          "_$type": "Sprite",
          "name": "bullet3",
          "x": 60,
          "y": 190,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "2h5r",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "filterData": {
                    "_$type": "FilterData",
                    "category": 2,
                    "mask": 4
                  },
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0,
              "linearVelocity": {
                "_$type": "Vector2",
                "x": 100
              },
              "allowSleep": false
            }
          ],
          "_$child": [
            {
              "_$id": "9o8mmrgi",
              "_$type": "Label",
              "name": "Label",
              "width": 120,
              "height": 28,
              "text": "group: 0 cate:bullet mask: wall ",
              "fontSize": 20,
              "color": "#ffffff"
            }
          ]
        }
      ]
    }
  ]
}