import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import MouseJoint = Laya.MouseJoint;

const { regClass, property } = Laya;

@regClass()
export class Physics_CollisionFiltering extends BaseScript {

    public static k_smallGroup = 1;
    public static k_middleGroup = 0;
    public static k_largeGroup = -1;
    public static k_triangleCategory = 0x2;
    public static k_boxCategory = 0x4;
    public static k_circleCategory = 0x8;
    public static k_triangleMask = 0xF;
    public static k_boxMask = 0xF ^ Physics_CollisionFiltering.k_circleCategory;
    public static k_circleMask = Physics_CollisionFiltering.k_triangleCategory | Physics_CollisionFiltering.k_boxCategory | 0x01; // 0x01为house刚体默认的category，若不设置，则会穿透house
    private curTarget: Sprite;
    private preMovementX: number = 0;
    private preMovementY: number = 0;
    private physicsManager: Laya.Physics2DWorldManager;

    constructor() {
        super();
    }

    onStart(): void {
        super.base();
        this.preMovementX = 0;
        this.preMovementY = 0;
        Laya.Config.isAntialias = true;
        Laya.Physics2D.I.start();
        this.physicsManager = (this.owner as Laya.Scene).getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
        this.createHouse();
        for (let i = 1; i <= 3; i++) {
            this.createBox(300, 300, 20, 20, i);
            this.createTriangle(500, 300, 20, i);
            this.createCircle(700, 300, 10, i);
        }
    }

    createHouse() {
        let house = new Sprite();
        this.owner.addChild(house);

        let rigidbody: Laya.StaticCollider = house.addComponent(Laya.StaticCollider);
        let chainShape: Laya.ChainShape2D = new Laya.ChainShape2D();
        chainShape.loop = true;
        chainShape.datas = [600, 50, 100, 200, 100, 600, 1100, 600, 1100, 200];
        rigidbody.shapes = [chainShape];
    }

    createBox(posx: number, posy: number, width: number, height: number, ratio: number) {
        let box = new Sprite();
        box.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.owner.addChild(box);
        box.pos(posx, posy).size(width * ratio, height * ratio);
        let rigidbody: RigidBody = box.addComponent(RigidBody);
        rigidbody.applyOwnerColliderComponent = false;
        let boxShape: Laya.BoxShape2D = new Laya.BoxShape2D();
        boxShape.width = width * ratio;
        boxShape.height = height * ratio;
        let filter = new Laya.FilterData();
        filter.category = Physics_CollisionFiltering.k_boxCategory;
        filter.mask = Physics_CollisionFiltering.k_boxMask;
        this.addGroup(ratio, filter);
        boxShape.filterData = filter;
        rigidbody.shapes = [boxShape];
    }

    createTriangle(posx: number, posy: number, side: number, ratio: number) {
        let triangle = new Sprite();
        triangle.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.owner.addChild(triangle);
        triangle.pos(posx, posy).size(side * ratio, side * ratio);

        let rigidbody: RigidBody = triangle.addComponent(RigidBody);
        rigidbody.applyOwnerColliderComponent = false;
        let polygonShape: Laya.PolygonShape2D = new Laya.PolygonShape2D();
        let filterdata = new Laya.FilterData();
        polygonShape.datas = [0, 0, 0, side * ratio, side * ratio, 0];
        filterdata.category = Physics_CollisionFiltering.k_triangleCategory;
        filterdata.mask = Physics_CollisionFiltering.k_triangleMask;
        this.addGroup(ratio, filterdata);
        polygonShape.filterData = filterdata;
        rigidbody.shapes = [polygonShape];
    }

    createCircle(posx: number, posy: number, radius: number, ratio: number) {
        let circle = new Sprite();
        circle.on(Event.MOUSE_DOWN, this, this.mouseDown);
        this.owner.addChild(circle);
        circle.pos(posx, posy).size(radius * 2 * ratio, radius * 2 * ratio);
        circle.pivot(0.5, 0.5)
        let rigidbody: RigidBody = circle.addComponent(RigidBody);
        rigidbody.applyOwnerColliderComponent = false;
        let circleShape: Laya.CircleShape2D = new Laya.CircleShape2D();
        circleShape.radius = radius * ratio;
        let filterdata = new Laya.FilterData();
        filterdata.category = Physics_CollisionFiltering.k_circleCategory;
        filterdata.mask = Physics_CollisionFiltering.k_circleMask;
        this.addGroup(ratio, filterdata);
        circleShape.filterData = filterdata;
        rigidbody.shapes = [circleShape];
    }

    addGroup(ratio: number, filterdata: Laya.FilterData) {
        switch (ratio) {
            case 1:
                filterdata.group = Physics_CollisionFiltering.k_smallGroup;
                break;
            case 2:
                filterdata.group = Physics_CollisionFiltering.k_middleGroup;
                break;
            case 3:
                filterdata.group = Physics_CollisionFiltering.k_largeGroup;
                break;
        }
    }

    mouseDown(e: any) {
        this.curTarget = e.target;
        // 方案一，使用 MouseJoint
        let mouseJoint: MouseJoint = this.curTarget.addComponent(MouseJoint);
        Laya.timer.callLater(mouseJoint, (<any>mouseJoint)._onMouseDown);
        Laya.stage.on(Event.MOUSE_UP, this, this.destoryJoint);
        Laya.stage.on(Event.MOUSE_OUT, this, this.destoryJoint);
        // 方案二，自己实现，可以实现更大程度的控制
        // Laya.stage.on(Event.MOUSE_MOVE, this, this.mouseMove);
        // Laya.stage.on(Event.MOUSE_UP, this, this.mouseUp);
        // Laya.stage.on(Event.MOUSE_OUT, this, this.mouseUp);
        // let rigidbody = this.curTarget.getComponent(RigidBody);
        // rigidbody.type = "kinematic";
    }

    mouseMove(e: any) {
        let movementX = e.nativeEvent.movementX;
        let movementY = e.nativeEvent.movementY;
        this.preMovementX = movementX;
        this.preMovementY = movementY;
        this.curTarget.pos(Laya.stage.mouseX, Laya.stage.mouseY);
    }

    mouseUp() {
        Laya.stage.off(Event.MOUSE_MOVE, this, this.mouseMove);
        Laya.stage.off(Event.MOUSE_UP, this, this.mouseUp);
        Laya.stage.off(Event.MOUSE_OUT, this, this.mouseUp);
        let rigidbody: RigidBody = this.curTarget.getComponent(RigidBody);
        rigidbody.type = "dynamic";
        rigidbody.linearVelocity = { x: this.preMovementX, y: this.preMovementY };
        this.curTarget = null;
    }

    destoryJoint() {
        Laya.stage.off(Event.MOUSE_UP, this, this.destoryJoint);
        Laya.stage.off(Event.MOUSE_OUT, this, this.destoryJoint);
        let mouseJoint: MouseJoint = this.curTarget.getComponent(MouseJoint);
        mouseJoint.destroy();
        this.curTarget = null;
    }

    onDisable(): void {
        if (this.box2D) {
            this.box2D.off(Event.MOUSE_MOVE, this, this.mouseMove);
            this.box2D.off(Event.MOUSE_UP, this, this.mouseUp);
            this.box2D.off(Event.MOUSE_OUT, this, this.mouseUp);
            this.box2D.off(Event.MOUSE_UP, this, this.destoryJoint);
            this.box2D.off(Event.MOUSE_OUT, this, this.destoryJoint);
            this.box2D = null;
        }
    }
}