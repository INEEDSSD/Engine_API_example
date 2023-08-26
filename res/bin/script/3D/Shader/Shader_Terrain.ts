import { BaseScript } from "../../BaseScript";
import { CustomTerrainMaterial } from "./customMaterials/CustomTerrainMaterial";
import TerrainShaderFS from "./customShader/terrainShader.fs";
import TerrainShaderVS from "./customShader/terrainShader.vs";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import Mesh = Laya.Mesh;
import Texture2D = Laya.Texture2D;


import Handler = Laya.Handler;

const { regClass, property } = Laya;

@regClass()
export class Shader_Terrain extends BaseScript {

    @property()
    private camera: Laya.Camera;  
    @property()
    private scene: Scene3D;
    @property()
    private directionLight: DirectionLight;

    constructor() {
        super();
        
    }
	private rotation: Vector3 = new Vector3(0, 0.01, 0);

    onAwake(): void {
        super.base(this.camera);
		this.initShader();

		var scene: Scene3D = this.scene;

		var camera: Camera = this.camera;
		camera.transform.rotate(new Vector3(-18, 180, 0), false, false);
		camera.transform.position = new Vector3(-28, 20, -18);
		camera.clearColor = new Laya.Color(1.0, 0.0, 0.0, 1.0);
		

		Mesh.load("resources/res/threeDimen/skinModel/Terrain/terrain_New-Part-01.lm", Handler.create(this,  (mesh: Mesh) => {
			var terrain: MeshSprite3D = (<MeshSprite3D>scene.addChild(new MeshSprite3D(mesh)));
			var customMaterial: CustomTerrainMaterial = new CustomTerrainMaterial();
			Texture2D.load("resources/res/threeDimen/skinModel/Terrain/splatAlphaTexture.png", Handler.create(this, (tex: Texture2D) => {
				customMaterial.splatAlphaTexture = tex;
			}));
			Texture2D.load("resources/res/threeDimen/skinModel/Terrain/ground_01.jpg", Handler.create(this, (tex: Texture2D) => {
				customMaterial.diffuseTexture1 = tex;
			}));

			Texture2D.load("resources/res/threeDimen/skinModel/Terrain/ground_02.jpg", Handler.create(this, (tex: Texture2D) => {
				customMaterial.diffuseTexture2 = tex;
			}));

			// Texture2D.load("resources/res/threeDimen/skinModel/Terrain/ground_03.jpg", Handler.create(this, function (tex: Texture2D): void {
			// 	customMaterial.diffuseTexture3 = tex;
			// }));

			// Texture2D.load("resources/res/threeDimen/skinModel/Terrain/ground_04.jpg", Handler.create(this, function (tex: Texture2D): void {
			// 	customMaterial.diffuseTexture4 = tex;
			// }))
			customMaterial.setDiffuseScale1(new Laya.Vector2(27.92727, 27.92727));
			customMaterial.setDiffuseScale2(new Laya.Vector2(13.96364, 13.96364));
			// customMaterial.setDiffuseScale3(new Laya.Vector2(18.61818, 18.61818));
			// customMaterial.setDiffuseScale4(new Laya.Vector2(13.96364, 13.96364));
			terrain.meshRenderer.sharedMaterial = customMaterial;
		}))
	}
    private initShader(): void {
		CustomTerrainMaterial.__init__();
		var customTerrianShader: Laya.Shader3D = Laya.Shader3D.add("CustomTerrainShader");
		var subShader: Laya.SubShader = new Laya.SubShader();
		customTerrianShader.addSubShader(subShader);
		subShader.addShaderPass(TerrainShaderVS, TerrainShaderFS);
	}
}