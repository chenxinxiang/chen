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
<form action="/yingjia/mem/selinvite" method="post">
姓名：<input type="text" placeholder="姓名" name="qmember_name" value="${qmember_name }"/>&nbsp;&nbsp;&nbsp;&nbsp;
手机号：<input type="text" placeholder="手机号" name="qmobile_Phone" value="${qmobile_Phone}"/>&nbsp;&nbsp;&nbsp;&nbsp;
邀请码：<input type="text" placeholder="邀请码" name="qinvitationCode" value="${qinvitationCode }"/>&nbsp;&nbsp;&nbsp;&nbsp;
被邀请码:<input type="text" placeholder="被邀请码" name="qinvitedCode" value="${qinvitedCode }"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                         是否已注册奖励：
                     <select name="qtype">
                        <option value="">请选择</option>
                        <option value="0">否</option>
                        <option value="2">是</option>
                      </select>&nbsp;&nbsp;&nbsp;&nbsp;                 
                                         是否已投资奖励：
                     <select name="qisAward">
                        <option value="">请选择</option>
                        <option value="0">否</option>
                        <option value="2">是</option>
                      </select>&nbsp;&nbsp;&nbsp;&nbsp;                    
                 <input type="submit" value="查询"/>&nbsp;&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="重置">
</form><br/>
                            
                       <table class="datatable table table-striped" cellspacing="0" width="100%">
                            <caption style="text-align: center; font-size:30px; color:red;">邀请奖励表</caption>
                                 <thead>
                                    <tr style="font-size:15px; color:black;">
						               <th>序号</th><th>姓名</th><th>手机号</th>
						               <th>邀请码</th><th>被邀请码</th><th>投资金额</th>
						               <th>是否已注册奖励</th><th>是否已投资奖励</th><th>注册时间</th>
						               <th>操作</th>
                      				</tr>
						           </thead>
						           <tbody align="center">
                                       <c:forEach items="${rangeList }" var="range" varStatus="stat">
						                     <tr>
						                       <td>${stat.index+1}</td>
						                       <td>${range.member_name }</td>
						                       <td>${range.mobile_Phone }</td>
						                       <td>${range.invitationCode }</td>
						                       <td>${range.invitedCode }</td>
						                       <td>${range.amount }</td>
						                       <td>
						                         <c:choose>
										           <c:when test="${range.type=='2' }">是</c:when>
										           <c:otherwise>否</c:otherwise>
										         </c:choose>
						                       </td>
						                       <td>
						                         <c:choose>
										           <c:when test="${range.isAward=='2' }">是</c:when>
										           <c:otherwise>否</c:otherwise>
										         </c:choose>
						                       </td>
						                       <td>${range.addTime }</td>
						                       <td>
						                          <c:choose>
						                             <c:when test="${range.type=='2'&& range.isAward=='2' }"><font color="blue">注册已奖励</font>||<font color="blue">投资已奖励</font></c:when>
						                             <c:otherwise><font color="black">不能注册</font></c:otherwise>
						                          </c:choose>
						                         <a href="/yingjia/mem/Reward?id=${range.invitingid }">奖励记录</a>
						                       </td>
						                       </tr>
						               </c:forEach>
						           </tbody>
                           </table>

</body>
</html>