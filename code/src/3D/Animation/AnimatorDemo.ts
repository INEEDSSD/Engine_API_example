import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Vector3 = Laya.Vector3;
import Animator = Laya.Animator;
import AnimatorState = Laya.AnimatorState;
import Text = Laya.Text;
import Matrix4x4 = Laya.Matrix4x4;
import Button = Laya.Button;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class AnimatorDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private _animator: Animator;
	private _changeActionButton: Button;
	private _changeActionButton2: Button;
	private _PlayStopIndex: number = 0;
	private _curStateIndex: number = 0;
	private _text: Text = new Text();
	private _textName: Text = new Text();
	private _curActionName: string = null;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		this.camera.transform.position = new Vector3(0, 3, 5);
		this.camera.transform.rotate(new Vector3(-15, 0, 0), true, false);

		this.directionLight.getComponent(Laya.DirectionLightCom).color.setValue(1, 1, 1, 1);
        //设置平行光的方向
		var mat: Matrix4x4 = this.directionLight.transform.worldMatrix;
		mat.setForward(new Vector3(-1.0, -1.0, -1.0));
		this.directionLight.transform.worldMatrix = mat;

        Laya.loader.load("resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh").then(res=>{
            this.onLoadFinish(res);
        });
    }

    private onLoadFinish(res:any): void {

        //初始化角色精灵
        var role: Sprite3D = (<Sprite3D>this.scene.addChild(new Sprite3D()));
        //初始化胖子
        var pangzi: Sprite3D = (<Sprite3D>role.addChild(res.create()));
        //获取动画组件
        this._animator = (<Animator>pangzi.getChildAt(0).getComponent(Animator));
        //创建动作状态
        var state1: AnimatorState = new AnimatorState();
        //动作名称
        state1.name = "hello";
        //动作播放起始时间
        state1.clipStart = 296 / 581;
        //动作播放结束时间
        state1.clipEnd = 346 / 581;
        //设置动作
        state1.clip = this._animator.getDefaultState().clip;
        //循环模式
        state1.clip.islooping = true;
        //为动画状态添加动画状态脚本
        state1.addScript(CustomAnimatorStateScript);
        //为动画组件添加一个动作状态
        this._animator.getControllerLayer(0).addState(state1);

        var state2: AnimatorState = new AnimatorState();
        state2.name = "ride";
        state2.clipStart = 0 / 581;
        state2.clipEnd = 33 / 581;
        state2.clip = this._animator.getDefaultState().clip;
        state2.clip.islooping = true;
        state2.addScript(CustomAnimatorStateScript);
        this._animator.getControllerLayer(0).addState(state2);
        this._animator.speed = 0.0;

        var state3: AnimatorState = new AnimatorState();
        state3.name = "动作状态三";
        state3.clipStart = 34 / 581;
        state3.clipEnd = 100 / 581;
        state3.clip = this._animator.getDefaultState().clip;
        state3.clip.islooping = true;
        state3.addScript(CustomAnimatorStateScript);
        this._animator.getControllerLayer(0).addState(state3);
        this._animator.speed = 0.0;

        var state4: AnimatorState = new AnimatorState();
        state4.name = "动作状态四";
        state4.clipStart = 101 / 581;
        state4.clipEnd = 200 / 581;
        state4.clip = this._animator.getDefaultState().clip;
        state4.clip.islooping = true;
        state4.addScript(CustomAnimatorStateScript);
        this._animator.getControllerLayer(0).addState(state4);
        this._animator.speed = 0.0;

        var state5: AnimatorState = new AnimatorState();
        state5.name = "动作状态五"; 
        state5.clipStart = 201 / 581;
        state5.clipEnd = 295 / 581;
        state5.clip = this._animator.getDefaultState().clip;
        state5.clip.islooping = true;
        state5.addScript(CustomAnimatorStateScript);
        this._animator.getControllerLayer(0).addState(state5);
        this._animator.speed = 0.0;

        var state6: AnimatorState = new AnimatorState();
        state6.name = "动作状态六";
        state6.clipStart = 345 / 581;
        state6.clipEnd = 581 / 581;
        state6.clip = this._animator.getDefaultState().clip;
        state6.clip.islooping = true;
        state6.addScript(CustomAnimatorStateScript);
        this._animator.getControllerLayer(0).addState(state6);
        this._animator.speed = 0.0;

        this.loadUI();
		this._textName.width = 300;
		this._textName.align = "center";
		this._textName.x = ( this.pageWidth - this._textName.width) / 2;
        this._textName.y = 10;
        this._textName.overflow = Text.HIDDEN;
        this._textName.color = "#FFFFFF";
        this._textName.fontSize = 16;
        this._textName.text = "当前动作状态名称：";
        this.owner.addChild(this._textName);

		this._text.width = 300;
		this._text.align = "center";
		this._text.x = ( this.pageWidth - this._text.width) / 2;
        this._text.y = 50;
        this._text.overflow = Text.HIDDEN;
        this._text.color = "#FFFFFF";
        this._text.fontSize = 16;
        this._text.text = "当前动作状态进度：";
        this.owner.addChild(this._text);

        Laya.timer.frameLoop(1, this, this.onFrame);

        this._curActionName = "hello";
        this._animator.play(this._curActionName);
    }

    private loadUI(): void {

        this._changeActionButton = (<Button>this.owner.addChild(new Button("resources/image/img_btn_bg.png", "播放动画")));
        this._changeActionButton.size(150, 40);
        this._changeActionButton.labelSize = 16;
        this._changeActionButton.sizeGrid = "21,83,22,76";
        this._changeActionButton.stateNum = 1;
        this._changeActionButton.labelColors = "#ffffff";
        this._changeActionButton.pos(this.pageWidth / 2 - this._changeActionButton.width - 10, this.pageHeight - 50);
        this._changeActionButton.on(Event.CLICK, this, this.stypeFun0);

        this._changeActionButton2 = (<Button>this.owner.addChild(new Button("resources/image/img_btn_bg.png", "切换动作状态")));
        this._changeActionButton2.size(150, 40);
        this._changeActionButton2.labelSize = 16;
        this._changeActionButton2.sizeGrid = "21,83,22,76";
        this._changeActionButton2.stateNum = 1;
        this._changeActionButton2.labelColors = "#ffffff";
        this._changeActionButton2.pos(this.pageWidth / 2 + 10, this.pageHeight - 50);
        this._changeActionButton2.on(Event.CLICK, this, this.stypeFun1);

    }

    stypeFun0(label:string = "播放动画")
    {
        this._PlayStopIndex++;
        if (this._PlayStopIndex % 3 == 0) {
            this._changeActionButton.label = "播放动画";
            //暂停动画
            this._animator.speed = 0.0;
        } else if (this._PlayStopIndex % 3 == 1) {
            this._changeActionButton.label = "动画融合";
            this._animator.play(this._curActionName);
            //播放动画
            this._animator.speed = 1.0;
        } else if (this._PlayStopIndex % 3 == 2) {
            this._changeActionButton.label = "暂停动画";
            this._animator.crossFade(this._curActionName , 0.5);
            //播放动画
            this._animator.speed = 1.0;
        }
        label = this._changeActionButton.label;
    }

    stypeFun1(curStateIndex:any =0)
    {
        this._curStateIndex++;
        if (this._curStateIndex % 6 == 0) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("hello");
            this._curActionName = "hello";
            this._textName.text = "当前动作状态名称：" + "hello";
            this._animator.speed = 1.0;
        } else if (this._curStateIndex % 6 == 1) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("ride");
            this._curActionName = "ride";
            this._textName.text = "当前动作状态名称：" + "ride";
            this._animator.speed = 1.0;
        } else if (this._curStateIndex % 6 == 2) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("动作状态三");
            this._curActionName = "动作状态三";
            this._textName.text = "当前动作状态名称：" + "动作状态三";
            this._animator.speed = 1.0;
        } else if (this._curStateIndex % 6 == 3) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("动作状态四");
            this._curActionName = "动作状态四";
            this._textName.text = "当前动作状态名称：" + "动作状态四";
            this._animator.speed = 1.0;
        } else if (this._curStateIndex % 6 == 4) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("动作状态五");
            this._curActionName = "动作状态五";
            this._textName.text = "当前动作状态名称：" + "动作状态五";
            this._animator.speed = 1.0;
        } else if (this._curStateIndex % 6 == 5) {
            this._changeActionButton.label = "暂停动画";
            this._animator.speed = 0.0;
            this._animator.play("动作状态六");
            this._curActionName = "动作状态六";
            this._textName.text = "当前动作状态名称：" + "动作状态六";
            this._animator.speed = 1.0;
        }
        curStateIndex = this._curStateIndex;
    }

    private onFrame(): void {
        if (this._animator.speed > 0.0) {
            //获取播放状态的归一化时间
            var curNormalizedTime: string = this._animator.getControllerLayer(0).getCurrentPlayState().normalizedTime.toFixed(2);
            this._text.text = "当前动画状态进度：" + curNormalizedTime;
        }
    }
}


export class CustomAnimatorStateScript extends Laya.AnimatorStateScript {

	constructor() {
		super();
	}

	/**
	* 动画状态开始时执行。
	*/
	onStateEnter(): void {
		console.log("动画开始播放了");
	}
	/**
	 * 动画状态运行中
	 * @param normalizeTime 0-1动画播放状态
	 */
	onStateUpdate(normalizeTime: number): void {
		console.log("动画状态更新了");
	}

	/**
	* 动画状态退出时执行。
	*/
	onStateExit(): void {
		console.log("动画退出了");
	}
}