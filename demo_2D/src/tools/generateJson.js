const fs = require('fs');
const path = require('path');

// 新增了 path 模块的引用来帮助构建文件路径，避免了平台相关的路径问题

/** 通用的JSON文件写入函数 */
function writeJsonData(value, fileName = "test", directory = '../../assets/resources/json/') {
    const filePath = path.join(directory, `${fileName}.json`); // 使用path.join确保路径的正确性跨平台
    const str = JSON.stringify(value, null, "\t"); // 使用 null 和 "\t" 美化输出的JSON

    fs.writeFile(filePath, str, (err) => {
        if (err) {
            return console.error(`写入文件${fileName}.json时出错:`, err);
        }
        console.log(`${fileName}.json 写入成功!`);
    });
}

/** 生成邮件列表JSON数据 */
function generateMailListJsonData() {
    let mailList = [];

    for (let i = 0; i < 31; i++) {
        let dateSuffix = i > 21 ? `0${31 - i}` : 31 - i;
        let mail = {
            mailTitle: { "text": `这里是邮件的标题${i}` },
            mailDateTime: { "text": `2024-03-${dateSuffix} 00:00` },
            opt: { "visible": false },
            flagStatus: { "skin": "resources/UI/images/comp/img_mail.png" },
            flagBtn: { "label": "标为已读", "labelColors": "#000000,#000000,#000000" }
        };
        mailList.push(mail);
    }

    writeJsonData({ mailList }, "mailList");
}

/** 生成背包列表JSON数据 */
function generateBagListJsonData() {
    let bagList = [];

    for (let i = 0; i < 54; i++) {
        let item = {
            "listItemImg": { "skin": `bag/${i}.png` },
            "listItemNumber": { "text": Math.floor((Math.random() * 99) + 1).toString() },
            "readme": "宝物说明, 此处省略100字…………………………",
            "flagBtn": { "label": "标为已读", "labelColors": "#000000,#000000,#000000" } // 移除多余的声明，直接在循环内创建对象
        };
        bagList.push(item);
    }

    writeJsonData({ bagList }, "bagList");
}

generateMailListJsonData();
// 如果要生成背包数据，取消以下注释
// generateBagListJsonData();