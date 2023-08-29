Laya.LayaEnv.beforeInit = function(config: Laya.IStageConfig) {
    //这个方法会在Laya.init前调用
    console.log("before init from Main");
    //这里可以对config以及Laya.Config、Laya.Config3D进行自定义的修改
    Laya.Config.preserveDrawingBuffer =true;
    Laya.Config.isAlpha =true; 
    Laya.Config.useWebGL2 = false;
}

import { MainBase } from "./Main.generated";

const { regClass, property } = Laya;

@regClass()
export class Main extends MainBase {

    // 进入第一个loading后，后期预先加载的场景
    private loadingIndex = 0;
    private loadingOtherScenesPath : Array<any>= [

        //3D 场景 
        { url: "resources/res/threeDimen/scene/CourtyardScene/Courtyard.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Light/MultiLight.ls", type: Laya.Loader.HIERARCHY },

        { url: "resources/scene/3D/PostProcess/PostProcessDoF.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcessAO.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcessBloom.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcess_Blur.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/PostProcess/PostProcess_Edge.ls", type: Laya.Loader.HIERARCHY },   

        { url: "resources/scene/3D/Show/GunDemo.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Show/DamagedHelmetModelShow.ls", type: Laya.Loader.HIERARCHY },

        { url: "resources/scene/3D/Advance/ReflectionProbe.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Advance/VideoPlayIn3DWorld.ls", type: Laya.Loader.HIERARCHY },
        { url: "resources/scene/3D/Advance/CommandBuffer_Outline.ls", type: Laya.Loader.HIERARCHY },

        { url: "resources/res/threeDimen/LayaScene_separable-sss/Conventional/HeadBlinnphong.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/texAnimation/Attack01/Attack01.lh", type: Laya.Loader.HIERARCHY },
        { url: "resources/res/threeDimen/texAnimation/role/role.lh", type: Laya.Loader.HIERARCHY }

    ];

    onAwake(): void {

        
        let resArr : Array<any>= [

            //UI 资源
            { url: "resources/image/button1.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/button2.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/clip_arrow.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/clip_num_bg.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_blue_line.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_btn_bg.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_frame.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_list_bg.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_selected_bg.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_white_bg.jpg",   type:Laya.Loader.IMAGE },
            { url: "resources/image/img_white_line.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/vscroll.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/vscroll$bar.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/vscroll$down.png",   type:Laya.Loader.IMAGE },
            { url: "resources/image/vscroll$up.png",   type:Laya.Loader.IMAGE },

            //2D 资源
            { url: "resources/res/apes/monkey0.png", type: Laya.Loader.IMAGE },
            { url: "resources/res/apes/monkey1.png", type: Laya.Loader.IMAGE },
            { url: "resources/res/apes/monkey2.png", type: Laya.Loader.IMAGE },
            { url: "resources/res/apes/monkey3.png", type: Laya.Loader.IMAGE },
            { url: "resources/res/fighter/fighter.atlas", type: Laya.Loader.ATLAS },
            { url: "resources/res/bg2.png", type: Laya.Loader.IMAGE },

            //Json 资源
            { url: "resources/res/tiledMap/orthogonal-test-movelayer.json", type: Laya.Loader.JSON },
            { url: "resources/res/tiledMap/isometric_grass_and_water.json", type: Laya.Loader.JSON },
            { url: "resources/res/tiledMap/perspective_walls.json", type: Laya.Loader.JSON },
            { url: "resources/res/tiledMap/desert.json", type: Laya.Loader.JSON },

            //3D 资源       
            { url: "resources/res/threeDimen/skinModel/BoneLinkScene/PangZi.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/staticModel/grid/plane.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/particle/ETF_Burning_Ground.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/particle/ETF_Eternal_Light.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/skinModel/dude/dude.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/trail/Cube.lh", type: Laya.Loader.HIERARCHY },

            // 纹理资源
            { url: "resources/scene/3D/Scene3D/GriendSkyAmbientDemo/GriendSkyAmbientDemo.ktx", type: Laya.Loader.TEXTURE2D },
            { url: "resources/scene/3D/Material/PBRMaterialDemo/PBRMaterialDemo.ktx", type: Laya.Loader.TEXTURE2D },
            { url: "resources/res/threeDimen/LayaScene_MaskModelTest/Conventional/Assets/Scenes/MaskModelTestGIReflection.ltcb", type: Laya.Loader.TEXTURE2D },

            // LoadGltfRosource
            { url: "resources/res/threeDimen/fbx/LayaMonkey.FBX", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/fbx/Danding.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/fbx/Stand.FBX", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/fbx/Material.lmat", type: Laya.Loader.MATERIAL },
            { url: "resources/res/threeDimen/fbx/LayaMonkey.lmat", type: Laya.Loader.MATERIAL },

            // LoadFbxRosource
            { url: "resources/res/threeDimen/gltf/AnimatedCube/AnimatedCube.lh", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/gltf/RiggedFigure/RiggedFigure.gltf", type: Laya.Loader.HIERARCHY },
            { url: "resources/res/threeDimen/gltf/Duck/Duck.lh", type: Laya.Loader.HIERARCHY },

            // EnvironmentalReflection
            { url: "resources/res/threeDimen/staticModel/teapot/teapot-Teapot001.lm", type: Laya.Loader.MESH },
            { url: "resources/res/threeDimen/skyBox/DawnDusk/Skybox.lmat", type: Laya.Loader.MATERIAL }, 
            
            // GarbageCollection
            { url: "resources/res/threeDimen/scene/LayaScene_dudeScene/Conventional/dudeSceneNoCamera.ls", type: Laya.Loader.HIERARCHY }

        ]; 

        console.time();
        Laya.loader.load(
            //先加载本场景要用的
            ["resources/image/ly.png", "resources/image/progress.png", "resources/image/progress$bar.png"]
        ).then(() => {
            console.timeEnd();
            console.log("先加载本场景要用的完成");

            //改为新的方式，同时可以加载2D,3D资源
            Laya.loader.load(resArr, null, Laya.Handler.create(this, this.onLoading, null, false)).then(()=> {

                this.onLoaded();                
                
            });
            // 侦听加载失败
            Laya.loader.on(Laya.Event.ERROR, this, this.onError);

        });
    }


    /**
   * 当报错时打印错误
   * @param err 报错信息
   */
    onError(err: string): void {
        console.log("加载失败: " + err);
    }

    /**
     * 加载时侦听
     */
    onLoading(progress: number): void {
        //接近完成加载时，让显示进度比实际进度慢一点，这是为打开场景时的自动加载预留，尤其是要打开的场景资源多，并没有完全放到预加载中，还需要再自动加载一部分时。
        if (progress > 0.92) this.loadingBar.value = 0.95;
        else
        {
            this.loadingBar.value = progress;
            //console.log("加载进度: " + progress, this.loadingBar.value);
        }
    }

    /**
     * 加载完成后，处理逻辑
     */
    onLoaded(): void {
        this.loadingBar.value = 0.98;
        console.log("加载结束", this.loadingBar.value);

        if( !Laya.Browser._isMiniGame )
        {
            this.initDom();
            this.initAce();
        }

        this.enterDemo();
    }

    /**
     * 初始化查看源码和二维码用到的Dom节点
     */
    initDom(): void {

        let url = "resources/image/img_code_close.png";
        
        //查看源码
        var codeLayer:any = Laya.Browser.document.createElement("div");
        codeLayer.id = "codeLayer";
        codeLayer.style = "display: none;position: absolute;top: 15%;left: 20%;width: 60%;height: 70%;background-color: #e4e4e4;z-index:1002;overflow: auto;";
        Laya.Browser.document.body.appendChild(codeLayer);

        var span:any = Laya.Browser.document.createElement("span");
        span.style = "position:absolute;text-align:center;color:#000000;width:100%;top:10;font-size:20px;";
        span.innerHTML = "源码&nbsp;&nbsp;";
        codeLayer.appendChild(span);

        var img:any = Laya.Browser.document.createElement("img");
        img.style = "position:absolute;right:15;top:10;cursor:pointer;";
        
        img.src = Laya.URL.postFormatURL(Laya.URL.formatURL(url));
        img.setAttribute("href", "javascript:void(0)");
        img.setAttribute("onclick", "document.getElementById(\'codeLayer\').style.display=\'none\';document.getElementById(\'fade\').style.display=\'none\'");
        codeLayer.appendChild(img);

        var pre:any = Laya.Browser.document.createElement("pre");
        pre.id = "code";
        pre.setAttribute("class", "ace_editor");
        pre.style = "position:absolute;top:30px;width:99%;height:91%;border:2px solid #ccc;";
        codeLayer.appendChild(pre);

        var textarea:any = Laya.Browser.document.createElement("textarea");
        textarea.id = "codeContent";
        textarea.setAttribute("class", "ace_text-input");
        pre.appendChild(textarea);

        //二维码
        var qrcodeLayer:any = Laya.Browser.document.createElement("div");
        qrcodeLayer.id = "qrcodeLayer";
        qrcodeLayer.style = "display: none;position: absolute;left: 0;right: 0;top: 0;bottom: 0;text-align:center;margin:auto;width: 316px; height: 346px;background-color: #e4e4e4; z-index:1002; overflow: false;";
        Laya.Browser.document.body.appendChild(qrcodeLayer);

        var qrcodeSpan:any = Laya.Browser.document.createElement("span");
        qrcodeSpan.style = "position:absolute;text-align:center;color:#000000;width:100%;top:10px;left:10px;font-size:20px;";
        qrcodeSpan.innerHTML = "扫描二维码&nbsp;&nbsp;";
        qrcodeLayer.appendChild(qrcodeSpan);

        var qrcodeImg:any = Laya.Browser.document.createElement("img");
        qrcodeImg.style = "position:absolute;right:15;top:10;cursor:pointer;";
        qrcodeImg.src = Laya.URL.postFormatURL(Laya.URL.formatURL(url));
        qrcodeImg.setAttribute("href", "javascript:void(0)");
        qrcodeImg.setAttribute("onclick", "document.getElementById(\'qrcodeLayer\').style.display=\'none\';document.getElementById(\'fade\').style.display=\'none\'");
        qrcodeLayer.appendChild(qrcodeImg);

        console.log("asd");
        var qrcode:any = Laya.Browser.document.createElement("div");
        qrcode.id = "qrcode";
        qrcode.style = "position:absolute;top:30px;padding: 30px 30px 30px 30px;";
        qrcodeLayer.appendChild(qrcode);

        var qrcodeTable:any = Laya.Browser.document.createElement("div");
        qrcodeTable.id = "qrcodeTable";
        qrcode.appendChild(qrcodeTable);

        //暗色底板
        var fade:any = Laya.Browser.document.createElement("div");
        fade.id = "fade";
        fade.style = "display: none;position: absolute;top: 0%;left: 0%; width: 100%; height: 100%; background-color: black; z-index:1001; -moz-opacity: 0.8; opacity:.80; filter: alpha(opacity=88);";
        Laya.Browser.document.body.appendChild(fade);//添加到页面；
    }
            
    /**
     * 初始化查看源码的第三方JS类库
     */
    initAce(): void {

        //加载ace.js
        var script1:any = Laya.Browser.document.createElement("script");
        script1.src = "https://cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ace.js";
        script1.onload = function():void{

            //加载ext-language_tools.js
            var script2:any = Laya.Browser.document.createElement("script");
            script2.src = "https://cdnjs.cloudflare.com/ajax/libs/ace/1.2.6/ext-language_tools.js";
            script2.onload = function():void{

                //记载ace的初始化代码，在bin目录下的aceInit.js，初始化之前先创建好Dom
                var script:any = Laya.Browser.document.createElement("script");
                script.src = Laya.URL.postFormatURL(Laya.URL.formatURL("js/aceInit.js"));
                script.onerror = function():void{
                    //加载错误函数
                    console.log("download "+script.src+" error");
                }
                Laya.Browser.document.body.appendChild(script);

            }
            script2.onerror = function():void{
                //加载错误函数
                console.log("download "+script2.src+" error");
            }
            Laya.Browser.document.body.appendChild(script2);

        }
        script1.onerror = function():void{
            //加载错误函数
            console.log("download "+script1.src+" error");
        }
        Laya.Browser.document.body.appendChild(script1);
    }

    /**
     * 初始化查看源码的第三方JS类库
     */
    enterDemo(): void {
        //跳转到入口场景
        Laya.Scene.open("resources/scene/Index.ls"); //不要使用Laya.Scene.open("./Scenes/Index.ls");   
        // Laya.timer.once( 3000, this, ()=>{
        //     this.loadOtherScene(this.loadingIndex);
        // } );    
    }

    /**
     * 预先加载其它场景资源
     */
    loadOtherScene(index: number): void{

        if( index == this.loadingOtherScenesPath.length )
            return;

        Laya.loader.load(
            this.loadingOtherScenesPath[index]
        ).then(() => {
            console.log("后期加载完 "+index+ " 场景" );
            this.loadingIndex ++;
            this.loadOtherScene(this.loadingIndex);
        });
    }
}