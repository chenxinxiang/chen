<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Insert title here</title>
</head>
<body>
<form action="/yingjia/mem/selinvite" style="width: 100%px; height: 30px; font-size: 15px">
姓名:<input type="text" name="name">
手机号:<input type="text" name="mobile_Phone">
邀请码:<input type="text" name="invitationCode">
被邀请码:<input type="text" name="invitedCode">
是否已注册奖励:
<select name="isAward1">
	<option value="">全部</option>
	<option value="0">未奖励</option>
	<option value="1">注册已奖励</option>
</select>

是否已投资奖励:
<select name="isAward2">
	<option value="">全部</option>
	<option value="0">未奖励</option>
	<option value="1">投资已奖励</option>
</select>
<input type="submit" placeholder="用户名" value="🔍查询"/ style="width: 60px;height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="重置" style="width: 60px;height: 30px">  
</form>
<table class="imgtable">
    <thead>
		    <tr>
		    <th>序号</th>
		    <th>手机号</th>
		    <th>姓名</th>
		    <th>邀请码</th>
		    <th>被邀请码 </th>
		    <th>是否已注册奖励  </th>
		    <th>是否已投资奖励</th>
		    <th>注册时间</th>
		    <th>操作</th>
		    </tr>
    <c:forEach items="${list }" var="list" varStatus="status">
    <tr>
    <th>${status.index+1 }</th> <th>${list.mobile_Phone }</th> <th>${list.member_name }</th> <th>${list.invitationCode }</th>
    <th>${list.invitedCode }</th> 
    <th>
    		<c:if test="${list.type==0&&list.isAward==0}">否</c:if>
    		<c:if test="${list.type==0&&list.isAward==1}">注册已奖励</c:if>
	    	<c:if test="${list.type!=0}">否</c:if>
    </th>
     <th>
   <c:if test="${list.type==1&&list.isAward==0}">否</c:if>
   <c:if test="${list.type==1&&list.isAward==1}">投资已奖励</c:if>
   <c:if test="${list.type!=1}">否</c:if>
     </th>
<th>${list.addTime }</th>
<th>
<c:if test="${list.type==0&&list.isAward==1}">
<form action="/yingjia/mem/Awarer" method="post">
<input type="hidden" value="${list.member.id }"  name="id">
<input type="submit" value="注册奖励记录">
</form>
</c:if>
<c:if test="${list.type==1&&list.isAward==1}">
<form action="/yingjia/mem/Awarer" method="post">
<input type="hidden" value="${list.member.id }"  name="id">
<input type="submit" value="投资奖励记录">
</form>
</c:if>
</th>
   </c:forEach>
  	</thead>
  	</tr>
 </table>

</body>
</html>