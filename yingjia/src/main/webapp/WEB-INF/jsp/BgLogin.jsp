<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统--模板之家 www.cssmoban.com</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../BgAssets/js/jquery.js"></script>
<script src="../BgAssets/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(../BgAssets/images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop" style="margin-top: 0px;">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody" style="margin-top: 80px;">
    <span class="systemlogo"></span> 
    <div class="loginbox" >
    <ul>
    <form action="${pageContext.request.contextPath}/BgLogin/toMain" method="post">
    <li><input name="user_name" type="text" class="loginuser" value="admin" /></li>
    <li><input name="password" type="text" class="loginpwd" value="密码"   /></li>
    <li><input type="submit" class="loginbtn" value="登录"    />
    <label><input name="" type="checkbox" value="" checked="checked" />记住密码</label>
    
    <label><a href="#">忘记密码？</a></label></li>  <font color="red" style="font-size: 15px">${message }</font>
  
    </ul>
   
    </form>
    </div>
    </div>
    
     
    
    <div class="loginbm">版权所有  2013  .com 仅供学习交流，勿用于任何商业用途</div>
</body>
</html>
