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
	<script type="text/javascript">
		function fun(){
			$('#t1').val("");
			$('#t2').val("");
			$('#t3').val("");
			$('#t4').val("");
		}
	
		function fun1(id){
			if(id==1){
				alert("您已解绑，无需解绑");
			}
		}
	</script>
<title>绑定银行卡</title>

<style type="text/css">
	#btn{
		background-color:#f0f9fd
	}
	#btn2{
		background-color:#f0f9fd
	}
</style>
</head>
<body style="background-color:#f0f9fd" style="font-size: 20px">
 <form action="/yingjia/mem/listCards" method="post" style="width: 100%px; height: 30px; font-size: 20px">
	手机号:<input type="text" placeholder="用户名" name="qmobile_Phone" value="${qmobile_Phone }" style="font-size: 18px"/>&nbsp;&nbsp;&nbsp;&nbsp;
	绑卡人姓名:<input type="text" placeholder="用户名" name="qmember_name" value="${qmember_name }" style="font-size: 18px"/>&nbsp;&nbsp;&nbsp;&nbsp;
	卡号:<input type="text" placeholder="用户名" name="qcard_no" value="${qcard_no}" style="font-size: 18px"/>&nbsp;&nbsp;&nbsp;&nbsp;
	注册时间:<input type="text" placeholder="用户名" name="qcreate_date" value="${qcreate_date }" style="font-size: 18px"/>&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" placeholder="用户名" value="🔍查询"/>&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" placeholder="用户名" value="重置">                                 
</form> 

<table class="imgtable">
    <thead>
    <tr>
    <th>序号</th>
    <th>编号</th>
    <th>联系方式</th>
    <th>绑卡人姓名</th>
    <th>绑卡身份证号</th>
    <th>绑卡类型</th>
    <th>绑卡卡号</th>
    <th>绑卡地址</th>
    <th>状态</th>
    <th>添加时间</th>
     <th>操作</th>
    </tr>
    <c:forEach items="${cardslist }" var="list" varStatus="stat">
<tr> 
<td>${stat.index+1 }</td> <td>${list.id }</td> <td>${list.member.mobile_Phone }</td>  <td>${list.member.member_name }</td>  <td>${list.member.identity }</td> 
<td>
<c:choose>
<c:when test="${list.type=='ZSYH'}">
招商银行
</c:when>
<c:when test="${list.type=='JSYH'}">
建设银行
</c:when>
<c:when test="${list.type=='GSYH'}">
工商银行
</c:when>
</c:choose>
</td> 
<td>${list.card_no }</td> <td>${list.cardaddress }</td> 
<td id="zt">
<c:choose>
<c:when test="${list.delflag==0}">
<span style="color: blue">正在使用</span>
</c:when>
<c:otherwise>
<span style="color: red;">已解绑</span>

   </c:otherwise>
</c:choose> 
</td>  
<td>${list.create_date }</td>
<td>
<form action="/yingjia/mem/car" method="post">
<input type="hidden" value="${list.id }" name="id">
<input type="submit" value="解绑银行卡" onclick="fun1(${list.delflag})" style="width: 60px;height: 30px">
</form>
</td> 
</tr>
</c:forEach>
	</thead>
</table>

</body>

</html>