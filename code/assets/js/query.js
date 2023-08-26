
//查询链接参数
function getQueryString(name, src) {
	if(!src) src = window.location.search.substr(1);
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = src.match(reg);
	if (r != null) return unescape(r[2]); return null;
}

window.category = getQueryString("category");
window.group = getQueryString("group");
window.name = getQueryString("name");