import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import DirectionLight = Laya.DirectionLight;
import Sprite3D = Laya.Sprite3D;
import Animator = Laya.Animator;
import AnimatorState = Laya.AnimatorState;
import AnimationClip = Laya.AnimationClip;

const { regClass, property } = Laya;

@regClass()
export class CameraAnimation extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  

    private _animator: Animator;
    private _animatorState: AnimatorState;
    private _animatorClip: AnimationClip;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        //获取动画组件
        this._animator = (<Animator>this.camera.getComponent(Animator));
        //获取动画状态
        this._animatorState = this._animator.getControllerLayer(0).getAnimatorState("a1");       
        //获取动画Clip
        this._animatorClip = this._animatorState.clip;

        //动画的编辑过程在IDE的时间轴动画中完成，并添加到动画状态机中，代码可以切换动画
        console.log(this._animatorClip);        

        super.addBottomButton( ["切换动画","切换动画"] , this, [this.changeAnimation2, this.changeAnimation1] );

        //加载.lani文件 
        Laya.loader.load("resources/res/threeDimen/scene/cameraDonghua/Conventional/Assets/a2.lani").then(res=>{
            let clip = res;
            //创建动作状态
            var state1: AnimatorState = new AnimatorState();
            //动作名称
            state1.name = "a2";
            //设置动作
            state1.clip = clip;
            //循环模式
            state1.clip.islooping = true;
            //为动画组件添加新的动作状态
            this._animator.getControllerLayer(0).addState(state1);
            
        });            
    }

	changeAnimation2 (): void {
		this._animator.play("a2");
	}       
    
	changeAnimation1 (): void {
		this._animator.play("a1");
	}     

}