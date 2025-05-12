{
  "_$ver": 1,
  "_$id": "8195pasq",
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
      "_$type": "998841a3-e9fa-4859-93ba-109803aedc20",
      "scriptPath": "../src/2D/Physics/Physics_MassAndCenter.ts",
      "bullet": {
        "_$ref": "7zpcw2c8"
      },
      "bullet1": {
        "_$ref": "anzy3eod"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "1x8p9hw3",
      "_$type": "Sprite",
      "name": "Sprite",
      "x": 279,
      "y": 154,
      "width": 100,
      "height": 100,
      "scaleX": 0.5,
      "scaleY": 0.5,
      "_$child": [
        {
          "_$id": "7zpcw2c8",
          "_$type": "Sprite",
          "name": "bullet",
          "x": -20,
          "y": 107,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "fv10",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0,
              "bullet": true,
              "allowRotation": false
            }
          ]
        },
        {
          "_$id": "br4oo4q4",
          "_$type": "Sprite",
          "name": "wall",
          "x": 800,
          "y": -20,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "wdz4",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 20,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 64,
                  "height": 439
                },
                {
                  "_$type": "CircleShape2D",
                  "x": 50,
                  "y": -50,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2
                }
              ],
              "gravityScale": 0,
              "allowSleep": false
            }
          ]
        }
      ]
    },
    {
      "_$id": "drrbjuu0",
      "_$type": "Sprite",
      "name": "Sprite_1",
      "x": 279,
      "y": 449,
      "width": 100,
      "height": 100,
      "scaleX": 0.5,
      "scaleY": 0.5,
      "_$child": [
        {
          "_$id": "anzy3eod",
          "_$type": "Sprite",
          "name": "bullet",
          "x": -20,
          "y": 107,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "fv10",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0,
              "bullet": true,
              "allowRotation": false
            }
          ]
        },
        {
          "_$id": "rbkjv8mx",
          "_$type": "Sprite",
          "name": "wall",
          "x": 800,
          "y": -20,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "wdz4",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 20,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 64,
                  "height": 439
                },
                {
                  "_$type": "CircleShape2D",
                  "x": 50,
                  "y": -50,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2
                }
              ],
              "gravityScale": 0,
              "allowSleep": false,
              "useAutoMass": false,
              "mass": 10,
              "centerOfMass": {
                "_$type": "Vector2",
                "x": 0.5,
                "y": -0.5
              },
              "inertia": 100
            }
          ]
        }
      ]
    },
    {
      "_$id": "ms3gpggd",
      "_$type": "Label",
      "name": "Label",
      "x": 373,
      "y": 63,
      "width": 597,
      "height": 28,
      "text": "子弹禁止旋转设置质量、旋转惯量、质心，上面为自动计算，下面手动设置",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}