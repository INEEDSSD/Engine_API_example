import { BaseScript } from "../../BaseScript";

import BoxCollider = Laya.BoxCollider;
import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import ChainCollider = Laya.ChainCollider;
import MouseJoint = Laya.MouseJoint;
import PolygonCollider = Laya.PolygonCollider;
import CircleCollider = Laya.CircleCollider;

const { regClass, property } = Laya;

@regClass()
export class Physics_CollisionFiltering extends BaseScript {

    public static  k_smallGroup = 1;
    public static  k_middleGroup = 0;
    public static  k_largeGroup = -1;
    public static  k_triangleCategory = 0x2;
    public static  k_boxCategory = 0x4;
    public static  k_circleCategory = 0x8;
    public static  k_triangleMask = 0xF;
    public static  k_boxMask = 0xF ^ Physics_CollisionFiltering.k_circleCategory;
    public static  k_circleMask = Physics_CollisionFiltering.k_triangleCategory | Physics_CollisionFiltering.k_boxCategory | 0x01; // 0x01为house刚体默认的category，若不设置，则会穿透house
    private curTarget: Sprite;
    private preMovementX: number = 0;
    private preMovementY: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

        this.preMovementX = 0;
        this.preMovementY = 0;
        Laya.Config.isAntialias = true;
        Laya.Physics.enable();
        Laya.PhysicsDebugDraw.enable();

        this.createHouse();
        for (let i = 1; i <= 3; i++) {
            this.createBox(300, 300, 20, 20, i);
            this.createTriangle(500, 300, 20, i);
            this.createCircle(700, 300, 10, i);
        }
    }

    createHouse() {
        let house=  new Sprite();
        this.box2D.addChild(house);
        let rigidbody: RigidBody = house.addComponent(RigidBody);
        rigidbody.type = "static";
        let chainCollider: ChainCollider = house.addComponent(ChainCollider);
        chainCollider.loop = true;
        chainCollider.points = "450,0,0,200,0,450,1024,450,1024,200";
    }

    createBox(posx:number, posy:number, width:number, height:number, ratio:number) {
        let box = new Sprite();
        box.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.box2D.addChild(box);
        box.pos(posx, posy).size(width * ratio, height * ratio);
        let rigidbody: RigidBody = box.addComponent(RigidBody);
        rigidbody.category = Physics_CollisionFiltering.k_boxCategory;
        rigidbody.mask = Physics_CollisionFiltering.k_boxMask;
        let boxCollider: BoxCollider = box.addComponent(BoxCollider);
        boxCollider.width = width * ratio;
        boxCollider.height = height * ratio;
        this.addGroup(rigidbody, ratio);
    }

    createTriangle(posx:number, posy:number, side:number, ratio:number) {
        let triangle = new Sprite();
        triangle.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.box2D.addChild(triangle);
        triangle.pos(posx, posy).size(side * ratio, side * ratio);
        let rigidbody: RigidBody = triangle.addComponent(RigidBody);
        rigidbody.category = Physics_CollisionFiltering.k_triangleCategory;
        rigidbody.mask = Physics_CollisionFiltering.k_triangleMask;
        let polygonCollider: PolygonCollider = triangle.addComponent(PolygonCollider);
        polygonCollider.points = `0,0,0,${side * ratio},${side * ratio},0`;
        this.addGroup(rigidbody, ratio);
    }

    createCircle(posx:number, posy:number, radius:number, ratio:number) {
        let circle = new Sprite();
        circle.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.box2D.addChild(circle);
        circle.pos(posx, posy).size(radius * 2 * ratio, radius * 2 * ratio);
        let rigidbody: RigidBody = circle.addComponent(RigidBody);
        rigidbody.category = Physics_CollisionFiltering.k_circleCategory;
        rigidbody.mask = Physics_CollisionFiltering.k_circleMask;
        let circleCollider: CircleCollider = circle.addComponent(CircleCollider);
        circleCollider.radius = radius * ratio;
        this.addGroup(rigidbody, ratio);
    }

    addGroup(rigidbody:RigidBody, ratio:number) {
        switch(ratio) {
            case 1:
                rigidbody.group = Physics_CollisionFiltering.k_smallGroup;
                break;
            case 2:
                rigidbody.group = Physics_CollisionFiltering.k_middleGroup;
                break;
            case 3:
                rigidbody.group = Physics_CollisionFiltering.k_largeGroup;
                break;
        }
    }

    mouseDown(e: Event) {
        this.curTarget = e.target;
        // 方案一，使用 MouseJoint
        let mouseJoint: MouseJoint = this.curTarget.addComponent(MouseJoint);
        Laya.timer.callLater(mouseJoint, (<any>mouseJoint).onMouseDown);
        this.box2D.on(Event.MOUSE_UP, this, this.destoryJoint);
        this.box2D.on(Event.MOUSE_OUT, this, this.destoryJoint);
        // 方案二，自己实现，可以实现更大程度的控制
        // this.box2D.on(Event.MOUSE_MOVE, this, this.mouseMove);
        // this.box2D.on(Event.MOUSE_UP, this, this.mouseUp);
        // this.box2D.on(Event.MOUSE_OUT, this, this.mouseUp);
        // let rigidbody = this.curTarget.getComponent(RigidBody);
        // rigidbody.type = "kinematic";
    }

    mouseMove(e: any) {
        let movementX = e.nativeEvent.movementX;
        let movementY = e.nativeEvent.movementY;
        this.preMovementX = movementX;
        this.preMovementY = movementY;
        this.curTarget.pos(this.box2D.mouseX, this.box2D.mouseY);
    }

    mouseUp() {
        this.box2D.off(Event.MOUSE_MOVE, this, this.mouseMove);
        this.box2D.off(Event.MOUSE_UP, this, this.mouseUp);
        this.box2D.off(Event.MOUSE_OUT, this, this.mouseUp);
        let rigidbody: RigidBody = this.curTarget.getComponent(RigidBody);
        rigidbody.type = "dynamic";
        rigidbody.linearVelocity = [this.preMovementX, this.preMovementY];
        this.curTarget = null;
    }

    destoryJoint() {
        this.box2D.off(Event.MOUSE_UP, this, this.destoryJoint);
        this.box2D.off(Event.MOUSE_OUT, this, this.destoryJoint);
        let mouseJoint: MouseJoint = this.curTarget.getComponent(MouseJoint);
        mouseJoint.destroy();
        this.curTarget = null;
    }

    onDestroy() {
        this.box2D.off(Event.MOUSE_MOVE, this, this.mouseMove);
        this.box2D.off(Event.MOUSE_UP, this, this.mouseUp);
        this.box2D.off(Event.MOUSE_OUT, this, this.mouseUp);
        this.box2D.off(Event.MOUSE_UP, this, this.destoryJoint);
        this.box2D.off(Event.MOUSE_OUT, this, this.destoryJoint);
    }
}