<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../BgAssets/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>

<style type="text/css">
		.topleft{
		font-size: 45px;
		margin-top:10px;
		}
</style>

</head>

<body style="background:url(../BgAssets/images/topbg.gif) repeat-x;">

    <div class="topleft" align="center">
   					盈+后台管理
    </div>
     
    
    <ul class="nav">
    <li><a href="/yingjia/BgItem/BgDefault" target="rightFrame" class="selected"><img src="../BgAssets/images/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
    <li><a href="/yingjia/BgItem/BgImgTable" target="rightFrame"><img src="../BgAssets/images/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
    <li><a href="/yingjia/BgItem/BgImgList"  target="rightFrame"><img src="../BgAssets/images/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
    <li><a href="/yingjia/BgItem/BgTools"  target="rightFrame"><img src="../BgAssets/images/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="/yingjia/BgItem/BgTab"  target="rightFrame"><img src="../BgAssets/images/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul>
 
            
    <div class="topright">    
    <ul>
    <li><span><img src="../BgAssets/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="/yingjia/BgItem/BgLogin " target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>
</body>
</html>
