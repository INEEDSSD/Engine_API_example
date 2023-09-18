import Stat = Laya.Stat;

const { regClass, property } = Laya;

@regClass()
export default class Index extends Laya.Script {


    @property(Laya.Button)
    private btn1: Laya.Button;
    @property(Laya.Button)
    private btn2: Laya.Button;
    @property(Laya.Image)
    private titleListBg1: Laya.Image;
    @property(Laya.List)
    private titleList1: Laya.List;
    @property(Laya.List)
    private contentList1: Laya.List;
    @property(Laya.Panel)
    private panel1: Laya.Panel;

    @property(Laya.Image)
    private titleListBg2: Laya.Image;
    @property(Laya.List)
    private titleList2: Laya.List;
    @property(Laya.List)
    private contentList2: Laya.List;
    @property(Laya.Panel)
    private panel2: Laya.Panel;


    @property(Laya.Sprite)
    private page: Laya.Sprite;
    @property(Laya.Label)
    private name: Laya.Label;
    @property(Laya.Image)
    private nameLine: Laya.Image;
    @property(Laya.Button)
    private codeButton: Laya.Button;
    @property(Laya.Button)
    private qrcodeButton: Laya.Button;
    @property(Laya.Label)
    private desc: Laya.Label;
    @property(Laya.Image)
    private rightImage: Laya.Image;
    @property(Laya.Image)
    private pageImage: Laya.Image;


    public static curPage : Laya.Sprite;
    public static pageWidth = 1124;
    public static pageHeight = 456;
    public static screenWidth = 0;
    public static screenHeight = 0;
    public static scaleWidth = 0;
    public static scaleHeight = 0;
    public static rt: Laya.RenderTexture;
    private curSceneURl : string;
    private curScene2D : Laya.Sprite;
    private index_2d : number = 0;
    private index_3d : number = 0;
    private show_2d : boolean = true;
    private show_3d : boolean = true;

    private _json1: any;
    private _json2: any;
    private _titleCellSize : number = 30;
    private _contentCellSize : number = 24;
    private _totalTitleHeight1 : number = 0;
    private _totalTitleHeight2 : number = 0;
    private _contentSelectedIndexArr1 : Array<number> = new Array<number>();
    private _contentSelectedIndexArr2 : Array<number> = new Array<number>();
    private _cur2D3D = true;
    private titleIndex : number = 0;
    private contentIndex : number = 0;
    private category : string = "null";
    private group : number = 0;
    private contentName : number = 0;

    private _statPos : Laya.Point = null;
    public static pagePos : Laya.Point = null;
    public static isLandscape = true;

    onResize():void {

        console.log("Browser.clientWidth:"+Laya.Browser.clientWidth + "  Laya.stage.designWidth:"+Laya.stage.designWidth);
        console.log("Browser.clientHeight:"+Laya.Browser.clientHeight + "  Laya.stage.designHeight:"+Laya.stage.designHeight);
        console.log("Browser.pixelRatio:"+Laya.Browser.pixelRatio);

        if( Laya.Browser.clientWidth >  Laya.Browser.clientHeight )
        {
            Index.isLandscape = true;
            //显示看源码
            this.codeButton.visible = true;
            this.qrcodeButton.visible = true;

            let screenHeight = Laya.stage.designHeight;
            let screenWidth = Laya.stage.designHeight * Laya.Browser.clientWidth / Laya.Browser.clientHeight;
            Index.screenWidth = screenWidth;
            Index.screenHeight = screenHeight;
            
            console.log("onResize >>", "[screenWidth:" + screenWidth + "] [screenHeight:" + screenHeight + "]");
    
            if( screenWidth > 1440 )
                screenWidth = 1440;
            this.rightImage.width = screenWidth - 250 - 40;
            
            this.desc.width = this.rightImage.width;
            console.log("this.rightImage.width:"+this.rightImage.width);
    
            if( this.rightImage.width < 1138 )
            {
                this.pageImage.width = this.rightImage.width;
                this.page.width = this.pageImage.width - 14;
                this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
            }
            else
            {
                this.pageImage.width = 1138;
                this.page.width = this.pageImage.width - 14;
                this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
            }
    
            if( this.curScene2D )
            {
                this.curScene2D.scale( this.page.width/Index.pageWidth , this.page.height/Index.pageHeight );
            }
    
            this._statPos = this.pageImage.localToGlobal(new Laya.Point(0, 0), false); 
            Index.pagePos = this.page.localToGlobal(new Laya.Point(0, 0), false); 
        }
        else
        {
            Index.isLandscape = false;
            //竖屏手机模式不显示看源码
            this.codeButton.visible = false;
            this.qrcodeButton.visible = false;

            let screenHeight = Laya.stage.designHeight;
            let screenWidth = Laya.stage.designHeight * Laya.Browser.clientHeight / Laya.Browser.clientWidth;
            
            console.log("onResize >>", "[screenWidth:" + screenWidth + "] [screenHeight:" + screenHeight + "]");
    
            if( screenWidth > 1440 )
                screenWidth = 1440;
            this.rightImage.width = screenWidth - 250 - 40;
            
            this.desc.width = this.rightImage.width;
    
            if( this.rightImage.width < 1138 )
            {
                this.pageImage.width = this.rightImage.width;
                this.page.width = this.pageImage.width - 14;
                this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
            }
            else
            {
                this.pageImage.width = 1138;
                this.page.width = this.pageImage.width - 14;
                this.page.height = this.page.width * Index.pageHeight / Index.pageWidth;
            }
    
            if( this.curScene2D )
            {
                this.curScene2D.scale( this.page.width/Index.pageWidth , this.page.height/Index.pageHeight );
            }
    
            this._statPos = this.pageImage.localToGlobal(new Laya.Point(0, 0), false); 
            Index.pagePos = this.page.localToGlobal(new Laya.Point(0, 0), false); 
        }

        if( !this._cur2D3D )
        {
            Laya.Stat.hide();
            this.showStat();
        }

        if(!Laya.Browser.onPC)
        {
            this.codeButton.visible = false;
            this.qrcodeButton.visible = false;
        }

        Index.scaleWidth = this.page.width/Index.pageWidth;
        Index.scaleHeight = this.page.height/Index.pageHeight;
        console.log("onResize >>", "[scaleWidth:" + Index.scaleWidth + "] [scaleWidth:" + Index.scaleHeight + "]");
    }

    showStat(): void {

        //竖屏手机模式不显示统计
        if( Index.isLandscape )
        {
            Laya.Stat.hide();
            Laya.Stat.show(this._statPos.x*Laya.Browser.clientHeight/Laya.stage.designHeight*Laya.Browser.pixelRatio+20,this._statPos.y*Laya.Browser.clientHeight/Laya.stage.designHeight*Laya.Browser.pixelRatio+20, [Stat.FPSStatUIParams, Stat.NodeStatUIParams, Stat.Sprite3DStatUIParams, Stat.DrawCall, Stat.TriangleFace, Stat.RenderNode, Stat.SkinRenderNode, Stat.ParticleRenderNode
                , Stat.FrustumCulling, Stat.GPUMemory, Stat.TextureMemeory, Stat.RenderTextureMemory, Stat.BufferMemory]);
        }

    }

    onEnable(): void {
        //手机上不能使用 R32G32B32A32
        if(!Laya.LayaGL.renderEngine.getCapable(Laya.RenderCapable.RenderTextureFormat_R16G16B16A16))
            Index.rt = new Laya.RenderTexture(Index.pageWidth*2, Index.pageHeight*2, Laya.RenderTargetFormat.R8G8B8A8, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false , 4 );     
        else
            Index.rt = new Laya.RenderTexture(Index.pageWidth*2, Index.pageHeight*2, Laya.RenderTargetFormat.R16G16B16A16, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false , 4 );     
        Index.curPage = this.page;                   
        // 再将离屏3D画到2D节点上，至此，就完成把3D画到2D的基础渲染流程
        Index.curPage.texture = new Laya.Texture(Index.rt);

        this.setMousePointer();

        

        //绑定list渲染单元处理方法，自定义list的渲染单元数据
        this.titleList1.mouseHandler = new Laya.Handler(this, this.onTitleMouseHandler1);
        this.contentList1.renderHandler = new Laya.Handler(this, this.onContentListRender);
        //绑定list的鼠标点击事件
        this.contentList1.mouseHandler = new Laya.Handler(this, this.onContentMouseHandler1);
        //绑定list渲染单元处理方法，自定义list的渲染单元数据
        this.titleList2.mouseHandler = new Laya.Handler(this, this.onTitleMouseHandler2);
        this.contentList2.renderHandler = new Laya.Handler(this, this.onContentListRender);
        //绑定list的鼠标点击事件
        this.contentList2.mouseHandler = new Laya.Handler(this, this.onContentMouseHandler2);

        this._cur2D3D = true;
        let start2D3D = true;
        //判断默认选择的参数
        this.category = (window as any).category;
        if( this.category != "null" )
        {
            if( this.category == "2D" )
            {
                this._cur2D3D = false;
                start2D3D = false;
            }                
            else if( this.category == "3D" )
            {
                this._cur2D3D = true;
                start2D3D = true;
            }        
        }
        this.group = Number((window as any).group);
        if( isNaN(this.group) )
        this.group = 0;

        this.contentName = Number((window as any).name);
        if( isNaN(this.contentName) )
            this.contentName = 0;            

        const jsonPath1: string = "resources/json/2d.json";
        Laya.loader.load(jsonPath1).then((res) => {
            //获取模拟list数据的json文件，文件要提前加载好
            let _file = Laya.loader.getRes(jsonPath1);
            this._json1 = _file.data.demoList;
            this.initTitleList( this._json1, this.titleList1, true );
            if( !start2D3D )
                this.select2D(this.group);
        });

        const jsonPath2: string = "resources/json/3d.json";
        Laya.loader.load(jsonPath2).then((res) => {
            //获取模拟list数据的json文件，文件要提前加载好
            let _file = Laya.loader.getRes(jsonPath2);
            this._json2 = _file.data.demoList;
            this.initTitleList( this._json2, this.titleList2, false );
            if( start2D3D )
                this.select3D(this.group);
        });

        Laya.stage.on(Laya.Event.RESIZE, this, this.onResize);

        this.btn1.on(Laya.Event.CLICK, this, this.select2DFromButton);
        this.btn2.on(Laya.Event.CLICK, this, this.select3DFromButton);
        

        
        this.onResize();

        this.codeButton.on(Laya.Event.CLICK, null, ()=>{

            let type = this._cur2D3D==true?"2D":"3D";
            let _json = null;
            let index = 0;
            let _contentSelectedIndexArr = null;
            if( this._cur2D3D)
            {
                _json = this._json1;
                index = this.index_2d;
                _contentSelectedIndexArr = this._contentSelectedIndexArr1;
            }
            else
            {
                _json = this._json2;
                index = this.index_3d;
                _contentSelectedIndexArr = this._contentSelectedIndexArr2;
            }
            
            (window as any).$.ajax( "script/"+ type +"/"+ _json[index].content[_contentSelectedIndexArr[index]].scene +".ts",
                {
                    dataType: "text",
                    success: (code :any)=>{
                        (window as any).$('#codeLayer').css('display','block'); 
                        (window as any).$('#fade').css('display','block');
                        (window as any).editor.setValue(code);
                        (window as any).editor.resize();
                        (window as any).editor.moveCursorTo(0);
                    },
                    error: function()
                    {
                        console.log(arguments);
                    }
                });
        });

        this.qrcodeButton.on(Laya.Event.CLICK, null, ()=>{

            (window as any).$('#qrcodeLayer').css('display','block'); 

            let url = Laya.Browser.window.location.href + "?category="+(this._cur2D3D==true?"2D":"3D")+"&group="+this.titleIndex+"&name="+this.contentIndex;
            console.log(url);
            (window as any).$('#qrcodeTable').empty();
            (window as any).$('#qrcodeTable').qrcode({
                render  : "table",
                text    : url
            }); 
            (window as any).$('#fade').css('display','block');
        });
        
    }

    initTitleList( _json:any, list: Laya.List , d2d3 : boolean):void{

        
        if ( _json && _json.length > 0) {

            let data: Array<any> = [];
            for (let i: number = 0; i < _json.length; i++) {

                //初始化每个分类的选择为0
                if( d2d3 ) 
                {
                    this._contentSelectedIndexArr1[i] = 0;
                    if( this.category == "2D" && this.group == i)
                        this._contentSelectedIndexArr1[i] = this.contentName;
                }                    
                else
                {
                    this._contentSelectedIndexArr2[i] = 0;
                    if( this.category == "3D" && this.group == i)
                        this._contentSelectedIndexArr2[i] = this.contentName;
                }
                    
                
                data[i] = {};
                data[i].title = { "text": _json[i].title };

                data[i].num = { "text": _json[i].content.length};   
            }

            list.array = data;
            list.repeatY = data.length;    
            if( d2d3 )            
                this._totalTitleHeight1 = this._titleCellSize * data.length;
            else
                this._totalTitleHeight2 = this._titleCellSize * data.length;

            //不要滚动条皮肤
            list.vScrollBarSkin = "";
        }
    }

    select2D( index:number = 0 ):void {

        if( this._cur2D3D )
            return;
        
        Index.rt = new Laya.RenderTexture(Index.pageWidth*2, Index.pageHeight*2, Laya.RenderTargetFormat.R16G16B16A16, Laya.RenderTargetFormat.DEPTHSTENCIL_24_8, false , 4 );     
        Index.curPage.texture = new Laya.Texture(Index.rt);

        Laya.Resource.destroyUnusedResources();
        Laya.Scene.gc();

        Laya.Stat.hide();
        this.panel1.visible = true;
        this.panel2.visible = false;
        this._cur2D3D = true;
        this.btn1.selected = true;
        this.btn2.selected = false;
        if( index == 0 )
        {
            this.showContentList(this.index_2d);
        }            
        else
        {
            this.index_2d = index;
            this.titleIndex = index;
            this.showContentList( index );
        }
            
    }    

    select2DFromButton():void {
        this.select2D();
    }

    select3D( index:number = 0 ):void {
        if( !this._cur2D3D )
            return;
            
        this.showStat();
        this.panel1.visible = false;
        this.panel2.visible = true;
        this._cur2D3D = false;
        this.btn1.selected = false;
        this.btn2.selected = true;
        if( index == 0 )
        {            
            this.showContentList(this.index_3d);
        }  
        else
        {
            this.index_3d = index;
            this.titleIndex = index;
            this.showContentList( index );
        }
            
    }  

    select3DFromButton():void {
        this.select3D();
    }

    showContentList(index: number):void {

        let titleList = null;
        let contentList = null;
        let titleListBg = null;
        let contentListBgHeight = 0;
        let _totalTitleHeight = 0;
        let _contentSelectedIndexArr = null;
        let _json = null;
        let show = false;
        if( this._cur2D3D)
        {
            titleList = this.titleList1;
            contentList = this.contentList1;
            titleListBg = this.titleListBg1;
            // contentListBg = this.contentListBg1;
            _totalTitleHeight = this._totalTitleHeight1;
            _contentSelectedIndexArr = this._contentSelectedIndexArr1;
            _json = this._json1;
            show = this.show_2d;
        }
        else
        {
            titleList = this.titleList2;
            contentList = this.contentList2;
            titleListBg = this.titleListBg2;
            // contentListBg = this.contentListBg2;
            _totalTitleHeight = this._totalTitleHeight2;
            _contentSelectedIndexArr = this._contentSelectedIndexArr2;
            _json = this._json2;
            show = this.show_3d;
        }
            
        let content = _json[index].content;

        if ( content && content.length > 0 ) {
            let data: Array<any> = [];
            let len = content.length;
            if( !show )
                len = 0;
            for (let i: number = 0; i < len; i++) {

                data[i] = {};
                
                if( i == _contentSelectedIndexArr[index] )
                {
                    data[i].img = { "visible": true };
                    data[i].name = { "text": content[i].name, "color": "#ffffff"};                    
                }                    
                else
                {                    
                    data[i].img = { "visible": false };
                    data[i].name = { "text": content[i].name, "color": "#717171"};
                }

            }

            contentList.array = data;
            contentList.repeatY = data.length;
            contentList.height = this._contentCellSize * data.length;

            if( !show )
            {
                contentListBgHeight = contentList.height;
                contentList.y = this._titleCellSize * (index+1);
                contentList.y;
            }
            else
            {
                contentListBgHeight = contentList.height + 30;
                contentList.y = this._titleCellSize * (index+1);
                contentList.y += 15;
            }

            //不要滚动条皮肤
            contentList.vScrollBarSkin = "";

            //titleList的整体高度，用来让panel可以滑动
            titleList.height = _totalTitleHeight + contentListBgHeight;
            titleListBg.height = titleList.height + 10;
        }

        if( show )
            this.showContent(_contentSelectedIndexArr[index]);

        if( !show )
            index = -1;
        //移动 TitleList 的每个cell的 y
        for (let i: number = 0; i < _json.length; i++) {
            let box = titleList.getCell(i);
            if( i > index )
            {
                box.y = this._titleCellSize * i + contentListBgHeight;
            }
            else
            {
                box.y = this._titleCellSize * i;
            }

            //改变箭头的方向
            let clip_arrow = (box.getChildByName("arrow") as Laya.Clip);
            i == index ? clip_arrow.index = 1: clip_arrow.index = 0;
            let clip_select = (box.getChildByName("select") as Laya.Clip);
            i == index ? clip_select.index = 1: clip_select.index = 0;
            let select_bg = (box.getChildByName("bg") as Laya.Box);
            i == index ? select_bg.visible = true: select_bg.visible = false;
            let title = (box.getChildByName("title") as Laya.Label);
            i == index ? title.color = "#2395db": title.color = "#000000";
        }        
    }

    showContent(index: number):void {

        let contentList = null;
        let _json = null;
        let _contentSelectedIndexArr = null;
        let type = "";
        let _index = 0;
        if( this._cur2D3D )
        {
            contentList = this.contentList1;
            _contentSelectedIndexArr = this._contentSelectedIndexArr1;
            _json = this._json1;
            type = "2D";
            _index = this.index_2d;
        }
        else
        {
            contentList = this.contentList2;
            _contentSelectedIndexArr = this._contentSelectedIndexArr2;
            _json = this._json2;
            _index = this.index_3d;
            type = "3D";
        }

        _contentSelectedIndexArr[_index] = index;
        contentList.refresh();

        let title = _json[_index].title; 
        let content = _json[_index].content[index]; 

        this.name.text = title + "--" + content.name;
        this.desc.text = content.desc;
        this.nameLine.width = this.getStrLength( this.name.text , this.name.fontSize);

        if( this.curSceneURl == "resources/scene/3D/Camera/CameraMSAADemo.ls" )
        {
            Index.curPage.texture = new Laya.Texture(Index.rt);
        }
        
        Laya.Scene.close(this.curSceneURl);
        Laya.Scene.destroy(this.curSceneURl);
        this.page.destroyChildren();

        
        let path = "resources/scene/"+type+"/"+content.scene+".ls";
        console.log("open "+content.scene);

        if( Laya.Browser._isMiniGame && content.minigame != undefined && !content.minigame )
            path = "resources/scene/Error.ls";

        Laya.Scene.open(path, false).then( ( scene )=>{

            this.curSceneURl = path;
            this.curScene2D = scene;


            this.page.addChild( scene );
            if( this.curScene2D )
            {
                this.curScene2D.scale( this.page.width/Index.pageWidth , this.page.height/Index.pageHeight );
            }
            
        } );
    }

    /** 列表单元的渲染处理 */
    onContentListRender(item: Laya.Box, index: number): void {

        let titleList = null;
        let _contentSelectedIndexArr = null;
        let _index : number = 0;
        if( this._cur2D3D )
        {
            titleList = this.titleList1;
            _contentSelectedIndexArr = this._contentSelectedIndexArr1;
            _index = this.index_2d;
        }
        else
        {
            titleList = this.titleList2;
            _contentSelectedIndexArr = this._contentSelectedIndexArr2;
            _index = this.index_3d;
        }

        //如果当前索引不在数据源可索引范围，则跳出
        if (index > titleList.array.length || index < 0) return;
        let img = item.getChildByName("img") as Laya.Image;
        let name = item.getChildByName("name") as Laya.Label;
        if( index == _contentSelectedIndexArr[_index] )
        {
            img.visible = true;
            img.width = (name.x - img.x) * 2 + this.getStrLength( name.text , name.fontSize );
            name.color = "#ffffff";                    
        }                    
        else
        {      
            img.visible = false;
            name.color = "#000000";                            
        }        
    }

    /** 绑定list的鼠标点击事件 */
    onTitleMouseHandler1(e: Laya.Event, index: number): void {
        if (e.type != Laya.Event.CLICK) 
            return;
        if( index == this.index_2d && this.show_2d )
            this.show_2d = false;
        else
        {
            this.index_2d = index;
            this.show_2d = true;
        }
            
        this.titleIndex = index;
        this.showContentList( index );

    }

    /** 绑定list的鼠标点击事件 */
    onTitleMouseHandler2(e: Laya.Event, index: number): void {
        if (e.type != Laya.Event.CLICK) 
            return;
        if( index == this.index_3d && this.show_3d )
            this.show_3d = false;
        else
        {
            this.index_3d = index;
            this.show_3d = true;
        }
       
        this.titleIndex = index;
        this.showContentList( index );

    }

    /** 绑定list的鼠标点击事件 */
    onContentMouseHandler1(e: Laya.Event, index: number): void {

        if (e.type != Laya.Event.CLICK) 
            return;
        this._contentSelectedIndexArr1[this.index_2d] = index;
        this.contentIndex = index;
        this.showContentList( this.index_2d );
    }

    /** 绑定list的鼠标点击事件 */
    onContentMouseHandler2(e: Laya.Event, index: number): void {
        if (e.type != Laya.Event.CLICK) 
            return;
        this._contentSelectedIndexArr2[this.index_3d] = index;
        this.contentIndex = index;
        this.showContentList( this.index_3d );
    }

    getStrLength(str:string, fontSize: number): number{

        var width = 0;
        for (var i = 0; i < str.length; i++) {
            if (str.charCodeAt(i) > 127 || str.charCodeAt(i) == 94) {
                width += fontSize;
            } else {
                width += (fontSize/2 + 2);
            }
        }
        return width+2;
    }

    setMousePointer(): void{
        //鼠标变成小手
        this.btn1.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.btn1.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.btn2.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.btn2.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.codeButton.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.codeButton.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.qrcodeButton.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.qrcodeButton.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.titleList1.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.titleList1.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.titleList2.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.titleList2.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.contentList1.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.contentList1.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
        this.contentList2.on(Laya.Event.MOUSE_OVER, null, ()=>{
            Laya.Mouse.cursor = "pointer";
        });
        this.contentList2.on(Laya.Event.MOUSE_OUT, null, ()=>{
            Laya.Mouse.cursor = "default";
        });
    }

}