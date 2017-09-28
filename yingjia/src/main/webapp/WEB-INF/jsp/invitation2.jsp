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
		

<title>账号管理</title>
</head>
<body style="background-color:#f0f9fd">
										
	<table width="100%" class="imgtable">
                            <caption style="text-align: center; font-size:30px; color:red;">奖励记录表</caption>
                            <c:forEach items="${awardRecordsList }" var="award" varStatus="stat">
                                           <tr>
                                         <th>                         
			                                                                           邀请手机号：<font color="red">${award.mobile_Phone }</font>&nbsp;&nbsp;&nbsp;&nbsp;
			                                                                           邀请码：<font color="red">${award.invitedCode }</font>
                                        </th>
                                        </tr>
                                          
						           <tbody align="center">
                                        <tr>
                                        <th>
                                        	序号
                                        </th>
                                          <th>
                                        	邀请人手机号
                                        </th>
                                          <th>
                                        	被邀请人手机号
                                        </th>
                                          <th>
                                        	奖励类型
                                        </th>
                                          <th>
                                        	奖励金额
                                        </th>
                                         <th>
                                        	奖励时间
                                        </th>
                                        </tr>
                                        <c:forEach items="${user }" var="user" varStatus="stat">
                                        <tr>
                                        
                                        <th>${stat.index+1 }</th>
                                         
                                         <th>
                                         <c:forEach items="${user2 }" var="user2" varStatus="stat">
                                         ${user2.mobile_Phone }
                                          </c:forEach>
                                         </th>
                                         <th>${award.mobile_Phone }</th>
                                          <th>
                                          <c:if test="${user.type ==0}">注册奖励</c:if>
                                          <c:if test="${user.type ==1}">投资奖励</c:if>
                                          </th>
                                          <th>${user.amount }.00</th>
                                           <th>${user.addTime }</th>
                                        </tr>
						             </c:forEach>
						           </tbody>
						           </c:forEach>
                           </table>
</body>
</html>