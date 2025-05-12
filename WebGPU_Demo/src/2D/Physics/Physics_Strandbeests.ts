import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import RevoluteJoint = Laya.RevoluteJoint;
import DistanceJoint = Laya.DistanceJoint;
import Label = Laya.Label;

const { regClass, property } = Laya;
const dampingRatio: number = 0.5;
const frequencyHz: number = 10.0;

@regClass()
export class Physics_Strandbeests extends BaseScript {

    private scale = 2.5;
    private pos: Array<number> = [500, 200];
    private pivot: Array<number> = [0, 8 * this.scale];
    private wheel: Sprite;
    private chassis: Sprite;
    private motorJoint: RevoluteJoint;
    private label: Label;
    private TempVec: Laya.Vector2 = new Laya.Vector2();
    private drawFlags: string[] = ["Shape", "Joint", "AABB", "Pair", "CenterOfMass"]
    private physicsManager: Laya.Physics2DWorldManager;

    constructor() {
        super();
    }

    onStart(): void {
        super.base();

        Laya.Config.isAntialias = true;
        Laya.Physics2D.I.start();
        this.Construct();
        this.eventListener();
    }

    Construct() {
        this.physicsManager = (this.owner as Laya.Scene).getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;

        // shapes 模式
        // Ground
        let ground = new Sprite();
        ground.name = "ground"
        this.owner.addChild(ground);
        let rigidbody: Laya.StaticCollider = new Laya.StaticCollider();
        ground.addComponentInstance(rigidbody);


        let chainShape = new Laya.ChainShape2D();
        chainShape.datas = [50, 200, 50, 570, 1050, 570, 1050, 200];

        rigidbody.shapes = [chainShape]
        // Balls
        for (let i = 1; i <= 32; i++) {
            let small = new Sprite();
            small.name = "ground" + i;
            small.pos(i * 30 + 50, 570 - 5 * this.scale);
            small.addComponent(RigidBody);
            let smRd = small.getComponent(RigidBody);
            smRd.applyOwnerColliderComponent = false;
            this.owner.addChild(small);

            let circleshape = new Laya.CircleShape2D();
            circleshape.radius = 2.5 * this.scale;
            smRd.shapes = [circleshape];
        }

        // Chassis
        let chassis: Sprite = this.chassis = new Sprite();
        chassis.size(50 * this.scale, 20 * this.scale);
        chassis.anchorX = chassis.anchorY = 0.5;
        chassis.pos(this.pos[0], this.pos[1]);
        this.owner.addChild(chassis);
        let chassisBody: RigidBody = chassis.addComponent(RigidBody);
        chassisBody.applyOwnerColliderComponent = false;
        let boxshape = new Laya.BoxShape2D();
        let filter = new Laya.FilterData();
        filter.group = -1;
        boxshape.filterData = filter;
        boxshape.density = 1;
        boxshape.width = 50 * this.scale;
        boxshape.height = 20 * this.scale;
        chassisBody.shapes = [boxshape];

        // Circle
        let wheel = this.wheel = new Sprite();
        wheel.pos(chassis.x, chassis.y);
        this.owner.addChild(wheel);
        let wheelBody: RigidBody = wheel.addComponent(RigidBody);
        wheelBody.applyOwnerColliderComponent = false;
        let circleshape = new Laya.CircleShape2D();
        circleshape.filterData = filter;
        circleshape.density = 1;
        circleshape.radius = 16 * this.scale;
        wheelBody.shapes = [circleshape];

        // 转动关节
        let motorJoint: RevoluteJoint = this.motorJoint = new RevoluteJoint();
        motorJoint.otherBody = chassisBody;
        motorJoint.collideConnected = false;
        motorJoint.motorSpeed = 2.0;
        motorJoint.maxMotorTorque = 400.0;
        motorJoint.enableMotor = true;
        wheel.addComponentInstance(motorJoint);

        let wheelAnchor = [0, 8 * this.scale];
        this.createLeg(-1, wheelAnchor, 0);
        this.createLeg(1, wheelAnchor, 0);


        this.createLeg(-1.0, wheelAnchor, Laya.Utils.toRadian(120.0));
        this.createLeg(1.0, wheelAnchor, Laya.Utils.toRadian(120.0));
        this.createLeg(-1.0, wheelAnchor, Laya.Utils.toRadian(-120.0));
        this.createLeg(1.0, wheelAnchor, Laya.Utils.toRadian(-120.0));
    }


    private getDistance(body: RigidBody, p: number[], body1: RigidBody, p1: number[]) {
        let g1 = body.getWorldPoint(p[0], p[1]);
        let x = g1.x;
        let y = g1.y;
        g1 = body1.getWorldPoint(p1[0], p1[1]);
        return Math.sqrt(Math.pow(g1.x - x, 2) + Math.pow(g1.y - y, 2))
    }

    createLeg(s: number, wheelAnchor: number[], rotate: number) {
        const wheelBody: RigidBody = this.wheel.getComponent(RigidBody);
        const chassisBody: RigidBody = this.chassis.getComponent(RigidBody)

        const p1 = [54, -61];
        const p2 = [72, -12];
        const p3 = [43, -19];
        const p4 = [31, 0];
        const p5 = [60, 15];
        const p6 = [25, 37];

        let leg1 = new Sprite();
        leg1.pos(this.chassis.x, this.chassis.y + 16 * this.scale); // TODO 这里的数值待优化
        leg1.scale(s * this.scale, -this.scale);
        this.owner.addChild(leg1);

        let leg2 = new Sprite();
        leg2.scale(s * this.scale, -this.scale);
        leg2.pos(this.chassis.x, this.chassis.y);
        this.owner.addChild(leg2);

        let legBody1: RigidBody = leg1.addComponent(RigidBody);
        legBody1.applyOwnerColliderComponent = false;
        legBody1.angularDamping = 10;

        let polyShape1 = new Laya.PolygonShape2D();
        let filter = new Laya.FilterData();
        filter.group = -1;
        polyShape1.filterData = filter;
        polyShape1.density = 1;
        polyShape1.datas = p1.concat(p2).concat(p3);
        legBody1.shapes = [polyShape1];


        let legBody2: RigidBody = leg2.addComponent(RigidBody);
        legBody2.applyOwnerColliderComponent = false;
        legBody2.angularDamping = 10;
        let polyShape2 = new Laya.PolygonShape2D();
        polyShape2.filterData = filter;
        polyShape2.density = 1;
        polyShape2.datas = p4.concat(p5).concat(p6);
        legBody2.shapes = [polyShape2];

        let distance = this.getDistance(legBody1, p2, legBody2, p5);
        this.createDistanceJoint(legBody1, p2, legBody2, p5, distance);
        distance = this.getDistance(legBody1, p3, legBody2, p4);
        this.createDistanceJoint(legBody1, p3, legBody2, p4, distance);

        let anchor = this.getRotateVector(rotate, wheelAnchor);
        distance = this.getDistance(legBody1, p3, wheelBody, wheelAnchor);
        this.createDistanceJoint(legBody1, p3, wheelBody, anchor, distance);
        distance = this.getDistance(legBody2, p6, wheelBody, wheelAnchor);
        this.createDistanceJoint(legBody2, p6, wheelBody, anchor, distance);

        let revoluteJoint: RevoluteJoint = new RevoluteJoint();
        revoluteJoint.otherBody = chassisBody;
        revoluteJoint.anchor = p4;
        revoluteJoint.collideConnected = false;
        leg2.addComponentInstance(revoluteJoint);
    }

    private getRotateVector(rotate: number, p: number[]): number[] {
        let cos = Math.cos(rotate);
        let sin = Math.sin(rotate);
        let x = cos * p[0] - sin * p[1];
        let y = sin * p[0] + cos * p[1];
        return [x, y]
    }

    eventListener() {
        // 双击屏幕，仿生机器人向相反方向运动
        Laya.stage.on(Event.DOUBLE_CLICK, this, () => {
            this.motorJoint.motorSpeed = -this.motorJoint.motorSpeed;
        });
        let index = 0;
        // 单击产生新的小球刚体
        Laya.stage.on(Event.CLICK, this, () => {
            let tempVec = this.TempVec;
            let newBall = new Sprite();
            newBall.pos(Laya.stage.mouseX, Laya.stage.mouseY);
            this.owner.addChild(newBall);
            newBall.name = "bullet" + index;
            index++;
            let circleBody: RigidBody = newBall.addComponent(RigidBody);
            circleBody.applyOwnerColliderComponent = false;
            let circle = new Laya.CircleShape2D();
            circle.radius = 3 * this.scale;
            circleBody.shapes = [circle];

            tempVec.x = this.chassis.x - newBall.x;
            tempVec.y = this.chassis.y - newBall.y;
            Laya.Vector2.normalize(tempVec, tempVec);
            Laya.Vector2.scale(tempVec, 50, tempVec);
            Laya.Vector2.scale(tempVec, Laya.Physics2DOption.pixelRatio, tempVec);
            circleBody.linearVelocity = tempVec;
            Laya.timer.frameOnce(120, this, function () {
                newBall.destroy();
            });
        });

        let label: Label = this.label = this.box2D.addChild(new Label("双击屏幕，仿生机器人向相反方向运动\n单击产生新的小球刚体")) as Label;
        label.top = 20;
        label.right = 20;
        label.fontSize = 16;
        label.color = "#e69999";
        for (var i = 0, n = this.drawFlags.length; i < n; i++) {
            this.createCheckBox(this.drawFlags[i], i <= 1, 1300, 70 + 50 * i);
        }

    }

    private createDistanceJoint(selfBody: RigidBody, selfAnchor: number[], otherBody: RigidBody, otherAnchor: number[], distance: number) {
        let distanceJoint: DistanceJoint = new DistanceJoint();
        distanceJoint.otherBody = otherBody;
        distanceJoint.otherAnchor = otherAnchor;
        distanceJoint.selfAnchor = selfAnchor;
        distanceJoint.frequency = frequencyHz;
        distanceJoint.damping = dampingRatio;
        distanceJoint.maxLength = distanceJoint.minLength = distanceJoint.length = distance;
        selfBody.owner.addComponentInstance(distanceJoint)
        return distanceJoint;
    }

    private createCheckBox(lable: string, isselect: boolean, x: number, y: number) {
        var cb: Laya.CheckBox = new Laya.CheckBox("atlas/comp/checkbox.png");
        this.owner.addChild(cb);

        cb.labelColors = "white";
        cb.labelSize = 20;
        cb.labelFont = "Microsoft YaHei";
        cb.labelPadding = "3,0,0,5";
        cb.x = x;
        cb.y = y;
        cb.label = lable;
        cb.selected = isselect;
        cb.clickHandler = Laya.Handler.create(this, this.updateSelect, [cb], false);
    }

    private updateSelect(checkBox: Laya.CheckBox) {
        let isselect = checkBox.selected;
        switch (checkBox.label) {
            case "Shape":
                this.physicsManager.enableDebugDraw(isselect, Laya.EPhycis2DBlit.Shape);
                break;
            case "Joint":
                this.physicsManager.enableDebugDraw(isselect, Laya.EPhycis2DBlit.Joint);
                break;
            case "AABB":
                this.physicsManager.enableDebugDraw(isselect, Laya.EPhycis2DBlit.AABB);
                break;
            case "Pair":
                this.physicsManager.enableDebugDraw(isselect, Laya.EPhycis2DBlit.Pair);
                break;
            case "CenterOfMass":
                this.physicsManager.enableDebugDraw(isselect, Laya.EPhycis2DBlit.CenterOfMass);
                break;
        }
    }

    onDisable(): void {
        if (this.box2D) {
            this.box2D.offAll(Event.CLICK);
            this.box2D.offAll(Event.DOUBLE_CLICK);
            this.box2D = null;
        }
    }
}