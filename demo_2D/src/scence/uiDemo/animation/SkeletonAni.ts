const { regClass, property } = Laya;

/**
 * @author Charley
 * @zh 骨骼动画示例:
 * - 骨骼动画有两种，一种是将spine或龙骨动画通过LayaAirIDE转换为引擎内置的骨骼动画（无论是spine还是龙骨，转换成引擎内置的动画文件后，都是sk后缀，），转换后的骨骼动画性能更高，但有版本限制，且仅支持基础的功能。
 * - 另一种是直接使用第三方的动画文件和动画运行库。例如Spine运行库版本，这种直接使用spine文件（skel后缀），这种支持相对完整的功能。
 */
@regClass()
export default class SkeletonAni extends Laya.Script {
    /**内置的骨骼动画 */
    private skeletonAni: Laya.Skeleton;
    /**spine动画 */
    private spineAni: Laya.Spine2DRenderNode;
    /** 动画皮肤名称 */
    private skinArray: Array<string> = ["goblin", "goblingirl"];
    /** 动画皮肤索引 */
    private skinIndex: number = 0;
    /** spine 动画索引 */
    private spineAniIndex: number = 6;
    /** 挂载内置spine动画的节点 */
    private skeletonNode: Laya.Sprite;
    /**挂载spine动画的节点 */
    @property(Laya.Sprite)
    private spineNode: Laya.Sprite;
    /** spine的按钮 */
    @property(Laya.Button)
    private spineBtn: Laya.Button;
    /** spine动画的数量 */
    private spineAniNum: number;

    onEnable(): void {
        this.createLayaSpine();
        this.playSpine();
    }

    /**创建layaAir引擎内置的spine动画 */
    createLayaSpine(): void {
        this.skeletonNode = this.owner.getChildByName("skeletonNode") as Laya.Sprite;
        Laya.loader.load("resources/UI/role/spineAni/goblins.sk").then((templet: Laya.Templet) => {
            //创建动画，缓冲区模式为1，可以启用换装
            this.skeletonAni = templet.buildArmature(1);
            this.skeletonNode.addChild(this.skeletonAni);
            this.skeletonAni.x = 128;
            this.skeletonAni.y = 390;

            //按索引播放动画
            this.skeletonAni.play(0, true);
            //初次设置皮肤
            this.changeSkin();
            //点击换肤
            this.skeletonNode.on(Laya.Event.CLICK, this, this.changeSkin);
        });
    }

    /** 改变引擎内置的骨骼动画皮肤 */
    changeSkin(): void {
        //按名称来播放spine动画,如果想按索引可用showSkinByIndex(index)
        this.skeletonAni.showSkinByName(this.skinArray[this.skinIndex]);
        //改变索引值，超出皮肤的索引长度后，一直循环重置
        this.skinIndex = (this.skinIndex + 1) % this.skinArray.length;
    }

    /**播放spine运行库动画 */
    playSpine(): void {
        //找到spine动画组件
        this.spineAni = this.spineNode.getComponent(Laya.Spine2DRenderNode);
        //获得spine动画的数量，这里要重点提醒的是，由于spine组件只有Play会由引擎去加载完成后才去播放，调用其它的API，务必要保障spine动画资源已经加载完成。否则会报错。
        this.spineAniNum = this.spineAni.getAnimNum();
        //按索引播放动画
        this.spineAni.play(this.spineAniIndex, true);
        //侦听点击，换动画
        this.spineBtn.on(Laya.Event.CLICK, this, this.changeAni);
    }

    /** 更换Spine动作 */
    changeAni(): void {
        //挑几个好看的spine动画，所以把前几个跳过去了，开发者可按实际需求设置动画索引值
        ++this.spineAniIndex >= this.spineAniNum && (this.spineAniIndex = 5);
        //按索引播放动画
        this.spineAni.play(this.spineAniIndex, true, true);
    }

}