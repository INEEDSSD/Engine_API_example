const { regClass, property } = Laya;
import Event = Laya.Event;
import Keyboard = Laya.Keyboard;
/** 
 * @author Charley
 * @zh 角色控制脚本
 * @en Role control script
 */
@regClass()
export default class Role extends Laya.Script {
    declare owner: Laya.Sprite;

    /**虚拟按键开关 */
    @property({ type: Boolean })
    private virtualKey: boolean = false;
    /** 虚拟键盘向上按键 */
    @property({ type: Laya.Sprite, hidden: "!data.virtualKey" })
    private up: Laya.Sprite;
    /** 虚拟键盘向下按键 */
    @property({ type: Laya.Sprite, hidden: "!data.virtualKey" })
    private down: Laya.Sprite;
    /** 虚拟键盘向左按键 */
    @property({ type: Laya.Sprite, hidden: "!data.virtualKey" })
    private left: Laya.Sprite;
    /** 虚拟键盘向右按键 */
    @property({ type: Laya.Sprite, hidden: "!data.virtualKey" })
    private right: Laya.Sprite;
    /** 移动的方向 */
    private moveDirection: string = '';
    /** 角色方向状态 */
    private directionStates: Record<string, boolean> = { up: false, down: false, left: false, right: false };
    /** 是否正在移动 */
    private isMoving: boolean = false;
    /** 角色动画 */
    private _animator: Laya.Animator2D;
    /** 背景节点，用于控制边界 */
    private bg: Laya.Image;

    onEnable(): void {
        this._animator = this.owner.getComponent<Laya.Animator2D>(Laya.Animator2D);
        this.bg = this.owner.parent as Laya.Image;

        if (this.virtualKey) {
            // 绑定方向按键事件
            this.bindDirectionalInput(this.up, "up");
            this.bindDirectionalInput(this.down, "down");
            this.bindDirectionalInput(this.left, "left");
            this.bindDirectionalInput(this.right, "right");
        }
    }

    /*
     * 处理虚拟键盘方向与事件状态
     * @param button 按键
     * @param direction 方向
     * */
    private bindDirectionalInput(button: Laya.Sprite, direction: string): void {
        // 设置移动方向
        button.on(Event.MOUSE_DOWN, this, () => this.setDirection(direction));
        // 重置方向
        button.on(Event.MOUSE_UP, this, this.resetDirection);
        button.on(Event.MOUSE_OUT, this, this.resetDirection);
    }

    /** 设置移动方向与状态 */
    private setDirection(direction: string): void {
        this.moveDirection = direction; // 更新移动方向
        this.isMoving = true;    // 设置为移动状态
        this.directionStates[direction] = true; // 更新方向状态
    }
    /** 重置移动方向与状态 */
    private resetDirection(): void {
        this.directionStates[this.moveDirection] = false; // 重置当前方向状态
        this.updateMovementDirection(); // 更新移动方向
    }

    onUpdate(): void {
        // 如果当前处于移动状态，处理方向移动
        if (this.isMoving) {
            this.directionPress(this.moveDirection);
        }
    }

    /**
     * 虚拟方向键按下时
     * @param direction 角色移动方向
     */
    directionPress(direction: string): void {
        switch (direction) {
            case "up":
                if (this.owner.y > 80) {
                    this.owner.y -= 2;
                }
                break;
            case "down":
                if (this.owner.y < this.bg.height - 130) {
                    this.owner.y += 2;
                }
                break;
            case "left":
                if (this.owner.x > 30) {
                    this.owner.x -= 2;
                }
                break;
            case "right":
                if (this.owner.x < this.bg.width - 130) {
                    this.owner.x += 2;
                }
                break;
        }
        this.playRoleAni(direction, "run");
    }

    /** 播放动画
     * @param name 动画名称
     * @param type 动画类型，跑:run，站:stand
     */
    playRoleAni(name: string, type: string = "stand"): void {
        this._animator.play(type == "run" ? "run" + name.substring(0, 1).toUpperCase() + name.substring(1) : name);
    }

    onKeyDown(e: Event): void {
        this.updateDirectionState(e, true); // 更新状态为按下
        this.updateMovementDirection();
    }
    //键盘按键抬起时
    onKeyUp(e: Event): void {
        this.updateDirectionState(e, false); // 更新状态为抬起
        this.updateMovementDirection();
    }

    /** 
     * 更新方向状态
     * @param e 事件对象
     * @param isPressed 是否按下
     */
    private updateDirectionState(e: Event, isPressed: boolean): void {
        const key = e["keyCode"];
        switch (key) {
            case Keyboard.UP:
            case Keyboard.W:
                this.directionStates.up = isPressed;
                break;
            case Keyboard.DOWN:
            case Keyboard.S:
                this.directionStates.down = isPressed;
                break;
            case Keyboard.LEFT:
            case Keyboard.A:
                this.directionStates.left = isPressed;
                break;
            case Keyboard.RIGHT:
            case Keyboard.D:
                this.directionStates.right = isPressed;
                break;
        }
    }

    /** 
     * 更新移动方向 
     */
    updateMovementDirection(): void {
        // 初始化为非移动状态
        this.isMoving = false;
        // 循环遍历方向状态，找到移动方向
        for (const dir of ['up', 'down', 'left', 'right']) {
            if (this.directionStates[dir]) {
                this.moveDirection = dir; // 更新移动方向
                this.isMoving = true; // 设置为移动状态
                this.playRoleAni(dir, "run"); // 播放动画
                break; // 一旦找到移动方向，跳出循环
            }
        }
        // 如果不再移动，播放站立动画   
        if (!this.isMoving) this.playRoleAni(this.moveDirection);
    }

    /** 
     * 禁用时的清理
     */
    onDisable(): void {
        if (this.virtualKey) {
            // 解绑事件以防内存泄漏
            this.up.off(Event.MOUSE_DOWN, this, this.setDirection);
            this.down.off(Event.MOUSE_DOWN, this, this.setDirection);
            this.left.off(Event.MOUSE_DOWN, this, this.setDirection);
            this.right.off(Event.MOUSE_DOWN, this, this.setDirection);
        }
    }
}