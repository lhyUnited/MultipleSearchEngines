<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/bootstrap.css"  rel="stylesheet"/>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jQuery-1.10.2.js"></script>
<link href="${pageContext.request.contextPath}/fonts/glyphicons-halflings-regular.woff2" />
<link href="${pageContext.request.contextPath}/fonts/glyphicons-halflings-regular.woff" />
<link href="${pageContext.request.contextPath}/fonts/glyphicons-halflings-regular.ttf" />
<title>嗖一嗖</title>
<style type="text/css">
html {
    height: 100%;
}
body {
    background-color:lightblue;
    height: 100%;
    }
@media screen and (min-width: 500px) {
    .longer{
        width: 500px !important;
    }
}
</style>
</head>
<body>
<div class="container-fluid">
    <div style="text-align: center; margin-top: 100px;">
        <img id="tom_logo" style=" width: 200px; height: 200px; cursor: pointer";
        src="${pageContext.request.contextPath}/images/tom-right.png">
    </div>
    <div style="height: 20px"></div>
    <div class="row">
        <div class="col-lg-2 hidden-xs"></div>
            <div class="col-xs-12 col-lg-8" style="text-align: center;">
                <div class="form-inline">
                    <select class="form-control" id="option" style="text-align:center;text-align-last:center;">
                        <option value="baidu">百度</option>
                        <option value="Google">谷歌</option>
                        <option value="Bing">必应</option>
                    </select>
                    <div class="hidden-lg" style="height: 20px;"></div>
                    <input id="content"  type="text" class="form-control longer" placeholder="请输入搜索内容">
                    <div class="hidden-lg" style="height: 20px;"></div>
                    <button class="btn btn-success form-control" id="btn">GO</button>
                </div>             
            </div>
        <div class="col-lg-2 hidden-xs"></div>
    </div>
    <footer style="position: absolute; bottom: 20px; right:0; left: 0; text-align: center;">
        <p>&copy;<a href="https://www.tomluvjerry.cn" target="_blank">Tomluvjerry</a>所有2019</p>
    </footer>
</div>
<script type="text/javascript">
var img = document.getElementById("tom_logo");
img.onclick = function() {
    window.open("https://www.tomluvjerry.cn");
}
var op = document.getElementById("option");
var btn = document.getElementById("btn");
var content = document.getElementById("content");
function search() {
	var option = op.value;
	switch (option) {
	case "baidu":
		window.open("https://www.baidu.com/s?wd=" + content.value);
		break;
	case "Google":
        window.open("https://www.google.com/search?q=" + content.value);
        break;
	case "Bing":
		window.open("https://www.bing.com/search?q=" + content.value);
		break;
	}
}
btn.onclick = function() {
	search();
}
content.onkeypress = function(e) {
	if(e.keyCode == 13) {
		search();
	}
}
content.onfocus = function() {
	this.select();
}
</script>
</body>
</html>