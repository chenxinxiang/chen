<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="BgAssets/jss/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../BgAssets/jss/themes/default/easyui.css">
	<script type="text/javascript" src="../BgAssets/jss/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="../BgAssets/jss/jquery.easyui.min.js"></script>
	<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
		
<script type="text/javascript">
//页面加载完成
window.onload=function fun(){
	}
function fun(){
	$('#t1').val("");
	$('#t2').val("");
	$('#t3').val("");
	$('#t4').val("");
}
</script>
<title>账号管理</title>
</head>

<body style="background-color:#f0f9fd">
<style type="text/css">
.btn_sub{
	background: blue
}
</style>
<form action="/yingjia/mem/selUser" method="post" style="widows: 100%px; height:30px; font-size: 20px">
用户名：<input type="text" placeholder="用户名" name="qname" value="${qname }" style="font-size: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
真实姓名：<input type="text" placeholder="真实姓名" name="qmember_name" value="${qmember_name }" style="font-size: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
手机号：<input type="text" placeholder="手机号" name="qmobile_Phone" value="${qmobile_Phone}"style="font-size: 10px"/>
邀请码：<input type="text" placeholder="邀请码" name="qinvitationCode" value="${qinvitationCode }"style="font-size: 10px" />&nbsp;&nbsp;&nbsp;&nbsp;
创建时间：<input type="text" placeholder="创建时间" name="qcreate_date" value="${qcreate_date}" style="font-size: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="🔍查询" style="width: 60px;height: 30px">&nbsp;&nbsp;
<input type="reset" value="重置" style="width: 60px;height: 30px">
</form>

<table class="imgtable">
  <thead >
	    <tr>
	    <th>序号</th>
	    <th>手机号</th>
	    <th>用户名</th>
	    <th>姓名</th>
	    <th>身份证</th>
	    <th>邀请码</th>
	    <th>注册时间</th>
	    <th>操作</th>
    </tr>
<c:forEach items="${userlist }" var="user" varStatus="stat">
	<tr>
		<td>${stat.index+1 }</td> <td>${user.mobile_Phone }</td> <td>${user.name }</td> <td>${user.member_name }</td> <td>${user.identity }</td> <td>${user.invitationCode }</td> <td>${user.create_date }</td> 
		<td>
		<form action="/yingjia/mem/memberOrder" method="post">
		<input type="hidden" value=${user.id } name="id">
		<input type="submit" value="账号详情" style="width: 60px;height: 15px">
		</form>
		</td>
	</tr>
</c:forEach>
   </thead>
</table>


</table>
</body>
</html>