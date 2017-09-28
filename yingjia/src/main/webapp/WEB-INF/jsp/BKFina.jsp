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
		document.forms[0].action="/yingjia/BKFina/list";
		document.forms[0].submit();
	}
function sub1(){
	document.forms[1].action="/yingjia/BKFina/save";
	document.forms[1].submit();
}
function sub3(){
	document.forms[2].action="/yingjia/BKFina/update";
	document.forms[2].submit();
}
function btn(id){
	$.getJSON(
			"/yingjia/BKFina/gettouzi?id="+id,
			function(list){
				$("#tt").empty();
				$("#tt").append("<tr><th>序号</th><th>姓名</th><th>联系电话</th><th>地址</th></tr>");
				for(var i=0;i<list.length;i++){
					$("#tt").append("<tr><td>"+(i+1)+"</td><td>"+list[i].name+"</td><td>"+list[i].phone+"</td><td>"+list[i].addr+"</td></tr>");
				}
			})
}
function sub2(id){
	$.getJSON(
			"/yingjia/BKFina/toupdate?id="+id,
			function(one){
				if(one.status!=0){
					alert("该标已募集，不可修改");
					window.location.reload();
				}
				$("#id").val(one.id);
				$("#name").val(one.name);
				$("#type").val(one.type);
				$("#amount").val(one.amount);
				$("#floor_amount").val(one.floor_amount);
				$("#period").val(one.period);
				$("#year_rate").val(one.year_rate);
				$("#ratio").val(one.ratio);
				$("#subscribe_count").val(one.subscribe_count);
				$("#product_topic").val(one.product_topic);
				$("#product_factor").val(one.product_factor);
				$("#product_strategy").val(one.product_strategy);
				$("#product_manager").val(one.product_manager);
				$("#create_date").val(one.create_date);
				$("#product_manager_name").val(one.product_manager_name);
				$("#product_manager_pic").val(one.product_manager_pic);
				$("#product_manager_title").val(one.product_manager_title);
				$("#product_manager_desc").val(one.product_manager_desc);
				$("#invest_points").val(one.invest_points);
				$("#sold_amount").val(one.sold_amount);
				$("#buyer_count").val(one.buyer_count);
				$("#start_date").val(one.start_date);
				$("#end_date").val(one.end_date);
				$("#contract").val(one.contract);
				$("#bank_account").val(one.bank_account);
			})
}
</script>
</head>
<body>
	<h2 style="margin-left: 10px">私募/股权</h2>
	<form action="/yingjia/BKFina/list" method="post"
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
			<option value="SIMU"
				<c:if test="${type=='SIMU' }">selected="true"</c:if>>私募</option>
			<option value="GUQUAN"
				<c:if test="${type=='GUQUAN' }">selected="true"</c:if>>股权</option>
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
						<form id="form" method="post" action="/yingjia/BKFina/save">
							<table border="0px">
								<tr>
									<td align="right">标的名称:</td>
									<td><input type="text" name="name" required></td>
								</tr>
								<tr>
									<td align="right">类型:</td>
									<td><select name="type">
											<option value="SIMU"
												<c:if test="${type=='SIMU' }">selected="true"</c:if>>私募类</option>
											<option value="GUQUAN"
												<c:if test="${type=='GUQUAN' }">selected="true"</c:if>>股权类</option>
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
									<td align="right">返佣比例:</td>
									<td><input type="number" name="ratio">%</td>
								</tr>
								
							</table>
							<div class="form-group" align="center">
								<button type="submit" class="btn btn-primary" onclick="sub1();">添加</button>
							</div>
						</form>
						<div class="panel-body"></div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- /.modal -->

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
							<form id="form1" method="post" action="/yingjia/BKFina/update">
								<input type="hidden" name="id" id="id"> <input
									type="hidden" name="subscribe_count" id="subscribe_count">
								<input type="hidden" name="product_topic" id="product_topic">
								<input type="hidden" name="product_factor" id="product_factor">
								<input type="hidden" name="product_strategy"
									id="product_strategy"> <input type="hidden"
									name="product_manager" id="product_manager"> <input
									type="hidden" name="create_date" id="create_date"> <input
									type="hidden" name="product_manager_name"
									id="product_manager_name"> <input type="hidden"
									name="product_manager_pic" id="product_manager_pic"> <input
									type="hidden" name="product_manager_title"
									id="product_manager_title"> <input type="hidden"
									name="product_manager_desc" id="product_manager_desc">
								<input type="hidden" name="invest_points" id="invest_points">
								<input type="hidden" name="sold_amount" id="sold_amount">
								<input type="hidden" name="buyer_count" id="buyer_count">
								<input type="hidden" name="start_date" id="start_date">
								<input type="hidden" name="end_date" id="end_date">  <input
									type="hidden" name="contract" id="contract"> <input
									type="hidden" name="bank_account" id="bank_account">
								<table border="0px">
									<tr>
										<td align="right">标的名称:</td>
										<td><input type="text" name="name" id="name" required></td>
									</tr>
									<tr>
										<td align="right">类型:</td>
										<td><select name="type" id="type">
												<option value="SIMU"
													>私募</option>
												<option value="GUQUAN"
													>股权</option>
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
									<tr>
										<td align="right">返佣比例:</td>
										<td><input type="number" name="ratio" id="ratio">%</td>
									</tr>
								</table>
								<div class="form-group" align="center">
									<button type="submit" class="btn btn-primary" onclick="sub3();">确定</button>
								</div>
							</form>
							<div class="panel-body"></div>
						</div>
					</div>
				</div>
			</div>
			</div>
			<!-- /.modal -->
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="container" style="margin-top: 50px;">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								签署状态
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
					<th>名称</th>
					<th>类型</th>
					<th>状态</th>
					<th>年化收益</th>
					<th>返佣比例</th>
					<th>投资期限</th>
					<th>起头金额</th>
					<th>添加时间</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${list }" var="e" varStatus="stat">
					<tr>
						<td>${stat.index+1 }</td>
						<td>${e.name }</td>
						<td><c:if test="${e.type=='SIMU'}">私募类</c:if> <c:if
								test="${e.type=='GUQUAN'}">股权类</c:if></td>
						<td><c:if test="${e.status==0 }">未发布</c:if> <c:if
								test="${e.status==1 }">募集中</c:if> <c:if test="${e.status==2 }">还款中</c:if>
							<c:if test="${e.status==3 }">还款完成</c:if></td>
						<td>${e.year_rate}%</td>
						<td>${e.ratio }%</td>
						<td>${e.period }天</td>
						<td>${e.floor_amount }</td>
						<td>${e.create_date }</td>
						<td><input type="button" value="编辑/查看" class="btn"
							onclick="sub2(${e.id});" data-toggle="modal"
							data-target="#myModal2"><input type="button" value=签署状态
							class="btn" onclick="btn(${e.id});" data-toggle="modal"
					data-target="#myModal3"></td>
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