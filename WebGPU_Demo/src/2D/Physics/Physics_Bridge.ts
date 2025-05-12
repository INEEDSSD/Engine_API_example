import { BaseScript } from "../../BaseScript";

import Sprite = Laya.Sprite;
import Event = Laya.Event;
import RigidBody = Laya.RigidBody;
import RevoluteJoint = Laya.RevoluteJoint;
import Label = Laya.Label;

const { regClass, property } = Laya;

@regClass()
export class Physics_Bridge extends BaseScript {

    private ecount = 30;
    private label: Label;
    private TempVec: Laya.Vector2 = new Laya.Vector2();
    private physicsManager: Laya.Physics2DWorldManager;
    constructor() {
        super();
    }

    onStart(): void {
        super.base();

        Laya.Physics2D.I.start();
        this.physicsManager = (this.owner as Laya.Scene).getComponentElementManager(Laya.Physics2DWorldManager.__managerName) as Laya.Physics2DWorldManager;
        
        this.createBridge();
        this.eventListener();
    }

    createBridge() {
        // ground
        const startPosX = 250, startPosY = 450;
        let ground = new Sprite();
        //静态
        let groundBody: Laya.StaticCollider = new Laya.StaticCollider();
        ground.addComponentInstance(groundBody);
        //形状一
        let chainShape = new Laya.ChainShape2D();
        chainShape.datas = [50, 600, 1050, 600];
        //形状二
        let boxShape = new Laya.BoxShape2D();
        boxShape.width = 100;
        boxShape.width = 50;
        let groundShapes = [];
        groundShapes.push(chainShape);
        groundShapes.push(boxShape);
        //shapes
        groundBody.shapes = groundShapes;
        this.owner.addChild(ground);

        //chain's left anchor
        let point1 = new Sprite();
        this.owner.addChild(point1);
        point1.pos(startPosX, startPosY);
        let pointRB1 = new Laya.StaticCollider();
        point1.addComponentInstance(pointRB1);
        let preBody = pointRB1;

        // bridge
        let width = 20, height = 2.5;
        for (let i = 0; i < this.ecount; i++) {
            let sp = new Sprite();
            this.owner.addChild(sp);
            sp.pos(startPosX + i * width, startPosY);
            let rb: RigidBody = sp.addComponent(RigidBody);
            rb.applyOwnerColliderComponent = false;
            let boxShape = new Laya.BoxShape2D();
            let shapes = [];
            shapes.push(boxShape);
            boxShape.width = width;
            boxShape.height = height;
            boxShape.density = 20;
            boxShape.friction = 0.2;
            boxShape.y = -height / 2;
            rb.shapes = shapes;
            let rj = new RevoluteJoint();
            rj.otherBody = preBody;
            sp.addComponentInstance(rj);
            (preBody as Laya.ColliderBase) = rb as Laya.ColliderBase;
        }

        let point2 = new Sprite();
        this.owner.addChild(point2);
        point2.pos(startPosX + this.ecount * width, startPosY);
        let pointRB2 = new Laya.StaticCollider();
        point2.addComponentInstance(pointRB2);

        let rj = new RevoluteJoint();
        rj.otherBody = preBody;
        point2.addComponentInstance(rj);

        for (let i = 0; i < 2; i++) {
            let sp = new Sprite();
            this.owner.addChild(sp);
            sp.pos(350 + 100 * i, 300);
            let rb: RigidBody = sp.addComponent(RigidBody);
            rb.applyOwnerColliderComponent = false;
            rb.bullet = true;
            let polyShape = new Laya.PolygonShape2D();
            polyShape.datas = [-10, 0, 10, 0, 0, 30];
            polyShape.density = 1.0;
            let shapes = []
            shapes.push(polyShape);
            rb.shapes = shapes;
        }

        for (let i = 0; i < 2; i++) {
            let sp = new Sprite();
            this.owner.addChild(sp);
            sp.pos(400 + 150 * i, 350);
            let rb: RigidBody = sp.addComponent(RigidBody);
            rb.applyOwnerColliderComponent = false;
            rb.bullet = true;
            let circleShape = new Laya.CircleShape2D();
            circleShape.radius = 10;
            rb.shapes = [circleShape];
        }
    }

    eventListener() {
        // 单击产生新的小球刚体
        Laya.stage.on(Event.CLICK, this, () => {
            let tempVec = this.TempVec;
            let targetX = 300 + Math.random() * 400, targetY = 500;
            let newBall = new Sprite();
            this.owner.addChild(newBall);
            let circleBody: RigidBody = newBall.addComponent(RigidBody);
            circleBody.applyOwnerColliderComponent = false;
            circleBody.bullet = true;

            let circleShape = new Laya.CircleShape2D();
            let shapes = [circleShape];
            circleShape.radius = 5;
            circleShape.x = Laya.stage.mouseX;
            circleShape.y = Laya.stage.mouseY;

            tempVec.x = targetX - circleShape.x;
            tempVec.y = targetY - circleShape.y;
            Laya.Vector2.normalize(tempVec, tempVec);
            Laya.Vector2.scale(tempVec, 25, tempVec);
            Laya.Vector2.scale(tempVec, Laya.Physics2DOption.pixelRatio, tempVec);
            circleBody.shapes = shapes;
            circleBody.linearVelocity = tempVec;
            Laya.timer.frameOnce(120, this, function () {
                newBall.destroy();
            });
        });

        let label: Label = this.label = this.owner.addChild(new Label("单击屏幕产生新的小球刚体，击向bridge的随机位置")) as Label;
        label.top = 20;
        label.right = 20;
        label.fontSize = 16;
        label.color = "#e69999";
    }

    onDisable(): void {
        if (this.box2D) {
            this.box2D.offAll(Event.CLICK);
            this.box2D = null;
        }
    }

}