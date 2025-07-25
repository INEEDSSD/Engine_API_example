import { BagListRTBase } from "./BagListRT.generated";

const { regClass } = Laya;

/**
 * 背包列表示例
 * @readme 重点示范列表的单元格选项切换处理与对应值的提取
 */

@regClass()
export default class BagListRT extends BagListRTBase {
    private lastIndex: number = -1;
    constructor() { super(); }

    onEnable(): void {
        const jsonPath: string = "resources/json/bagList.json";
        //fetch取到的是原始数据，但没有缓存，无法用getRes获取
        Laya.loader.fetch(jsonPath, "json").then((_json) => {
            if (_json.bagList && _json.bagList.length > 0) {
                //把json数据传递给list组件的数据源属性array,当数据源符合ui组件属性规则时，可直接作为默认初始值。不符合时，可通过renderHandler自定义修改。
                this.bagList.array = _json.bagList.slice(0,(_json.bagList.length / 3) | 0);
                //绑定list渲染单元处理方法，自定义list的渲染单元数据
                this.bagList.renderHandler = new Laya.Handler(this, this.onListRender);
                //绑定list选项改变的切换
                this.bagList.selectHandler = new Laya.Handler(this, this.onListSelect);
                //绑定单元格的鼠标事件
                this.bagList.mouseHandler = new Laya.Handler(this, this.onListMouse);

                //不使用皮肤，但有滚动条效果
                this.bagList.vScrollBarSkin = "";
            }
        });
    }

    /** 列表单元的渲染处理 */
    onListRender(item: Laya.Box, index: number): void {
        //如果当前索引不在数据源可索引范围,则跳出
        if (index > this.bagList.array.length || index < 0) return;
		if(index % 4 === 0){
			const comp = item.getComponent(Laya.Animator2D);
			comp.enabled = true;
		}
        // 获取listItemBG子项
        const listItemBG = item.getChildByName("listItemBG") as Laya.Image;

        // 如果当前渲染项为选中项,设置选中的背景图片,否则设置未选中的背景图片
        if (index === this.lastIndex) {
            listItemBG.skin = "resources/UI/images/bg/bg100-1.png";
        } else {
            listItemBG.skin = "resources/UI/images/bg/bg100-0.png";
        }
    }

    /**列表选择改变处理 
     * @readme 这里是为了示范怎么在选项切换里处理数据的变化，故意采用了自定义的方式处理选中状态切换。
     * 如果只是为了列表单元的选中状态切换， 引擎里提供了更简单的设置方式：将选中态ui的name设置为selectBox。
     * 简单方式，可参照拉动刷新列表的示例。
    */
    onListSelect(index: number): void {
        this.tips.visible = true;

        // 更新上次选中的索引
        this.lastIndex = index;

        // 刷新列表
        this.bagList.refresh();

        // 选中的数据显示
        this.itemImg.skin = this.bagList.array[index].listItemImg.skin;
        this.itemNumber.text = ("数量 " + this.bagList.array[index].listItemNumber.text);
        this.itemReadme.text = this.bagList.array[index].readme;
    }


    /**列表单元上的鼠标事件处理 */
    onListMouse(e: Laya.Event, index: number): void {
        //鼠标单击事件触发
        // if (e.type == Laya.Event.MOUSE_DOWN) {
        //     // console.log("事件目标", e.target);
        //     (e.target as Laya.Image).skin = "bg/bg100-1.png"; 

        // }
    }

    onDisable(): void {

    }
}