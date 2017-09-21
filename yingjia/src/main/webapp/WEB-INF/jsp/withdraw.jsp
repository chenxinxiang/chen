<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>提现管理页面</title>
</head>
<body>

<form action="/yingjia/mem/selWrecor" method="post" style="widows: 100%px; height:30px; font-size: 20px">
             姓名：<input type="text" placeholder="姓名" name="qmember_name" value="${qmember_name }"/  style="font-size: 10px">&nbsp;&nbsp;&nbsp;&nbsp;
             手机号：<input type="text" placeholder="手机号" name="qmobile_Phone" value="${qmobile_Phone}"  style="font-size: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
             绑卡卡号：<input type="text" placeholder="绑卡卡号" name="qbank_card" value="${qbank_card }"  style="font-size: 10px"/>&nbsp;&nbsp;&nbsp;&nbsp;
              状态:
			<select name="qstatus"  style="font-size: 15px">
			  <option value="">请选择</option>
			  <option value="0">待审核</option>
			  <option value="1">打款成功</option>
			  <option value="2">打款中</option>
			  <option value="3">打款失败</option>
			  <option value="4">已冻结</option>
			  <option value="5">已解冻</option>
</select>&nbsp;&nbsp;&nbsp;&nbsp;                   
                      创建时间：<input type="text" placeholder="创建时间" name="qcreate_date" value="${qcreate_date}"  style="font-size: 15px"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="查询" style="width: 60px;height: 30px"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="重置" style="width: 60px;height: 30px">
</form>


<table class="imgtable">
  <thead >
	    <tr>
	    <th>序号</th>
	    <th>手机号</th>
	     <th>姓名</th>
	    <th>身份证</th>
	    <th>提现金额</th>
	    <th>提现银行</th>
	    <th>提现卡号</th>
	    <th>提现开户行所在地</th>
	    <th>提现状态</th>
	    <th>提现时间</th>
	    <th>账号详细</th>
	    <th>操作</th>
    </tr>
<c:forEach items="${list }" var="list" varStatus="stat">
<tr>
<td>${stat.index+1 }</td> <td>${list.member.mobile_Phone }</td>  <td>${list.member.member_name }</td> <td>${list.member.identity }</td> <td>${list.amount }</td> 
<td>${list.bank_name }</td> <td>${list.bank_card }</td>  <td>${list.cardaddress }</td>  
<td id=${list.id }>
<c:if test="${list.status==0}">
<span style="color: black;">待审核</span>
</c:if>
<c:if test="${list.status==1}">
<span style="color: blue;">已打款</span>
</c:if>
<c:if test="${list.status==2}">
<span style="color: blue;">打款中</span>
</c:if>
<c:if test="${list.status==3}">
<span style="color: red">打款失败</span>
</c:if>
<c:if test="${list.status==4}">
<span style="color: red">已冻结</span>
</c:if>
<c:if test="${list.status==5}">
<span style="color: red">已解冻</span>
</c:if>
</td>
  <td>${list.create_date }</td>
  <td>
  <form action="" method="post">
  <input type="hidden" value="${list.id }">
  <input type="submit" value="账号详细" style="width: 60px;height: 15px">
  </form>
  </td>
  <td>
  <c:if test="${list.status==0}">
	   <form action="/yingjia/mem/Thaw" method="post">
	    <input type="hidden" name="id" value="${list.id }">
	    <input type="submit" value="审核" style="color: blue;" style="width: 60px;height: 15px">
	    </form>
 </c:if>
  <c:if test="${list.status==1||list.status==2||list.status==3}">
	<c:if test="${list.channel_name=='BEIFU'}">
		贝付付款
	</c:if>
		<c:if test="${list.channel_name=='FUIOU'}">
		富友付款
	</c:if>
 </c:if>
  <c:if test="${list.status==4}">
	    <form action="/yingjia/mem/Thaw" method="post">
	    <input type="hidden" name="id" value="${list.id }">
	    <input type="submit" value="解冻" style="color: red" style="width: 60px;height: 15px">
	    </form>
 </c:if>
  </td>
</tr>
</c:forEach>
</table>
</body>
</html>