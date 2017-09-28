<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示页面</title>
</head>
<body>
	<form action="" method="post">
	   <table >
     <thead>
    	<tr>
        <th>真实姓名</th>
        <th >手机</th>
        <th >微信账号</th>
        <th >身份证号</th>
        <th >QQ账号</th>        
        <th >被邀请码</th>
        <th >投资金额</th>
        <th >收益金额</th>
        <th >红包金额</th> 
        </tr>
      </thead>
        <tbody>
      <c:forEach items="${list }" var="list">  
        <tr>
        <td>${list.name}</td>
        <td >${list.mobile_Phone}</td>
        <td >${list.weixinAccount}</td>
        <td >${list.identity}</td>
        <td >${list.qqNumber}</td>
        <td>${list.invitedCode}</td>        
        <td >${list.invest_amount}</td>
        <td >${list.amount}</td>
        <td >${list.bonus_amount}</td>
        <td >            
        </td> 
        </tr> 
       </c:forEach>
        </tbody> 
             
    </table>
	</form>
</body>
</html>