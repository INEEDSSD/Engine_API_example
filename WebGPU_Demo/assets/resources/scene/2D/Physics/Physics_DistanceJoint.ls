{
  "_$ver": 1,
  "_$id": "hn9zz0c3",
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
      "_$type": "f624284a-aa7a-4238-bfc2-865bad4cf282",
      "scriptPath": "../src/2D/Physics/Physics_DistanceJoint.ts"
    }
  ],
  "_$child": [
    {
      "_$id": "o59yvghc",
      "_$type": "Sprite",
      "name": "Sprite",
      "x": 150,
      "y": 76,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "oeitiur6",
          "_$type": "Sprite",
          "name": "anchor",
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawCircleCmd",
              "x": 0.5,
              "y": 0.5,
              "radius": 0.125,
              "percent": true,
              "lineWidth": 1,
              "lineColor": "#000000",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "ff55",
              "_$type": "StaticCollider",
              "shapes": []
            }
          ]
        },
        {
          "_$id": "xx937zec",
          "_$type": "Sprite",
          "name": "rig",
          "x": 7,
          "y": 233,
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
              "_$id": "jvs7",
              "_$type": "RigidBody",
              "applyOwnerColliderComponent": false,
              "shapes": [
                {
                  "_$type": "BoxShape2D",
                  "x": 0,
                  "y": 0,
                  "density": 100,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "width": 100,
                  "height": 100
                }
              ],
              "gravityScale": 2
            },
            {
              "_$id": "viuh",
              "_$type": "DistanceJoint",
              "otherBody": {
                "_$ref": "oeitiur6",
                "_$type": "StaticCollider"
              },
              "selfAnchor": [
                48,
                48
              ],
              "otherAnchor": [
                50,
                55
              ],
              "length": 500,
              "maxLength": 1000
            }
          ]
        }
      ]
    },
    {
      "_$id": "wb7ds74y",
      "_$type": "Sprite",
      "name": "Sprite_2",
      "x": 352,
      "y": 78,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "ibxcwsde",
          "_$type": "Sprite",
          "name": "anchor",
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawCircleCmd",
              "x": 0.5,
              "y": 0.5,
              "radius": 0.125,
              "percent": true,
              "lineWidth": 1,
              "lineColor": "#000000",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "ff55",
              "_$type": "StaticCollider",
              "shapes": []
            }
          ]
        },
        {
          "_$id": "ljvu3apa",
          "_$type": "Sprite",
          "name": "rig",
          "x": 7,
          "y": 233,
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
              "_$id": "jvs7",
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
              ]
            },
            {
              "_$id": "viuh",
              "_$type": "DistanceJoint",
              "otherBody": {
                "_$ref": "ibxcwsde",
                "_$type": "StaticCollider"
              },
              "selfAnchor": [
                48,
                48
              ],
              "otherAnchor": [
                50,
                55
              ],
              "length": 10,
              "maxLength": 100
            }
          ]
        }
      ]
    },
    {
      "_$id": "yhbesi3j",
      "_$type": "Sprite",
      "name": "Sprite_3",
      "x": 595,
      "y": 81,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "m9lxn2ux",
          "_$type": "Sprite",
          "name": "anchor",
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawCircleCmd",
              "x": 0.5,
              "y": 0.5,
              "radius": 0.125,
              "percent": true,
              "lineWidth": 1,
              "lineColor": "#000000",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "ff55",
              "_$type": "StaticCollider",
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 49,
                  "y": 49,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 15
                }
              ]
            }
          ]
        },
        {
          "_$id": "hio1p4co",
          "_$type": "Sprite",
          "name": "rig",
          "x": 7,
          "y": 233,
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
              "_$id": "jvs7",
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
              ]
            },
            {
              "_$id": "viuh",
              "_$type": "DistanceJoint",
              "otherBody": {
                "_$ref": "m9lxn2ux",
                "_$type": "StaticCollider"
              },
              "selfAnchor": [
                48,
                48
              ],
              "otherAnchor": [
                50,
                55
              ],
              "frequency": 0.5,
              "length": 500,
              "maxLength": 1000
            }
          ]
        }
      ]
    },
    {
      "_$id": "hg5d1zug",
      "_$type": "Sprite",
      "name": "Sprite_3_1",
      "x": 857,
      "y": 86,
      "width": 100,
      "height": 100,
      "_$child": [
        {
          "_$id": "bo7b38hc",
          "_$type": "Sprite",
          "name": "anchor",
          "width": 100,
          "height": 100,
          "_gcmds": [
            {
              "_$type": "DrawCircleCmd",
              "x": 0.5,
              "y": 0.5,
              "radius": 0.125,
              "percent": true,
              "lineWidth": 1,
              "lineColor": "#000000",
              "fillColor": "#ffffff"
            }
          ],
          "_$comp": [
            {
              "_$id": "ff55",
              "_$type": "StaticCollider",
              "shapes": [
                {
                  "_$type": "CircleShape2D",
                  "x": 49,
                  "y": 49,
                  "density": 1,
                  "restitution": 0,
                  "restitutionThreshold": 1,
                  "friction": 0.2,
                  "radius": 15
                }
              ]
            }
          ]
        },
        {
          "_$id": "whuhb5ld",
          "_$type": "Sprite",
          "name": "rig",
          "x": 7,
          "y": 233,
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
              "_$id": "jvs7",
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
              ]
            },
            {
              "_$id": "viuh",
              "_$type": "DistanceJoint",
              "otherBody": {
                "_$ref": "bo7b38hc",
                "_$type": "StaticCollider"
              },
              "selfAnchor": [
                48,
                48
              ],
              "otherAnchor": [
                50,
                55
              ],
              "length": 500,
              "maxLength": 1000
            }
          ]
        }
      ]
    }
  ]
}