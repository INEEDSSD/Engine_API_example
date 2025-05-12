{
  "_$ver": 1,
  "_$id": "jhdb8i6p",
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
      "_$type": "89a1d956-72b9-4497-a137-3b556b874e48",
      "scriptPath": "../src/2D/Physics/Physics_GravityAndVelocity.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "hgvu9x7r",
      "_$type": "Sprite",
      "name": "left",
      "x": 38,
      "width": 0,
      "height": 0,
      "_$child": [
        {
          "_$id": "prexv0d1",
          "_$type": "Sprite",
          "name": "gravity",
          "x": 92,
          "y": 114,
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
              "_$id": "ukcw",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ]
            }
          ]
        },
        {
          "_$id": "c87qx229",
          "_$type": "Sprite",
          "name": "no_gravity",
          "x": 186,
          "y": 114,
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
              "_$id": "04il",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": 0
            }
          ]
        },
        {
          "_$id": "syxvzqx4",
          "_$type": "Sprite",
          "name": "inverse_gravity",
          "x": 277,
          "y": 115,
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
              "_$id": "vrpe",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "gravityScale": -0.5
            }
          ]
        }
      ]
    },
    {
      "_$id": "e3cjpi2k",
      "_$type": "Sprite",
      "name": "splash",
      "x": 407,
      "y": 82,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawLineCmd",
          "fromX": 0,
          "fromY": 0,
          "toX": 0,
          "toY": 5,
          "percent": true,
          "lineWidth": 5,
          "lineColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "f67v",
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
              "width": 4,
              "height": 497
            }
          ]
        }
      ]
    },
    {
      "_$id": "q49f3ok7",
      "_$type": "Sprite",
      "name": "center",
      "x": 27,
      "width": 0,
      "height": 0,
      "_$child": [
        {
          "_$id": "v1elrsw3",
          "_$type": "Sprite",
          "name": "gravity",
          "x": 538,
          "y": 301,
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
              "_$id": "g1ee",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 25
                }
              ],
              "linearVelocity": {
                "_$type": "Vector2",
                "x": -100
              },
              "linearDamping": 0.5
            }
          ]
        },
        {
          "_$id": "6qu4p4j6",
          "_$type": "Sprite",
          "name": "gravity_1",
          "x": 758,
          "y": 303,
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
              "_$id": "72co",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 0,
                  "y": 0,
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
                "x": -50,
                "y": -100
              },
              "linearDamping": 0.5
            }
          ]
        }
      ]
    },
    {
      "_$id": "tkmk6fsp",
      "_$type": "Sprite",
      "name": "splash_1",
      "x": 965,
      "y": 79,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawLineCmd",
          "fromX": 0,
          "fromY": 0,
          "toX": 0,
          "toY": 5,
          "percent": true,
          "lineWidth": 5,
          "lineColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "dk1q",
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
              "width": 7,
              "height": 500
            }
          ]
        }
      ]
    },
    {
      "_$id": "w1re1w2y",
      "_$type": "Sprite",
      "name": "right",
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "sdpc9o1d",
          "_$type": "Sprite",
          "name": "angular_gravity",
          "x": 1074,
          "y": 88,
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawRectCmd",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "ciu6",
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
                }
              ],
              "angularVelocity": 10,
              "angularDamping": 0.2
            }
          ]
        },
        {
          "_$id": "0ddo90u6",
          "_$type": "Sprite",
          "name": "angular_no_gravity",
          "x": 1242,
          "y": 247,
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawRectCmd",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "69bg",
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
                }
              ],
              "gravityScale": 0,
              "angularVelocity": 2,
              "angularDamping": 0.2
            }
          ]
        }
      ]
    },
    {
      "_$id": "7v16vpgu",
      "_$type": "Label",
      "name": "Label",
      "x": 81,
      "y": 433,
      "width": 283,
      "height": 57,
      "text": "重力设置：从左到右分别是\nGravityScale：1、0、-0.5",
      "fontSize": 20,
      "color": "#ffffff"
    },
    {
      "_$id": "r1gj58b2",
      "_$type": "Label",
      "name": "Label_1",
      "x": 472,
      "y": 429,
      "width": 283,
      "height": 57,
      "text": "线速度与线速度阻尼：受重力模式与不受重力模式",
      "fontSize": 20,
      "color": "#ffffff"
    },
    {
      "_$id": "60kaa9tx",
      "_$type": "Label",
      "name": "Label_1_1",
      "x": 1115,
      "y": 430,
      "width": 283,
      "height": 57,
      "text": "角速度与角速度阻尼",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}