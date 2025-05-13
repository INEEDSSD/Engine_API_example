

const TMP_VEC3 = new Laya.Vector3(0, 0, 0);

class Ball {

    position: Laya.Vector3;

    radius: number;

    strength: number;

    subtract: number;

}

export class Metaballs {

    balls: Ball[] = [];

    constructor() {

    }

    addBall(position: Laya.Vector3, strength: number, subtract: number) {
        let ball = new Ball();
        ball.position = position;
        ball.radius = Math.sqrt(strength / subtract);
        ball.strength = strength;
        ball.subtract = subtract;

        this.balls.push(ball);

        return ball;
    }

    clearBalls() {
        this.balls = [];
    }

    updateBalls(timestamp: number) {
        this.clearBalls();

        const t = timestamp * 0.0005;

        const numblobs = 16;

        const subtract = 12;

        const strength = 5 / ((Math.sqrt(numblobs) - 1) / 4 + 1);

        for (let i = 0; i < numblobs; i++) {
            let position = new Laya.Vector3();
            position.x = Math.cos(i + 1.12 * t * 0.21 * Math.sin((0.72 + 0.83 * i))) * 0.5;
            position.y = (Math.sin(i + 1.26 * t * (1.03 + 0.5 * Math.cos(0.21 * i))) + 1.0) * 1.0;
            position.z = Math.cos(i + 1.32 * t * 0.1 * Math.sin((0.92 + 0.53 * i))) * 0.5;

            this.addBall(position, strength, subtract);
        }

    }

    surfaceFunc(x: number, y: number, z: number) {
        // No surfaces outside "the tube"
        /*if(x*x + z*z > 1.1) {
          return 0;
        }*/

        // Always render geometry on the floor
        if ((x * x + z * z < 1.1) && y < 0) {
            return 100;
        }

        TMP_VEC3.setValue(x, y, z);

        let result = 0;
        for (const ball of this.balls) {
            const val = ball.strength / (0.000001 + Laya.Vector3.distanceSquared(TMP_VEC3, ball.position)) - ball.subtract;
            if (val > 0.0) {
                result += val;
            }
        }

        return result;

    }
}