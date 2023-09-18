import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import BlinnPhongMaterial = Laya.BlinnPhongMaterial;
import Matrix4x4 = Laya.Matrix4x4;

import Sprite3D = Laya.Sprite3D;

const { regClass, property } = Laya;

@regClass()
export class PhysicsWorld_Character extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private kinematicSphere: Sprite3D;
	private translateW: Vector3 = new Vector3(0, 0, -0.2);
	private translateS: Vector3 = new Vector3(0, 0, 0.2);
	private translateA: Vector3 = new Vector3(-0.2, 0, 0);
	private translateD: Vector3 = new Vector3(0.2, 0, 0);
	private mat1: BlinnPhongMaterial;
	private mat2: BlinnPhongMaterial;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        this.camera.transform.position = new Vector3(0, 6, 9.5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

        //方向光
		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(0.6, 0.6, 0.6, 1);
		this.directionLight.transform.rotate(new Vector3(-3.14 / 3, 0, 0));

        //设置平行光的方向
        var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
        mat.setForward(new Vector3(-1.0, -1.0, -1.0));
        this.directionLight.transform.worldMatrix = mat;

		var resource:any[] = [

            "resources/res/threeDimen/Physics/plywood.jpg",
            "resources/res/threeDimen/Physics/wood.jpg",
            "resources/res/threeDimen/skinModel/LayaMonkey/LayaMonkey.lh"
        ];

        Laya.loader.load(resource).then( (res:any[] )=>{
            this.onComplete(res);
        });

	}

	onComplete(res:any[]):void{		
        this.mat1 = new Laya.BlinnPhongMaterial();
        this.mat2 = new Laya.BlinnPhongMaterial();
        //加载资源
        this.mat1.albedoTexture = res[0];
        this.mat2.albedoTexture = res[1];
        
        var plane:Laya.MeshSprite3D = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createPlane(20, 20, 10, 10))) as Laya.MeshSprite3D;
        var planeMat:Laya.BlinnPhongMaterial = new Laya.BlinnPhongMaterial();
        planeMat.albedoTexture = res[1];
        planeMat.tilingOffset = new Laya.Vector4(2, 2, 0, 0);
        plane.meshRenderer.material = planeMat;
        
        var rigidBody:Laya.PhysicsCollider = plane.addComponent(Laya.PhysicsCollider) as Laya.PhysicsCollider;
        var boxShape:Laya.BoxColliderShape = new Laya.BoxColliderShape(20, 0, 20);
        rigidBody.colliderShape = boxShape;
        
        for (var i:number = 0; i < 60; i++) {
            this.addBox();
            this.addCapsule();
        }
        
        this.addCharacter(res[2]);
    }
    public addCharacter(res:any):void {
       
        let monkey = res.create();
        this.scene.addChild(monkey);
        (monkey.getChildAt(0) as Sprite3D).transform.localScale = new Laya.Vector3(1, 1, 1);
        var character:Laya.CharacterController = monkey.addComponent(Laya.CharacterController);
        var sphereShape:Laya.CapsuleColliderShape = new Laya.CapsuleColliderShape(1.0, 3.4);
        sphereShape.localOffset = new Laya.Vector3(0, 1.7, 0);
        character.colliderShape = sphereShape;
        this.kinematicSphere = monkey;
        Laya.timer.frameLoop(1, this, this.onKeyDown);
    
    }
    
    onKeyDown():void {

        var character:Laya.CharacterController = this.kinematicSphere.getComponent(Laya.CharacterController) as Laya.CharacterController;
        Laya.InputManager.hasKeyDown(87) && character.move(this.translateW);//W
        Laya.InputManager.hasKeyDown(83) && character.move(this.translateS);//S
        Laya.InputManager.hasKeyDown(65) && character.move(this.translateA);//A
        Laya.InputManager.hasKeyDown(68) && character.move(this.translateD);//D
        Laya.InputManager.hasKeyDown(69) && character.jump();//E
    }
    
    public addBox():void {

        var sX:number = Math.random() * 0.75 + 0.25;
        var sY:number = Math.random() * 0.75 + 0.25;
        var sZ:number = Math.random() * 0.75 + 0.25;
        var box:Laya.MeshSprite3D = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(sX, sY, sZ))) as Laya.MeshSprite3D;
        box.meshRenderer.material = this.mat1;
        box.transform.position = new Laya.Vector3(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
        box.transform.rotationEuler = new Laya.Vector3(Math.random() * 360, Math.random() * 360, Math.random() * 360);
        
        var rigidBody:Laya.Rigidbody3D = box.addComponent(Laya.Rigidbody3D);
        var boxShape:Laya.BoxColliderShape = new Laya.BoxColliderShape(sX, sY, sZ);
        rigidBody.colliderShape = boxShape;
        rigidBody.mass = 10;
    }
    
    public addCapsule():void {

        var raidius:number = Math.random() * 0.2 + 0.2;
        var height:number = Math.random() * 0.5 + 0.8;
        var capsule:Laya.MeshSprite3D = this.scene.addChild(new Laya.MeshSprite3D(Laya.PrimitiveMesh.createCapsule(raidius, height))) as Laya.MeshSprite3D;
        capsule.meshRenderer.material = this.mat2;
        capsule.transform.position = new Laya.Vector3(Math.random() * 4 - 2, 2, Math.random() * 4 - 2);
        capsule.transform.rotationEuler = new Laya.Vector3(Math.random() * 360, Math.random() * 360, Math.random() * 360);
        
        var rigidBody:Laya.Rigidbody3D = capsule.addComponent(Laya.Rigidbody3D);
        var sphereShape:Laya.CapsuleColliderShape = new Laya.CapsuleColliderShape(raidius, height);
        rigidBody.colliderShape = sphereShape;
        rigidBody.mass = 10;
    }
 
}