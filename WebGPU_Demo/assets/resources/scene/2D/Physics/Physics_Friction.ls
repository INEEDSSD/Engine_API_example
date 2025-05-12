{
  "_$ver": 1,
  "_$id": "fy1hol7q",
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
      "_$type": "86def1de-519e-4054-8596-0230292a959c",
      "scriptPath": "../src/2D/Physics/Physics_Friction.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "qes3rrz0",
      "_$type": "Sprite",
      "name": "Sprite_1",
      "x": 110,
      "y": 60,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "db8f0c0x",
          "_$type": "Sprite",
          "name": "ground",
          "x": 132,
          "y": 75,
          "width": 100,
          "height": 100,
          "rotation": 10,
          "_$comp": [
            {
              "_$id": "xjx2",
              "_$type": "StaticCollider",
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 813,
                  "height": 33
                }
              ]
            }
          ]
        },
        {
          "_$id": "tik1brvv",
          "_$type": "Sprite",
          "name": "Sprite",
          "x": 115,
          "y": -32,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "46w5",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 100,
                  "height": 100
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "0qu6egb7",
      "_$type": "Sprite",
      "name": "Sprite_1_1",
      "x": 110,
      "y": 250,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "otr8zp6y",
          "_$type": "Sprite",
          "name": "ground",
          "x": 132,
          "y": 75,
          "width": 100,
          "height": 100,
          "rotation": 10,
          "_$comp": [
            {
              "_$id": "xjx2",
              "_$type": "StaticCollider",
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 813,
                  "height": 33
                }
              ]
            }
          ]
        },
        {
          "_$id": "86ojzvsa",
          "_$type": "Sprite",
          "name": "Sprite",
          "x": 115,
          "y": -32,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "bkpv",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.1,
                  "width": 100,
                  "height": 100
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "1078i0sv",
      "_$type": "Sprite",
      "name": "Sprite_1_1_1",
      "x": 110,
      "y": 410,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "0rukqjrk",
          "_$type": "Sprite",
          "name": "ground",
          "x": 132,
          "y": 75,
          "width": 100,
          "height": 100,
          "rotation": 10,
          "_$comp": [
            {
              "_$id": "xjx2",
              "_$type": "StaticCollider",
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0.2,
                  "width": 813,
                  "height": 33
                }
              ]
            }
          ]
        },
        {
          "_$id": "wiasgjg8",
          "_$type": "Sprite",
          "name": "Sprite",
          "x": 115,
          "y": -32,
          "width": 100,
          "height": 100,
          "_$comp": [
            {
              "_$id": "wrgf",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 1,
                  "restitution": 0,
                  "friction": 0,
                  "width": 100,
                  "height": 100
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "yoxcz3to",
      "_$type": "Label",
      "name": "Label",
      "x": 342,
      "y": 18,
      "width": 120,
      "height": 28,
      "text": "摩擦力差异，ground摩擦力系数相同，从上到下逐次递减摩擦力系数",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}