<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>理财师审核</title>

<script type="text/javascript">
window.onload=function fun(){
	var name=document.getElementById("")
}

</script>
</head>
<body style="background-color:#f0f9fd">

<table border="1" width="100%">
<input type="hidden" value="${financial.member_id }" name="member_id">
<tr>
<td>序号</td> <td>真实姓名</td> <td>机构名称</td> <td>我的名片</td> <td>邮箱地址</td> <td>状态</td> <td>注册时间</td> <td>操作</td>
</tr>
<c:forEach items="${list }" var="financial" varStatus="stat">
<tr>
<td>${stat.index+1 }</td> <td>${financial.name }</td>  <td>${financial.orgname }</td> 
<td style="text-align: center;"><img src="${financial.mycard }" style="widows:120px; height:60px;"></img></td>  
<td>${financial.address }</td>   <td>${financial.status }</td> <td>${financial.create_date }</td>
 <td></td>
 </tr>
</c:forEach>
</table>
</body>
</html>