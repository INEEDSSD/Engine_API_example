import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Animator = Laya.Animator;
import Loader = Laya.Loader;

const { regClass, property } = Laya;

@regClass()
export class SimpleSkinAnimationInstance extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;


	private animatorName: string[][] = [
		["PickUp", "PotionDrink", "BattleWalkRight", "VictoryStart", "DefendStart", "Die", "Interact", "VictoryMaintain"],
		["DefendHit_SwordAndShield", "SwordAndShiled2", "Defend_SwordAndShield", "SwordAndShiled", "Attack04_Start_SwordAndShield", "Attack04_SwordAndShiled"],
	];
	
	private oriSprite3D:Sprite3D;
	private widthNums:number = 20;
	private step:number = 2.5;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(-16.4, 2.96, 24.3);
		this.camera.transform.localRotationEuler = new Vector3(-7.5, -30, 0.0);
		this.directionLight.getComponent(Laya.DirectionLightCom).intensity = 0.5;

		//通过3.0的动画烘培，将所有动作提前计算一次；将所有的骨骼节点预计算，存入内存中；gpu直接通过内存读取对应节点的矩阵值；进行渲染
		var res = [
			"resources/res/threeDimen/texAnimation/Attack01/Attack01.lh",
			"resources/res/threeDimen/texAnimation/role/role.lh",
		];
		Laya.loader.load(res).then(() => {
			this.oriSprite3D = Loader.createNodes(res[0]);
			this.sceneBuild(0);
			// add other model
			this.oriSprite3D = Loader.createNodes(res[1]);
			this.sceneBuild(1);
		});
	}

	cloneSprite(pos: Vector3, quaterial: Vector3, aniNameIndex: number) {
		//克隆一个Sprite3D
		var clonesprite: Sprite3D = this.oriSprite3D.clone() as Sprite3D;
		this.scene.addChild(clonesprite);
		var animate: Animator = clonesprite.getComponent(Animator);
		var nums: number = Math.round(Math.random() * 5);
		animate.play(this.animatorName[aniNameIndex][nums], 0, Math.random());
		clonesprite.transform.position = pos;
		clonesprite.transform.rotationEuler = quaterial;
	}

	sceneBuild(aniNameIndex: number) {
		var left: number = -0.5 * this.step * (this.widthNums);
		var right: number = -1 * left;
		for (var i: number = left; i < right; i += this.step)
			for (var j: number = left; j < right; j += this.step) {
				var xchange: number = (Math.random() - 0.5) * 5;
				var zchange: number = (Math.random() - 0.5) * 5;
				var quaterial: Vector3 = new Vector3(0, Math.random() * 180, 0);
				this.cloneSprite(new Vector3(i + xchange, 0, j + zchange), quaterial, aniNameIndex);
			}
	}
}