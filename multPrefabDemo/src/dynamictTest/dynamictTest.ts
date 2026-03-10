const { regClass, property } = Laya;

@regClass()
export class DynamictTest extends Laya.Script {
    //declare owner : Laya.Sprite3D;
    //declare owner : Laya.Sprite;

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Laya.Texture2D.load("OtherRes/images/layabox.png", Laya.Handler.create(this, (tex: Laya.Texture2D) => {
            var radius: Laya.Vector3 = new Laya.Vector3(0, 0, 1);
            var radMatrix: Laya.Matrix4x4 = new Laya.Matrix4x4();
            var circleCount: number = 50;

            var boxMesh: Laya.Mesh = Laya.PrimitiveMesh.createBox(0.02, 0.02, 0.02);
            var boxMat: Laya.BlinnPhongMaterial = new Laya.BlinnPhongMaterial();
            boxMat.albedoTexture = tex;
            for (var i: number = 0; i < circleCount; i++) {
                radius.z = 1.0 + i * 0.15;
                radius.y = i * 0.03;
                var oneCircleCount: number = 100 + i * 15;
                for (var j: number = 0; j < oneCircleCount; j++) {
                    var boxSprite: Laya.MeshSprite3D = new Laya.MeshSprite3D(boxMesh);
                    boxSprite.meshRenderer.sharedMaterial = boxMat;
                    var localPos: Laya.Vector3 = boxSprite.transform.localPosition;
                    var rad: number = ((Math.PI * 2) / oneCircleCount) * j;
                    Laya.Matrix4x4.createRotationY(rad, radMatrix);
                    Laya.Vector3.transformCoordinate(radius, radMatrix, localPos);
                    boxSprite.transform.localPosition = localPos;
                    this.owner.addChild(boxSprite);
                }
            }
        }));
    }
}