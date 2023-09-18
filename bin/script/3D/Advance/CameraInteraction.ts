import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import DirectionLight = Laya.DirectionLight;
import Camera = Laya.Camera;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class CameraInteraction extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;
    @property(Laya.Sprite3D)
    private directionLight: Laya.Sprite3D;

	private keyboard: Laya.Box;
	private joystick: Laya.Box;
	private isQuaternion: boolean;
	private isEuler: boolean;
	private isMatrix: boolean;
	private leftJoyStick: Laya.Box;
	private rightJoyStick: Laya.Box;
	private switchBtn: Laya.Button;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera, false);

        this.keyboard = new Laya.Box();  // 按键
        this.joystick = new Laya.Box(); // 摇杆

        this.isQuaternion = true;
        this.isEuler = false;
        this.isMatrix = false;

		//预加载资源
		Laya.loader.load("resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls").then((res)=>{
			this.onComplete(res);
		});
    }

    onComplete(res:any){
        // 加载3D场景
        var scene3D = res.create() as Laya.Scene3D;
        this.scene.addChild(scene3D);
        // 添加摄像机
        this.camera.transform.position = new Laya.Vector3(57, 2.5, 58);
        this.camera.transform.rotationEuler = new Laya.Vector3(-10, 150, 0);
        // 添加控制相机的组件
        this.camera.addComponent(CameraMoveQuaternion);
        this.camera.addComponent(CameraMoveEuler);
        this.camera.addComponent(CameraMoveMatrix);
        this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
        this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
        this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
        //添加方向光
        this.directionLight.getComponent(Laya.DirectionLightCom).color = new Laya.Color(0.6, 0.6, 0.6);
        this.directionLight.transform.worldMatrix.setForward(new Laya.Vector3(1, -1, 0));
        // 添加ui
        /*
         * 按键部分ui
        */
        this.keyboard.addComponent(KeyBoard);
        this.keyboard.width = 400;
        this.keyboard.height = 300;
        this.keyboard.left = 20;
        this.keyboard.bottom = 20;
        this.keyboard.scale(0.5,0.5);
        var q = new Laya.Sprite();
        var w = new Laya.Sprite();
        var e = new Laya.Sprite();
        var a = new Laya.Sprite();
        var s = new Laya.Sprite();
        var d = new Laya.Sprite();
        this.keyboard.addChild(q);
        this.keyboard.addChild(w);
        this.keyboard.addChild(e);
        this.keyboard.addChild(a);
        this.keyboard.addChild(s);
        this.keyboard.addChild(d);
        q.loadImage("resources/res/threeDimen/CameraInteraction/q.png");
        q.pos(0, 30);
        q.name = "q";

        w.loadImage("resources/res/threeDimen/CameraInteraction/w.png");
        w.pos(110, 30);
        w.name = "w";

        e.loadImage("resources/res/threeDimen/CameraInteraction/e.png");
        e.pos(220, 30);
        e.name = "e";

        a.loadImage("resources/res/threeDimen/CameraInteraction/a.png");
        a.pos(0, 140);
        a.name = "a";

        s.loadImage("resources/res/threeDimen/CameraInteraction/s.png");
        s.pos(110, 140);
        s.name = "s";

        d.loadImage("resources/res/threeDimen/CameraInteraction/d.png");
        d.pos(220, 140);
        d.name = "d";
        this.owner.addChild(this.keyboard);
        /**
         * 摇杆部分ui
         */
        this.joystick.left = 0;
        this.joystick.right = 0;
        this.joystick.top = 0;
        this.joystick.bottom = 0;
        this.leftJoyStick = new Laya.Box();
        this.joystick.addChild(this.leftJoyStick);
        this.leftJoyStick.name = "leftJoyStick";
        this.leftJoyStick.addComponent(JoyStick);
        this.leftJoyStick.width = 215;
        this.leftJoyStick.height = 215;
        this.leftJoyStick.left = 50;
        this.leftJoyStick.bottom = 50;
        // 左摇杆
        var bg: Laya.Sprite = new Laya.Sprite();
        this.leftJoyStick.addChild(bg);
        bg.loadImage("resources/res/threeDimen/CameraInteraction/joystick_bg.png");
        bg.width = 215;
        bg.height = 215;
        bg.name = "bg";
        // bg.left = 0;
        // bg.bottom = 0;

        var axis =  new Laya.Sprite();
        this.leftJoyStick.addChild(axis);
        axis.loadImage("resources/res/threeDimen/CameraInteraction/joystick_axis.png");
        axis.width = 78;
        axis.height = 78;
        axis.name = "axis";
        axis.pos(70, 70);
        // 右摇杆
        this.rightJoyStick = new Laya.Box();
        this.joystick.addChild(this.rightJoyStick);
        this.rightJoyStick.name = "rightJoyStick";
        this.rightJoyStick.addComponent(JoyStick);
        this.rightJoyStick.width = 215;
        this.rightJoyStick.height = 215;
        this.rightJoyStick.right = 50;
        this.rightJoyStick.bottom = 50;
        var bg = new Laya.Sprite();
        this.rightJoyStick.addChild(bg);
        bg.loadImage("resources/res/threeDimen/CameraInteraction/joystick_bg.png");
        bg.width = 215;
        bg.height = 215;
        bg.name = "bg";
        // bg.left = 0;
        // bg.bottom = 0;

        var axis =  new Laya.Sprite();
        this.rightJoyStick.addChild(axis);
        axis.loadImage("resources/res/threeDimen/CameraInteraction/joystick_axis.png");
        axis.width = 78;
        axis.height = 78;
        axis.name = "axis";
        axis.pos(70, 70);
        this.owner.addChild(this.joystick);

        // 获取左右摇杆
        this.camera.getComponent(CameraMoveQuaternion).moveRocker = this.leftJoyStick.getComponent(JoyStick);
        this.camera.getComponent(CameraMoveQuaternion).rotationRocker = this.rightJoyStick.getComponent(JoyStick);
        
        this.camera.getComponent(CameraMoveEuler).moveRocker = this.leftJoyStick.getComponent(JoyStick);
        this.camera.getComponent(CameraMoveEuler).rotationRocker = this.rightJoyStick.getComponent(JoyStick);

        this.camera.getComponent(CameraMoveMatrix).moveRocker = this.leftJoyStick.getComponent(JoyStick);
        this.camera.getComponent(CameraMoveMatrix).rotationRocker = this.rightJoyStick.getComponent(JoyStick);

        // 切换按钮
        this.switchBtn = this.owner.addChild(new Laya.Button("resources/image/img_btn_bg.png", "切换到欧拉角变换模式")) as Laya.Button;
        this.switchBtn.size(300, 30);
        this.switchBtn.labelSize = 16;
        this.switchBtn.sizeGrid = "21,83,22,76";
        this.switchBtn.stateNum = 1;
        this.switchBtn.labelColors = "#ffffff";
        this.switchBtn.pos(this.pageWidth / 2 - this.switchBtn.width / 2, 10);
        this.switchBtn.on(Laya.Event.CLICK, this, this.switchScript);

        if (Laya.Browser.onPC) {
            // pc浏览器使用按键模式
            this.keyboard.visible = true;
            this.joystick.visible = false;
            // 提示文字
            var text = new Laya.Label();
            text.pos(this.pageWidth / 2 - this.switchBtn.width / 2 , 60)
            text.overflow = Laya.Text.HIDDEN;
            text.color = "#ea4335";
            text.font = "Impact";
            text.fontSize = 20;
            text.borderColor = "#ea4335";
            text.text = "摇杆模式请扫二维码预览！";
            this.owner.addChild(text);
        }else{
            this.keyboard.visible = false;
            this.joystick.visible = true;
        }
    }
    switchScript(){
        if (this.isQuaternion) {
            // 四元数 -> 欧拉角
            this.isEuler = true;
            this.isQuaternion = false;
            this.isMatrix = false;
            this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
            this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
            this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
            this.switchBtn.label = "切换到矩阵变换模式";
       }else if (this.isEuler) {
            // 欧拉角 -> 矩阵
            this.isEuler = false;
            this.isQuaternion = false;
            this.isMatrix = true;
            this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
            this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
            this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
            this.switchBtn.label = "切换到四元数变换模式";
       }else if (this.isMatrix) {
            // 矩阵 -> 四元数
            this.isEuler = false;
            this.isQuaternion = true;
            this.isMatrix = false;
            this.camera.getComponent(CameraMoveQuaternion).enabled = this.isQuaternion;
            this.camera.getComponent(CameraMoveEuler).enabled = this.isEuler;
            this.camera.getComponent(CameraMoveMatrix).enabled = this.isMatrix;
            this.switchBtn.label = "切换到欧拉角变换模式";
       }
    }
 
}

export class KeyBoard extends Laya.Script {
    private w: Laya.Sprite; // 键盘按键w
    private a: Laya.Sprite; // 键盘按键a
    private s: Laya.Sprite; // 键盘按键s
    private d: Laya.Sprite; // 键盘按键d
    private q: Laya.Sprite; // 键盘按键q
    private e: Laya.Sprite; // 键盘按键e
    constructor(){
        super();
    }
    onEnable(){
        this.w = this.owner.getChildByName("w") as Laya.Sprite;
        this.a = this.owner.getChildByName("a") as Laya.Sprite;
        this.s = this.owner.getChildByName("s") as Laya.Sprite;
        this.d = this.owner.getChildByName("d") as Laya.Sprite;
        this.q = this.owner.getChildByName("q") as Laya.Sprite;
        this.e = this.owner.getChildByName("e") as Laya.Sprite;
        //添加键盘按下事件,一直按着某按键则会不断触发
		Laya.stage.on(Event.KEY_DOWN, this, this.onKeyDown);
		//添加键盘抬起事件
		Laya.stage.on(Event.KEY_UP, this, this.onKeyUp);
    }

    onKeyDown(e:any): void{
        switch (e.keyCode) {
            case 87://W
            case 38:
                this.w.visible = false;
                break;
            case 65://A
            case 37:
                this.a.visible = false;
                break;
            case 69://E
                this.e.visible = false;
                break;
            case 81://Q
                this.q.visible = false; 
                break;
            case 83://S
            case 40:
                this.s.visible = false;
                break;
            case 68://D
            case 39:
                this.d.visible = false;
                break;
        }
    }

    onKeyUp(): void{
        //重置键盘隐藏
        this.w.visible = true;
        this.a.visible = true;
        this.s.visible = true;
        this.d.visible = true;
        this.q.visible = true;
        this.e.visible = true;
    }

    onDisable(){
    }
}

export class JoyStick extends Laya.Script {
    // 摇杆
    private RockerPad: Laya.Sprite;
    // 轴节点
    private Rocker: Laya.Sprite;
    // 摇杆中心坐标
    private centerX: number = 0;
    private centerY: number = 0;
    // 是否移动
    private isMoving: boolean = false;
    private touchId: number = 0;    // 触摸点标识
    public angle: number = -1;    // 角度
    public radians: number = -1;  // 弧度
    // 摇杆轴心最大距离
    private maxDistance: number = 0;
    private maxDistanceSpr: number = 0;
    // 位移
    public deltaX: number = 0;
    public deltaY: number = 0;
    // 用来计算位移与轴节点位置
    private tempV2_1: Laya.Point = new Laya.Point(0, 0);
    private tempV2_2: Laya.Point = new Laya.Point(0, 0);

    constructor() { 
        super(); 
    }

    onAwake() {
        this.RockerPad = this.owner as Laya.Sprite; // 摇杆
        this.Rocker = this.RockerPad.getChildByName("axis") as Laya.Sprite; // 轴节点

        this.centerX = this.Rocker.x;   // 轴节点初始位置
        this.centerY = this.Rocker.y;

        !this.maxDistance && (this.maxDistance = (this.RockerPad.width - this.Rocker.width) / 2);   // 半径差
        this.maxDistanceSpr = this.maxDistance * this.maxDistance;  // 最大距离
    }

    onEnable(){
        // 注册监听
        this.owner.parent.on(Laya.Event.MOUSE_DOWN, this, this.MouseDown);
        this.owner.parent.on(Laya.Event.MOUSE_UP, this, this.MouseUp);
        this.owner.parent.on(Laya.Event.MOUSE_MOVE, this, this.MouseMove);
    }

    MouseDown(e:any): void{
        e.stopPropagation();
        if (e.target.mouseX > this.RockerPad.x &&
            e.target.mouseX < this.RockerPad.x + this.RockerPad.width &&
            e.target.mouseY > this.RockerPad.y &&
            e.target.mouseY < this.RockerPad.y + this.RockerPad.height) {
            // 摇杆产生了位移且未超出摇杆范围
            this.isMoving = true;
            this.touchId = e.touchId;
        }
    }

    MouseUp(e:any): void{
        e.stopPropagation();
        if (e.touchId != this.touchId) {
            return;
        }
        // 重设标志位
        this.isMoving = false;
        // 重置轴节点位置
        this.Rocker.pos(this.centerX, this.centerY);
        // 重置
        this.radians = this.angle = -1;
    }

    MouseMove(e:any): void{
        e.stopPropagation();
        if (e.touchId != this.touchId) {
            return;
        }
        if (this.isMoving) {
            // 产生了位移
            this.tempV2_1.x = e.target.mouseX;
            this.tempV2_1.y = e.target.mouseY;
            // 坐标转换
            this.tempV2_2 = this.RockerPad.globalToLocal(this.tempV2_1, false);

            // 更新控制点与摇杆中心点位置距离
            this.deltaX = this.tempV2_2.x - this.centerX;
            this.deltaY = this.tempV2_2.y - this.centerY;

            // 计算控制点在摇杆中的角度
            this.angle = Math.atan2(this.deltaX, this.deltaY) * 180 / Math.PI;
            if (this.angle < 0) {
                this.angle += 360;
            }
            // 角度/弧度转换
            this.angle = Math.round(this.angle);
            this.radians = Math.PI / 180 * this.angle;
            var distanceSqr = this.getDistanceSqr(this.centerX, this.centerY, this.tempV2_2.x, this.tempV2_2.y);    // 当前位置与初始位置的距离
            if (distanceSqr > this.maxDistanceSpr) {
                // 摇杆边缘位置
                var x = Math.floor(Math.sin(this.radians) * this.maxDistance + this.centerX);
                var y = Math.floor(Math.cos(this.radians) * this.maxDistance + this.centerY);
                this.Rocker.pos(x, y);
            }
            else {
                // 在摇杆与轴节点之间的范围内，更新位置
                this.Rocker.pos(this.tempV2_2.x, this.tempV2_2.y);
            }

        }
    }

    onDisable(){
        this.owner.parent.off(Laya.Event.MOUSE_DOWN, this, this.MouseDown);
        this.owner.parent.off(Laya.Event.MOUSE_UP, this, this.MouseUp);
        this.owner.parent.off(Laya.Event.MOUSE_MOVE, this, this.MouseMove);
    }

    getDistanceSqr(centerX: number, centerY: number, mouseX: number, mouseY: number): number{
        var dx = centerX - mouseX;
        var dy = centerY - mouseY;
        var distance = dx * dx + dy * dy;
        return distance; 
    }
}

export class CameraMoveEuler extends Laya.Script {
    // 移动摇杆
    public moveRocker: JoyStick;
    // 摄像机摇杆
    public rotationRocker: JoyStick;
    // 摄像机
    private camera: Laya.Camera;
    // 位移向量
    private _tempVector3: Laya.Vector3 = new Laya.Vector3();
    // 旋转角度
    private yawPitchRoll: Laya.Vector3 = new Laya.Vector3();
    // 按键下的旋转速度
    private rotaionSpeed: number = 0.004;
    // 摇杆下的旋转速度
    private rockerRotationSpeed: number = 0.0005;
    // 移动速度
    private moveSpeed: number = 0.0025;
    // 鼠标上个位置x，用来计算鼠标的位移
    private lastMouseX: number = 0;
    // 鼠标上个位置y
    private lastMouseY: number = 0;
    // 是否按下
    private isMouseDown: boolean = false;
    constructor(){
        super();
        
    }
	onEnable(){
        // 注册监听
		Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
        // 获取对象
		this.camera = this.owner as Laya.Camera;
	}

    onDisable() {
        console.log("camera euler script is disable :" + this.enabled);
        //关闭监听函数
        Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
        Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    
    onUpdate(): void{
		var elapsedTime = Laya.timer.delta;
        if (Laya.Browser.onPC) {
            // 按键模式
            if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
                Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);//W
                Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);//S
                Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);//A
                Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);//D
                Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);//Q
                Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);//E
                if (this.isMouseDown) {
                    var offsetX = Laya.stage.mouseX - this.lastMouseX;
                    var offsetY = Laya.stage.mouseY - this.lastMouseY;
                    
                    // x、y轴的欧拉角度 X轴对应的是鼠标上下的移动offsetY y轴对应的是鼠标左右的移动offsetX
                    this.camera.transform.localRotationEulerX -= offsetY * this.rotaionSpeed * elapsedTime;
                    this.camera.transform.localRotationEulerY -= offsetX * this.rotaionSpeed * elapsedTime;
                    console.log("Use Euler Script!");
                }
            }
            // 更新记录的位置
            this.lastMouseX = Laya.stage.mouseX;
            this.lastMouseY = Laya.stage.mouseY;
        }else{
            // 摇杆模式
            // 左摇杆移动的处理
            if (this.moveRocker.angle != -1) {
                // 摇杆产生了操作
                var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                this._tempVector3.setValue(speedX, 0, speedZ);
                this.camera.transform.translate(this._tempVector3, true);
            }
            // 右摇杆移动的处理
            if (this.rotationRocker.angle != -1) {
                // 位移采用摇杆计算处的位移
                var offsetX = this.rotationRocker.deltaX;
                var offsetY = this.rotationRocker.deltaY;
                
                // x、y轴的欧拉角度 X轴对应的是鼠标上下的移动offsetY y轴对应的是鼠标左右的移动offsetX
                this.camera.transform.localRotationEulerX -= offsetY * this.rockerRotationSpeed * elapsedTime;
                this.camera.transform.localRotationEulerY -= offsetX * this.rockerRotationSpeed * elapsedTime;
                console.log("Use Euler Script!");
            }
        }
    }

    mouseDown(e:any): void {
        //获得鼠标的旋转值
        this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);
        //获得鼠标的xy值
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
        //设置bool值
        this.isMouseDown = true;
     
    }
    mouseUp(e:any):void {
        //设置bool值
        this.isMouseDown = false;
    }
    /**
     * 向前移动。
     */
    moveForward(distance:any):void {
        this._tempVector3.x = 0;
        this._tempVector3.y = 0;
        this._tempVector3.z = distance;
        this.camera.transform.translate(this._tempVector3,true);
    }
    /**
     * 向右移动。
     */
    moveRight(distance:any):void {
        this._tempVector3.y = 0;
        this._tempVector3.z = 0;
        this._tempVector3.x = distance;
        this.camera.transform.translate(this._tempVector3,true);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance:any):void {
        this._tempVector3.x = this._tempVector3.z = 0;
        this._tempVector3.y = distance;
        this.camera.transform.translate(this._tempVector3, false);
    }
}

export class CameraMoveQuaternion extends Laya.Script {
    // 移动摇杆
    public moveRocker: JoyStick;
    // 摄像机摇杆
    public rotationRocker: JoyStick;
    // 移动向量
    private _tempVector3: Laya.Vector3 = new Laya.Vector3();
    // 摄像机旋转角度
    private yawPitchRoll: Laya.Vector3 = new Laya.Vector3();
    // 摄像机角度四元数
    private tempRotationZ: Laya.Quaternion = new Laya.Quaternion();
    // 按键下的旋转速度
    private rotaionSpeed = 0.00012;
    // 摇杆下的旋转速度
    private rockerRotationSpeed = 0.00001;
    // 移动速度
    private moveSpeed = 0.0025;
    // 摄像机
    private camera: Laya.Camera;
    // 鼠标上个位置x
    private lastMouseX: number = 0;
    // 鼠标上个位置y
    private lastMouseY: number = 0;
    // 按下
    private isMouseDown: boolean = false;
    
    constructor(){
        super();
    }
	onEnable(){
        // 注册监听
		Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
        // 绑定脚本
		this.camera = this.owner as Laya.Camera;
	}

    onDisable() {
        console.log("camera quaternion script is disable :" + this.enabled);
        //关闭监听函数
        Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
        Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    onUpdate(): void {
		var elapsedTime = Laya.timer.delta;
        if (Laya.Browser.onPC) {
            // 按键模式
            if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
                Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);//W
                Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);//S
                Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);//A
                Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);//D
                Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);//Q
                Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);//E
                if (this.isMouseDown) {
                    // 按下
                    var offsetX = Laya.stage.mouseX - this.lastMouseX;
                    var offsetY = Laya.stage.mouseY - this.lastMouseY;

                    var yprElem = this.yawPitchRoll;
                    yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
                    yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
                    this.updateRotation();
                    console.log("Use Quaternion Script!");
                }
            }
            // 更新位置
            this.lastMouseX = Laya.stage.mouseX;
            this.lastMouseY = Laya.stage.mouseY;
        }else{
            // 摇杆模式
            // 左摇杆移动的处理
            if (this.moveRocker.angle != -1) {
                // 摇杆产生了操作
                var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                this._tempVector3.setValue(speedX, 0, speedZ);
                this.camera.transform.translate(this._tempVector3, true);
            }
            // 右摇杆移动的处理
            if (this.rotationRocker.angle != -1) {
                // 使用摇杆组件内计算得到的位移
                var offsetX = this.rotationRocker.deltaX;
                var offsetY = this.rotationRocker.deltaY;
                    
                var yprElem = this.yawPitchRoll;
                yprElem.x -= offsetX * this.rockerRotationSpeed * elapsedTime;
                yprElem.y -= offsetY * this.rockerRotationSpeed * elapsedTime;
                this.updateRotation();
                console.log("Use Quaternion Script!");
            }
        }
    }

    mouseDown(e:any): void{
        //获得鼠标的旋转值
        this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);
        //获得鼠标的xy值
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
        //设置bool值
        this.isMouseDown = true;
     
    }
    mouseUp(e:any): void{
        //设置bool值
        this.isMouseDown = false;
    }
    /**
     * 向前移动。
     */
    moveForward(distance:any): void{
        this._tempVector3.x = 0;
        this._tempVector3.y = 0;
        this._tempVector3.z = distance;
        this.camera.transform.translate(this._tempVector3,true);
    }
    /**
     * 向右移动。
     */
    moveRight(distance:any): void{
        this._tempVector3.y = 0;
        this._tempVector3.z = 0;
        this._tempVector3.x = distance;
        this.camera.transform.translate(this._tempVector3,true);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance:any): void{
        this._tempVector3.x = this._tempVector3.z = 0;
        this._tempVector3.y = distance;
        this.camera.transform.translate(this._tempVector3, false);
    }
    /**
     * 基于俯仰角转换为四元数的旋转
     */
    updateRotation(): void{
        if (Math.abs(this.yawPitchRoll.y) < 1.50) {
            Laya.Quaternion.createFromYawPitchRoll(this.yawPitchRoll.x, this.yawPitchRoll.y, this.yawPitchRoll.z, this.tempRotationZ);
            this.tempRotationZ.cloneTo(this.camera.transform.localRotation);
            this.camera.transform.localRotation = this.camera.transform.localRotation;
        }
    }
}

export class CameraMoveMatrix extends Laya.Script {
    // 移动摇杆
    public moveRocker: JoyStick;
    // 旋转摇杆
    public rotationRocker: JoyStick;
    // 位移
    private _tempVector3: Laya.Vector3 = new Laya.Vector3();
    // 各轴旋转角度
    private yawPitchRoll: Laya.Vector3 = new Laya.Vector3();
    // 旋转矩阵
    private rotateMatrix: Laya.Matrix4x4 = new Laya.Matrix4x4();
    // 按键旋转速度
    private rotaionSpeed: number = 0.00012;
    // 摇杆旋转速度
    private rockerRotationSpeed: number = 0.00001;
    // 移动速度
    private moveSpeed: number = 0.0025;
    // 鼠标上个位置x，位移计算
    private lastMouseX: number = 0;
    // 鼠标上个位置y
    private lastMouseY: number = 0;
    // 是否按下
    private isMouseDown: boolean = false;
    // 摄像机
    private camera: Laya.Camera;
    constructor(){
        super();
    }

	onEnable(){
        // 注册监听
		Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.on(Laya.Event.MOUSE_UP, this, this.mouseUp);
        // 绑定脚本
		this.camera = this.owner as Laya.Camera;
	}

    onDisable() {
        console.log("camera matrix script is disable :" + this.enabled);
        //关闭监听函数
        Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.mouseDown);
        Laya.stage.off(Laya.Event.MOUSE_UP, this, this.mouseUp);
    }
    
    onUpdate(): void{
		var elapsedTime = Laya.timer.delta;
        if (Laya.Browser.onPC) {
            if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
                Laya.InputManager.hasKeyDown(87) && this.moveForward(-0.01 * elapsedTime);//W
                Laya.InputManager.hasKeyDown(83) && this.moveForward(0.01 * elapsedTime);//S
                Laya.InputManager.hasKeyDown(65) && this.moveRight(-0.01 * elapsedTime);//A
                Laya.InputManager.hasKeyDown(68) && this.moveRight(0.01 * elapsedTime);//D
                Laya.InputManager.hasKeyDown(81) && this.moveVertical(0.01 * elapsedTime);//Q
                Laya.InputManager.hasKeyDown(69) && this.moveVertical(-0.01 * elapsedTime);//E
    
                if (this.isMouseDown) {
                    var offsetX = Laya.stage.mouseX - this.lastMouseX;
                    var offsetY = Laya.stage.mouseY - this.lastMouseY;
                    
                    var yprElem = this.yawPitchRoll;
                    yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
                    yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
                    // 要旋转的欧拉角转换为旋转矩阵
                    Laya.Matrix4x4.createRotationYawPitchRoll(yprElem.x, yprElem.y, yprElem.z, this.rotateMatrix);
                    // 平移矩阵
                    var moveMatrix = new Laya.Matrix4x4();
                    // 平移矩阵转换
                    Laya.Matrix4x4.createTranslate(new Laya.Vector3(this.camera.transform.position.x, this.camera.transform.position.y, this.camera.transform.position.z), moveMatrix);
                    // 计算平移、旋转后的目标矩阵 translatedMatrix = moveMatrix * rotationMtrix
                    Laya.Matrix4x4.multiply(moveMatrix, this.rotateMatrix, this.rotateMatrix);
                    // 矩阵更新
                    this.camera.transform.localMatrix = this.rotateMatrix;
                    console.log("Use Matrix Script!");
                }
            }
            // 记录位置更新
            this.lastMouseX = Laya.stage.mouseX;
            this.lastMouseY = Laya.stage.mouseY;
        }else{
            if (this.moveRocker.angle != -1) {
                // 摇杆产生了操作
                var speedX = Math.sin(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                var speedZ = Math.cos(this.moveRocker.radians) * this.moveSpeed * elapsedTime;
                this._tempVector3.setValue(speedX, 0, speedZ);
                this.camera.transform.translate(this._tempVector3, true);
            }
            if (this.rotationRocker.angle != -1) {
                // 使用摇杆计算的位移
                var offsetX = this.rotationRocker.deltaX;
                var offsetY = this.rotationRocker.deltaY;
            
                var yprElem = this.yawPitchRoll;
                yprElem.x -= offsetX * this.rockerRotationSpeed * elapsedTime;
                yprElem.y -= offsetY * this.rockerRotationSpeed * elapsedTime;
                // 要旋转的欧拉角转换为旋转矩阵
                Laya.Matrix4x4.createRotationYawPitchRoll(yprElem.x, yprElem.y, yprElem.z, this.rotateMatrix);
                // 平移矩阵
                var moveMatrix = new Laya.Matrix4x4();
                // 平移矩阵转换
                Laya.Matrix4x4.createTranslate(new Laya.Vector3(this.camera.transform.position.x, this.camera.transform.position.y, this.camera.transform.position.z), moveMatrix);
                // 计算平移、旋转后的目标矩阵 translatedMatrix = moveMatrix * rotationMtrix
                Laya.Matrix4x4.multiply(moveMatrix, this.rotateMatrix, this.rotateMatrix);
                // 矩阵更新
                this.camera.transform.localMatrix = this.rotateMatrix;
                console.log("Use Matrix Script!");
            }
        }
    }
    
    mouseDown(e:any): void{
        //获得鼠标的旋转值
        this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);
        //获得鼠标的xy值
        this.lastMouseX = Laya.stage.mouseX;
        this.lastMouseY = Laya.stage.mouseY;
        //设置bool值
        this.isMouseDown = true;
     
    }
    mouseUp(e:any): void{
        //设置bool值
        this.isMouseDown = false;
    }
    /**
     * 向前移动。
     */
    moveForward(distance:any): void{
        this._tempVector3.x = 0;
        this._tempVector3.y = 0;
        this._tempVector3.z = distance;
        this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向右移动。
     */
    moveRight(distance:any): void{
        this._tempVector3.y = 0;
        this._tempVector3.z = 0;
        this._tempVector3.x = distance;
        this.camera.transform.translate(this._tempVector3);
    }
    /**
     * 向上移动。
     */
    moveVertical(distance:any): void{
        this._tempVector3.x = this._tempVector3.z = 0;
        this._tempVector3.y = distance;
        this.camera.transform.translate(this._tempVector3, false);
    }
}