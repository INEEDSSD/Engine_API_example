const { regClass, property } = Laya;

export class LightDebug {
    position: Laya.Vector3 = new Laya.Vector3();
    range: number = 0;
    color: Laya.Color = new Laya.Color(1, 1, 1, 1);
    velocity: Laya.Vector3 = new Laya.Vector3(0, 0, 0);
    destination: Laya.Vector3 = new Laya.Vector3(0, 0, 0);
    travelTime: number = 0;

    debugSp: Laya.Sprite3D;

    light: Laya.Sprite3D;

    destroy() {
        this.debugSp.destroy(true);
        this.light.destroy(true);
        this.debugSp = null;
        this.light = null;
        this.position = null;
        this.color = null;
        this.velocity = null;
        this.destination = null;
    }
}

@regClass()
export class LightManager {

    private _maxLightCount: number = 0;

    private _currentLightCount: number = 0;

    private _lightCount: number = 0;

    @property({ type: Number, min: 5, max: 1024, step: 1 })
    public get lightCount(): number {
        return this._lightCount;
    }
    public set lightCount(value: number) {
        this._lightCount = value;
    }

    @property({ type: Laya.Prefab })
    lightDebugPrefab: Laya.Prefab;

    @property({ type: Laya.Prefab })
    lightPrefab: Laya.Prefab;

    lightDebugRoot: Laya.Sprite3D = new Laya.Sprite3D("LightDebugRoot");

    lightRoot: Laya.Sprite3D = new Laya.Sprite3D("LightRoot");

    private _lightDebugs: LightDebug[] = [];

    constructor() {
    }

    private createLightDebug() {
        let debug = new LightDebug();

        let x = randomBetween(-11, 10);
        let y = randomBetween(0.2, 6.5);
        let z = randomBetween(-4.5, 4.0);

        debug.position.setValue(x, y, z);

        let r = randomBetween(0.1, 1.0);
        let g = randomBetween(0.1, 1.0);
        let b = randomBetween(0.1, 1.0);

        debug.color.setValue(r, g, b, 1.0);

        let debugSp = this.lightDebugPrefab.create() as Laya.Sprite3D;;
        debug.debugSp = debugSp;
        this.lightDebugRoot.addChild(debugSp);

        debugSp.transform.position = debug.position;
        let debugRender = debugSp.getComponent(Laya.MeshRenderer);
        debugRender.setNodeCustomData(Laya.ENodeCustomData.custom_0, r);
        debugRender.setNodeCustomData(Laya.ENodeCustomData.custom_1, g);
        debugRender.setNodeCustomData(Laya.ENodeCustomData.custom_2, b);

        let light = this.lightPrefab.create() as Laya.Sprite3D;
        debug.light = light;
        this.lightRoot.addChild(light);

        light.transform.position = debug.position;
        let pointLight = light.getComponent(Laya.PointLightCom);
        pointLight.range = 2;
        pointLight.color = new Laya.Color(r, g, b, 1.0);
        pointLight.intensity = 5.0;

        return debug;
    }

    private changeLightCount() {

        if (this._currentLightCount == this._lightCount) {
            return;
        }

        if (this._lightCount > this._maxLightCount) {
            this._maxLightCount = this._lightCount;
            for (let i = this._currentLightCount; i < this._lightCount; i++) {
                let debug = this.createLightDebug();
                this._lightDebugs.push(debug);
            }
            this._lightDebugs.forEach(debug => {
                this.lightRoot.addChild(debug.light);
                this.lightDebugRoot.addChild(debug.debugSp);

                debug.light.active = true;
                debug.debugSp.active = true;
            });
        }
        else {
            for (let i = 0; i < this._maxLightCount; i++) {
                let debug = this._lightDebugs[i];
                let active = i < this._lightCount;

                if (!active) {
                    debug.light.removeSelf();
                    debug.debugSp.removeSelf();

                    debug.debugSp.active = active;
                    debug.light.active = active;
                }
            }
        }

        this._currentLightCount = this._lightCount;
    }

    update(timeDelta: number): void {
        this.changeLightCount();

        for (let i = 0; i < this._lightCount; i++) {
            let light = this._lightDebugs[i];

            light.travelTime -= timeDelta;
            if (light.travelTime <= 0) {
                light.travelTime = randomBetween(500, 2000);
                light.destination.x = randomBetween(-11, 10);
                light.destination.y = randomBetween(0.2, 6.5);
                light.destination.z = randomBetween(-4.5, 4.0);
            }

            let velocity = light.velocity;
            velocity.x += (light.destination.x - light.position.x) * 0.000005 * timeDelta;
            velocity.y += (light.destination.y - light.position.y) * 0.000005 * timeDelta;
            velocity.z += (light.destination.z - light.position.z) * 0.000005 * timeDelta;

            let velocityLength = velocity.length();
            if (velocityLength > 0.05) {
                velocity.normalize();
                velocity.scale(0.05, velocity);
            }

            Laya.Vector3.add(light.position, velocity, light.position);

            light.debugSp.transform.position = light.position;
            light.light.transform.position = light.position;

        }
    }

    destroy() {
        this._lightDebugs.forEach(debug => {
            debug.destroy();
        });
        this._lightDebugs.length = 0;

        this.lightDebugRoot.destroy(true);
        this.lightRoot.destroy(true);
    }
}


const rand = new Laya.Rand(0);

function randomBetween(min: number, max: number) {
    // return Math.random() * (max - min) + min;
    return rand.getFloat() * (max - min) + min;
}

