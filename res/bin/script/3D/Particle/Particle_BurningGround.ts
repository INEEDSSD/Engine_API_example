import { BaseScript } from "../../BaseScript";

import Scene3D = Laya.Scene3D;
import Camera = Laya.Camera;
import Sprite3D = Laya.Sprite3D;
import CameraClearFlags = Laya.CameraClearFlags;
import Color = Laya.Color;
import ShurikenParticleRenderer = Laya.ShurikenParticleRenderer;
import ShurikenParticleSystem = Laya.ShurikenParticleSystem;


const { regClass, property } = Laya;

@regClass()
export class Particle_BurningGround extends BaseScript {

    @property(Laya.Camera)
    private camera: Camera;  
    @property(Laya.Scene3D)
    private scene: Scene3D;

    private particle: Sprite3D;
    private particleSystem: ShurikenParticleSystem[] = [];
	private index: number = 0;

    constructor() {
        super();
    }

    onAwake(): void {

        super.base(this.camera);
		this.camera.clearFlag = CameraClearFlags.SolidColor;
		this.camera.clearColor = new Color(0, 0, 0, 1);

        //在3.0IDE中制作粒子系统，可以用代码修改粒子系统的属性
		Laya.loader.load("resources/res/threeDimen/particle/ETF_Burning_Ground.lh").then( (res)=> {
			this.particle = this.scene.addChild(res.create());

            this.particle = this.particle.getChildAt(0) as Sprite3D;
            //通过Sprite3D获得ShurikenParticleRenderer
            let particleRenderer: ShurikenParticleRenderer = this.particle.getComponent(ShurikenParticleRenderer);
            var mat = particleRenderer.sharedMaterial;
            console.log(particleRenderer);
            //通过ShurikenParticleRenderer获得ShurikenParticleSystem
            this.particleSystem.push(particleRenderer.particleSystem);

            for( let i = 0; i< this.particle.numChildren; i++ )
            {
                //通过Sprite3D获得ShurikenParticleRenderer
                let particleRenderer1: ShurikenParticleRenderer = this.particle.getChildAt(i).getComponent(ShurikenParticleRenderer);
                //通过ShurikenParticleRenderer获得ShurikenParticleSystem
                this.particleSystem.push(particleRenderer1.particleSystem);
            }
		});

        super.addBottomButton( ["去掉循环播放","恢复循环播放","加速播放"] , this, [this.change, this.change, this.change]);

	}

	change(): void {
		this.index++;
		if (this.index % 3 === 1) {
			//去掉循环播放
            for( let i = 0; i< this.particleSystem.length; i++ )
            {
                this.particleSystem[i].looping = false;
                this.particleSystem[i].simulationSpeed = 1;
            }
                
		} else if (this.index % 3 === 2) {
			//恢复循环播放
            for( let i = 0; i< this.particleSystem.length; i++ )
            {
                this.particleSystem[i].looping = true;
                this.particleSystem[i].play();
            }
                
		} else {
			//加速播放
            for( let i = 0; i< this.particleSystem.length; i++ )
                this.particleSystem[i].simulationSpeed = 10;
		}
	}
}