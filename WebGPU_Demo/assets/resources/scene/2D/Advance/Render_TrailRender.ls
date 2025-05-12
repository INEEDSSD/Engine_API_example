{
  "_$ver": 1,
  "_$id": "hm4btp9v",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$comp": [
    {
      "_$type": "c3427592-b34f-4546-b76b-40b53dcd4914",
      "scriptPath": "../src/2D/Advance/Render_TrailRender.ts",
      "point": {
        "_$ref": "elspju93"
      }
    }
  ],
  "_$child": [
    {
      "_$id": "elspju93",
      "_$type": "Sprite",
      "name": "point",
      "x": 1046,
      "y": 265,
      "width": 96,
      "height": 145,
      "texture": {
        "_$uuid": "275cd09c-8fba-4eb5-9b52-df5f7b7f8f73",
        "_$type": "Texture"
      },
      "_$child": [
        {
          "_$id": "29t0f3oh",
          "_$type": "Sprite",
          "name": "drawLine",
          "x": 165,
          "y": 218,
          "width": 96,
          "height": 145,
          "texture": {
            "_$uuid": "275cd09c-8fba-4eb5-9b52-df5f7b7f8f73",
            "_$type": "Texture"
          },
          "_$comp": [
            {
              "_$type": "Trail2DRender",
              "layer": 0,
              "time": 0.5,
              "minVertexDistance": 1.71,
              "widthMultiplier": 512,
              "widthCurve": [
                {
                  "_$type": "FloatKeyframe",
                  "inTangent": 0,
                  "outTangent": 0,
                  "value": 0.08466730954676993,
                  "inWeight": 0.33333,
                  "outWeight": 0.33333,
                  "weightedMode": 0,
                  "time": 0.05411764705882353
                },
                {
                  "_$type": "FloatKeyframe",
                  "inTangent": 0,
                  "outTangent": 0,
                  "value": 0.9620540019286403,
                  "inWeight": 0.33333,
                  "outWeight": 0.33333,
                  "weightedMode": 0,
                  "time": 0.9249673202614381
                }
              ],
              "color": {
                "_$type": "Color"
              },
              "colorGradient": {
                "_$type": "Gradient",
                "_alphaElements": {
                  "_$type": "Float32Array",
                  "value": [
                    0,
                    1,
                    1,
                    1
                  ]
                },
                "_colorAlphaKeysCount": 2,
                "_rgbElements": {
                  "_$type": "Float32Array",
                  "value": [
                    0.08734939992427826,
                    1,
                    0,
                    0,
                    0.9156626462936401,
                    0,
                    1,
                    0.03906245902180672
                  ]
                },
                "_colorRGBKeysCount": 2
              },
              "textureMode": 1,
              "texture": {
                "_$uuid": "6c77d24c-9beb-4a31-9fc3-c7eacf3b2356",
                "_$type": "Texture2D"
              }
            }
          ]
        }
      ]
    }
  ]
}