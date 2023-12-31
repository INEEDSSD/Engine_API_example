{
	"version":"LAYASCENE3D:02",
	"data":{
		"type":"Scene3D",
		"props":{
			"name":"depthNormalScene",
			"ambientColor":[
				0.8584906,
				0.8584906,
				0.8584906
			],
			"reflectionDecodingFormat":1,
			"reflection":"Assets/Scenes/depthNormalSceneGIReflection.ltcb",
			"reflectionIntensity":1,
			"ambientMode":0,
			"ambientSphericalHarmonicsIntensity":1,
			"lightmaps":[],
			"enableFog":false,
			"fogStart":0,
			"fogRange":300,
			"fogColor":[
				0.5,
				0.5,
				0.5
			]
		},
		"child":[
			{
				"type":"MeshSprite3D",
				"instanceID":0,
				"props":{
					"name":"depthPlane",
					"active":true,
					"isStatic":false,
					"layer":0,
					"position":[
						3.27,
						3.59,
						-5.13
					],
					"rotation":[
						0.7071068,
						0,
						0,
						-0.7071068
					],
					"scale":[
						0.4206875,
						0.4206875,
						0.4206875
					],
					"meshPath":"Library/unity default resources-Plane.lm",
					"enableRender":true,
					"receiveShadows":true,
					"castShadow":true,
					"materials":[
						{
							"type":"Laya.BlinnPhongMaterial",
							"path":"Assets/Materials/DepthTest.lmat"
						}
					]
				},
				"components":[
					{
						"type":"PhysicsCollider",
						"restitution":0,
						"friction":0.5,
						"rollingFriction":0,
						"shapes":[
							{
								"type":"MeshColliderShape",
								"mesh":"Library/unity default resources-Plane.lm"
							}
						],
						"isTrigger":false
					}
				],
				"child":[]
			},
			{
				"type":"MeshSprite3D",
				"instanceID":1,
				"props":{
					"name":"depthNormalPlane",
					"active":true,
					"isStatic":false,
					"layer":0,
					"position":[
						7.72,
						3.59,
						-5.13
					],
					"rotation":[
						0.7071068,
						0,
						0,
						-0.7071068
					],
					"scale":[
						0.4206875,
						0.4206875,
						0.4206875
					],
					"meshPath":"Library/unity default resources-Plane.lm",
					"enableRender":true,
					"receiveShadows":true,
					"castShadow":true,
					"materials":[
						{
							"type":"Laya.BlinnPhongMaterial",
							"path":"Assets/Materials/depthNormalTextureTest.lmat"
						}
					]
				},
				"components":[
					{
						"type":"PhysicsCollider",
						"restitution":0,
						"friction":0.5,
						"rollingFriction":0,
						"shapes":[
							{
								"type":"MeshColliderShape",
								"mesh":"Library/unity default resources-Plane.lm"
							}
						],
						"isTrigger":false
					}
				],
				"child":[]
			},
			{
				"type":"Sprite3D",
				"instanceID":2,
				"props":{
					"name":"depthscene",
					"active":true,
					"isStatic":false,
					"layer":0,
					"position":[
						2.565299,
						-0.8213048,
						10.94339
					],
					"rotation":[
						0,
						0,
						0,
						-1
					],
					"scale":[
						1,
						1,
						1
					]
				},
				"components":[],
				"child":[
					{
						"type":"MeshSprite3D",
						"instanceID":3,
						"props":{
							"name":"Sphere (1)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-5.045299,
								1.311305,
								-16.33339
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":4,
						"props":{
							"name":"Sphere (2)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-2.985299,
								1.311305,
								-10.42339
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":5,
						"props":{
							"name":"Sphere (3)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-1.325299,
								1.311305,
								-5.143394
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":6,
						"props":{
							"name":"Sphere (4)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								0.7347016,
								1.311305,
								0.7666063
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":7,
						"props":{
							"name":"Sphere (5)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-2.505299,
								1.311305,
								5.746607
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":8,
						"props":{
							"name":"Sphere (6)",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-5.205298,
								1.311305,
								11.65661
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":9,
						"props":{
							"name":"Sphere",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-6.305299,
								1.311305,
								-20.59339
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								1
							],
							"meshPath":"Library/unity default resources-Sphere.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/transMat.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"SphereColliderShape",
										"center":[
											0,
											0,
											0
										],
										"radius":0.5
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"MeshSprite3D",
						"instanceID":10,
						"props":{
							"name":"Plane",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-2.565299,
								0.8213048,
								38.35661
							],
							"rotation":[
								0,
								0,
								0,
								-1
							],
							"scale":[
								1,
								1,
								12.291
							],
							"meshPath":"Library/unity default resources-Plane.lm",
							"enableRender":true,
							"receiveShadows":true,
							"castShadow":true,
							"materials":[
								{
									"path":"Assets/Materials/standarrdEmission.lmat"
								}
							]
						},
						"components":[
							{
								"type":"PhysicsCollider",
								"restitution":0,
								"friction":0.5,
								"rollingFriction":0,
								"shapes":[
									{
										"type":"MeshColliderShape",
										"mesh":"Library/unity default resources-Plane.lm"
									}
								],
								"isTrigger":false
							}
						],
						"child":[]
					},
					{
						"type":"Camera",
						"instanceID":11,
						"props":{
							"name":"Main Camera",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-2.986545,
								2.091305,
								-24.84664
							],
							"rotation":[
								0,
								1,
								0,
								0
							],
							"scale":[
								0.98771,
								1,
								1
							],
							"clearFlag":0,
							"orthographic":false,
							"orthographicVerticalSize":10,
							"fieldOfView":60,
							"enableHDR":false,
							"nearPlane":0.3,
							"farPlane":40,
							"viewport":[
								0,
								0,
								1,
								1
							],
							"clearColor":[
								1,
								0.8537736,
								0.9978808,
								0
							]
						},
						"components":[],
						"child":[]
					},
					{
						"type":"DirectionLight",
						"instanceID":12,
						"props":{
							"name":"Directional Light",
							"active":true,
							"isStatic":false,
							"layer":0,
							"position":[
								-2.565299,
								3.821305,
								-10.94339
							],
							"rotation":[
								0.1093816,
								0.8754261,
								0.4082179,
								-0.2345697
							],
							"scale":[
								1,
								1,
								1
							],
							"intensity":0.44,
							"lightmapBakedType":0,
							"color":[
								0.3584906,
								0.278189,
								0.05918476
							]
						},
						"components":[],
						"child":[]
					}
				]
			}
		]
	}
}