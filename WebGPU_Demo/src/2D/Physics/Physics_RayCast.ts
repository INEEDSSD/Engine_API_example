const { regClass, property } = Laya;

@regClass()
export class Physics_RayCast extends Laya.Script {
    declare owner: Laya.Scene;

    @property(Laya.Vector2)
    start: Laya.Vector2;

    @property(Laya.Vector2)
    end: Laya.Vector2;

    private physicsManager: Laya.Physics2DWorldManager;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        //获取当前scene的2d物理管理类
        this.physicsManager = this.owner.getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
        //初始化碰撞结果
        let res: Laya.Physics2DHitResult[] = [];

        Laya.stage.on(Laya.Event.CLICK, this, () => {
            //绘制射线内容
            this.owner.graphics.drawLine(this.start.x, this.start.y, this.end.x, this.end.y, "#229042");
            //射线检测
            this.physicsManager.RayCast(res, new Laya.Vector2(this.start.x, this.start.y), new Laya.Vector2(this.end.x, this.end.y));
            // 显示检测结果
            res.forEach(item => {
                item.collider.owner.graphics.drawCircle(0, 0, 10, "#e23e30");
            });
        })

    }

    //组件被启用后执行，例如节点被添加到舞台后
    //onEnable(): void {}

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