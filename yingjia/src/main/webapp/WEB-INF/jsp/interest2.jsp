 <%@page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <title>付息计划</title>
</head>

<body class="flat-blue">
<table class="datatable table table-striped" cellspacing="0" width="100%">
    <caption style="text-align: center; font-size:30px; color:red;">体验金付息</caption>
         <thead><!--序号 流水号 投资人手机号 投资人姓名 投资人身份证 投资体验金 还款利息 还款时间 还款状态  -->
<tr style="font-size:15px; color:black;">
    <th>序号</th><th>流水号</th><th>投资人手机号</th>
    <th>投资人姓名</th><th>投资人身份证</th><th>投资体验金</th>
    <th>还款利息</th><th>还款时间</th><th>还款状态</th><th>操作</th>
     				</tr>
</thead>
<tbody align="center">
                    <c:forEach items="${subjectBbinPurchaseRecordList }" var="sbpr" varStatus="stat">
   <tr>
      <td>${stat.index+1 }</td>
      <td>${sbpr.serial_number }</td>
      <td>${sbpr.member.mobile_Phone }</td>
      <td>${sbpr.member.member_name }</td>
      <td>${sbpr.member.identity }</td>
      <td>￥${sbpr.amount }.00元</td>
      <td>￥${sbpr.interest }元</td>
      <td><!-- 还款时间 --> 
         <!-- <script type="text/javascript">
            var a=${sbpr.create_date};//创建时间
            var b=${sbpr.subject.period};//周期
            var sum=(a+b);
            document.write(sum);
         </script> -->
         ${sbpr.create_date }
      </td>
      <td>
        <c:if test="${sbpr.ispayment==0 }"><font color="red">待还款</font></c:if>
        <c:if test="${sbpr.ispayment==1 }"><font color="green">已还款</font></c:if>
      </td>
      <td>
        <c:if test="${sbpr.ispayment==0 }">
         <a href="/yingjia/mem/update?id=${sbpr.id }">还款</a>
        </c:if>
        <c:if test="${sbpr.ispayment==1 }">已还款</c:if>
      </td>
    	</tr>
  </c:forEach>
</tbody>
     </table>
</body>
</html>
