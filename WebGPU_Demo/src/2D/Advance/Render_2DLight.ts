import { BaseScript } from "../../BaseScript";

let { regClass, property } = Laya;

@regClass()
export class Render_2DLight extends BaseScript {
    declare owner: Laya.Sprite;

    camera: Laya.Camera2D = new Laya.Camera2D();
    area: Laya.Area2D;
    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    onAwake(): void {
        super.base();
    }

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        // 增加Area2D绘制区域设置
        this.area = new Laya.Area2D();
        this.owner.addChild(this.area);

        Laya.loader.load(["resources/res/light.png", "resources/res/bg2.png", "resources/res/apes/monkey2.png", "resources/res/apes/monkey1.png"]).then(() => {
            let monkey: Laya.Texture2D = Laya.loader.getRes("resources/res/apes/monkey2.png", Laya.Loader.TEXTURE2D);
            let light: Laya.Texture = Laya.loader.getRes("resources/res/light.png");
            this.addLight2D(light);
            this.add2DLightOccluder(monkey);
        });
    }

    /**
     * 创建2D灯光
     * @param tex 
     */
    addLight2D(tex: Laya.Texture): void {
        let spriteLightD1 = this.area.addChild(new Laya.Sprite());
        let lightD1 = spriteLightD1.addComponent(Laya.DirectionLight2D);
        lightD1.directionAngle = 30;
        lightD1.color = new Laya.Color(0.5, 0.5, 0.5, 1);
        lightD1.shadowColor = new Laya.Color(0, 0.5, 0, 1);
        lightD1.shadowFilterType = Laya.ShadowFilterType.None;
        lightD1.layerMask = 1;
        lightD1.shadowEnable = true;
        //lightD1.addComponent(editDirectionLight);

        let spriteLight1 = this.area.addChild(new Laya.Sprite());
        let light1 = spriteLight1.addComponent(Laya.SpriteLight2D);
        spriteLight1.x = 500;
        spriteLight1.y = 800;
        spriteLight1.scale(5, 5);
        light1.color = new Laya.Color(1, 1, 1, 1);
        light1.shadowColor = new Laya.Color(1, 1, 0, 1);
        light1.shadowFilterType = Laya.ShadowFilterType.None;
        light1.spriteTexture = tex.bitmap as Laya.Texture2D;
        light1.layerMask = 1;
        light1.shadowEnable = true;

        let spriteLight2 = this.area.addChild(new Laya.Sprite());
        let light2 = spriteLight2.addComponent(Laya.FreeformLight2D);
        let ox = 0;
        let oy = 0;
        let poly = new Laya.PolygonPoint2D();
        poly.addPoint(-100 + ox, -100 + oy);
        poly.addPoint(0 + ox, -50 + oy);
        poly.addPoint(100 + ox, -100 + oy);
        poly.addPoint(100 + ox, 100 + oy);
        poly.addPoint(0 + ox, 150 + oy);
        poly.addPoint(-100 + ox, 100 + oy);
        light2.polygonPoint = poly;
        spriteLight2.x = 200;
        spriteLight2.y = 300;
        light2.intensity = 1;
        light2.color = new Laya.Color(0, 1, 1, 1);
        light2.shadowColor = new Laya.Color(1, 0, 0, 1);
        light2.shadowStrength = 0.5;
        light2.shadowFilterType = Laya.ShadowFilterType.None;
        light2.falloffRange = 0.5;
        light2.layerMask = 1;
        light2.shadowEnable = true;
        spriteLight2.addComponent(lightRotate);

        let spriteLight3 = this.area.addChild(new Laya.Sprite());
        let light3 = spriteLight3.addComponent(Laya.SpotLight2D);
        spriteLight3.x = 500;
        spriteLight3.y = 500;
        spriteLight3.rotation = 0;
        light3.innerRadius = 300;
        light3.outerRadius = 400;
        light3.innerAngle = 60;
        light3.outerAngle = 125;
        light3.intensity = 1;
        light3.color = new Laya.Color(1, 1, 1, 1);
        light3.shadowColor = new Laya.Color(0, 1, 0, 1);
        light3.shadowStrength = 0.5;
        light3.shadowFilterType = Laya.ShadowFilterType.PCF5;
        light3.shadowFilterSmooth = 5;
        light3.layerMask = 1;
        light3.shadowEnable = true;

        let spriteLight4 = this.area.addChild(new Laya.Sprite());
        let light4 = spriteLight4.addComponent(Laya.SpotLight2D);
        spriteLight4.x = 2000;
        spriteLight4.y = 400;
        spriteLight4.rotation = 90;
        light4.innerRadius = 300;
        light4.outerRadius = 400;
        light4.innerAngle = 60;
        light4.outerAngle = 125;
        light4.intensity = 1;
        light4.color = new Laya.Color(1, 1, 0, 1);
        light4.shadowColor = new Laya.Color(0, 1, 1, 1);
        light4.shadowStrength = 0.5;
        light4.shadowFilterType = Laya.ShadowFilterType.PCF9;
        light4.shadowFilterSmooth = 5;
        light4.layerMask = 1;
        light4.shadowEnable = true;

        let spriteLight5 = this.area.addChild(new Laya.Sprite());
        let light5 = spriteLight5.addComponent(Laya.SpotLight2D);
        spriteLight5.x = 3000;
        spriteLight5.y = 1000;
        spriteLight5.rotation = 180;
        light4.innerRadius = 200;
        light4.outerRadius = 400;
        light4.innerAngle = 30;
        light4.outerAngle = 90;
        light5.intensity = 1;
        light5.color = new Laya.Color(0, 1, 1, 1);
        light5.shadowColor = new Laya.Color(0, 1, 1, 1);
        light5.shadowStrength = 0.5;
        light5.shadowFilterType = Laya.ShadowFilterType.None;
        light5.shadowFilterSmooth = 5;
        light5.layerMask = 1;
        light5.shadowEnable = true;
    }


    /**
     * 创建2D自定义形状的灯光遮挡器
     * @param res 
     */
    add2DLightOccluder(res: Laya.Texture2D): void {
        let tex = Laya.loader.getRes("res/bg2.png");
        let bk = this.area.addChild(new Laya.Sprite());
        let mesh2Drender = bk.addComponent(Laya.Mesh2DRender);
        mesh2Drender.sharedMesh = this.generateRectVerticesAndUV(100000, 100000);
        mesh2Drender.texture = tex;
        mesh2Drender.lightReceive = true;
        bk.x = -50000;
        bk.y = -50000;

        let ape = this.area.addChild(new Laya.Sprite());
        let mesh2DrenderApe = ape.addComponent(Laya.Mesh2DRender);
        mesh2DrenderApe.sharedMesh = this.generateRectVerticesAndUV(110, 145);
        mesh2DrenderApe.texture = res;
        mesh2DrenderApe.lightReceive = true;
        ape.x = 500;
        ape.y = 300;

        let ls = ape.addComponent(Laya.LightOccluder2D);
        let poly = new Laya.PolygonPoint2D();
        poly.addPoint(55, 3);
        poly.addPoint(68, 15);
        poly.addPoint(78, 25);
        poly.addPoint(83, 40);
        poly.addPoint(85, 60);
        poly.addPoint(95, 70);
        poly.addPoint(100, 80);
        poly.addPoint(105, 90);
        poly.addPoint(107, 100);
        poly.addPoint(105, 110);
        poly.addPoint(105, 120);
        poly.addPoint(100, 130);
        poly.addPoint(95, 140);
        poly.addPoint(80, 142);
        poly.addPoint(70, 130);
        poly.addPoint(55, 120);
        poly.addPoint(40, 130);
        poly.addPoint(30, 142);
        poly.addPoint(15, 140);
        poly.addPoint(10, 130);
        poly.addPoint(5, 120);
        poly.addPoint(5, 110);
        poly.addPoint(3, 100);
        poly.addPoint(5, 90);
        poly.addPoint(10, 80);
        poly.addPoint(15, 70);
        poly.addPoint(25, 60);
        poly.addPoint(27, 40);
        poly.addPoint(32, 25);
        poly.addPoint(42, 15);
        ls.polygonPoint = poly;

        ape.addComponent(testMove);
        ape.addChild(this.camera);

        this.camera.isMain = true;


        let ape1: Laya.Sprite = new Laya.Sprite();
        this.area.addChild(ape1);
        ape1.loadImage("resources/res/apes/monkey1.png");
        ape1.x = 50;
        ape1.y = 50;
    }

    /**
     * 生成一个矩形
     * @param width 
     * @param height 
     * @returns 
     */
    private generateRectVerticesAndUV(width: number, height: number): Laya.Mesh2D {
        let vertices = new Float32Array(4 * 5);
        let indices = new Uint16Array(2 * 3);
        let index = 0;
        vertices[index++] = 0;
        vertices[index++] = 0;
        vertices[index++] = 0;
        vertices[index++] = 0;
        vertices[index++] = 0;

        vertices[index++] = width;
        vertices[index++] = 0;
        vertices[index++] = 0;
        vertices[index++] = 1;
        vertices[index++] = 0;

        vertices[index++] = width;
        vertices[index++] = height;
        vertices[index++] = 0;
        vertices[index++] = 1;
        vertices[index++] = 1;

        vertices[index++] = 0;
        vertices[index++] = height;
        vertices[index++] = 0;
        vertices[index++] = 0;
        vertices[index++] = 1;

        index = 0;
        indices[index++] = 0;
        indices[index++] = 1;
        indices[index++] = 3;

        indices[index++] = 1;
        indices[index++] = 2;
        indices[index++] = 3;

        let declaration = Laya.VertexMesh2D.getVertexDeclaration(["POSITION,UV"], false)[0];
        let mesh2D = Laya.Mesh2D.createMesh2DByPrimitive([vertices], [declaration], indices, Laya.IndexFormat.UInt16, [{ length: indices.length, start: 0 }]);
        mesh2D.lock = true;
        return mesh2D;
    }

}

/**
 * 2D灯光旋转脚本
 */
export class lightRotate extends Laya.Script {
    onUpdate(): void {
        (this.owner as Laya.Sprite).rotation += 1;
    }
}


/**
 * 键盘位移脚本
 */
export class testMove extends Laya.Script {
    /**
     * 键盘按下时执行
     * @param 鼠标事件
     */
    onKeyDown(evt: Laya.Event): void {
        let speed = 10;
        let angle = 5;
        switch (evt.keyCode) {
            case 87: //w
                (this.owner as Laya.Sprite).y -= speed;
                break;
            case 83: //s
                (this.owner as Laya.Sprite).y += speed;
                break;
            case 65: //a
                (this.owner as Laya.Sprite).x -= speed;
                break;
            case 68: //d
                (this.owner as Laya.Sprite).x += speed;
                break;
            case 32: //space
                (this.owner as Laya.Sprite).rotation += angle;
                break;
            case 33: //pgup
                (this.owner as Laya.Sprite).scaleX *= 1.1;
                break;
            case 34: //pgdn
                (this.owner as Laya.Sprite).scaleX /= 1.1;
                break;
        }
    }
}