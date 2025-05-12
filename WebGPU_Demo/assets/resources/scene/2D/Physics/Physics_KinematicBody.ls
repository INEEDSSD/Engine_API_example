{
  "_$ver": 1,
  "_$id": "ekqyy0zn",
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
      "_$type": "ca91d007-4711-492c-ae0f-c8a98ad6d6a8",
      "scriptPath": "../src/2D/Physics/Physics_KinematicBody.ts",
      "kinematic": {
        "_$ref": "qhg0uqcr"
      },
      "static": {
        "_$ref": "fuh1fte1"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "6l280btv",
      "_$type": "Area2D",
      "name": "Area2D",
      "width": 1440,
      "height": 680,
      "_$child": [
        {
          "_$id": "shvf4o7p",
          "_$type": "Camera2D",
          "name": "Camera2D",
          "x": 718,
          "y": 341,
          "width": 100,
          "height": 100,
          "positionSpeed": null,
          "_$child": [
            {
              "_$id": "qhg0uqcr",
              "_$type": "Sprite",
              "name": "kinematic",
              "x": -475,
              "y": -139,
              "width": 100,
              "height": 100,
              "_$comp": [
                {
                  "_$id": "if3q",
                  "_$type": "RigidBody",
                  "type": "kinematic",
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
                      "x": 43,
                      "y": -50,
                      "density": 1,
                      "restitution": 0,
                      "restitutionThreshold": 1,
                      "friction": 0.2
                    },
                    {
                      "_$type": "PolygonShape2D",
                      "x": -2,
                      "y": 102,
                      "density": 1,
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
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "5n9vdmnh",
                  "_$type": "Label",
                  "name": "Label",
                  "x": 19,
                  "y": -139,
                  "width": 120,
                  "height": 28,
                  "text": "运动学刚体位移",
                  "fontSize": 20,
                  "color": "#ffffff"
                }
              ]
            },
            {
              "_$id": "fuh1fte1",
              "_$type": "Sprite",
              "name": "static",
              "x": 290,
              "y": -154,
              "width": 100,
              "height": 100,
              "_$comp": [
                {
                  "_$id": "b0uj",
                  "_$type": "StaticCollider",
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
                      "x": 45,
                      "y": -52,
                      "density": 1,
                      "restitution": 0,
                      "restitutionThreshold": 1,
                      "friction": 0.2
                    },
                    {
                      "_$type": "PolygonShape2D",
                      "x": 1,
                      "y": 106,
                      "density": 1,
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
                  ]
                }
              ],
              "_$child": [
                {
                  "_$id": "7tz9y3uv",
                  "_$type": "Label",
                  "name": "Label",
                  "x": -9,
                  "y": -118,
                  "width": 120,
                  "height": 28,
                  "text": "静态碰撞器位移",
                  "fontSize": 20,
                  "color": "#ffffff"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}