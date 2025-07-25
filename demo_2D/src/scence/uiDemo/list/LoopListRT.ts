import { LoopListRTBase } from "./LoopListRT.generated";

const { regClass } = Laya;

/**
 * 循环列表示例
 * @author Charley
 */
@regClass()
export default class LoopListRT extends LoopListRTBase {
    /** 左划的限制值，超过此值时需要处理循环逻辑 */
    private leftLimit: number;
    /** 右划的限制值，超过此值时需要处理循环逻辑 */
    private rightLimit: number;
    /** 最大缩放比例 */
    private readonly maxScale: number = 2;
    /** 最小缩放比例 */
    private readonly minScale: number = 1;

    onEnable(): void {
        // 初始化列表数据（默认5个角色） 
        this.hList.array = this.getListDataSource();

        // 设置初始滚动位置为索引1，使第二个item位于中心
        this.hList.scrollTo(1);

        // 初始化中心位置item的缩放（2倍大小）
        (this.hList.cells[1].getChildByName("icon") as Laya.Image).scale(this.maxScale, this.maxScale);

        // 监听滚动条变化事件
        this.hList.scrollBar.on(Laya.Event.CHANGE, this, this.onScrollBarChange);

        // 计算左右滑动的限制值
        this.leftLimit = this.getLeftLimit();
        this.rightLimit = this.getRightLimit();
    }

    /**
     * 滚动条变化事件处理
     */
    onScrollBarChange(): void {
        // 获取当前滚动条位置
        const sliderValue = this.hList.scrollBar.value;
        // 计算单个cell的总宽度（包含间距）
        const cellWidth = this.hList.cells[0].width + this.hList.spaceX;


        // 计算滑动进度（0-1之间）
        const offset = sliderValue % cellWidth;
        const progress = offset / cellWidth;
        // console.log("滑动进度：", { progress }, { offset }, { sliderValue });
        // 处理循环逻辑
        if (sliderValue > this.leftLimit) {
            // 左划越界处理：将第一个元素移至末尾
            const listArr = this.hList.array;
            const cell = listArr.shift();
            listArr[listArr.length] = cell;
            this.hList.array = listArr;

            // 调整滚动条位置保持连续性
            this.hList.scrollBar.value = sliderValue - cellWidth;

        } else if (sliderValue < this.rightLimit) {
            // 右划越界处理：将最后一个元素移至开头
            const listArr = this.hList.array;
            const cell = listArr.pop();
            listArr.unshift(cell);
            this.hList.array = listArr;

            // 调整滚动条位置保持连续性
            this.hList.scrollBar.value = sliderValue + cellWidth;
        }
        // 更新所有可见cell的缩放
        this.updateCellsScale(progress);
    }

    /**
     * 更新所有可见cell的缩放
     * @param progress 滑动进度(0-1)
     */
    private updateCellsScale(progress: number): void {
        // 获取所有可见的cells
        const cells = this.hList.cells;

        // 安全检查
        if (!cells || cells.length === 0) return;

        // 通知列表滚动条变化，否则在更新列表数据时，cells没机会得到刷新，需要等待下一个滚动事件才会恢复正常，会导致闪一帧的视觉卡顿现象
        (<any>this.hList).onScrollBarChange();

        // 遍历处理每个可见的cell
        for (let i = 0; i < cells.length; i++) {
            // 每一个列表渲染单元对象
            const cell = cells[i];
            // 获取列表渲染单元中的角色
            const icon = cell.getChildByName("icon") as Laya.Image;
            // console.log("icon:" + i, icon.skin);
            // 根据列表渲染的键位置计算缩放值，1为中间，0为左边，2为右边，3为最后一个渲染单元（默认不可见，用于拉动显示）
            let scale: number;
            if (i === 1) {
                // 中间的cell
                scale = this.maxScale - (progress * (this.maxScale - this.minScale));
            }
            else if (i === 2) {
                // 右边的cell
                scale = this.minScale + (progress * (this.maxScale - this.minScale));
            }
            else {
                // 其他位置保持最小缩放
                scale = this.minScale;
            }

            // 确保缩放值在有效范围内
            scale = Math.max(this.minScale, Math.min(this.maxScale, scale));
            // 应用缩放
            icon.scaleX = icon.scaleY = scale;
        }
    }

    /**
     * 获取右划的限制值
     */
    getRightLimit(): number {
        return this.hList.cells[0].width - this.hList.spaceX;
    }

    /**
     * 获取左划的限制值
     */
    getLeftLimit(): number {
        return (this.hList.cells[0].width * 2) + this.hList.spaceX;
    }

    /**
     * 生成列表数据源
     * @param length 数据长度
     * @returns 数据源数组
     */
    private getListDataSource(length: number = 5): Array<any> {
        return Array.from({ length }, (_, i) => ({
            icon: { skin: `resources/UI/role/r${i}.png` }
        }));
    }
}