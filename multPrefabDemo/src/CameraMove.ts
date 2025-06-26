const { regClass, property } = Laya;

@regClass()
export class CameraMove extends Laya.Script3D {

	/** @private */
	protected lastMouseX: number = 0;
	protected lastMouseY: number = 0;
	protected yawPitchRoll: Laya.Vector3 = new Laya.Vector3();
	protected _tempVector3: Laya.Vector3 = new Laya.Vector3();
	protected resultRotation: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationZ: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationX: Laya.Quaternion = new Laya.Quaternion();
	protected tempRotationY: Laya.Quaternion = new Laya.Quaternion();
	protected isMouseDown: boolean = false;
	protected rotaionSpeed: number = 0.00008;
	protected camera: Laya.BaseCamera = new Laya.Camera;
	protected scene: Laya.Scene3D = new Laya.Scene3D;
	@property("number")
	public speed: number = 0.01;

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
	 * @inheritDoc
	 */
	onAwake(): void {
		Laya.stage.on(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.on(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
		this.camera = (<Laya.Camera>this.owner);
	}

	/**
	 * @inheritDoc
	 */
	onUpdate(): void {
		var elapsedTime: number = Laya.timer.delta;
		if (!isNaN(this.lastMouseX) && !isNaN(this.lastMouseY)) {
			Laya.InputManager.hasKeyDown(87) && this.moveForward(-this.speed * elapsedTime);//W
			Laya.InputManager.hasKeyDown(83) && this.moveForward(this.speed * elapsedTime);//S
			Laya.InputManager.hasKeyDown(65) && this.moveRight(-this.speed * elapsedTime);//A
			Laya.InputManager.hasKeyDown(68) && this.moveRight(this.speed * elapsedTime);//D
			Laya.InputManager.hasKeyDown(81) && this.moveVertical(this.speed * elapsedTime);//Q
			Laya.InputManager.hasKeyDown(69) && this.moveVertical(-this.speed * elapsedTime);//E

			var offsetX: number = Laya.stage.mouseX - this.lastMouseX;
			var offsetY: number = Laya.stage.mouseY - this.lastMouseY;
			if (this.isMouseDown) {
				var yprElem: Laya.Vector3 = this.yawPitchRoll;
				yprElem.x -= offsetX * this.rotaionSpeed * elapsedTime;
				yprElem.y -= offsetY * this.rotaionSpeed * elapsedTime;
				this._updateRotation();
			}
		}
		this.lastMouseX = Laya.stage.mouseX;
		this.lastMouseY = Laya.stage.mouseY;
	}

	/**
	 * @inheritDoc
	 */
	onDestroy(): void {
		Laya.stage.off(Laya.Event.RIGHT_MOUSE_DOWN, this, this.mouseDown);
		Laya.stage.off(Laya.Event.RIGHT_MOUSE_UP, this, this.mouseUp);
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


