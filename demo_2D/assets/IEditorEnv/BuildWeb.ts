@IEditorEnv.regBuildPlugin("web")
/**
 * @author Charley
 * 一个简单的插件,
 * 禁用其它平台发布的屏蔽的DOM文件。用于恢复Web平台的复制Bin目录的DOM资源文件。
 */
class BuildWeb implements IEditorEnv.IBuildPlugin {

    /**
     * 构建任务初始化时。可以在这个事件里修改config和platformConfig等配置。
     * @param task 构建任务
     */
    onSetup(task: IEditorEnv.IBuildTask): Promise<void> {
        // 在数组中找到并删除 'resources/**/*' 项，不要粗暴的设置为 []，避免万一以后构建面板有其它的设置，忘了此处设置，直接导致面板设置无效
        task.config.ignoreFilesInBin = task.config.ignoreFilesInBin.filter((item: string) => item !== 'resources/**/*');
        console.log("IEditorEnv.BuildWeb:用插件在Web发布流程中重置了Bin目录复制时的排除文件规则");
        return;
    }
}