<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="Utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Utf-8">
<title>修改页面</title>
</head>
<body>
<form action="/yingjia/item/update" method="post">
        序号 :<input type="hidden" id="id" name="id" value="${pushnotice.id}">
        公告标题:<input type="text" id="title" name="title" value="${pushnotice.title }">
         类别 <input  type="text"  id="content" name="content" value="${pushnotice.content }">   
	添加时间:<input type="text" id="update_Date" name="update_Date" value="${pushnotice.update_Date }">
	<input type="submit" value="提交">
	
	</form>
	
</body>
</html>