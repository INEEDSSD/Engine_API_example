{
  "_$ver": 1,
  "_$id": "z9o0lpae",
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
      "_$type": "d8cb4de6-14c8-4075-906e-338b8e6b9f97",
      "scriptPath": "../src/2D/Physics/Physics_QueryAABB.ts",
      "targetSp": {
        "_$ref": "c3fuwi0t"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "c3fuwi0t",
      "_$type": "Sprite",
      "name": "targetSp",
      "x": 68,
      "y": 219,
      "width": 100,
      "height": 100,
      "_gcmds": [
        {
          "_$type": "DrawRectCmd",
          "width": 13.209,
          "fillColor": "#ffffff"
        }
      ],
      "_$comp": [
        {
          "_$id": "87os",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 1321,
              "height": 100
            }
          ]
        }
      ]
    },
    {
      "_$id": "x72thsa8",
      "_$type": "Sprite",
      "name": "obj",
      "x": 150,
      "y": 108,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "BoxShape2D",
              "x": 0,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 134,
              "height": 130
            }
          ]
        }
      ]
    },
    {
      "_$id": "lno4h780",
      "_$type": "Sprite",
      "name": "obj1",
      "x": 230,
      "y": 301,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "CircleShape2D",
              "x": 64,
              "y": -71,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2
            }
          ]
        }
      ]
    },
    {
      "_$id": "zndufyx1",
      "_$type": "Sprite",
      "name": "obj2",
      "x": 371,
      "y": 159,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "dt9an4wi",
      "_$type": "Sprite",
      "name": "obj3",
      "x": 407,
      "y": 176,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "pi6krvg1",
      "_$type": "Sprite",
      "name": "obj4",
      "x": 524,
      "y": 309,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
                112,
                133
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "0snem8qv",
      "_$type": "Sprite",
      "name": "obj5",
      "x": 710,
      "y": 496,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
            },
            {
              "_$type": "CircleShape2D",
              "x": 47,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2
            }
          ]
        }
      ]
    },
    {
      "_$id": "emkguczg",
      "_$type": "Sprite",
      "name": "obj6",
      "x": 825,
      "y": 97,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
          "shapes": [
            {
              "_$type": "PolygonShape2D",
              "x": 24,
              "y": 112,
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
            },
            {
              "_$type": "BoxShape2D",
              "x": 112,
              "y": 0,
              "density": 10,
              "restitution": 0,
              "restitutionThreshold": 1,
              "friction": 0.2,
              "width": 100,
              "height": 100
            }
          ]
        }
      ]
    },
    {
      "_$id": "39pxw4ee",
      "_$type": "Sprite",
      "name": "obj7",
      "x": 949,
      "y": 528,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "ucwuhnxz",
      "_$type": "Sprite",
      "name": "obj8",
      "x": 1236,
      "y": 124,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "juovzbuk",
      "_$type": "Sprite",
      "name": "obj9",
      "x": 1301,
      "y": 542,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "z4jsv99u",
      "_$type": "Sprite",
      "name": "obj10",
      "x": 914,
      "y": 285,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
                51,
                280,
                0,
                100
              ]
            }
          ]
        }
      ]
    },
    {
      "_$id": "hacpt8ok",
      "_$type": "Sprite",
      "name": "obj11",
      "x": 1129,
      "y": 294,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "qq48l04d",
      "_$type": "Sprite",
      "name": "obj12",
      "x": 1129,
      "y": 294,
      "width": 100,
      "height": 100,
      "_$comp": [
        {
          "_$id": "7c7c",
          "_$type": "StaticCollider",
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
          ]
        }
      ]
    },
    {
      "_$id": "ksj8olxb",
      "_$type": "Label",
      "name": "Label",
      "x": 309,
      "y": 42,
      "width": 120,
      "height": 28,
      "text": "点击场景，白色矩形为可视化的检测AABB，重叠的组件会绘制一个红色圆形circle",
      "fontSize": 20,
      "color": "#ffffff"
    }
  ]
}