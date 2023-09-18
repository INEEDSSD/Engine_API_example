import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
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
	private _dragonScale: Vector3 = new Vector3(1.5, 1.5, 1.5);
	private _rotation: Quaternion = new Quaternion(-0.5, -0.5, 0.5, -0.5);
	private _position: Vector3 = new Vector3(-0.2, 0.0, 0.0);
	private _scale: Vector3 = new Vector3(0.75, 0.75, 0.75);
	private _translate: Vector3 = new Vector3(0, 3, 5);
	private _rotation2: Vector3 = new Vector3(-15, 0, 0);
	private _forward: Vector3 = new Vector3(-1.0, -1.0, -1.0);
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

		this.camera.transform.position = new Vector3(0, 3, 5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
        		//设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;

		//预加载所有资源
		var resource: any[] = ["resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_H_001.lh",
			"resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_S_009.lh",
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

		this.dragon1 = Loader.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_H_001.lh");
		this.dragon1.transform.localScale = this._dragonScale;
		this.aniSprte3D1 = (<Sprite3D>this.dragon1.getChildAt(0));
		this.dragonAnimator1 = (<Animator>this.aniSprte3D1.getComponent(Animator));

		var state3: AnimatorState = new AnimatorState();
		state3.name = "run";
		state3.clipStart = 50 / 644;
		state3.clipEnd = 65 / 644;
		state3.clip = this.dragonAnimator1.getDefaultState().clip;
		state3.clip.islooping = true;
		this.dragonAnimator1.getControllerLayer(0).addState(state3);

		this.dragon2 = Loader.createNodes("resources/res/threeDimen/skinModel/BoneLinkScene/R_kl_S_009.lh");
		this.dragon2.transform.localScale = this._dragonScale;
		this.aniSprte3D2 = (<Sprite3D>this.dragon2.getChildAt(0));
		this.dragonAnimator2 = (<Animator>this.aniSprte3D2.getComponent(Animator));

		var state4: AnimatorState = new AnimatorState();
		state4.name = "run";
		state4.clipStart = 50 / 550;
		state4.clipEnd = 65 / 550;
		state4.clip = this.dragonAnimator2.getDefaultState().clip;
		state4.clip.islooping = true;
		this.dragonAnimator2.getControllerLayer(0).addState(state4);

		this.loadUI();
	}

	private loadUI(): void {

		Laya.loader.load(["resources/image/img_btn_bg.png"], Handler.create(this, () => {

			this.changeActionButton = (<Button>Laya.stage.addChild(new Button("resources/image/img_btn_bg.png", "乘骑坐骑")));
			this.changeActionButton.size(160, 40);
			this.changeActionButton.labelBold = true;
			this.changeActionButton.labelSize = 30;
			this.changeActionButton.sizeGrid = "4,4,4,4";
			this.changeActionButton.pos(this.pageWidth / 2 - this.changeActionButton.width/2, this.pageHeight - 100);
			this.changeActionButton.on(Event.CLICK, this, this.stypeFun0);

		}));
	}

	stypeFun0(label:string = "乘骑坐骑"): void {

		this.curStateIndex++;
		if (this.curStateIndex % 3 == 1) {

			this.changeActionButton.label = "切换坐骑";

			this.scene.addChild(this.dragon1);
			this.aniSprte3D1.addChild(this.role);

			//关联精灵节点到Avatar节点
			//this.dragonAnimator1.linkSprite3DToAvatarNode("point", this.role);

			this.animator.play("ride");
			this.dragonAnimator1.play("run");

			this.pangzi.transform.localRotation = this._rotation;
			this.pangzi.transform.localPosition = this._position;
			this.pangzi.transform.localScale = this._scale;
		}
		else if (this.curStateIndex % 3 == 2) {

			this.changeActionButton.label = "卸下坐骑";

			//骨骼取消关联节点
			//this.dragonAnimator1.unLinkSprite3DToAvatarNode(this.role);
			this.aniSprte3D1.removeChild(this.role);
			this.dragon1.removeSelf();

			this.scene.addChild(this.dragon2);
			this.aniSprte3D2.addChild(this.role);
			//骨骼关联节点
			//this.dragonAnimator2.linkSprite3DToAvatarNode("point", this.role);

			this.animator.play("ride");
			this.dragonAnimator2.play("run");

			this.pangzi.transform.localRotation = this._rotation;
			this.pangzi.transform.localPosition = this._position;
			this.pangzi.transform.localScale = this._scale;
		}
		else {

			this.changeActionButton.label = "乘骑坐骑";

			//骨骼取消关联节点
			//this.dragonAnimator2.unLinkSprite3DToAvatarNode(this.role);
			this.aniSprte3D2.removeChild(this.role);
			this.dragon2.removeSelf();

			this.scene.addChild(this.role);
			this.animator.play("hello");
		}

		label = this.changeActionButton.label;
	}
}