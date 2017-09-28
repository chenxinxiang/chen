<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>钱包管理页面</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />
</head>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>

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


<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">钱包管理</a></li>
    <li><a href="/yingjia/memberRecord/listRecordAll" target="rightFrame">钱包缴费记录</a></li>
    </ul>
    </div>
	   
               
      <form action="/yingjia/memberRecord/listRecordAll" method="post" style="text-align: center;">
    	交易号：<input type="text" name="trade_no" placeholder="请输入交易号" style="font-size: medium;"> 
    	电话号码：<input type="text" name="mobile_Phone" placeholder="请输入电话号码" style="font-size: medium;">     	     	
    	<input type="submit" value="查询"> 
    </form>            
               
	<table class="tablelist">
	  <thead>	
		<tr>
		    <th><input name="" type="checkbox" value="" checked="checked"/></th>		
			<th>id</th>
			<th>交易号</th>
			<th>交易名称</th>
			<th>金额</th>
			<th>交易分类</th>			
			<th>创建时间</th>
			<th>修改时间</th>
			<th>姓名</th>
			<th>手机号</th>
			<th>邀请码</th>
		</tr>
	  </thead>
	  <tbody>
		<c:forEach items="${mrList }" var="memberRecord">
			<tr>
			    <td><input name="" type="checkbox" value="" /></td>			
				<td>${memberRecord.member.id}</td>
				<td>${memberRecord.trade_no}</td>
				<td>${memberRecord.trade_name}</td>
 				<td>${memberRecord.amount}</td>	
 				<td>${memberRecord.trade_type}</td>	
 				<td>${memberRecord.create_date }</td>		
				<td>${memberRecord.update_date }</td>
				<td>${memberRecord.member.name}</td>
				<td>${memberRecord.member.mobile_Phone}</td>
				<td>${memberRecord.member.invitationCode}</td>
			</tr>
		</c:forEach>
	 </tbody>	
	</table>
	
	 <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
</body>
</html>