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
import AnimatorStateScript = Laya.AnimatorStateScript;

const { regClass, property } = Laya;

@regClass()
export class AnimatorStateScriptDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private animator: Animator;
	private curStateIndex: number = 0;
	private text: Text = new Text();
	private textName: Text = new Text();
	private curActionName: string = null;

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
		this.animator = (<Animator>pangzi.getChildAt(0).getComponent(Animator));
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
		//循环模式
		state1.clip.islooping = true;
		//为动画状态添加动画状态脚本
		var asst1 = state1.addScript(AnimatorStateScriptTest) as AnimatorStateScriptTest;
		asst1.text = this.text;
		this.animator.speed = 0.0;
		//为动画组件添加一个动作状态
		this.animator.getControllerLayer(0).addState(state1);

		var state2: AnimatorState = new AnimatorState();
		state2.name = "ride";
		state2.clipStart = 0 / 581;
		state2.clipEnd = 33 / 581;
		state2.clip = this.animator.getDefaultState().clip;
		state2.clip.islooping = true;
		var asst2 = state2.addScript(AnimatorStateScriptTest) as AnimatorStateScriptTest;
		asst2.text = this.text;
		this.animator.getControllerLayer(0).addState(state2);


		var state3: AnimatorState = new AnimatorState();
		state3.name = "动作状态三";
		state3.clipStart = 34 / 581;
		state3.clipEnd = 100 / 581;
		state3.clip = this.animator.getDefaultState().clip;
		state3.clip.islooping = true;
		this.animator.speed = 0.0;
		var asst3 = state3.addScript(AnimatorStateScriptTest) as AnimatorStateScriptTest;
		asst3.text = this.text;
		this.animator.getControllerLayer(0).addState(state3);

		this.textName.width = 300;
		this.textName.align = "center";
		this.textName.x = ( this.pageWidth - this.textName.width) / 2;
		this.textName.y = 10;
		this.textName.overflow = Text.HIDDEN;
		this.textName.color = "#FFFFFF";
		this.textName.fontSize = 16;
		this.textName.text = "当前动作状态名称：";
		this.box2D.addChild(this.textName);

		this.text.width = 300;
		this.text.align = "center";
		this.text.x = ( this.pageWidth - this.text.width) / 2;
        this.text.y = 50;
		this.text.overflow = Text.HIDDEN;
		this.text.color = "#FFFFFF";
		this.text.fontSize = 16;
		this.text.text = "动画状态：";
		this.box2D.addChild(this.text);

		super.addBottomButton( ["切换动作状态","切换动作状态","切换动作状态"] , this, [this.change, this.change, this.change] );
	}

	change() {

		this.curStateIndex++;
		if (this.curStateIndex % 3 == 0) {
			this.animator.speed = 0.0;
			this.animator.play("hello");
			this.textName.text = "当前动作状态名称：" + "hello";
			this.animator.speed = 1.0;
		} else if (this.curStateIndex % 3 == 1) {
			this.animator.speed = 0.0;
			this.animator.play("ride");
			this.textName.text = "当前动作状态名称：" + "ride";
			this.animator.speed = 1.0;
		} else if (this.curStateIndex % 3 == 2) {
			this.animator.speed = 0.0;
			this.animator.play("动作状态三");
			this.textName.text = "当前动作状态名称：" + "动作状态三";
			this.animator.speed = 1.0;
		}
	}
}

class AnimatorStateScriptTest extends AnimatorStateScript {
	
	private _text: Text = null;

	get text(): Text {
		return this._text;
	}
	set text(value: Text) {
		this._text = value;
	}
	constructor() {
		super();
	}

	/**
	 * 动画状态开始时执行。
	 */
	onStateEnter(): void {
		console.log("动画开始播放了");
		this._text.text = "动画状态：动画开始播放";
	}

	/**
	 * 动画状态运行中
	 * @param normalizeTime 0-1动画播放状态
	 */
	 onStateUpdate(normalizeTime: number): void {
		console.log("动画状态更新了");
		this._text.text = "动画状态：动画更新中";
	}

	/**
	* 动画状态退出时执行。
	*/
	onStateExit(): void {
		console.log("动画退出了");
		this._text.text = "动画状态：动画开始退出";
	}

}