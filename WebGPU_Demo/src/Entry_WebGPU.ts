const { regClass, property } = Laya;

@regClass()
export class entry_WebGPU extends Laya.Script {
    Big_cb: Laya.ComboBox;
    big_labs: string;
    Small_cb: Laya.ComboBox;
    small_labs: string;
    bt: Laya.Button;
    resPath: string;
    Demo_2D: any;
    Demo_2D_Name: any[];
    index_2D: number;
    index_index_2D: number;
    errorScene: any;

    @property(Boolean)
    is2D: Boolean = false;

    @property(Boolean)
    is3D: Boolean = false;

    onEnable(): void {
        let DDPath = "resources/json/WebGPU.json";
        let DDDPath = "resources/json/WebGPU.json";
        this.Big_cb = new Laya.ComboBox();
        let sp = new Laya.Sprite();
        sp.zOrder = 99999;
        sp.addChild(this.Big_cb);
        Laya.stage.addChild(sp);
        this.big_labs = "";
        this.Big_cb.skin = "resources/res/ui/combobox.png";
        this.Big_cb.itemHeight = 20;
        this.Big_cb.size(170, 40);
        this.Big_cb.left = 90;
        this.Big_cb.top = 580;
        this.Big_cb.itemColors = "#394f55";
        this.Big_cb.labels = this.big_labs;
        this.Big_cb.scrollType = Laya.ScrollType.Vertical;
        this.Small_cb = new Laya.ComboBox();
        sp.addChild(this.Small_cb);
        this.small_labs = "";
        this.Small_cb.skin = "resources/res/ui/combobox.png";
        this.Small_cb.itemHeight = 20;
        this.Small_cb.left = 320;
        this.Small_cb.top = 580;
        this.Small_cb.size(170, 40);
        this.Small_cb.labels = this.small_labs;
        this.Small_cb.scrollType = Laya.ScrollType.Vertical;
        this.bt = new Laya.Button();
        sp.addChild(this.bt);
        let bt_label = "\u4E0B\u4E00\u4E2A";
        this.bt.skin = "resources/res/ui/combobox.png";
        this.bt.left = 550;
        this.bt.top = 580;
        this.bt.size(170, 40);
        this.bt.label = bt_label;
        this.logAllExtMap();
        Laya.loader.load([DDPath, DDDPath], Laya.Loader.JSON).then(() => {
            let DD = Laya.loader.getRes(DDPath).data;
            let DDD = Laya.loader.getRes(DDDPath).data;
            this.resPath = "";
            this.Big_cb.selectHandler = new Laya.Handler(this, this.Bigonselect);
            this.Small_cb.selectHandler = new Laya.Handler(this, this.Smallonselect);
            this.bt.clickHandler = new Laya.Handler(this, this.Btonselect);
            this.showDemo(DDD, "resources/scene/");
        });
    }


    getExtAndCapable(index: number, isExt: boolean = true): string {
        let extStringMap = [
            "OES_vertex_array_object",
            "ANGLE_instanced_arrays",
            "OES_texture_half_float",
            "OES_texture_half_float_linear",
            "OES_texture_float",
            "OES_element_index_uint",
            "OES_texture_float_linear",
            "EXT_color_buffer_half_float",
            "EXT_shader_texture_lod",
            "WEBGL_depth_texture",
            "EXT_sRGB",
            "EXT_color_buffer_float",
            "EXT_texture_filter_anisotropic",
            "WEBGL_compressed_texture_s3tc",
            "WEBGL_compressed_texture_s3tc_srgb",
            "WEBGL_compressed_texture_pvrtc",
            "WEBGL_compressed_texture_etc1",
            "WEBGL_compressed_texture_etc",
            "WEBGL_compressed_texture_astc",
            "OES_standard_derivatives",
        ];

        let capStringMap = [
            "Element_Index_Uint32",//Index Usage 32
            "TextureFormat_R32G32B32A32",//Texturefloat32
            "TextureFormat_R16G16B16A16",//TextureFloat16
            "Texture_anisotropic",//anisotropic function
            "RenderTextureFormat_R16G16B16A16",//Rendertexture Float16
            "RenderTextureFormat_R32G32B32A32", // rendertexture float32
            "RenderTextureFormat_Depth",//depthTexture
            "RenderTextureFormat_ShadowMap",//shadowMap Texture
            "Vertex_VAO",//VAO
            "DrawElement_Instance",//Instance
            "Shader_TextureLod",//Texture lod sampler
            "COMPRESS_TEXTURE_S3TC",//compress Texture dds
            "COMPRESS_TEXTURE_S3TC_SRGB",//Compress Texture dds srgb
            "COMPRESS_TEXTURE_PVRTC",//Compress Texture PVR
            "COMPRESS_TEXTURE_ETC1",//Compress Texture ktx
            "COMPRESS_TEXTURE_ETC",//Compress Texture ktx
            "COMPRESS_TEXTURE_ASTC",//Compress Texture astc
            "Texture_SRGB",//Textrue srgb   
            "MSAA",//MSAA
            "UnifromBufferObject",
            "Texture3D",
            "Texture_FloatLinearFiltering",
            "Texture_HalfFloatLinearFiltering",
        ]

        if (isExt) {
            return extStringMap[index];
        } else {
            return capStringMap[index];
        }
    }

    logAllExtMap() {
        if (!Laya.LayaEnv.isConch) {
            //@ts-ignore
            console.log("[TestLog] 获取RenderEngine为 ", Laya.LayaGL.renderEngine);
            // //@ts-ignore
            // console.log("[TestLog] 是否为WebGL2 ", Laya.LayaGL.renderEngine._isWebGL2);
            // //@ts-ignore
            // let exmap: Map<any, any> = Laya.LayaGL.renderEngine._supportCapatable._extensionMap;
            // //@ts-ignore
            // let capmap: Map<any, any> = Laya.LayaGL.renderEngine._supportCapatable._capabilityMap;
            // exmap.forEach((item, key) => {
            //     if (item) {
            //         console.log("[TestLog] extenstionMap扩展能力: " + this.getExtAndCapable(key, true) + " " + ' 存在');
            //     }
            // })

            // capmap.forEach((item, key) => {
            //     if (item) {
            //         console.log("[TestLog] capableMap扩展能力: " + this.getExtAndCapable(key, false) + " " + ' 存在');
            //     }
            // })
        }
    }


    showDemo(resource: any, resPath: string) {
        this.resPath = resPath;
        let DD = resource;
        this.Demo_2D = {};
        this.Demo_2D_Name = [];
        for (let i = 0, j = DD.demoList.length; i < j; i++) {
            let singleArray = DD.demoList[i].content;
            this.Demo_2D[i] = [];
            this.Demo_2D_Name[i] = DD.demoList[i].title;
            let index = 0;
            for (let x = 0, y = singleArray.length; x < y; x++) {
                this.Demo_2D[i][index] = singleArray[x];
                index++;
            }
        }
        this.index_2D = 0;
        this.index_index_2D = 0;
        this.Demo_2D_Name.forEach((item) => {
            this.big_labs += item + ",";
        });
        this.big_labs = this.big_labs.substring(0, this.big_labs.lastIndexOf(","));
        this.Big_cb.labels = this.big_labs;
        this.Big_cb.defaultLabel = this.Demo_2D_Name[0];
        for (let item of this.Demo_2D[this.index_2D]) {
            this.small_labs += item.name + ",";
        }
        this.small_labs = this.small_labs.substring(0, this.small_labs.lastIndexOf(","));
        this.Small_cb.labels = this.small_labs;
        this.Small_cb.defaultLabel = this.Demo_2D[this.index_2D][this.index_index_2D].name;
        for (let item of this.Demo_2D[this.index_2D]) {
            this.small_labs += item.name + ",";
        }
        let SmallScene = this.Demo_2D[this.index_2D][this.index_index_2D];
        this.openDemoScene(this.resPath, SmallScene);
    }
    Btonselect() {
        let _limit = this.Demo_2D[this.index_2D].length;
        let _limitBig = this.Demo_2D.length;
        if (this.index_2D + 1 >= _limitBig) {
            this.index_2D = 0;
        }
        if (this.index_index_2D + 1 >= _limit) {
            this.index_index_2D = 0;
            this.index_2D++;
            this.Bigonselect(this.index_2D);
            return;
        } else {
            this.index_index_2D++;
        }
        let SmallScene2 = this.Demo_2D[this.index_2D][this.index_index_2D];
        let Scenename = this.Demo_2D[this.index_2D][this.index_index_2D].name;
        this.destoryLastScene();
        this.openDemoScene(this.resPath, SmallScene2);
        this.Small_cb.defaultLabel = Scenename;
        (this.Small_cb.getChildAt(0) as Laya.Button).label = Scenename;
        console.log("打开场景 " + Scenename);
    }
    destoryLastScene() {
        Laya.Scene.unDestroyedScenes.forEach((item) => {
            item.destroy();
        });
        // Laya.Resource.destroyUnusedResources();
    }
    Bigonselect(index: number) {
        if (index == -1)
            return;
        this.small_labs = "";
        this.index_2D = index;
        let _limitBig = this.Demo_2D.length;
        if (this.index_2D + 1 >= _limitBig) {
            this.index_2D = 0;
        }
        this.Big_cb.defaultLabel = this.Demo_2D_Name[this.index_2D];
        (this.Big_cb.getChildAt(0) as Laya.Button).label = this.Demo_2D_Name[this.index_2D];
        this.index_index_2D = 0;
        let BigScene = this.Demo_2D[this.index_2D][0];
        for (let item of this.Demo_2D[this.index_2D]) {
            this.small_labs += item.name + ",";
        }
        this.small_labs = this.small_labs.substring(0, this.small_labs.lastIndexOf(","));
        this.Small_cb.labels = this.small_labs;
        this.Small_cb.defaultLabel = this.Demo_2D[this.index_2D][0].name;
        (this.Small_cb.getChildAt(0) as Laya.Button).label = this.Demo_2D[this.index_2D][0].name;
        this.destoryLastScene();
        this.openDemoScene(this.resPath, BigScene);
    }
    Smallonselect(index: number) {
        if (index == -1)
            return;
        this.index_index_2D = index - 1;
        let _limit = this.Demo_2D[this.index_2D].length;
        let _limitBig = this.Demo_2D.length;
        if (this.index_2D + 1 >= _limitBig) {
            this.index_2D = 0;
        }
        if (this.index_index_2D + 1 >= _limit) {
            this.index_index_2D = 0;
            this.index_2D++;
            this.Bigonselect(this.index_2D);
            return;
        } else {
            this.index_index_2D++;
        }
        this.Small_cb.defaultLabel = this.Demo_2D[this.index_2D][this.index_index_2D].name;
        (this.Small_cb.getChildAt(0) as Laya.Button).label = this.Demo_2D[this.index_2D][this.index_index_2D].name;
        let SmallScene2 = this.Demo_2D[this.index_2D][this.index_index_2D];
        let Scenename = this.Demo_2D[this.index_2D][this.index_index_2D].name;
        this.destoryLastScene();
        this.openDemoScene(this.resPath, SmallScene2);
        console.log("打开场景 " + Scenename);
    }
    openDemoScene(path: any, demo: any) {
        var scenePath;
        scenePath = path + demo.scene + ".ls";
        console.log(scenePath);
        Laya.Scene.open(scenePath);
    }
}


class demmoItem {
    content: [
        {
            desc: string,
            name: string,
            scene: string,
        }
    ];
    title: string;
}

class DemoStruct {

    demoList: [demmoItem];
}