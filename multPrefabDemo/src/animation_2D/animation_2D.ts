const { regClass, property } = Laya;

class Character extends Laya.Sprite {
    static WIDTH: number = 110;
    static HEIGHT: number = 110;

    private speed: number = 5;

    private bloodBar: Laya.Sprite;
    private animation: Laya.Animation;
    private nameLabel: Laya.Text;

    constructor(images: any[]) {
        super();
        this.createAnimation(images);
        this.createBloodBar();
        this.createNameLabel();
    }

    private createAnimation(images: any[]): void {
        this.animation = new Laya.Animation();
        this.animation.loadImages(images);
        this.animation.interval = 70;
        this.animation.play(0);
        this.addChild(this.animation);
    }

    private createBloodBar(): void {
        this.bloodBar = new Laya.Sprite();
        this.bloodBar.loadImage("resources/characters/blood_1_r.png");
        this.bloodBar.x = 20;
        this.addChild(this.bloodBar);
    }

    private createNameLabel(): void {
        this.nameLabel = new Laya.Text();
        this.nameLabel.color = "#FFFFFF";
        this.nameLabel.text = "Default";
        this.nameLabel.fontSize = 13;
        this.nameLabel.width = Character.WIDTH;
        this.nameLabel.align = "center";
        this.addChild(this.nameLabel);
    }

    setSpeed(value: number): void {
        this.speed = value;
    }

    setName(value: string): void {
        this.nameLabel.text = value;
    }

    update(): void {
        this.x += this.speed;
        if (this.x >= Laya.stage.width + Character.WIDTH)
            this.x = -Character.WIDTH;
    }
}


@regClass()
export class animation_2D extends Laya.Script {
    private amount: number = 500;

    private character1: any[] = ["resources/characters/yd-6_01.png",
        "resources/characters/yd-6_02.png",
        "resources/characters/yd-6_03.png",
        "resources/characters/yd-6_04.png",
        "resources/characters/yd-6_05.png",
        "resources/characters/yd-6_06.png",
        "resources/characters/yd-6_07.png",
        "resources/characters/yd-6_08.png"];
    private character2: any[] = ["resources/characters/yd-3_01.png",
        "resources/characters/yd-3_02.png",
        "resources/characters/yd-3_03.png",
        "resources/characters/yd-3_04.png",
        "resources/characters/yd-3_05.png",
        "resources/characters/yd-3_06.png",
        "resources/characters/yd-3_07.png",
        "resources/characters/yd-3_08.png"];
    private character3: any[] = ["resources/characters/yd-2_01.png",
        "resources/characters/yd-2_02.png",
        "resources/characters/yd-2_03.png",
        "resources/characters/yd-2_04.png",
        "resources/characters/yd-2_05.png",
        "resources/characters/yd-2_06.png",
        "resources/characters/yd-2_07.png",
        "resources/characters/yd-2_08.png"];
    private character4: any[] = ["resources/characters/wyd-1_01.png",
        "resources/characters/wyd-1_02.png",
        "resources/characters/wyd-1_03.png",
        "resources/characters/wyd-1_04.png",
        "resources/characters/wyd-1_05.png",
        "resources/characters/wyd-1_06.png",
        "resources/characters/wyd-1_07.png",
        "resources/characters/wyd-1_08.png"];

    private characterSkins: any[] = [this.character1, this.character2, this.character3, this.character4];

    private characters: any[] = [];
    private text: Laya.Text;
    private image: Laya.Image;

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        this.image = new Laya.Image();
        this.image.skin = "resources/characters/background.jpg";
        this.owner.addChild(this.image);

        this.createCharacters();

        this.text = new Laya.Text();
        this.text.zOrder = 10000;
        this.text.fontSize = 60;
        this.text.color = "#ff0000"
        this.owner.addChild(this.text);

        Laya.timer.frameLoop(1, this, this.gameLoop);
    }


    private createCharacters(): void {
        var char: Character;
        var charSkin: any[];
        for (var i: number = 0; i < this.amount; i++) {
            charSkin = this.characterSkins[Math.floor(Math.random() * this.characterSkins.length)];
            char = new Character(charSkin);

            char.x = Math.random() * (Laya.stage.width + Character.WIDTH * 2);
            char.y = Math.random() * (Laya.stage.height - Character.HEIGHT);
            char.zOrder = char.y;

            char.setSpeed(Math.floor(Math.random() * 2 + 3));
            char.setName(i.toString());

            this.owner.addChild(char);
            this.characters.push(char);
        }
    }

    private gameLoop(): void {
        for (var i: number = this.characters.length - 1; i >= 0; i--) {
            this.characters[i].update();
        }
        if (Laya.timer.currFrame % 60 === 0) {
            this.text.text = Laya.Stat.FPS.toString();
        }
    }

}