const { regClass, property } = Laya;

@regClass()
export class entry extends Laya.Script {
    onEnable(): void {
        Laya.URL.basePath = "http://10.10.20.24:9232/";

        Laya.loader.loadPackage("", null, null).then(() => {
            let DDPath = "resources/json/2d.json";
            let DDDPath = "resources/json/3d.json";
            // 大分组
            let Big_cb = new Laya.ComboBox();
            let sp = new Laya.Sprite();
            sp.zOrder = 99999;
            sp.addChild(Big_cb);
            Laya.stage.addChild(sp);
            let big_labs = '';
            Big_cb.skin = "resources/res/ui/combobox.png";
            Big_cb.itemHeight = 20;
            Big_cb.size(170, 40);
            Big_cb.left = 90;
            Big_cb.top = 580;
            Big_cb.itemColors = "#394f55";
            Big_cb.labels = big_labs;
            Big_cb.scrollType = Laya.ScrollType.Vertical;


            // 右侧小分组
            let Small_cb = new Laya.ComboBox();
            sp.addChild(Small_cb);
            let small_labs = '';
            Small_cb.skin = "resources/res/ui/combobox.png";
            Small_cb.itemHeight = 20;
            Small_cb.left = 320;
            Small_cb.top = 580;
            Small_cb.size(170, 40);
            Small_cb.labels = small_labs;
            Small_cb.scrollType = Laya.ScrollType.Vertical;

            // 切换下一个场景的按钮
            let bt = new Laya.Button();
            sp.addChild(bt);
            let bt_label = "下一个"
            bt.skin = "resources/res/ui/combobox.png"
            bt.left = 550;
            bt.top = 580;
            bt.size(170, 40);
            bt.label = bt_label;

            Laya.loader.load([DDPath, DDDPath], Laya.Loader.JSON).then(() => {
                let DD: DemoStruct = Laya.loader.getRes(DDPath).data;
                let DDD: DemoStruct = Laya.loader.getRes(DDDPath).data;


                let destoryLastScene = () => {
                    // let scene = Laya.stage.getChildAt(0);
                    // scene && scene.destroy();


                    Laya.Scene.unDestroyedScenes.forEach(item => {
                        item.destroy();
                    })
                }


                let showDemo = (resource: any, resPath: any) => {

                    DD = resource;

                    let Demo_2D = <any>{};
                    let Demo_2D_Name = <any>[];
                    let Demo_3D = <any>{};
                    let Demo_3D_Name = <any>[];

                    for (let i = 0, j = DD.demoList.length; i < j; i++) {
                        let singleArray = DD.demoList[i].content;
                        Demo_2D[i] = [];
                        Demo_2D_Name[i] = DD.demoList[i].title;
                        for (let x = 0, y = singleArray.length; x < y; x++) {
                            Demo_2D[i][x] = singleArray[x];
                        }
                    }

                    for (let i = 0, j = DDD.demoList.length; i < j; i++) {
                        let singleArray = DDD.demoList[i].content;
                        Demo_3D[i] = [];
                        Demo_3D_Name[i] = DDD.demoList[i].title;
                        for (let x = 0, y = singleArray.length; x < y; x++) {
                            Demo_3D[i][x] = singleArray[x];
                        }
                    }



                    let index_2D = 0;   // 2D 示例大分组下标
                    let index_index_2D = 0; // 2D示例分组内下标
                    let index_3D = 0;   // 3D示例大分组下标
                    let index_index_3D = 0; // 3D示例分组内下标

                    // Demo_2D[index_2D]

                    Demo_2D_Name.forEach((item: any) => {
                        big_labs += item + ',';
                    })
                    big_labs = big_labs.substring(0, big_labs.lastIndexOf(','));


                    Big_cb.labels = big_labs;
                    Big_cb.defaultLabel = Demo_2D_Name[0];


                    for (let item of Demo_2D[index_2D]) {
                        small_labs += item.name + ',';
                    }
                    small_labs = small_labs.substring(0, small_labs.lastIndexOf(','));


                    Small_cb.labels = small_labs;
                    Small_cb.defaultLabel = Demo_2D[index_2D][index_index_2D].name;


                    for (let item of Demo_2D[index_2D]) {
                        small_labs += item.name + ',';
                    }
                    // bt_label = bt_label.substring(0, bt_label.lastIndexOf(','));



                    // bt.label = Demo_2D[index_2D][index_index_2D].name;


                    let SmallScene = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
                    Laya.Scene.open(SmallScene);

                    function Bigonselect(index: number): void {
                        if (index == -1) return;
                        small_labs = '';
                        index_2D = index;
                        let _limitBig = Demo_2D.length;
                        if (index_2D + 1 >= _limitBig) {
                            index_2D = 0;
                        }
                        Big_cb.defaultLabel = Demo_2D_Name[index_2D];
                        let BigScene = resPath + Demo_2D[index_2D][0].scene + ".ls";

                        for (let item of Demo_2D[index_2D]) {
                            small_labs += item.name + ','
                        }
                        small_labs = small_labs.substring(0, small_labs.lastIndexOf(','));

                        Small_cb.labels = small_labs;
                        Small_cb.defaultLabel = Demo_2D[index_2D][0].name;
                        // debugger;
                        destoryLastScene();
                        Laya.Scene.open(BigScene);

                    }


                    function Smallonselect(index: number): void {
                        if (index == -1) return;
                        index_index_2D = index - 1;
                        let _limit = Demo_2D[index_2D].length;
                        let _limitBig = Demo_2D.length;
                        if (index_2D + 1 >= _limitBig) {
                            index_2D = 0;
                        }

                        if (index_index_2D + 1 >= _limit) {
                            index_index_2D = 0;
                            index_2D++;
                        } else {
                            index_index_2D++;
                        }

                        Small_cb.defaultLabel = Demo_2D[index_2D][index_index_2D].name;
                        let SmallScene = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
                        let Scenename = Demo_2D[index_2D][index_index_2D].name;
                        destoryLastScene();
                        Laya.Scene.open(SmallScene);
                        console.log("打开" + Scenename);

                    }


                    function Btonselect(): void {
                        let _limit = Demo_2D[index_2D].length;
                        let _limitBig = Demo_2D.length;
                        if (index_2D + 1 >= _limitBig) {
                            index_2D = 0;
                        }

                        if (index_index_2D + 1 >= _limit) {
                            index_index_2D = 0;
                            index_2D++;
                            Bigonselect(index_2D);
                        } else {
                            index_index_2D++;
                        }

                        // bt.label = Demo_2D[index_2D][index_index_2D].name;
                        let SmallScene = resPath + Demo_2D[index_2D][index_index_2D].scene + ".ls";
                        let Scenename = Demo_2D[index_2D][index_index_2D].name;
                        destoryLastScene();
                        Laya.Scene.open(SmallScene);
                        Small_cb.defaultLabel = Scenename;
                        console.log("打开" + Scenename);

                    }


                    Big_cb.selectHandler = new Laya.Handler(this, Bigonselect);
                    Small_cb.selectHandler = new Laya.Handler(this, Smallonselect);
                    bt.clickHandler = new Laya.Handler(this, Btonselect)
                }



                // showDemo(DDD, "resources/scene/3D/");
                showDemo(DD, "resources/scene/2D/");
                // Demo_3D[index_3D]
            });

        });
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