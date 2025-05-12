{
  "_$ver": 1,
  "_$id": "gk04m1t4",
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
      "_$type": "72ebdf90-d47f-4525-964c-dc5aa2538f99",
      "scriptPath": "../src/2D/Physics/Physics_RayCast.ts",
      "start": {
        "_$type": "Vector2",
        "x": 38,
        "y": 83
      },
      "end": {
        "_$type": "Vector2",
        "x": 1321,
        "y": 540
      }
    }
  ],
  "_$child": [
    {
      "_$id": "ddtgg24l",
      "_$type": "Sprite",
      "name": "Sprite",
      "x": 73,
      "y": 36,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "9jj230io",
      "_$type": "Sprite",
      "name": "Sprite1",
      "x": 105,
      "y": 202,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": -2,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "radius": 24
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "uhr7taat",
      "_$type": "Sprite",
      "name": "Sprite2",
      "x": 1296,
      "y": 455,
      "width": 133,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "EdgeShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                0,
                0,
                100,
                0
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "eyiak6jj",
      "_$type": "Sprite",
      "name": "Sprite3",
      "x": 385,
      "y": 169,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "PolygonShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                50,
                0,
                100,
                100,
                0,
                100
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "1mmyrv14",
      "_$type": "Sprite",
      "name": "Sprite4",
      "x": 440,
      "y": 94,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "ChainShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                0,
                0,
                100,
                0
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "xawswg6k",
      "_$type": "Sprite",
      "name": "Sprite5",
      "x": 478,
      "y": 521,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "iu7mrw1c",
      "_$type": "Sprite",
      "name": "Sprite6",
      "x": 700,
      "y": 82,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "l8peqd99",
      "_$type": "Sprite",
      "name": "Sprite7",
      "x": 695,
      "y": 177,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "PolygonShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                50,
                0,
                100,
                100,
                0,
                100
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "5bj04lle",
      "_$type": "Sprite",
      "name": "Sprite8",
      "x": 687,
      "y": 536,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "7y6hybmi",
      "_$type": "Sprite",
      "name": "Sprite9",
      "x": 1284,
      "y": 540,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "jvh8ec4a",
      "_$type": "Sprite",
      "name": "Sprite10",
      "x": 1282,
      "y": 65,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "k8k0g4r8",
      "_$type": "Sprite",
      "name": "Sprite11",
      "x": 847,
      "y": 300,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "2efj",
          "_$type": "RigidBody",
          "type": "kinematic",
          "applyOwnerColliderComponent": false,
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": -74,
              "y": 25,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            },
            {
              "_$type": "CircleShape2D",
              "x": 19,
              "y": 41,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2
            },
            {
              "_$type": "PolygonShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "datas": [
                307,
                4,
                79,
                189,
                0,
                100
              ]
            }
          ],
          "allowSleep": false
        }
      ]
    },
    {
      "_$id": "miqvwfmd",
      "_$type": "Label",
      "name": "Label",
      "x": 304,
      "y": 27,
      "width": 120,
      "height": 28,
      "text": "点击场景，绿色线为射线位置，碰撞后的碰撞体将会绘制红色圆形提示。",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}