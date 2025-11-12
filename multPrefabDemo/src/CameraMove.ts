const { regClass, property } = Laya;

@regClass()
export class CameraMove extends Laya.Script3D {

	/** @private */
	protected lastMouseX: number = 0;
	protected lastMouseY: number = 0;
	protected lastTouchX: number = 0;
	protected lastTouchY: number = 0;
	protected leftTouchStartX: number = 0;
	protected leftTouchStartY: number = 0;
	protected rightTouchStartX: number = 0;
	protected rightTouchStartY: number = 0;
	protected yawPitchRoll: Laya.Vector3 = new Laya.Vector3();
	protected _tempVector3: Laya.Vector3 = new Laya.Vector3();
	protected resultRotation: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationZ: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationX: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationY: Laya.Quaternion = new Laya.Quaternion();
	protected isMouseDown: boolean = false;
	protected isLeftTouchDown: boolean = false;
	protected isRightTouchDown: boolean = false;
	protected rotaionSpeed: number = 0.00008;
	protected camera: Laya.BaseCamera = new Laya.Camera;
	protected scene: Laya.Scene3D = new Laya.Scene3D;
	@property({type: Number, tips: "键盘控制移动速度（WASD/QE键），值越大移动越快"})
	public speed: number = 0.01;
	@property({type: Number, tips: "右侧屏幕触摸旋转速度，值越大旋转越快"})
	public touchRotationSpeed: number = 0.00008;
	@property({type: Number, tips: "左侧屏幕触摸移动速度，值越大移动越快"})
	public touchMoveSpeed: number = 0.01;

	constructor() {
		super();
	}

	/**
	 * @private
	 */
	protected _updateRotation(): void {
		if (Math.abs(this.yawPitchRoll.y) < 1.50) {
			Laya.Quaternion.createFromYawPitchRoll(this.yawPitchRoll.x, this.yawPitchRoll.y, this.yawPitchRoll.z, this.tempRotationZ);
			this.tempRotationZ.cloneTo(this.camera.transform.localRotation);
			this.camera.transform.localRotation = this.camera.transform.localRotation;
		}
	}
	//YPR To Quaternion

	/**
	 * 判断触摸位置是否在屏幕左侧
	 * @param x 触摸X坐标
	 * @returns 是否在左侧
	 */
	protected isLeftSide(x: number): boolean {
		return x < Laya.stage.width / 2;
	}

	/**
	 * @inheritDoc
	 */
	onAwake(): void {
		// 鼠标右键控制（键盘模式）
		Laya.stage.on(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.on(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
		Laya.stage.on(Laya.Event.MOUSE_OUT, this, this.mouseOut);
		
		// 触摸滑动控制（触摸模式）- 使用鼠标事件（触摸会自动转换为鼠标事件）
		Laya.stage.on(Laya.Event.MOUSE_DOWN, this, this.onTouchStart);
		Laya.stage.on(Laya.Event.MOUSE_UP, this, this.onTouchEnd);
		Laya.stage.on(Laya.Event.MOUSE_MOVE, this, this.onTouchMove);
		
		// 触摸事件（移动设备）- 使用字符串事件名称
		Laya.stage.on("touchstart", this, this.onTouchStart);
		Laya.stage.on("touchend", this, this.onTouchEnd);
		Laya.stage.on("touchmove", this, this.onTouchMove);
		
		this.camera = (<Laya.Camera>this.owner);
	}

	/**
	 * @inheritDoc
	 */
	onUpdate(): void {
		var elapsedTime: number = Laya.timer.delta;
		
		// 键盘控制移动（兼容两种模式）
		Laya.InputManager.hasKeyDown(87) && this.moveForward(-this.speed * elapsedTime);//W
		Laya.InputManager.hasKeyDown(83) && this.moveForward(this.speed * elapsedTime);//S
		Laya.InputManager.hasKeyDown(65) && this.moveRight(-this.speed * elapsedTime);//A
		Laya.InputManager.hasKeyDown(68) && this.moveRight(this.speed * elapsedTime);//D
		Laya.InputManager.hasKeyDown(81) && this.moveVertical(this.speed * elapsedTime);//Q
		Laya.InputManager.hasKeyDown(69) && this.moveVertical(-this.speed * elapsedTime);//E

		// 鼠标右键旋转（键盘模式）
		if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
			var offsetX: number = Laya.stage.mouseX - this.lastMouseX;
			var offsetY: number = Laya.stage.mouseY - this.lastMouseY;
			if (this.isMouseDown) {
				var yprElem: Laya.Vector3 = this.yawPitchRoll;
				yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
				yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
				this._updateRotation();
			}
		}
		
		// 左侧触摸控制位移（在 onTouchMove 中处理）
		// 右侧触摸控制旋转（在 onTouchMove 中处理）
		
		// 更新鼠标位置（用于右键控制）
		this.lastMouseX = Laya.stage.mouseX;
		this.lastMouseY = Laya.stage.mouseY;
	}

	/**
	 * @inheritDoc
	 */
	onDestroy(): void {
		// 取消鼠标右键事件
		Laya.stage.off(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.off(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
		Laya.stage.off(Laya.Event.MOUSE_OUT, this, this.mouseOut);
		
		// 取消鼠标滑动事件
		Laya.stage.off(Laya.Event.MOUSE_DOWN, this, this.onTouchStart);
		Laya.stage.off(Laya.Event.MOUSE_UP, this, this.onTouchEnd);
		Laya.stage.off(Laya.Event.MOUSE_MOVE, this, this.onTouchMove);
		
		// 取消触摸事件
		Laya.stage.off("touchstart", this, this.onTouchStart);
		Laya.stage.off("touchend", this, this.onTouchEnd);
		Laya.stage.off("touchmove", this, this.onTouchMove);
	}

	protected mouseDown(e: Laya.Event): void {
		this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);

		this.lastMouseX = Laya.stage.mouseX;
		this.lastMouseY = Laya.stage.mouseY;
		this.isMouseDown = true;
	}

	protected mouseUp(e: Laya.Event): void {
		this.isMouseDown = false;
	}

	protected mouseOut(e: Laya.Event): void {
		this.isMouseDown = false;
	}

	/**
	 * 触摸/鼠标按下开始（滑动模式）
	 */
	protected onTouchStart(e: Laya.Event): void {
		// 避免与右键冲突，如果是右键则不处理
		if (e.type === Laya.Event.MOUSE_DOWN && (e as any).button === 2) {
			return;
		}
		
		// 获取触摸位置（触摸事件）或鼠标位置（鼠标事件）
		var touchX: number = Laya.stage.mouseX;
		var touchY: number = Laya.stage.mouseY;
		
		// 如果是触摸事件，尝试从事件中获取触摸位置
		if ((e.type === "touchstart" || e.type === Laya.Event.MOUSE_DOWN) && (e as any).touches && (e as any).touches.length > 0) {
			var touch = (e as any).touches[0];
			if (touch && touch.pos) {
				touchX = touch.pos.x;
				touchY = touch.pos.y;
			}
		}
		
		// 判断是左侧还是右侧
		if (this.isLeftSide(touchX)) {
			// 左侧：控制位移
			this.leftTouchStartX = touchX;
			this.leftTouchStartY = touchY;
			this.isLeftTouchDown = true;
		} else {
			// 右侧：控制旋转
			this.camera.transform.localRotation.getYawPitchRoll(this.yawPitchRoll);
			this.rightTouchStartX = touchX;
			this.rightTouchStartY = touchY;
			this.lastTouchX = touchX;
			this.lastTouchY = touchY;
			this.isRightTouchDown = true;
		}
	}

	/**
	 * 触摸/鼠标抬起结束（滑动模式）
	 */
	protected onTouchEnd(e: Laya.Event): void {
		// 避免与右键冲突
		if ((e.type === Laya.Event.MOUSE_UP || e.type === "touchend") && (e as any).button === 2) {
			return;
		}
		// 清除左右侧触摸状态
		this.isLeftTouchDown = false;
		this.isRightTouchDown = false;
	}

	/**
	 * 触摸/鼠标移动（滑动模式）
	 */
	protected onTouchMove(e: Laya.Event): void {
		// 获取触摸位置（触摸事件）或鼠标位置（鼠标事件）
		var touchX: number = Laya.stage.mouseX;
		var touchY: number = Laya.stage.mouseY;
		
		// 如果是触摸事件，尝试从事件中获取触摸位置
		if (e.type === "touchmove" && (e as any).touches && (e as any).touches.length > 0) {
			var touch = (e as any).touches[0];
			if (touch && touch.pos) {
				touchX = touch.pos.x;
				touchY = touch.pos.y;
			}
		}
		
		var elapsedTime: number = Laya.timer.delta;
		
		// 左侧触摸：控制位移
		if (this.isLeftTouchDown) {
			var leftOffsetX: number = touchX - this.leftTouchStartX;
			var leftOffsetY: number = touchY - this.leftTouchStartY;
			
			// 计算偏移距离（相对于初始触摸点）
			var offsetDistance: number = Math.sqrt(leftOffsetX * leftOffsetX + leftOffsetY * leftOffsetY);
			
			// 只有当偏移超过阈值时才移动（避免误触）
			if (offsetDistance > 10) {
				// 归一化偏移量，使移动速度更平滑
				var normalizedX: number = leftOffsetX / 100; // 100像素为最大偏移
				var normalizedY: number = leftOffsetY / 100;
				
				// 限制在-1到1之间
				normalizedX = Math.max(-1, Math.min(1, normalizedX));
				normalizedY = Math.max(-1, Math.min(1, normalizedY));
				
				// 根据滑动方向控制位移
				// 上下滑动控制前后移动（向上为前进）
				if (Math.abs(normalizedY) > 0.05) {
					var forwardDistance: number = normalizedY * this.touchMoveSpeed * elapsedTime;
					this.moveForward(forwardDistance);
				}
				
				// 左右滑动控制左右移动（向右为正方向）
				if (Math.abs(normalizedX) > 0.05) {
					var rightDistance: number = normalizedX * this.touchMoveSpeed * elapsedTime;
					this.moveRight(rightDistance);
				}
			}
		}
		
		// 右侧触摸：控制旋转
		if (this.isRightTouchDown) {
			var rightOffsetX: number = touchX - this.lastTouchX;
			var rightOffsetY: number = touchY - this.lastTouchY;
			
			if (Math.abs(rightOffsetX) > 0.1 || Math.abs(rightOffsetY) > 0.1) {
				var yprElem: Laya.Vector3 = this.yawPitchRoll;
				yprElem.x -= rightOffsetX * this.touchRotationSpeed * elapsedTime;
				yprElem.y -= rightOffsetY * this.touchRotationSpeed * elapsedTime;
				this._updateRotation();
			}
			
			this.lastTouchX = touchX;
			this.lastTouchY = touchY;
		}
	}

	/**
	 * 向前移动。
	 * @param distance 移动距离。
	 */
	moveForward(distance: number): void {
		this._tempVector3.x = this._tempVector3.y = 0;
		this._tempVector3.z = distance;
		this.camera.transform.translate(this._tempVector3);
	}

	/**
	 * 向右移动。
	 * @param distance 移动距离。
	 */
	moveRight(distance: number): void {
		this._tempVector3.y = this._tempVector3.z = 0;
		this._tempVector3.x = distance;
		this.camera.transform.translate(this._tempVector3);
	}

	/**
	 * 向上移动。
	 * @param distance 移动距离。
	 */
	moveVertical(distance: number): void {
		this._tempVector3.x = this._tempVector3.z = 0;
		this._tempVector3.y = distance;
		this.camera.transform.translate(this._tempVector3, false);
	}

}


