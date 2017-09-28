<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
#tb {
	width: 100%;
	border-collapse: collapse;
	border: 1px solid #EEE;
	font-size: 14px;
	margin-top: 10px;
	margin-left: 10px;
}

#tb th {
	background: #EEE;
	border: 1px solid #CCC;
	padding: 8px;
}

#tb td {
	border: 1px solid #EEE;
	padding: 12px;
}

input {
	border-radius: 6px;
	padding: 6px 10px;
	margin-left: 6px;
	border: 1px
}

select {
	border-radius: 6px;
	padding: 6px 10px;
	margin-left: 6px;
	border: 1px
}

.btn {
	color: white;
	background-color: #0099FF;
}
</style>
<script type="text/javascript">
function sub2(id){
	$.getJSON(
			"/yingjia/BKOversea/toupdate?id="+id,
			function(one){
				if(one.status!=0){
					alert("该标已募集，不可修改");
					window.location.reload();
				}
				$("#id").val(one.id);
				$("#title").val(one.title);
				$("#content").val(one.content);
				$("#sortColum").val(one.sortColum);
				$("#child_title").val(one.child_title);
				$("#description").val(one.description);
				$("#user_type").val(one.user_type);
				$("#updTime").val(one.updTime);
				$("#addTime").val(one.addTime);
				$("#oversea_icon").val(one.oversea_icon);
				$("#start_time").val(one.start_time);
				$("#end_time").val(one.end_time);
				$("#status").val(one.status);
			})
}
function btn(id){
	$.getJSON("/yingjia/BKOversea/gettouzi?id="+id,
			function(list){
		$("#tt").empty();
		$("#tt").append("<tr><th>序号</th><th>姓名</th><th>地址</th><th>联系电话</th><th>预约时间</th></tr>");
		for(var i=0;i<list.length;i++){
			$("#tt").append("<tr><td>"+(i+1)+"</td><td>"+list[i].name+"</td><td>"+list[i].addr+"</td><td>"+list[i].phone+"</td><td>"+list[i].create_date+"</td></tr>");
		}
	})
}
</script>
</head>
<body>
	<input type="button" value="新增" data-toggle="modal"
		data-target="#myModal1" class="btn" id="add" style="margin-left: 10px">
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="container" style="margin-top: 50px;">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								新增
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</h3>
						</div>
						<form action="/yingjia/BKOversea/save" id="form" method="post">
						<table border="0">
						<tr>
						<td>标题:</td><td><input type="text" name="title" required></td>
						</tr>
						<tr>
						<td> 子标题:</td><td><input
								type="text" name="child_title" required></td>
						</tr>
						<tr>
						<td>描述:</td><td><input type="text"
								name="description" required></td>
						</tr>
						<tr>
						<td> 排序值:</td><td><input type="text" name="sortColmn" required></td>
						</tr>
						</table>
						<button type="submit" class="btn btn-primary">添加</button>
						</form>

						<div class="panel-body"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal -->
	</div>
	
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="container" style="margin-top: 50px;">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								修改
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</h3>
						</div>
						<form action="/yingjia/BKOversea/update" id="form1" method="post">
						<input type="hidden" name="id" id="id">
						<input type="hidden" name="content" id="content">
						<input type="hidden" name="description" id="description">
						<input type="hidden" name="user_type" id="user_type">
						<input type="hidden" name="updTime" id="updTime">
						<input type="hidden" name="addTime" id="addTime">
						<input type="hidden" name="oversea_icon" id="oversea_icon">
						<input type="hidden" name="start_time" id="start_time">
						<input type="hidden" name="end_time" id="end_time">
						<input type="hidden" name="status" id="status">
						<table border="0">
						<tr>
						<td>标题:</td><td><input type="text" name="title" id="title"></td>
						</tr>
						<tr>
						<td>子标题:</td><td><input type="text" name="child_title" id="child_title"></td>
						</tr>
						<tr>
						<td>排序值:</td><td><input type="text" name="sortColum" id="sortColum"></td>
						</tr>
						</table>
						<button type="submit" class="btn btn-primary">确定</button>
						</form>

						<div class="panel-body"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal -->
	</div>
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="container" style="margin-top: 50px;">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								查看投资
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
							</h3>
						</div>
						<table border="1" id="tt">
						
						</table>
						<div class="panel-body"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.modal -->
	</div>
	<table border="1" id="tb">
		<tr>
			<th>编号</font>
			<th>标题</th>
			<th>子标题</th>
			<th>状态</th>
			<th>排序值</th>
			<th>添加时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="e" varStatus="stat">
			<tr>
				<td>${stat.index+1 }</td>
				<td>${e.title }</td>
				<td>${e.child_title }</td>
				<td><c:if test="${e.status==0}">募集中</c:if> <c:if
						test="${e.status==1}">未募集</c:if></td>
				<td>${e.sortColum }</td>
				<td>${e.addTime}</td>
				<td><input type="button" value="编辑/查看" class="btn"
					onclick="sub2(${e.id});" data-toggle="modal"
					data-target="#myModal2"><input type="button" value="查看预约"
					class="btn" data-toggle="modal"
					data-target="#myModal3" onclick="btn(${e.id})"></td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>