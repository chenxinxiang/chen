<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员订单页面</title>
</head>
<body style="background-color:#f0f9fd">

<table border="1" width="100%">
<tr style="text-align: center;">
账号信息
</tr>
<tr> 
<td>用户名</td>   <td>${user.name }</td>  <td>手机号</td> <td>${user.mobile_Phone }</td>
</tr>
<tr>
<td>真实姓名</td> <td>${user.member_name }</td>  <td>身份证</td> <td>${user.identity}</td>
</tr>
<tr>
<td>邀请码</td> <td>${user.invitationCode }</td>   <td>邀请码</td> <td>${user.invitedCode }</td>
</tr>
<tr>
<td>添加时间</td> <td>${user.create_date }</td>
</tr>
</table>

<table border="1" width="100%">
<tr>
资金信息
</tr>
<tr> 
<td>可用余额</td>   <td>${list.useable_balance }</td>  <td>冻结资金</td> <td>${list.imuseale_balance }</td>
</tr>
<tr>
<td>累计收益</td> <td>${list.total_profit }</td>  <td>投资总额</td> <td>${list.invest_amount}</td>
</tr>
<tr>
<td>红包金额</td> <td>${list.bonus_amount }</td>   <td>体验金</td> <td>${list.bbin_amount }</td>
</tr>
</table>

<div style="text-align:center;">
      	<a href="/yingjia/mem/member"> <<返回>></a>
</div>


</body>
</html>