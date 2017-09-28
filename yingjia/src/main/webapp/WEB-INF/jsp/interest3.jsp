<%@page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
     <script type="text/javascript" >
    function fun(id){
    	alert(id)
    }
    </script>
</head>

<body class="flat-blue">
                        <table width="100%">
                            <caption style="text-align: center; font-size:30px; color:red;">付息列表</caption>
                                 <thead><!--序号 流水号 投资人手机号 投资人姓名 投资人身份证 投资金额 还款利息+本金=本息 投资时间 还款时间 还款状态  -->
					                <tr style="font-size:15px; color:black;">
						               <th>序号</th><th>流水号</th><th>投资人手机号</th>
						               <th>投资人姓名</th><th>投资人身份证</th><th>投资金额</th>
						               <th>本息</th><th>投资时间</th><th>还款时间</th>
						               <th>还款状态</th><th>操作</th>
                      				</tr>
						           </thead>
						           <tbody align="center">
                                     <c:forEach items="${subjectPurchaseRecordsList }" var="spr" varStatus="stat">
						                     <tr>
						                        <td>${stat.index+1 }</td>
						                        <td>${spr.serial_number }</td>
						                        <td>${spr.member.mobile_Phone }</td>
						                        <td>${spr.member.member_name }</td>
						                        <td>${spr.member.identity }</td>
						                        <td>￥${spr.amount }.00元</td>
						                        <td>
						                           <script type="text/javascript">
						                              var a=${spr.amount};
						                              var b=${spr.pay_interest_times};
						                              var c=${spr.interest};
						                              var sum=(a+c)*b;
						                              document.write(sum);
						                           </script>
						                        </td>
						                        <td>${spr.create_date }</td>
						                        <td>${spr.last_profit_day }</td>
						                        <td>
						                           <c:if test="${spr.ispayment==0 }"><font color="red">待还款</font></c:if>
						                           <c:if test="${spr.ispayment==1 }"><font color="green">已还款</font></c:if>
						                        </td>
						                        <td>
						                          <c:if test="${spr.ispayment==0 }">
						                             <a href="/yingjia/mem/updateFuxi?id=${spr.id }">还款</a>
						                          </c:if>
						                          <c:if test="${spr.ispayment==1 }">已还款</c:if>
						                        </td>
						                      	</tr>
						                </c:forEach>
						             </tbody>
                           </table>
</body>

</html>
