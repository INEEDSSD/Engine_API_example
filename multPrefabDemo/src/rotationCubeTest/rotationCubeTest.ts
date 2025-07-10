const { regClass, property } = Laya;




/**
description
 三维纹理演示，加载箱子贴图并设置纹理属性
 */
@regClass()
export class RotationCubeTest extends Laya.Script {
    private sprite3D: Laya.Sprite3D;
    // 公共属性
    public areaSize = 50;
    // 生成区域大小
    public targetCubeCount = 0;
    // 目标立方体数量
    public currentCubeCount = 0;
    public gridSize = 8;
    // 初始网格大小
    public spacing = 2;
    // 间距
    public startPosition = new Laya.Vector3(0, 0, 0);
    public progress = 20;
    // 进度条初始值
    public bFirst = true;
    public cubePrefab: any = null;
    public rotationSpeed = 100;
    // 旋转速度
    public deltaTime = 0;
    // 帧时间差
    public fps = 0;
    // 帧率
    public ms = 0;
    // 毫秒时间
    public cubes: any[] = [];
    public scene: any;
    onEnable() {
        this.scene = this.owner;
        const row: number = 6;
        this.generateCubes(1024);
    }


    onStart() {
        this.onUpdate();
    }
    // 生成立方体
    generateCubes(count: number) {
        this.startPosition = new Laya.Vector3(
            this.gridSize * this.spacing / 2,
            this.gridSize * this.spacing / 2,
            -10
        );
        const scene = this.scene;
        const totalCubes = Math.pow(this.gridSize, 3);
        for (let x = 0; x < this.gridSize; x++) {
            for (let y = 0; y < this.gridSize; y++) {
                for (let z = 0; z < this.gridSize; z++) {
                    const pos = new Laya.Vector3(
                        this.startPosition.x - x * this.spacing,
                        this.startPosition.y - y * this.spacing,
                        this.startPosition.z - z * this.spacing
                    );
                    let cube;
                    // if (this.cubePrefab) {
                    cube = new Laya.MeshSprite3D(Laya.PrimitiveMesh.createBox(1, 1, 1));
                    this.setCubeColor(cube, x, y, z);
                    // }
                    cube.transform.position = pos;
                    scene.addChild(cube);
                    this.cubes.push(cube);
                }
            }
        }
        this.currentCubeCount = totalCubes;
    }

    setCubeColor(cube: any, x: number, y: number, z: number) {
        const meshRenderer = cube.getComponent(Laya.MeshRenderer);
        if (meshRenderer) {
            meshRenderer.material = new Laya.BlinnPhongMaterial();
            meshRenderer.material.setColor("u_DiffuseColor", new Laya.Color(
                x / this.gridSize,
                y / this.gridSize,
                z / this.gridSize,
                1
            ));
        }
    }

    onUpdate() {
        this.cubes.forEach((cube) => {
            cube.transform.rotate(new Laya.Vector3(
                this.rotationSpeed * Laya.timer.delta * 1e-3,
                0,
                0
            ), false, false);
        });
        this.deltaTime += (Laya.timer.delta - this.deltaTime) * 0.1;
        this.fps = 1e3 / this.deltaTime;
        this.ms = this.deltaTime;
    }
}


