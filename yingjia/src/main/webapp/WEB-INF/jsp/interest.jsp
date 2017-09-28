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
<title>付息管理页面</title>
</head>
<body style="background-color:#f0f9fd">

 <form action="/yingjia/mem/listAll" method="post" style="width: 100%px; height:30px; font-size: 20px">
名称:<input type="text" placeholder="名称" name="qname" value="${qname }" style="font-size: 10px"/>
状态：<select name="qstatus" style="font-size: 18px">
		 <option value="" style="font-size: 10px">请选择</option>
		 <option value="0" style="font-size: 10px">未发布</option>
		 <option value="1" style="font-size: 10px">募集中</option>
		 <option value="2" style="font-size: 10px">还款中</option>
		 <option value="3" style="font-size: 10px">还款完成</option>
 </select>
类型：<select name="qtype" style="font-size: 18px">
		  <option value="" style="font-size: 10px">请选择</option>
		  <option value="0" style="font-size: 10px">固收类</option>
		  <option value="1" style="font-size: 10px">P2P车贷</option>
		  <option value="2" style="font-size: 10px">P2P房贷</option>
 </select> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                   
		<input type="submit" value="查询" style="width: 60px;height: 20px"/>&nbsp;&nbsp;
		<input type="reset" value="重置" style="width: 60px;height: 20px"/>                                  
</form>

<table class="datatable table table-striped" cellspacing="0" width="100%">
    <caption style="text-align: center; font-size:30px; color:red;">付息计划表</caption>
            <thead>
<tr style="font-size:15px; color:black;">
    <th>序号</th><th>合同编号</th><th>标的类别</th>
    <th>标的名称</th><th>标的总金额</th><th>已投金额</th>
    <th>已投人数</th><th>标的期限</th><th>年化收益</th>
    <th>标的状态</th><th>可体验金购买</th><th>操作</th>
     				</tr>
</thead>
<tbody align="center">
<c:forEach items="${subjectList }" var="sj" varStatus="stat">
<tr>
   <td>${stat.index+1}</td>
<td>${sj.subject.serial_no }</td>
<td>
   <c:if test="${sj.subject.type==0 }">固收类</c:if><!-- (0:固收类   1：P2P车贷  2：P2P房贷) -->
<c:if test="${sj.subject.type==1 }">P2P车贷</c:if>
<c:if test="${sj.subject.type==2 }">P2P房贷</c:if>
</td>
<td>${sj.subject.name }</td>
<td>￥${sj.subject.amount }</td>
<td>￥${sj.amount }.00元</td>
<td>${sj.subject.bought }人</td>
<td>${sj.subject.period }天</td>
<td>${sj.subject.year_rate }%</td>
<td>
   <c:if test="${sj.subject.status==0 }">未发布</c:if><!-- (0:未发布   1:募集中  2：回款中  3：还款完成) -->
<c:if test="${sj.subject.status==1 }">募集中</c:if>
<c:if test="${sj.subject.status==2 }">回款中</c:if>
<c:if test="${sj.subject.status==3 }">还款完成</c:if>
</td>
<td>
  <c:if test="${sj.subject.exper_status==0 }">否</c:if>
<c:if test="${sj.subject.exper_status==1 }">是</c:if>
</td>
<td>
  <c:if test="${sj.subject.exper_status==1 }">
  <a href="/yingjia/mem/listNews?id=${sj.subject.id }">体验金付息</a>
</c:if>
<a href="/yingjia/mem/listFuxi?id=${sj.subject.id }">付息列表</a>
 </td>
</tr>
</c:forEach>
</tbody>
         </table>

  

</body>
</html>