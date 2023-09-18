import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import ChainCollider = Laya.ChainCollider;
import MouseJoint = Laya.MouseJoint;
import Physics = Laya.Physics;
import CircleCollider = Laya.CircleCollider;
import ColliderBase = Laya.ColliderBase;

const { regClass, property } = Laya;

@regClass()
export class Physics_CollisionEvent extends BaseScript {

    private count: number = 7;
    private sensorCollider: CircleCollider;
    private bodys: Array<any> = [];
    private touching: Array<boolean> = [];

    constructor() {
        super();
    }

    onAwake(): void {

        super.base();

        Laya.Config.isAntialias = true;
        Laya.Physics.enable();
        Laya.PhysicsDebugDraw.enable();

        this.createSensor();
    }

    createSensor() {

        //地面
        let ground = new Sprite();
        this.owner.addChild(ground);
        let groundBody: RigidBody = new RigidBody();
        groundBody.type = "static";
        ground.addComponentInstance(groundBody);
        //地面碰撞范围
        let chainCollider: ChainCollider = ground.addComponent(ChainCollider);
        chainCollider.points = "100,300,100,450,1024,450,1024,300";

        //传感器
        let sensorCollider: CircleCollider = this.sensorCollider = ground.addComponent(CircleCollider);
        sensorCollider.isSensor = true;
        sensorCollider.radius = 100;
        sensorCollider.x = 350;
        sensorCollider.y = 200;

        //小球
        for (let i = 0, len = this.count; i < len; i++) {
            let sp = new Sprite();
            this.owner.addChild(sp);
            sp.pos(350 + i * 50, 100).size(40, 40);
            let rb: RigidBody = sp.addComponent(RigidBody);
            this.bodys.push(rb);
            this.touching[i] = false;
            let body: any = rb.getBody();
            if( body.GetUserData() )
                body.SetUserData({'pointer': i});
            else
            {
                console.log("GetUserData is null");
                body.pointer = i;
            }
                
            let circleCollider: CircleCollider = sp.addComponent(CircleCollider);
            circleCollider.radius = 20;
            sp.addComponent(MouseJoint);
        }

        ground.on(Event.TRIGGER_ENTER, this, this.onTriggerEnter);
        ground.on(Event.TRIGGER_EXIT, this, this.onTriggerExit);
        Laya.physicsTimer.frameLoop(1, this, this.onTriggerStay);
    }

    onTriggerEnter(colliderB: ColliderBase, colliderA: ColliderBase, contact:any) {
        if (colliderA === this.sensorCollider) {
            let bodyB: RigidBody = colliderB.owner.getComponent(RigidBody);
            if( bodyB.getBody().GetUserData() )
            {
                let index = bodyB.getBody().GetUserData().pointer;
                this.touching[index] = true;
            }
            else
            {
                let index = bodyB.getBody().pointer;
                this.touching[index] = true;                
            }

        }
    }

    onTriggerStay() {
        const box2d: any = (<any>window).box2d;
        // 遍历所有刚体
        let bodys = this.bodys, body: RigidBody;
        for (let i = 0, len = this.count; i < len; i++) {
            body = bodys[i];
            if (!this.touching[i]) {
                let body1: any = body.getBody();
                if( body1.GetUserData() )
                    body1.SetUserData({'pointer': i});                
                continue;
            }
            let bodyA: RigidBody = this.sensorCollider.owner.getComponent(RigidBody);
            let bodyB: RigidBody = body.owner.getComponent(RigidBody);
            let bodyOriA = bodyA.getBody();
            let bodyOriB = bodyB.getBody();
            let position = bodyOriB.GetPosition();
            // let center = bodyOriA.GetPosition();
            let center = new box2d.b2Vec2((450 + 100) / Physics.PIXEL_RATIO, (300 + 100) / Physics.PIXEL_RATIO);
            const d = box2d.b2Vec2.SubVV(center, position, new box2d.b2Vec2());
            if (d.LengthSquared() < 1E-5) {
                continue;
            }
            d.Normalize();
            const F = new box2d.b2Vec2(d.x * 100, d.y * 100);
            bodyB.applyForce(position, F);
        }
    }

    onTriggerExit(colliderB: ColliderBase, colliderA: ColliderBase, contact:any) {
        if (colliderA === this.sensorCollider) {
            let bodyB: RigidBody = colliderB.owner.getComponent(RigidBody);
            if( bodyB.getBody().GetUserData() )
            {
                let index = bodyB.getBody().GetUserData().pointer;
                this.touching[index] = false;
            }            
            else
            {
                let index = bodyB.getBody().pointer;
                this.touching[index] = false;                
            }
        }
    }

    onDestroy() {
        Laya.physicsTimer.clearAll(this);
    }
 
}