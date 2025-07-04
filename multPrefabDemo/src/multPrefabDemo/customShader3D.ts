import { Main } from "./Main";
import { materialUpdateData } from "./materialUpdateData";
import { Shader3DCreate } from "./shader3DCreate";

const { regClass, property } = Laya;

/**
 * customShader3D预制体使用的脚本，先字符串拼接指定个数的shader，然后设置预制体实例的uniform定时修改
 */

@regClass()
export class customShader3D extends Laya.Script {

    //组件被激活后执行，此时所有节点和组件均已创建完毕，此方法只执行一次
    //onAwake(): void {}

    //组件被启用后执行，例如节点被添加到舞台后
    onEnable(): void {
        Shader3DCreate.createShader3D("myCustom3DShader", Main.customShader3DCount);
        for (let i = 0; i < Main.customShader3DCount; i++) {
            let sp: Laya.Sprite3D = new Laya.Sprite3D();
            let meshfilter: Laya.MeshFilter = sp.addComponent(Laya.MeshFilter);
            let meshrender: Laya.MeshRenderer = sp.addComponent(Laya.MeshRenderer);
            meshrender.castShadow = true;
            meshrender.receiveShadow = true;
            let mesh: Laya.Mesh = Laya.PrimitiveMesh.createSphere(2, 10, 10);
            meshfilter.sharedMesh = mesh;
            let mat: Laya.Material = new Laya.Material();
            mat.setShaderName(Shader3DCreate.shaders[i].name);
            meshrender.material = mat;

            // 在Y轴方向形成圆形排列
            let radius = 10.0; // 圆形半径
            let angle = (i / Main.customShader3DCount) * Math.PI * 2; // 计算角度
            let x = radius * Math.cos(angle); // X坐标
            let z = radius * Math.sin(angle); // Z坐标
            let y = 0.5; // Y坐标保持为0（或者可以设置不同的高度）

            sp.transform.position = new Laya.Vector3(x, y, z);
            sp.transform.setWorldLossyScale(new Laya.Vector3(0.2, 0.2, 0.2));
            sp.addComponent(materialUpdateData);
            this.owner.addChild(sp);
        }

    }

    //组件被禁用时执行，例如从节点从舞台移除后
    //onDisable(): void {}

    //第一次执行update之前执行，只会执行一次
    //onStart(): void {}

    //手动调用节点销毁时执行
    //onDestroy(): void {}

    //每帧更新时执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onUpdate(): void {}

    //每帧更新时执行，在update之后执行，尽量不要在这里写大循环逻辑或者使用getComponent方法
    //onLateUpdate(): void {}

    //鼠标点击后执行。与交互相关的还有onMouseDown等十多个函数，具体请参阅文档。
    //onMouseClick(): void {}
}