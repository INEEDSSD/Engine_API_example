import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Vector3 = Laya.Vector3;
import Matrix4x4 = Laya.Matrix4x4;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import Animator = Laya.Animator;
import AnimatorState = Laya.AnimatorState;
import AnimationClip = Laya.AnimationClip;

const { regClass, property } = Laya;

@regClass()
export class MaterialAnimation extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private _animator: Animator;
    private _animatorState: AnimatorState;
    private _animatorClip: AnimationClip;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

        //获得Sprite3D
        var cube: Sprite3D = <Sprite3D>this.scene.getChildByName("Cube");
        //获取动画组件
        this._animator = (<Animator>cube.getComponent(Animator));
        //获取动画状态
        this._animatorState = this._animator.getControllerLayer(0).getAnimatorState("Color");       
        //获取动画Clip
        this._animatorClip = this._animatorState.clip;

        //动画的编辑过程在IDE的时间轴动画中完成，并添加到动画状态机中，代码可以切换动画
        console.log(this._animatorClip);

        //super.addBottomButton( ["切换动画","切换动画"] , this, [this.changeAnimation, this.changeAnimation] );

        //加载.lani文件 resources\res\threeDimen\materialScene\Conventional\Assets\LayaAir3D
        // Laya.loader.load("resources/res/threeDimen/materialScene/Conventional/Assets/LayaAir3D/Specular Animation.lani").then(res=>{
        //     let SpecularClip = res;
        //     //创建动作状态
        //     var state1: AnimatorState = new AnimatorState();
        //     //动作名称
        //     state1.name = "SpecularColor";
        //     //设置动作
        //     state1.clip = SpecularClip;
        //     //循环模式
        //     state1.clip.islooping = true;
        //     //为动画组件添加一个动作状态
        //     this._animator.getControllerLayer(0).addState(state1);

            
        // });        

    }

	// changeAnimation (): void {
	// 	this._animator.play("SpecularColor");
	// }    

}