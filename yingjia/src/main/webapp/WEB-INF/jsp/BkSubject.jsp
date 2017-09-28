<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#res").click(function() {
			$("#lname").val("");
			$("#ltype").val(-1);
			$("#lstatus").val(-1);
		})
		window.alert = function(name){
			var iframe = document.createElement("IFRAME");
			iframe.style.display="none";
			iframe.setAttribute("src", 'data:text/plain');
			document.documentElement.appendChild(iframe);
			window.frames[0].window.alert(name);
			iframe.parentNode.removeChild(iframe);
			}
	})
	function sub0(){
		document.forms[0].action="/yingjia/BKSubject/list";
		document.forms[0].submit();
	}
	function sub1(){
		document.forms[1].action="/yingjia/BKSubject/save";
		document.forms[1].submit();
	}
	function btn(id){
		$.getJSON(
				"/yingjia/BKSubject/gettouzi?id="+id,
				function(list){
					$("#tt").empty();
					$("#tt").append("<tr><th>序号</th><th>流水号</th><th>购买金额</th></tr>");
					for(var i=0;i<list.length;i++){
						$("#tt").append("<tr><td>"+(i+1)+"</td><td>"+list[i].serial_number+"</td><td>"+list[i].amount+"</td></tr>");
					}
				}
				)
		
	}
	function sub3(){
		document.forms[2].action="/yingjia/BKSubject/update";
		document.forms[2].submit();
	}
	function sub2(id){
		$.getJSON(
				"/yingjia/BKSubject/toupdate?id="+id,
				function(one){
					if(one.status!=0){
						alert("该标已募集，不可修改");
						window.location.reload();
					}
					$("#name").val(one.name);
					$("#type").val(one.type);
					$("#amount").val(one.amount);
					$("#exper_status").val(one.exper_status);
					$("#floor_amount").val(one.floor_amount);
					$("#period").val(one.period);
					$("#year_rate").val(one.year_rate);
					$("#id").val(one.id);
					$("#serial_number").val(one.serial_number);
					$("#serial_no").val(one.serial_no);
					$("#status").val(one.status);
					$("#first_id").val(one.first_id);
					$("#parent_id").val(one.parent_id);
					$("#purpose").val(one.purpose);
					$("#raise_start").val(one.raise_start);
					$("#raise_end").val(one.raise_end);
					$("#refund_way").val(one.refund_way);
					$("#refund_way").val(one.safeGuard_way);
					$("#start_date").val(one.start_date);
					$("#end_date").val(one.end_date);
					$("#comment").val(one.comment);
					$("#folder_id").val(one.folder_id);
					$("#delflag").val(one.delflag);
					$("#create_date").val(one.create_date);
					$("#borrowername").val(one.borrowername);
					$("#borrowerid").val(one.borrowerid);
					$("#bought").val(one.bought);
					$("#projectDetails").val(one.projectDetails);
					$("#safetyControl").val(one.safetyControl);
				}
				)
	}
	
</script>

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
#tt {
	width: 100%;
	border-collapse: collapse;
	border: 1px solid #EEE;
	font-size: 14px;
	margin-top: 10px;
}

#tt th {
	background: #EEE;
	border: 1px solid #CCC;
	padding: 8px;
}

#tt td {
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
</head>
<body>
	<h2 style="margin-left: 10px">固收类</h2>
	<form action="/yingjia/BKSubject/list" method="post"
		style="margin-left: 10px">
		名称：<input type="text" name="lname" id="lname"> 状态： <select
			name="lstatus" id="lstatus">
			<option value="-1">全部</option>
			<option value="0" <c:if test="${status==0 }">selected="true"</c:if>>未发布</option>
			<option value="1" <c:if test="${status==1 }">selected="true"</c:if>>募集中</option>
			<option value="2" <c:if test="${status==2 }">selected="true"</c:if>>还款中</option>
			<option value="3" <c:if test="${status==3 }">selected="true"</c:if>>还款完成</option>
		</select> 类型: <select name="ltype" id="ltype">
			<option value="-1">全部</option>
			<option value="0" <c:if test="${type==0 }">selected="true"</c:if>>固收类</option>
			<option value="1" <c:if test="${type==1 }">selected="true"</c:if>>P2P车贷</option>
			<option value="2" <c:if test="${type==2 }">selected="true"</c:if>>P2P房贷</option>
		</select> <input type="button" value="查询" class="btn" onclick="sub0();"><input
			type="button" value="重置" class="btn" id="res">&nbsp;&nbsp; <input
			type="button" value="新增" data-toggle="modal" data-target="#myModal1"
			class="btn" id="add">
		<!-- 添加-->

	</form>
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
						<form id="form" method="post" action="/yingjia/BKSubject/save">
							<table border="0px">
							<tr>
									<td align="right">合同号:</td>
									<td><input type="text" name="serial_no" required></td>
								</tr>
								<tr>
									<td align="right">标的名称:</td>
									<td><input type="text" name="name" required></td>
								</tr>
								<tr>
									<td align="right">类型:</td>
									<td><select name="type">
											<option value="0"
												<c:if test="${type==0 }">selected="true"</c:if>>固收类</option>
											<option value="1"
												<c:if test="${type==1 }">selected="true"</c:if>>P2P车贷</option>
											<option value="2"
												<c:if test="${type==2 }">selected="true"</c:if>>P2P房贷</option>
									</select></td>
								</tr>
								<tr>
									<td align="right">是否可用体验金</td>
									<td><select name="exper_status">
											<option value="0">否</option>
											<option value="1">是</option>
									</select></td>
								</tr>
								<tr>
									<td align="right">总金额:</td>
									<td><input type="number" name="amount" required>元</td>
								</tr>
								<tr>
									<td align="right">起投金额:</td>
									<td><input type="number" name="floor_amount" required>元</td>
								</tr>
								<tr>
									<td align="right">投资期限:</td>
									<td><input type="number" name="period" required>天</td>
								</tr>
								<tr>
									<td align="right">年化收益:</td>
									<td><input type="number" name="year_rate" required>%</td>
								</tr>
								<tr>
									<td align="right">借款人姓名:</td>
									<td><input type="text" name="borrowername" required></td>
								</tr>
								<tr>
									<td align="right">借款用途:</td>
									<td><input type="text" name="purpose" required></td>
								</tr>
								<tr>
									<td align="right">保障方式:</td>
									<td><select name="safetyControl">
											<option value="0">企业担保</option>
									</select><br></td>
								</tr>
							</table>
							<div class="form-group" align="center">
								<button type="submit" class="btn btn-primary">添加</button>
							</div>
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
						<form id="form1" method="post" action="/yingjia/BKSubject/update">
							<input type="hidden" name="id" id="id"> <input
								type="hidden" name="serial_number" id="serial_number"> <input
								type="hidden" name="serial_no" id="serial_no"> <input
								type="hidden" name="status" id="status"> <input
								type="hidden" name="first_id" id="first_id"> <input
								type="hidden" name="parent_id" id="parent_id"> <input
								type="hidden" name="purpose" id="purpose"> <input
								type="hidden" name="raise_start" id="raise_start"> <input
								type="hidden" name="raise_end" id="raise_end"> <input
								type="hidden" name="refund_way" id="refund_way"> <input
								type="hidden" name="safeGuard_way" id="safeGuard_way"> <input
								type="hidden" name="start_date" id="start_date"> <input
								type="hidden" name="end_date" id="end_date"> <input
								type="hidden" name="comment" id="comment"> <input
								type="hidden" name="folder_id" id="folder_id"> <input
								type="hidden" name="delflag" id="delflag"> <input
								type="hidden" name="create_date" id="create_date"> <input
								type="hidden" name="borrowername" id="borrowername"> <input
								type="hidden" name="borrowerid" id="borrowerid"> <input
								type="hidden" name="bought" id="bought"> <input
								type="hidden" name="projectDetails" id="projectDetails">
							<input type="hidden" name="safetyControl" id="safetyControl">
							<table border="0px">
								<tr>
									<td align="right">标的名称:</td>
									<td><input type="text" name="name" id="name" required></td>
								</tr>
								<tr>
									<td align="right">类型:</td>
									<td><select name="type" id="type">
											<option value="0"
												<c:if test="${type==0 }">selected="true"</c:if>>固收类</option>
											<option value="1"
												<c:if test="${type==1 }">selected="true"</c:if>>P2P车贷</option>
									</select></td>
								</tr>
								<tr>
									<td align="right">是否可用体验金</td>
									<td><select name="exper_status" id="exper_status">
											<option value="0">否</option>
											<option value="1">是</option>
									</select></td>
								</tr>
								<tr>
									<td align="right">总金额:</td>
									<td><input type="number" name="amount" id="amount">元</td>
								</tr>
								<tr>
									<td align="right">起投金额:</td>
									<td><input type="number" name="floor_amount"
										id="floor_amount">元</td>
								</tr>
								<tr>
									<td align="right">投资期限:</td>
									<td><input type="number" name="period" id="period">天</td>
								</tr>
								<tr>
									<td align="right">年化收益:</td>
									<td><input type="number" name="year_rate" id="year_rate">%</td>
								</tr>
							</table>
							<div class="form-group" align="center">
								<button type="submit" class="btn btn-primary">确定</button>
							</div>
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
			<th>序号</th>
			<th>合同编号</th>
			<th>类型</th>
			<th>名称</th>
			<th>标的总金额</th>
			<th>已投总金额</th>
			<th>投资期限</th>
			<th>起投金额</th>
			<th>年化收益</th>
			<th>状态</th>
			<th>可使用体验金</th>
			<th>添加时间</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list }" var="e" varStatus="stat">
			<tr>
				<td>${stat.index+1 }</td>
				<td>${e.serial_no }</td>
				<td><c:if test="${e.type==0 }">固收类</c:if> <c:if
						test="${e.type==1 }">P2P车贷</c:if></td>
				<td>${e.name }</td>
				<td>${e.amount }元</td>
				<td><script type="text/javascript">
					var id = '${e.id}';
					$.ajaxSetup({
						async : false
					});
					var num1 = 0;
					$.post("/yingjia/BKSubject/getTotalMoney", {
						id : id
					}, function(data) {
						document.write(data+"元");
					});
					
				</script></td>
				<td>${e.period }天</td>
				<td>${e.floor_amount }元</td>
				<td>${e.year_rate }%</td>
				<td><c:if test="${e.status==0 }">未发布</c:if> <c:if
						test="${e.status==1 }">募集中</c:if> <c:if test="${e.status==2 }">已结束</c:if>
				</td>
				<td><c:if test="${e.exper_status==0 }">否</c:if> <c:if
						test="${e.exper_status==1 }">是</c:if></td>
				<td>${e.create_date }</td>
				<td><input type="button" value="编辑/查看" class="btn"
					onclick="sub2(${e.id});" data-toggle="modal"
					data-target="#myModal2"><input type="button" value="查看投资"
					class="btn" data-toggle="modal"
					data-target="#myModal3" onclick="btn(${e.id})"></td>
			</tr>
		</c:forEach>
	</table>
	<script type="text/javascript">
		var obj = document.getElementById("tb");
		for (var i = 0; i < obj.rows.length; i++) {
			obj.rows[i].onmouseover = function() {
				this.style.background = "#0EF";
			}
			obj.rows[i].onmouseout = function() {
				this.style.background = "";
			};
		}
	</script>
</body>
</html>