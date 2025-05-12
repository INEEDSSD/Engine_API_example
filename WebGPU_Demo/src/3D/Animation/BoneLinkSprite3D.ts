import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Animator = Laya.Animator;
import Quaternion = Laya.Quaternion;
import AnimatorState = Laya.AnimatorState;
import Matrix4x4 = Laya.Matrix4x4;

import Handler = Laya.Handler;
import Loader = Laya.Loader;
import Button = Laya.Button;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class BoneLinkSprite3D extends BaseScript {

	@property(Laya.Camera)
	private camera: Camera;
	@property(Laya.Scene3D)
	private scene: Scene3D;
	@property(Laya.Sprite3D)
	private directionLight: Laya.Sprite3D;

	private role: Sprite3D;
	private pangzi: Sprite3D;
	private dragon1: Sprite3D;
	private dragon2: Sprite3D;
	private aniSprte3D1: Sprite3D;
	private aniSprte3D2: Sprite3D;
	private animator: Animator;
	private dragonAnimator1: Animator;
	private dragonAnimator2: Animator;
	private changeActionButton: Button;
	private curStateIndex: number = 0;

	constructor() {
		super();
	}

	/**
	 * 组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
	 */
	onAwake(): void {
		super.base(this.camera);

		this.camera.transform.position = new Vector3(-0.01, 2.0, 4.5);
		this.camera.transform.rotationEuler = new Vector3(-17.3, 0.07, -0.1);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;

		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/skinModel/BoneLinkScene/Assets/XunLongShi/Bary/Bary.lh",
			"resources/res/threeDimen/skinModel/BoneLinkScene/Assets/XunLongShi/Carn/Carn.lh",
			"resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh"];

		Laya.loader.load(resource, Handler.create(this, this.onLoadFinish));
	}

	private onLoadFinish(): void {
		//初始化角色精灵
		this.role = (<Sprite3D>this.scene.addChild(new Sprite3D()));

		//初始化胖子
		this.pangzi = (<Sprite3D>this.role.addChild(Loader.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh")));
		//获取动画组件
		this.animator = (<Animator>this.pangzi.getChildAt(0).getComponent(Animator));

		//创建动作状态
		var state1: AnimatorState = new AnimatorState();
		//动作名称
		state1.name = "hello";
		//动作播放起始时间
		state1.clipStart = 296 / 581;
		//动作播放结束时间
		state1.clipEnd = 346 / 581;
		//设置动作
		state1.clip = this.animator.getDefaultState().clip;
		//设置动作循环
		state1.clip.islooping = true;
		//为动画组件添加一个动作状态
		this.animator.getControllerLayer(0).addState(state1);
		//播放动作
		this.animator.play("hello");

		var state2: AnimatorState = new AnimatorState();
		state2.name = "ride";
		state2.clipStart = 3 / 581;
		state2.clipEnd = 33 / 581;
		state2.clip = this.animator.getDefaultState().clip;
		state2.clip.islooping = true;
		this.animator.getControllerLayer(0).addState(state2);

		this.dragon1 = Loader.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/Assets/XunLongShi/Bary/Bary.lh");
		this.dragon1.transform.localScale = new Laya.Vector3(0.1, 0.1, 0.1);
		this.aniSprte3D1 = (<Sprite3D>this.dragon1.getChildAt(0));
		this.dragonAnimator1 = (<Animator>this.aniSprte3D1.getComponent(Animator));

		this.dragon2 = Loader.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/Assets/XunLongShi/Carn/Carn.lh");
		this.dragon2.transform.localScale = new Laya.Vector3(0.1, 0.1, 0.1);
		this.aniSprte3D2 = (<Sprite3D>this.dragon2.getChildAt(0));
		this.dragonAnimator2 = (<Animator>this.aniSprte3D2.getComponent(Animator));

		this.loadUI();
	}

	private loadUI(): void {
		Laya.loader.load(["resources/image/img_btn_bg.png"], Handler.create(this, () => {

			this.changeActionButton = (<Button>this.scene.scene2D.addChild(new Button("resources/image/img_btn_bg.png", "乘骑坐骑")));
			this.changeActionButton.size(160, 40);
			this.changeActionButton.labelBold = true;
			this.changeActionButton.labelSize = 30;
			this.changeActionButton.sizeGrid = "4,4,4,4";
			this.changeActionButton.pos(this.pageWidth / 2 - this.changeActionButton.width / 2, this.pageHeight - 50);
			this.changeActionButton.on(Event.CLICK, this, this.stypeFun0);

		}));
	}

	getAvatarNodeByNames(target: Sprite3D, name: string): Sprite3D {
		for (let i: number = 0; i < target.numChildren; i++) {
			let child: Sprite3D = target.getChildAt(i) as Sprite3D;
			if (child.name == name) {
				return child;
			}
			let res = this.getAvatarNodeByNames(child, name);
			if (res) {
				return res;
			}
		}
	}


	stypeFun0(label: string = "乘骑坐骑"): void {
		this.curStateIndex++;
		if (this.curStateIndex % 3 == 1) {

			this.changeActionButton.label = "切换坐骑";
			this.dragon1.removeSelf();
			this.dragon2.removeSelf();

			let linkNode = this.getAvatarNodeByNames(this.pangzi, "AvatarNode");
			linkNode && linkNode.addChild(this.dragon1);
			this.dragon1.transform.localPosition = new Vector3(-0.5, 0, 0);
			this.dragon1.transform.localRotationEuler = new Vector3(0, -180, 100);
			this.animator.play("ride");
		}
		else if (this.curStateIndex % 3 == 2) {

			this.changeActionButton.label = "卸下坐骑";

			this.dragon1.removeSelf();
			this.dragon2.removeSelf();

			let linkNode = this.getAvatarNodeByNames(this.pangzi, "AvatarNode");
			linkNode && linkNode.addChild(this.dragon2);
			this.dragon2.transform.localPosition = new Vector3(-0.7, 0, 0);
			this.dragon2.transform.localRotationEuler = new Vector3(0, 180, 95);
			this.animator.play("ride");
		}
		else {

			this.changeActionButton.label = "乘骑坐骑";

			this.dragon1.removeSelf();
			this.dragon2.removeSelf();

			this.scene.addChild(this.role);
			this.animator.play("hello");
		}

		label = this.changeActionButton.label;
	}
}