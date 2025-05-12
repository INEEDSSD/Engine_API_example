import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import RevoluteJoint = Laya.RevoluteJoint;
import Label = Laya.Label;

const { regClass, property } = Laya;

@regClass()
export class Physics_Tumbler extends BaseScript {

    private count = 0;
    private box: Sprite;
    private totalBox = 200;
    private label: Label;
    private physicsManager: Laya.Physics2DWorldManager;

    constructor() {
        super();
    }

    onStart(): void {
        super.base();
        Laya.Physics2D.I.start();
        this.physicsManager = (this.owner as Laya.Scene).getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
        this.createBox();
        this.eventListener();
    }

    createBox() {
        const width = 300, height = 20;
        const
            posx = this.pageWidth / 2,
            posy = this.pageHeight / 2;

        let off = -width / 2 - height;
        let box = new Sprite();
        box.size(width + height * 2, width + height * 2);
        box.pos(posx, posy);
        this.owner.addChild(box);

        let boxBody: RigidBody = box.addComponent(RigidBody);
        boxBody.applyOwnerColliderComponent = false;
        let shapes = [];
        let box1Shape: Laya.BoxShape2D = new Laya.BoxShape2D();
        box1Shape.width = width + height * 2;
        box1Shape.height = height;
        box1Shape.x = off;
        box1Shape.y = off;

        let box2Shape: Laya.BoxShape2D = new Laya.BoxShape2D();
        box2Shape.width = width + height * 2;
        box2Shape.height = height;
        box2Shape.x = off;
        box2Shape.y = width + height + off;

        let box3Shape: Laya.BoxShape2D = new Laya.BoxShape2D();
        box3Shape.width = height;
        box3Shape.height = width + height * 2;
        box3Shape.x = off;
        box3Shape.y = off;

        let box4Shape: Laya.BoxShape2D = new Laya.BoxShape2D();
        box4Shape.width = height;
        box4Shape.height = width + height * 2;
        box4Shape.x = width + height + off;
        box4Shape.y = off;

        shapes.push(box1Shape);
        shapes.push(box2Shape);
        shapes.push(box3Shape);
        shapes.push(box4Shape);
        boxBody.shapes = shapes;
        let revoluteJoint = new RevoluteJoint();
        revoluteJoint.motorSpeed = 0.05 * Math.PI;
        revoluteJoint.maxMotorTorque = 1e8;
        revoluteJoint.enableMotor = true;
        box.addComponentInstance(revoluteJoint);
    }

    addMiniBox() {
        if (this.count >= this.totalBox) {
            return;
        }

        let sp = new Sprite();
        this.owner.addChild(sp);
        sp.x = this.pageWidth / 2;
        sp.y = this.pageHeight / 2;
        let boxBody = sp.addComponent(RigidBody);
        boxBody.applyOwnerColliderComponent = false;
        let boxshape = new Laya.BoxShape2D();
        boxshape.width = 5;
        boxshape.height = 5;
        let shapes = [boxshape];
        boxBody.shapes = shapes;
        this.count++;
    }

    eventListener() {
        let label: Label = this.label = this.box2D.addChild(new Label("双击屏幕，将会产生100个新的小刚体")) as Label;
        label.top = 20;
        label.right = 20;
        label.fontSize = 16;
        label.color = "#e69999";
        this.box2D.on(Event.DOUBLE_CLICK, this, () => {
            this.totalBox += 100;
        });
        Laya.timer.frameLoop(1, this, this.addMiniBox);
    }

    onDisable(): void {
        if (this.box2D) {
            this.box2D.offAll(Event.DOUBLE_CLICK);
            this.box2D = null;
        }
    }
}