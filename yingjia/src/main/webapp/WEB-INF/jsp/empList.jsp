
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告管理</title>
<body>
	<form action="/yingjia/item/listxian" method="post">
	<input type="text" id="title" name="title">
	<input type="submit" value="查询">
	</form>
		<table width="100%"   border="2">
			<tr>
				<td>序号</td>
				<td>类别</td>
				<td>公告标题</td>
				<td>添加时间</td>
				<td>操作</td>
				
			</tr>

			<c:forEach items="${userlist}" var="e" varStatus="stat">
				<tr>
					<td>${stat.index+1 }</td>
				    <td>${e.title }</td>
					<td>${e.content }</td> 
					<td>${e.update_Date }</td>
			
					
					<td><a href="/yingjia/item/delete/${e.id }">删除</a>
                      <a href="/yingjia/item/toUpdate/${e.id }">修改</a>
                        <a href="/yingjia/item/toSave">添加</a></td>
				</tr>
			</c:forEach>
					
		</table>
</body>

</html>