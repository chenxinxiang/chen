
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>意见反馈</title>
</head>

    <body>
    

		<table width="100%" border="1">
			<tr>
				<td>序号</td>
				<td>意见提交人</td>
				<td>意见内容</td>
				<td>添加时间</td>
			</tr>

			<c:forEach items="${userlist}" var="e" varStatus="stat">
				<tr>
					<td>${stat.index+1 }</td>
				    <td>${e.member_id }</td>
					<td>${e.content }</td> 
					<td>${e.create_date }</td>
					<td>${e.createdate }</td>
					
				</tr>
			</c:forEach>
		</table>
		</form>
</body>

</html>