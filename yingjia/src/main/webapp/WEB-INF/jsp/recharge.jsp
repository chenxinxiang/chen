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
	</script>
<title>充值</title>
</head>
<body>

<form action="/yingjia/mem/selRecord" method="post" style="width: 100%px; height: 30px; font-size: 15px" >
订单编号:<input type="text" name="serial_number" id="t1"  style="font-size: 12px"> 
联系方式:<input type="text" name="mobile_Phone" id="t2"  style="font-size: 12px"> 
订单状态:
<select name="date" id="t4"  style="font-size: 12px">
	<option value="" style="font-size: 12px">请选择</option>
	<option value="0" style="font-size: 12px">充值失败</option>
	<option value="1" style="font-size: 12px">充值成功</option>
</select>
订单时间:<input type="date" name="time"  style="font-size: 12px">
<input type="submit" value="🔍查询" id="btn2" style="width: 60px;height: 30px" > &nbsp &nbsp &nbsp &nbsp 
<input type="reset" placeholder="用户名" value="重置" style="width: 60px;height: 30px">   
</form>
<table class="imgtable">
<thead>
<tr>
<th>序号</th> <th>订单编号</th> <th>联系方式</th> <th>订单金额</th> <th>订单状态</th><th>充值渠道</th> <th>富友手机充值订单</th> <th>订单时间</th> <th>操作</th> 
</tr>
<c:forEach items="${list}" var="list" varStatus="stat">
<tr> 
<th>${stat.index+1 }</th> <th>${list.serial_number}</th> 
<th>${list.member.mobile_Phone }</th>  <th>${list.amount }</th>  
<th>
<c:if test="${list.status==0}">
<span style="color: red">充值失败</span>
</c:if>
<c:if test="${list.status==1}">
<span style="color:blue">充值成功</span>
</c:if>
</th>
<th>
<c:if test="${list.pay_channel_name=='FUIOU'}">
<span >富友</span>
</c:if>
</th>  
<th>${list.pay_channel_order_no }</th>  <th>${list.create_date }</th>  
<th>
<c:if test="${list.status==0&&list.pay_channel_order_no==''}">
<span>不能操作</span>
</c:if>
<c:if test="${list.status==0&&list.pay_channel_order_no!=''}">
<form action="/yingjia/mem/replace" method="post">
<input type="button" value="更新订单">+ 
</form>
</c:if>
<c:if test="${list.status==1&&list.pay_channel_order_no!=''}">
<span style="color: blue">充值成功</span>
</c:if>
<c:if test="${list.status==1&&list.pay_channel_order_no==''}">
<form action="/yingjia/mem/replace" method="post">
<input type="button" value="更新订单">
</form>
</c:if>
</th> 
</tr>
</c:forEach>
</thead>
</table>
</body>
</html>