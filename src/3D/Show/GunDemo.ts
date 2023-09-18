import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Sprite3D = Laya.Sprite3D;
import DirectionLight = Laya.DirectionLight;
import MeshSprite3D = Laya.MeshSprite3D;
import Vector3 = Laya.Vector3;
import InputManager = Laya.InputManager;
import Script3D = Laya.Script3D;
import Text = Laya.Text;
import Event = Laya.Event;

const { regClass, property } = Laya;

@regClass()
export class GunDemo extends BaseScript {

    @property(Laya.Camera)
    private camera: Laya.Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);

		var gun: MeshSprite3D = <MeshSprite3D>this.scene.getChildByName("Gun");
		var rotationScript: RotationScript = gun.addComponent(RotationScript);
		rotationScript.model = gun;

		var size: number = 20;
		this.addText(30, 200, 10, "拖动屏幕以旋转模型", "red");
	}

	/**
	 * add text.
	 */
	addText(size: number, x: number, y: number, text: string, color: string): void {
		var cerberusText: Text = new Text();
		cerberusText.color = color;
		cerberusText.fontSize = size;
		cerberusText.x = x;		
		cerberusText.y = y;
		cerberusText.text = text;
		this.owner.addChild(cerberusText);
	}
}

class RotationScript extends Script3D {
	private _lastMouseX: number;
	private _mouseDown: boolean = false;
	private _rotate: Vector3 = new Vector3();
	private _autoRotateSpeed: Vector3 = new Vector3(0, 0.25, 0);

	model: Sprite3D;

	constructor() {
		super();
		Laya.stage.on(Event.MOUSE_DOWN, this, ()=> {
			this._mouseDown = true;
			this._lastMouseX = InputManager.mouseX;
		});
		Laya.stage.on(Event.MOUSE_UP, this, ()=> {
			this._mouseDown = false;
		});

	}
	onUpdate(): void {
		if (this._mouseDown) {
			var deltaX: number = InputManager.mouseX - this._lastMouseX;
			this._rotate.y = deltaX * 0.2;
			this.model.transform.rotate(this._rotate, false, false);
			this._lastMouseX = InputManager.mouseX;
		}
		else {
			this.model.transform.rotate(this._autoRotateSpeed, false, false);
		}
	}
}