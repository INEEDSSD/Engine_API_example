const { regClass, property } = Laya;

@regClass()
export class Physics_QueryAABB extends Laya.Script {
    declare owner: Laya.Scene;

    private physicsManager: Laya.Physics2DWorldManager;

    @property(Laya.Sprite)
    targetSp: Laya.Sprite;

    private tAABB: any;


    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        //获取当前场景的2d物理管理类
        this.physicsManager = this.owner.getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        //获取要检测形状的物理组件
        let rg = this.targetSp.getComponent(Laya.StaticCollider);
        //获取形状数组
        let shapes = rg.shapes;
        //获取形状之一的AABB包围盒
        this.tAABB = shapes[0].getAABB();
        //初始化检测结果
        let res: Laya.ColliderBase[] = [];

        Laya.stage.on(Laya.Event.CLICK, this, () => {
            //场景的AABB重叠检测
            this.physicsManager.QueryAABB(res, this.tAABB);

            //显示检测结果
            res.forEach(collider => {
                // let label = new Laya.Label();
                // label.text = "当前Sprite查询到与AABB重叠";
                // collider.owner.addChild(label);

                collider.owner.graphics.drawCircle(0, 0, 10, "#df3f2f");
                console.log(collider.owner.name);
            });
        })
    }


    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}