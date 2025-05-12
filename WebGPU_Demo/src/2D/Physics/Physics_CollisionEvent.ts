import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import MouseJoint = Laya.MouseJoint;
import ColliderBase = Laya.ColliderBase;

const { regClass, property } = Laya;

@regClass()
export class Physics_CollisionEvent extends BaseScript {

    private count: number = 7;
    private sensorCollider: Laya.StaticCollider;
    private bodys: Array<any> = [];
    private touching: Array<boolean> = [];
    private physicsManager: Laya.Physics2DWorldManager;

    constructor() {
        super();
    }

    onStart(): void {
        super.base();

        Laya.Config.isAntialias = true;
        Laya.Physics2D.I.start();
        this.physicsManager = (this.owner as Laya.Scene).getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
        this.createSensor();
    }

    createSensor() {
        let ground = new Sprite();
        ground.name = "ground";
        this.owner.addChild(ground);
        let groundBody: Laya.StaticCollider = new Laya.StaticCollider();
        ground.addComponentInstance(groundBody);

        let chainShape = new Laya.ChainShape2D();
        chainShape.datas = [50, 400, 50, 600, 1050, 600, 1050, 400];
        groundBody.shapes = [chainShape];

        let sensor = new Sprite();
        sensor.pos(450, 300);
        sensor.name = "sensor";
        this.owner.addChild(sensor);
        let sensorCol: Laya.StaticCollider = sensor.addComponent(Laya.StaticCollider);

        let circleShape = new Laya.CircleShape2D();
        circleShape.isSensor = true;
        circleShape.radius = 100;
        sensorCol.shapes = [circleShape];

        this.sensorCollider = sensorCol;

        for (let i = 0, len = this.count; i < len; i++) {
            let sp = new Sprite();
            sp.name = "ball" + i;
            this.owner.addChild(sp);
            sp.pos(350 + i * 50, 200).size(40, 40);
            let rb: RigidBody = sp.addComponent(RigidBody);
            rb.applyOwnerColliderComponent = false;
            this.bodys.push(rb);
            this.touching[i] = false;
            rb.getBody().GetUserData().pointer = i;
            let circleShape = new Laya.CircleShape2D();
            circleShape.radius = 20;
            circleShape.x = circleShape.y = 20;
            rb.shapes = [circleShape];
            sp.addComponent(MouseJoint);


            sp.on(Event.TRIGGER_ENTER, this, this.onTriggerEnter);
            sp.on(Event.TRIGGER_EXIT, this, this.onTriggerExit);
        }

        Laya.physicsTimer.frameLoop(1, this, this.onTriggerStay);
    }

    onTriggerEnter(colliderB: ColliderBase, colliderA: ColliderBase, contact: any) {
        if (colliderB === this.sensorCollider) {
            console.log("onTriggerEnter");
            let bodyB: RigidBody = colliderA.owner.getComponent(RigidBody);
            let index = bodyB.getBox2DBody().GetUserData().pointer;
            this.touching[index] = true;
        }
    }

    onTriggerStay() {
        // 遍历所有刚体
        let bodys = this.bodys, body: RigidBody;
        for (let i = 0, len = this.count; i < len; i++) {
            body = bodys[i];
            if (!this.touching[i]) {
                continue;
            }
            let bodyA: Laya.StaticCollider = this.sensorCollider.owner.getComponent(Laya.StaticCollider);
            let bodyB: RigidBody = body.owner.getComponent(RigidBody);
            let position = bodyB.getWorldCenter();
            let center = bodyA.getWorldPoint(this.sensorCollider.x, this.sensorCollider.y)
            let x = center.x - position.x;
            let y = center.y - position.y;
            let vec: Laya.Vector2 = new Laya.Vector2(x, y);
            if (Laya.Vector2.scalarLength(vec) < 1E-5) {
                continue;
            }

            Laya.Vector2.normalize(vec, vec);
            bodyB.applyForce(position, {
                x: vec.x * 100,
                y: vec.y * 100
            });
        }
    }

    onTriggerExit(colliderB: ColliderBase, colliderA: ColliderBase, contact: any) {
        if (colliderB === this.sensorCollider) {
            console.log("onTriggerExit");
            let bodyB: RigidBody = colliderA.owner.getComponent(RigidBody);
            let index = bodyB.getBody().GetUserData().pointer;
            this.touching[index] = false;
        }
    }

    onDisable(): void {
        if (this.sensorCollider) {
            let ground = this.sensorCollider.owner;
            ground.off(Event.TRIGGER_ENTER, this, this.onTriggerEnter);
            ground.off(Event.TRIGGER_EXIT, this, this.onTriggerExit);
            Laya.physicsTimer.clearAll(this);
            this.sensorCollider = null;
        }
    }

}