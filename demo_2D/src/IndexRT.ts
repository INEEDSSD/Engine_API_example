import { IndexRTBase } from "./IndexRT.generated";

const { regClass } = Laya;

@regClass()
export default class IndexRT extends IndexRTBase {

    onAwake(): void {
        this.d3Btn.visible = false;
    }

    onEnable(): void {

        console.log("IndexRT onEnable");
        //侦听ui按钮点击事件
        this.uiBtn.on(Laya.Event.MOUSE_DOWN, this, () => {
            //点击后，打开UI场景示例
            Laya.Scene.open("scenes/UiMain.ls");
            console.log("点击了ui按钮");
        });

        //侦听物理按钮点击事件
        this.phyBtn.on(Laya.Event.MOUSE_DOWN, this, () => {
            //点击后，打开物理游戏示例
            Laya.Scene.open("scenes/PhysicsGameMain.ls");
            console.log("点击了物理按钮");
        });

        //只在浏览器环境下显示3D混合按钮，因为混合3D里涉及到屏幕的动态旋转，这在Native和小游戏中是不允许动态旋转屏幕的，需要提前设置好是什么样的屏幕方向以及尺寸
        if (Laya.Browser.onChrome || Laya.Browser.onEdge || Laya.Browser.onIE || Laya.Browser.onSafari || Laya.Browser.onFirefox) {
            this.d3Btn.visible = true;
            //侦听3D混合按钮点击事件
            this.d3Btn.on(Laya.Event.MOUSE_DOWN, this, () => {
                //点击后，打开3D混合场景示例
                Laya.Scene.open("scenes/D3Main.ls");
                console.log("点击了3D混合按钮");
            });
        }
    }
}