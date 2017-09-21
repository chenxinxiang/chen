<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<script type="text/javascript">
	
	$(function(){
	$("#id").val(${users.userrole.id});

	})
</script>
</head>
<body>
<form action="/yingjia/BgItem/update" method="post">
	<input type="hidden" name="id" value="${users.id}">	<br>
	用户名:<input type="text" name="user_name" value="${users.user_name }"><br>
	昵称:<input type="text" name="name" value="${users.name }"><br>
	密码:<input type="text" name="password" value="${users.password }"><br>
	密码盐:<input type="text" name="salt" value="${users.salt }"><br>
	电话:<input type="text" name="mobile_Phone" value="${users.mobile_Phone}"><br>
	状态:<input type="text" name="status" value="${users.status  }"><br>
	是否删除:<input type="text" name="del_flag" value="${users.del_flag }"><br>
	身份:<input type="text" name="identity" value="${users.identity }"><br>
	创建时间:<input type="text" name="create_date" value="${users.create_date }"><br>
	修改时间:<input type="text" name="update_date" value="${users.update_date }"><br>
	角色:<select id="id" name="cid">
		<option value="-1">请选择</option>
		<c:forEach items="${list}" var="d">
		<option value="${d.id }">${d.cname}</option>
		</c:forEach>
	</select>
	<input type="submit" value="提交">
</form>
</body>
</html> 