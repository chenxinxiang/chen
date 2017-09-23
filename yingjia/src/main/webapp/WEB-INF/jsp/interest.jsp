<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<script language="javascript">
$(function(){	
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
<body style="background-color:#f0f9fd">
  <form action="/yingjia/mem/selSubject" method="post" style="widows: 100%px; height:30px; font-size: 20px">
      名称:<input type="text" placeholder="名称" name="qname" value="${qname }" style="font-size: 15px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         状态：<select name="qstatus" style="font-size: 15px">
					  <option value="" style="width: 60px;height: 30px">请选择</option>
					  <option value="0" style="width: 60px;height: 30px">未发布</option>
					  <option value="1" style="width: 60px;height: 30px">募集中</option>
					  <option value="2" style="width: 60px;height: 30px">还款中</option>
					  <option value="3" style="width: 60px;height: 30px">还款完成</option>
				  </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  类型：<select name="qtype" style="font-size: 15px">
					  <option value=" " style="width: 60px;height: 30px">请选择</option>
					  <option value="0" style="width: 60px;height: 30px">固收类</option>
					  <option value="1" style="width: 60px;height: 30px">P2P车贷</option>
					  <option value="2" style="width: 60px;height: 30px">P2P房贷</option>
				  </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                 
       <input type="submit" value="🔍查询" style="width: 60px;height: 30px"/>&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" value="重置" style="width: 60px;height: 30px"/>                                  
</form>

<table class="imgtable">
    <thead>
    <tr>
    <th>序号</th>
    <th>合同编号</th>
    <th>标的类别</th>
    <th>标的名称</th>
    <th>标的总金额</th>
    <th>已投金额</th>
    <th>已投人数</th>
    <th>标的期限</th>
    <th>年化收益</th>
    <th>标的状态</th>
    <th>可体验金购买</th>
    <th>操作</th>
    <c:forEach items="${list }" var="user" varStatus="stat">
<tr>
<td>${stat.index+1 }</td> <td>${user.serial_no }</td> <td>${user.type }</td> <td>${user.name }</td>
 <td>${user.amount }</td> <td>${user.floor_amount }</td> <td>${user.bought }</td>  <td>${user.period }</td> 
 <td>${user.year_rate }</td>  
 <td>
<c:choose>
<c:when test="${user.type==0}">
募集中
</c:when>
<c:when test="${user.type==1}">
已结束
</c:when>

</c:choose>
 </td> 
  <td>
 <c:choose>
<c:when test="${user.exper_status==0}">
否
</c:when>
<c:when test="${user.exper_status==1}">
是
</c:when>
 </c:choose>
 </td> 
<td>
<form action="/yingjia/mem/memberOrder" method="post">
<input type="hidden" value=${user.id } name="id">
<input type="submit" value="账号详情">
</form>
</td>
</tr>
</c:forEach>
    </tr>
    </thead>
    <tbody>
    
</tbody>
</table>

</body>
</html>