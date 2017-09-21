<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/yingjia/BgItem/userAdd" method="post">
		用户名:<input type="text" name="user_name" ><br>
 		名称:<input type="text" name="name"><br>
 		密码:<input type="text" name="password" ><br>
 		密码盐:<input type="text" name="salt" ><br>
 		手机号:<input type="text" name="mobile_Phone"><br>
 		账号状态:<input type="text" name="status"><br>
<!--  		删除标志:<input type="text" name="del_flag" value="y"><br> -->
<!--  		身份:<input type="text" name="identity" value="000"><br> -->
 		创建时间:<input type="text" name="create_date"><br>
 		修改时间:<input type="text" name="update_date"><br>
 		角色:<select name="cid" id="id">
		<option value="-1">请选择</option>
		<c:forEach items="${roleList}" var="r">
		<option value="${r.id }">${r.cname }</option>
		</c:forEach>
		</select>
		<input type="submit" value="提交">
	</form>	
</body>
</html>