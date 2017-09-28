<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<!-- //获取系统时间必须导入的 -->
<%@ page import="java.text.*"%>
<!--  获取系统时间必须导入的 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>企业网站模板</title>
<link rel="stylesheet" href="../assets/css/amazeui.css" />
<link rel="stylesheet" href="../assets/css/common.min.css" />
<link rel="stylesheet" href="../assets/css/contact.min.css" />

<script type="text/javascript" src="/resources/web/layer/layer.js"></script>
<script src="/resources/web/echart/dist/echarts.js"></script>
</head>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<link href="../assets/resources/css/common.css" rel="stylesheet">
<link href="../assets/resources/css/jw.css" rel="stylesheet">
<link href="../assets/resources/css/iconfont.css" rel="stylesheet">
<script src="../assets/resources/js/echarts.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />

<script type="text/javascript">
<%String datetime = new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar.getInstance().getTime()); //获取系统时间%>
<%String datetime1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); //获取系统时间%>
</script>
</head>
<body>
	<div class="layout">
		<!--===========layout-header================-->
		<div class="layout-header am-hide-sm-only">
			<!--topbar start-->
			<div class="topbar">
				<div class="container">
					<div class="am-g">
						<div class="am-u-md-3">
							<div class="topbar-left">
								<i class="am-icon-globe"></i>
								<div class="am-dropdown" data-am-dropdown>
									<button class="am-btn am-btn-primary am-dropdown-toggle"
										data-am-dropdown-toggle>
										Language<span class="am-icon-caret-down"></span>
									</button>
									<ul class="am-dropdown-content">
										<li><a href="#">English</a></li>
										<li class="am-divider"></li>
										<li><a href="#">中文</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="am-u-md-9">
							<div class="topbar-right am-text-right am-fr">
								加入我们 <i class="am-icon-facebook"></i> <i class="am-icon-twitter"></i>
								<i class="am-icon-google-plus"></i> <i class="am-icon-pinterest"></i>
								<i class="am-icon-instagram"></i> <i class="am-icon-linkedin"></i>
								<i class="am-icon-youtube-play"></i> <i class="am-icon-rss"></i>
								<c:if test="${empty Lname}">
									<a style="font-size:18px;float:right;margin-top:5px;color:#917739;" href="/yingjia/item2/login" tppabs="http://pro.ying158.com/web/login">登录</a>
                        <a style="font-size:18px;float:right;margin-right:15px;margin-top:5px;color:#917739;" href="/yingjia/item2/Register" tppabs="http://pro.ying158.com/web/regis">注册</a>
                </c:if>
								<c:if test="${not empty Lname}"> 欢迎您: ${Lname}
 <a style="font-size:18px;float:right;margin-top:5px;color:#917739;" href="/yingjia/item2/login" tppabs="http://pro.ying158.com/web/login">退出登录</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--topbar end-->


			<div class="header-box" data-am-sticky>
				<!--header start-->
				<div class="container">
					<div class="header">
						<div class="am-g">
							<div class="am-u-lg-2 am-u-sm-12">
								<div class="logo">
									<a href=""><img src="../assets/images/4.jpg" alt="" /></a>
								</div>
							</div>
							<div class="am-u-md-10">
								<div class="header-right am-fr">
									<div class="header-contact">
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6" class="contact-icon am-icon-phone"></i>
												<strong>0575-84085869</strong> <span>周一~周五, 8:00 -
													20:00</span>
											</div>
										</div>
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6"
													class="contact-icon am-icon-envelope-o"></i> <strong>13197176376@163.com</strong>
												<span>随时欢迎您的来信！</span>
											</div>
										</div>
										<div class="header_contacts--item">
											<div class="contact_mini">
												<i style="color: #7c6aa6"
													class="contact-icon am-icon-map-marker"></i> <strong>汉水华城</strong>
												<span>樊城区长虹路27号</span>
											</div>
										</div>
									</div>
									<a href="/Cornucopia/item/Contact" class="contact-btn">
										<button type="button"
											class="am-btn am-btn-secondary am-radius">联系我们</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--header end-->


				<!--nav start-->
				<div class="nav-contain">
					<div class="nav-inner">
						<ul class="am-nav am-nav-pills am-nav-justify">
							<li class=""><a class="item first" href="/yingjia/item2/home" tppabs="http://www.ying158.com/home">
							首页
						</a></li>
							<li><a class="item" href="/yingjia/item2/kcenter" tppabs="http://www.ying158.com/home/kcenter">
							网上体验中心
						</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="/Cornucopia/item/Product1">产品展示1</a></li>
									<li class="menu-item"><a href="/Cornucopia/item/Product2">产品展示2</a></li>
									<li class="menu-item"><a href="/Cornucopia/item/Product3">产品展示3</a></li>
								</ul> <!-- sub-menu end--></li>
							<li><a class="item" href="/yingjia/item2/subject" tppabs="http://pro.ying158.com/subject">
							产品中心
						</a></li>
							<li><a class="item" href="/yingjia/item2/mobileappdownload" tppabs="http://pro.ying158.com/mobileappdownload">
                            下载中心
                        </a></li>
							<li><a class="item" href="/yingjia/item2/NewsCenter" tppabs="http://www.ying158.com/Home/NewsCenter">
							新闻中心
						</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="/Cornucopia/item/NewsC">盈+商学院</a></li>
									<li class="menu-item"><a href="html/404-dark.html">行业动态</a></li>
									<li class="menu-item"><a href="html/404-light.html">精彩专题</a></li>
								</ul> <!-- sub-menu end--></li>
<!-- 							<li><a href="/Cornucopia/item/About">盈+商学院</a></li> -->
							<li><a class="item" href="/yingjia/item2/TradingSoftware" tppabs="http://www.ying158.com/UserGuide/TradingSoftware">
                            投研中心
                        </a></li>
							<li><a class="item last" href="/yingjia/item2/login" tppabs="http://pro.ying158.com/account/trades/profit/records">
							我的加法库
						</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="breadcrumb-box">
		<div class="am-container">
			<ol class="am-breadcrumb">
				<li><a href="/Cornucopia/item/Index">首页</a></li>
				<li class="/Cornucopia/item/Contact">联系我们</li>
			</ol>
		</div>
	</div>
	</div>

	<script type="text/javascript">
    $(function(){
        function showIn(url){
            var info="<div class='mydig'><div class='bg'></div><div class='imgbox'><a href="+url+"></a></div></div>";
            $('body').append(info);
        }
            if (1!=null&&1==0){
                showIn("/account/bbinInfo/getBbinInfo");
            }

    });

</script>

	<table height="160" class="peopleInfo" width="970" border="0"
		cellspacing="0" cellpadding="0">
		<tr>
			<td align="left" valign="middle" class="info"><a
				href="/Cornucopia/AG_UserPlay/Contact">
					<div class="img">
						<img src="../BgAssets/images/头像.png">
					</div>
					<h2>${Lname}<span>您好!</span>
					</h2>
			</a>
				<div class="safe">
					账户安全&nbsp;&nbsp;<span class="scroll"><em style="width: 50%"></em></span>
				</div>
				<ul class="listIco iconfont">
					<li class=""><a href="#1">&#xe61c;</a><em>&#xe61b;</em></li>
					<li class="active"><a href="#1">&#xe61d;</a><em>&#xe61b;</em></li>
					<!-- <li class=""><a href="#1">&#xe61f;</a><em>&#xe61b;</em></li> -->
					<li class="active"><a href="#1">&#xe61a;</a><em>&#xe61b;</em></li>
					<li class=""><a href="#1">&#xe61e;</a><em>&#xe61b;</em></li>
				</ul></td>
			<td align="right"><a href="/Cornucopia/item/Login1" class="loginOut"><span
					class="iconfont">&#xe618;</span>安全退出</a></td>
		</tr> 
	</table>
	<div class="countBox">
		<ul>
			<li><h2>${MAccount.useable_balance}</h2>
				<p>
					账户可用余额(元)<a href="javascript:;" class="glyphicon glyphicon-search"><span>账户可用余额</span><i></i></a>
				</p></li>
			<li><h2>${MAccount.useable_balance+MAccount.total_profit+MAccount.invest_amount}</h2>
				<p>
					账户总资产(元)<a href="javascript:;" class="glyphicon glyphicon-search"><span>可用余额+投资金额+累计收益</span><i></i></a>
				</p></li>
			<li><h2 style="color: #9d8440">${MAccount.invest_amount}</h2>
				<p>
					投资金额(元)<a href="javascript:;" class="glyphicon glyphicon-search"><span>投资中资金</span><i></i></a>
				</p></li>
			<li><h2 style="color: #9d8440">${MAccount.total_profit}</h2>
				<p>
					累计收益(元)<a href="javascript:;" class="glyphicon glyphicon-search"><span>累计收益</span><i></i></a>
				</p></li>
			<li><h2 style="color: #9d8440">${MAccount.imuseale_balance}</h2>
				<p>
					冻结金额(元)<a href="javascript:;" class="glyphicon glyphicon-search"><span>提现冻结金额</span><i></i></a>
				</p></li>
		</ul>
		<a   class="cz"  href="/Cornucopia/AG_UserPlay/GoRecharge" >充值 </a>
		 <a href="#wytk" onclick="fun()" class="tk" data-toggle="tab">提现 </a>
	</div>
	<script type="text/javascript">
		function fun(){
			$(window).scrollTop(300);
		  
		}
</script>
	<ul id="myTab" class="nav nav-pills nav-stacked"
		style="width: 200px; margin-top: 30px; margin-left: 350px;">
		<h4>我的投资</h4>
		<li class="active"><a href="#touzi" data-toggle="tab"> 投资记录</a></li>
		<li><a href="#yuyue" data-toggle="tab">预约记录</a></li>
		<li><a href="#jine" data-toggle="tab">充值记录 </a></li>
		<li><a href="#shouyi" data-toggle="tab">收益记录 </a></li>
		<li><a href="#tikuan" data-toggle="tab">提款记录 </a></li>
		<li><a href="#tiyan" data-toggle="tab">体验金记录 </a></li>
		<h4>我的账户</h4>
		<li><a href="#aqxx" data-toggle="tab">安全信息 </a></li>
		<li><a href="#wytk" data-toggle="tab">我要提款 </a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="touzi"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 800px;">
			<table class="table" width="700px" id="t_student" >
			
				<caption>
					<h4>投资记录</h4>
				</caption>
				<thead>
					<tr>
						<th>订单编号</th>
						<th>标的名称</th>
						<th>金额</th>
						<th>预期收益</th>
						<th>状态</th>
						<th>购买时间</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${subjectPurchaseRecor}" var="s" varStatus="stat">
						<tr class="success">
							<td>${s.serial_number }</td>
							<td>${s.subject.name}</td>
							<td>${s.amount}</td>
							<td>${s.interset }</td>
							<td><c:if test="${ s.ispayment==0}">投资中</c:if>
								<c:if test="${ s.ispayment==1}"> 已还款</c:if></td>
							<td>${s.create_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="gridItem" style=" padding: 5px; width: 300px; float: left; text-align: left; height: 30px; line-height:30px; font-size: 15px;" > 
			        共有 <span id="spanTotalInfor" style="color: red;font-weight: bold;"></span> 条记录 ,    
			        当前第 <span id="spanPageNum" style="color: red;font-weight: bold;"></span> 页    , 
			        共 <span id="spanTotalPage" style="color: red;font-weight: bold;"></span> 页
		    </div>
    		<div class="gridItem" style="margin-left:45px;  padding: 5px; width: 400px; float: left; text-align: center; height: 30px; line-height:30px; vertical-align: middle; font-size: 15px;">   
	            <span id="spanFirst" >首页</span> 
	            <span id="spanPre">上一页</span>
	            <span id="spanInput" style="margin: 0px; padding: 0px 0px 4px 0px; height:100%; "> 
                	第<input id="Text1" type="text" class="TextBox" onkeyup="changepage()"   style="height:20px; text-align: center;width:50px" />页 
            	</span>
	            <span id="spanNext">下一页</span> 
	            <span  id="spanLast">尾页</span> 
        	</div>
		</div>
		<div class="tab-pane fade" id="yuyue"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px" height="250px;">
				<caption>
					<h4>预约记录</h4>
				</caption>
				<thead>
					<tr>
						<th>标的名称</th>
						<th>金额</th>
						<th>预期收益</th>
						<th>状态</th>
						<th>预约时间</th>
						<th>下载</th>
					</tr>
				</thead>
				<tbody>
					<tr class="active">
						<td>产品1</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>23/11/2013</td>
						<td>待发货</td>
					</tr>
					<tr class="success">
						<td>产品1</td>
						<td>产品2</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>10/11/2013</td>
						<td>发货中</td>
					</tr>
					<tr class="warning">
						<td>产品1</td>
						<td>产品3</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>20/10/2013</td>
						<td>待确认</td>
					</tr>
					<tr class="danger">
						<td>产品1</td>
						<td>产品4</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>20/10/2013</td>
						<td>已退货</td>
					</tr>
					<tr class="active">
						<td>产品1</td>
						<td>产品4</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>20/10/2013</td>
						<td>已退货</td>
					</tr>
					<tr class="active">
						<td>产品1</td>
						<td>产品4</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>20/10/2013</td>
						<td>已退货</td>
					</tr>
					<tr class="active">
						<td>产品1</td>
						<td>产品4</td>
						<td>产品1</td>
						<td>产品1</td>
						<td>20/10/2013</td>
						<td>已退货</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="jine"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>充值记录</h4>
				</caption>
				<thead>
					<tr>
						<th>订单号</th>
						<th>充值金额</th>
						<th>充值状态</th>
						<th>充值时间</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberDepositRecord}" var="m" varStatus="stat">
						<tr class="active">
							<td>${m.serial_number}</td>
							<td>${m.amount}</td>
							<td><c:if test="${ m.status==0}">充值失败</c:if>
								<c:if test="${ m.status==1}">充值成功</c:if></td>
							<td>${ m.create_date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="shouyi"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px" >
				<caption>
					<h4>收益记录</h4>
				</caption>
				<thead>
					<tr>
						<th>订单号</th>
						<th>收益日期</th>
						<th>收益金额</th>
						<th>备注</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${subjectPurchaseRecor}" var="s1"
						varStatus="stat">
						<c:if test="${ s1.ispayment==1}">
							<tr class="success">
								<td>${s1.serial_number }</td>
								<td>${s1.create_date}</td>
								<td>${s1.interset }</td>
								<td>${s1.subject.name}</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="tikuan"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>提款记录</h4>
				</caption>
				<thead>
					<tr>
						<th>订单号</th>
						<th>提款日期</th>
						<th>提款金额</th>
						<th>提款状态</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${membeWithdrawRecord}" var="mw" varStatus="stat">
						<tr class="active">
							<td>${mw.serial_number}</td>
							<td>${mw.create_date}</td>
							<td>${mw.amount}</td>
							<td><c:if test="${mw.status==0}">待审核</c:if> <c:if
									test="${mw.status==1}">已打款</c:if> <c:if test="${mw.status==2}">打款中</c:if>
								<c:if test="${mw.status==3}">审核失败</c:if></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="tiyan"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>体验金记录</h4>
				</caption>
				<thead>
					<tr>
						<th>产品</th>
						<th>付款日期</th>
						<th>状态</th>
					</tr>
				</thead>
				<tbody>
					<tr class="active">
						<td>产品1</td>
						<td>23/11/2013</td>
						<td>待发货</td>
					</tr>
					<tr class="success">
						<td>产品2</td>
						<td>10/11/2013</td>
						<td>发货中</td>
					</tr>
					<tr class="warning">
						<td>产品3</td>
						<td>20/10/2013</td>
						<td>待确认</td>
					</tr>
					<tr class="danger">
						<td>产品4</td>
						<td>20/10/2013</td>
						<td>已退货</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="tab-pane fade" id="aqxx"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>安全信息</h4>
				</caption>
                    	<table class="safeTable" width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                             
	                            <td class="first"><span class="iconfont active"><a href="#1">&#xe61c;</a><em>&#xe61b;</em></span></td>
	                            <td><p style="color:#ff503f">实名认证</p></td>
	                           <td> ${fn:substring(member.member_name,0,1)}**</td>
	                            <td><p style="color:#888">保障账户安全，实名认证才能充值提款</p></td>
	                            <td>认证完成</td>					 
                          </tr>
							<tr>
									<td class="first"><span class="iconfont active"><a href="#1">&#xe61c;</a><em>&#xe61b;</em></span></td>
									<td><p style="color:#ff503f">绑卡认证</p></td>
									 <td> ${fn:substring(memberBankcards.card_no,1,5)}*****${fn:substring(memberBankcards.card_no,11,19)}</td>
									<td><p style="color:#888">保障账户安全，绑卡认证才能充值提款</p></td>
										<c:if test="${memberBankcards.id>0}">
									<td><a href="#chakan"  class="tk" data-toggle="tab">查看绑定  </a></td></c:if>
									<td><c:if test="${memberBankcards.id==null}">
									 <a href="#wytk" data-toggle="tab">立即绑定 </a></c:if>
				</td>					
							</tr>
							
                          <tr>
                            <td class="first"><span class="iconfont active"><a href="#1">&#xe61d;</a><em>&#xe61b;</em></span></td>
                            <td><p style="color:#ff503f">绑定手机</p></td>
                            <td>${fn:substring(member.mobile_Phone,0,7)}******</td>
                            <td><p style="color:#888">手机号码是您在盈+金融的重要身份凭证</p></td>
                            <td>绑定完成</td>
                          <tr>
                            <td class="first"><span class="iconfont active"><a href="#1">&#xe61a;</a><em>&#xe61b;</em></span></td>
                            <td><p style="color:#ff503f">登录密码</p></td>
                            <td>已设置</td>
                            <td><p style="color:#888">登录盈+金融网站时需要输入的密码</p></td>
                            <td><a href="#ggmm" data-toggle="tab">更改密码 </a></td>
                          </tr>
                          <tr>
                              
	                            <td class="first"><span class="iconfont"><a href="#1">&#xe61e;</a><em>&#xe61b;</em></span></td>
	                            <td><p style="color:#ff503f">提款密码</p></td>
	                           <c:if test="${member.withdraw_password==null}"><td style="color: red"> 未绑定</td></c:if>
	                            <c:if test="${ not empty member.withdraw_password}"><td style="color: blue"> 已绑定</td></c:if>
	                            <td><p style="color:#888">保障资金安全，提款需要设置提款密码</p></td>
	                           	<td><a href="#txmm"  class="tk" data-toggle="tab">查看 </a></td>					 
                          </tr>
                        </table>
			</table>
		</div>
		<script type="text/javascript">
		function ss(){
			 var s = $("#error").val(); 
			 var s1 = $("#error1").val(); 
			 var s2 = $("#error2").val(); 
			 var bank = $("#bank").val(); 
			 
			if(s==-1||s1==-1||s2==-1){
			alert("请选择正确的地址");
			return false;
			}
			if(bank==""){
				alert("请填写正确的银行卡号");
				
				return false;
			}
			 var reg=/^[0-9]{16,19}$/ 
			 if(!reg.test(bank)){    
		            alert("对不起，您输入的银行卡不正确!");//请将“英文字母类型”改成你需要验证的属性名称!    
		            return false;
			 }  
			
			alert("绑定成功！ 您的卡号为"+bank);
			return true;
			}
		</script>
		<div class="tab-pane fade" id="ggmm"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>更改密码</h4>
					  <div class="panel panel-default">
					     <div class="panel-body">
                       	<form id="formcc" method="post"  action="/Cornucopia/AgUserItem/updatepass">
                    
                            <div class="form-group">
                                <label>输入旧密码:</label>
                               <input  type="text" class="form-control" placeholder="请输入旧密码" name="password" />
                            </div>
                             <div class="form-group">
                                <label>输入新密码:</label>
                               <input  type="text" class="form-control" placeholder="请输入新密码" name="repassword" />
                            </div>
                             <div class="form-group">
                                <label>确认新密码:</label>
                               <input  type="text" class="form-control" placeholder="确认新密码" name="repassword1" />
                            </div>
                            
	                       <input style="display: none;"name="update_date" value="<%=datetime%>">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">立即添加</button>
                                 <button href="#aqxx"" data-toggle="tab" class="btn btn-primary">关闭</button>
                            </div>
                            
                        </form>
                    </div>
                      </div>
				</caption>
			</table>
		</div>
		<div class="tab-pane fade" id="txmm"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>更改提款密码</h4>
					  <div class="panel panel-default">
					     <div class="panel-body">
                       	<form id="formtkmm" method="post"  action="/Cornucopia/AgUserItem/updawd">
                       <c:if test="${ not empty member.withdraw_password}">
                            <div class="form-group">
                                <label>输入旧密码:</label>
                               <input  type="text" class="form-control" name="withdraw_password"  />
                            </div></c:if>
                             <div class="form-group">
                                <label>输入新提款密码:</label>
                               <input  type="text" class="form-control" placeholder="请输入新提款密码" name="rewithdraw_password1" />
                            </div>
                             <div class="form-group">
                                <label>确认新提款密码:</label>
                               <input  type="text" class="form-control" placeholder="确认新提款密码" name="rewithdraw_password2" />
                            </div>
                            
	                       <input style="display: none;"name="update_date" value="<%=datetime%>">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">立即添加</button>
                            <button href="#aqxx"" data-toggle="tab" class="btn btn-primary">关闭</button>
                            </div>
                        </form>
                    </div>
                      </div>
				</caption>
			</table>
		</div>
		<div class="tab-pane fade" id="chakan"
			style="margin-left: 600px; margin-top: -450px; width: 700px; height: 600px;">
			<table class="table" width="700px">
				<caption>
					<h4>更改提款密码</h4>
					  <div class="panel panel-default">
					     <div class="panel-body">
                            <div class="form-group">
                                <label>您的卡号</label>
                               <input  type="text" class="form-control"  readonly="readonly" value="${memberBankcards.card_no}"  />
                            </div>
                             <div class="form-group">
                                <label>开户人姓名</label>
                               <input  type="text" class="form-control"readonly="readonly" value="${member.member_name}"  />
                            </div>
                             <div class="form-group">
                                <label>开户地址</label>
                               <input  type="text" class="form-control" readonly="readonly"  value="${memberBankcards.cardaddress}" />
                            </div>
                            <div class="form-group">
                                <button href="#aqxx"" data-toggle="tab">关闭</button>
                            </div>
                    </div>
                      </div>
				</caption>
			</table>
		</div>
		<div class="tab-pane fade" id="wytk"
			style="margin-left: 600px; margin-top: -450px; width: 500px; height: 600px;">
			<caption>
				<h4>我要提款</h4>
			</caption>
			<div style="padding: 50px 50px 10px;">
				<c:if test="${memberBankcards.id==null}">
				<form id="yinhangka" method="post" action="/Cornucopia/AgUserItem/toBank" onsubmit="return ss()">
					  <input type="hidden" name="dz1" class="dz1"/>
					    <input type="hidden" name="dz2" class="dz2"/>
					      <input type="hidden" name="dz3" class="dz3"/>
					      <div class="form-group" >
					<div class="input-group">
						<span class="input-group-addon">绑定银行卡</span> <input type="text"
							class="form-control" placeholder="请输入银行卡号" id="bank" name="card_no">
					</div></div><br>
					<div class="form-group" style="margin-top: 10px;">
						开户银行： <select class="form-control" id="type" name="type">
							<option value="工商银行" selected="selected">工商银行</option>
							<option value="光大银行">光大银行</option>
							<option value="广发银行">广发银行</option>
							<option value="华夏银行">华夏银行</option>
							<option value="建设银行">建设银行</option>
							<option value="交通银行">交通银行</option>
							<option value="民生银行">民生银行</option>
							<option value="农业银行">农业银行</option>
							<option value="浦发银行">浦发银行</option>
							<option value="兴业银行">兴业银行</option>
							<option value="邮政储蓄">邮政储蓄</option>
							<option value="招商银行">招商银行</option>
							<option value="中国银行">中国银行</option>
							<option value="中信银行">中信银行</option>
						</select> 
					</div>
					<br>
							<input type="hidden" value="<%=datetime1%>" name="datebank">
					<div class="form-group" style="margin-top: 10px;">
					 <select id="error" name="error" class="form-control"  style="width: 130px;" onchange="fun2()">
					  <option  id="oid1" value="-1"  selected="selected" >请选择</option>
              <c:forEach items="${sysregion}" var="sysregion" >
          <option  id="oid" value="${sysregion.ID}"  >${sysregion.name}</option>
        </c:forEach>
       </select>
       </div>
       <div class="form-group" style="margin-top: -49px; margin-left: 150px">
       	 <select id="error1" name="error1" class="form-control"  style="width: 130px;" onchange="fun3()">
          <option  id="oid1" value="-1"  selected="selected"  >请选择</option>
       	  </select>
       	  </div>
       	  <div class="form-group" style="margin-top: -49px; margin-left: 300px">
       	 <select id="error2" name="error2"  class="form-control" style="width: 130px;"  onchange="fun5()">
          <option id="oid2" value="-1"  selected="selected"  >请选择</option>
         </select>
         </div>
        <input type="submit" class="btn btn-default" value="立即绑定">
       
					</form>
				</c:if>
				<c:if test="${memberBankcards.id>0}">
					<div class="panel panel-default">
						<div class="panel-heading">
							<div class="panel-body">
								<form class="bs-example bs-example-form" role="form"
									id="formupdate" method="post" action="/Cornucopia/Wi/statu">
									<div class="input-group">
										<span class="input-group-addon">账户余额</span>
										<div class="input-group">
											<input type="text" class="form-control" id="kyje"
												value="${MAccount.useable_balance}" readonly="readonly">
											<span class="input-group-addon">.00</span>
										</div>
									</div>
									<br>

									<div class="input-group">
										<span class="input-group-addon" >${memberBankcards.type}</span>
										<input type="text" class="form-control"
											placeholder="${memberBankcards.card_no}" readonly="readonly" name="bank_card">
									</div>
									<br>
									<input type="hidden" value="<%=datetime%>" name="serial_number">
									<input type="hidden" value="<%=datetime1%>" name="date">
									<input type="hidden" value="${memberBankcards.type}" name="bank_name">
								<input type="hidden" value="${memberBankcards.cardaddress}" name="cardaddress">
									
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">提款金额</span> <input
												type="text" class="form-control" id="tkje" name="amount">
										</div>
									</div>
									<c:if test="${member.withdraw_password==null}">
									c
									</c:if>
											<c:if test="${not empty member.withdraw_password}">
									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon">提款密码</span> <input
												type="text" class="form-control" placeholder="提款密码" name="withdraw_password">
										</div>
									</div>
									</c:if>
									<br>
									<button type="submit" class="btn btn-default"
										onclick="func(${MAccount.useable_balance})">申请提现</button>
								</form>
							</div>
						</div>
					</div>

				</c:if>
			</div>
		</div>
	</div>
	<script>
	$(function () {
		 $('#formupdate').bootstrapValidator({feedbackIcons: {valid: 'glyphicon glyphicon-ok',invalid: 'glyphicon glyphicon-remove',validating: 'glyphicon glyphicon-refresh' },
		        fields: {
		        	withdraw_password: {
		                 message: '密码无效',
		                 validators: {
		                	 notEmpty: {
		                         message: '密码不能为空'
		                     },
		                     threshold :  11 ,
		                     remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
		                         url: '/Cornucopia/PM_UsersItem/withdraw_password',
		                         message: '密码不匹配',//提示消息
		                         delay :  10000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
		                         type: 'POST',//请求方式
		                          
		                     },
		                     regexp: {//匹配规则
		                         regexp: /^[a-zA-Z0-9_\.]+$/,
		                         message: '密码不能为中文'
		                     }
		                 }
		             },
		             amount: {
		                 message: '金额无效',
		                 validators: {
		                	 notEmpty: {
		                         message: '密码不能为空'
		                     },
		                     regexp: {
				                 regexp: "^[1-9][0-9]*$",
				                 message: '请输入正确的金额'
				             }
		                 }
		             }
		        }
		    });
		});
		 $('#formtkmm').bootstrapValidator({feedbackIcons: {valid: 'glyphicon glyphicon-ok',invalid: 'glyphicon glyphicon-remove',validating: 'glyphicon glyphicon-refresh' },
		        fields: {
		        	withdraw_password: {
		                 message: '密码无效',
		                 validators: {
		                     stringLength: {
		                         min: 4,
		                         max: 30,
		                         message: '密码长度必须在4到30之间'
		                     },
		                     threshold :  11 ,
		                     remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
		                         url: '/Cornucopia/PM_UsersItem/withdraw_password',
		                         message: '旧密码不匹配',//提示消息
		                         delay :  10000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
		                         type: 'POST',//请求方式
		                          
		                     },
		                     regexp: {//匹配规则
		                         regexp: /^[a-zA-Z0-9_\.]+$/,
		                         message: '密码不能为中文'
		                     }
		                 }
		             },
		             rewithdraw_password1: {
		                 message: '密码无效',
		                 validators: {
		                     notEmpty: {
		                         message: '密码名不能为空'
		                     },
		                     stringLength: {
		                         min: 4,
		                         max: 30,
		                         message: '密码长度必须在4到30之间'
		                     },
		                     regexp: {//匹配规则
		                         regexp: /^[a-zA-Z0-9_\.]+$/,
		                         message: '密码不能为中文'
		                     },
		                     identical: {//相同
		                         field: 'rewithdraw_password2',
		                         message: '两次密码不一致'
		                     }
		                 }
		             },
		             rewithdraw_password2: {
		                 message: '密码无效',
		                 validators: {
		                     notEmpty: {
		                         message: '密码名不能为空'
		                     },
		                     stringLength: {
		                         min: 4,
		                         max: 30,
		                         message: '密码长度必须在4到30之间'
		                     },
		                     identical: {//相同
		                         field: 'rewithdraw_password1',
		                         message: '两次密码不一致'
		                     },
		                     regexp: {//匹配规则
		                         regexp: /^[a-zA-Z0-9_\.]+$/,
		                         message: '密码不能为中文'
		                     }
		                 }
		             }
		            
		        }
		    });
		 $('#yinhangka').bootstrapValidator({feedbackIcons: {valid: 'glyphicon glyphicon-ok',invalid: 'glyphicon glyphicon-remove',validating: 'glyphicon glyphicon-refresh' },
		        fields: {
		        	card_no: {
		                 message: '密码无效',
		                 validators: {
		                     stringLength: {
		                         min: 16,
		                         max: 19,
		                         message: '卡号长度必须在16到19之间'
		                     },
		                     threshold :  11 ,
		                     remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
		                         url: '/Cornucopia/AgUserItem/getMemberBK',
		                         message: '该卡已经绑定',//提示消息
		                         delay :  10000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
		                         type: 'POST',//请求方式
		                          
		                     }
		                 }
		             }
		            
		        }
		    });
	    $('#formcc').bootstrapValidator({feedbackIcons: {valid: 'glyphicon glyphicon-ok',invalid: 'glyphicon glyphicon-remove',validating: 'glyphicon glyphicon-refresh' },
	        fields: {
	             password: {
	                 message: '密码无效',
	                 validators: {
	                     notEmpty: {
	                         message: '密码名不能为空'
	                     },
	                     stringLength: {
	                         min: 4,
	                         max: 30,
	                         message: '密码长度必须在4到30之间'
	                     },
	                     threshold :  11 ,
	                     remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                         url: '/Cornucopia/PM_UsersItem/password',
	                         message: '旧密码不匹配',//提示消息
	                         delay :  10000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
	                         type: 'POST',//请求方式
	                          
	                     },
	                     regexp: {//匹配规则
	                         regexp: /^[a-zA-Z0-9_\.]+$/,
	                         message: '密码不能为中文'
	                     }
	                 }
	             },
	             repassword: {
	                 message: '密码无效',
	                 validators: {
	                     notEmpty: {
	                         message: '密码名不能为空'
	                     },
	                     stringLength: {
	                         min: 4,
	                         max: 30,
	                         message: '密码长度必须在4到30之间'
	                     },
	                     regexp: {//匹配规则
	                         regexp: /^[a-zA-Z0-9_\.]+$/,
	                         message: '密码不能为中文'
	                     }
	                 }
	             },
	             repassword1: {
	                 message: '密码无效',
	                 validators: {
	                     notEmpty: {
	                         message: '密码名不能为空'
	                     },
	                     stringLength: {
	                         min: 4,
	                         max: 30,
	                         message: '密码长度必须在4到30之间'
	                     },
	                     identical: {//相同
	                         field: 'repassword',
	                         message: '两次密码不一致'
	                     },
	                     regexp: {//匹配规则
	                         regexp: /^[a-zA-Z0-9_\.]+$/,
	                         message: '密码不能为中文'
	                     }
	                 }
	             }
	            
	        }
	    });
	function fun2(){
		 var s1 = $("#error").val(); 
		 $(".dz1").val($("#error").find("option:selected").text()); 
		 var s2=0;
		 $("#error1").empty(); 
		 $.post("/Cornucopia/AgUserItem/queryInfo",{"id":s1},function(msg){
			 var city=$("#error1");
			 ws2=msg[0].id;
			 for(var i=0;i<msg.length;i++){
				 var option=new Option(msg[i].name,msg[i].id);
				 city.append(option);
				 $(".dz2").val($("#error1").find("option:selected").text()); 
			 }
			 $("#error2").empty(); 
			 fun4(ws2);
		 });
	}function fun4(ws2){
		 $("#error2").empty(); 
		 $("#d3").val($("#error2").find("option:selected").text()); 
		 $.post("/Cornucopia/AgUserItem/queryInfo",{"id":ws2},function(msg){
			 var city=$("#error2");
			 for(var i=0;i<msg.length;i++){
				 //创建一个html标签
				 var option=new Option(msg[i].name,msg[i].id);
				 city.append(option);
				 $(".dz3").val($("#error2").find("option:selected").text()); 
			 }
			 $("#error3").empty(); 
			 fun5();
		 });
	}
	function fun3(){
		 var s1 = $("#error1").val(); 
		 $(".dz2").val($("#error1").find("option:selected").text()); 
		 $("#error2").empty(); 
		 $.post("/Cornucopia/AgUserItem/queryInfo",{"id":s1},function(msg){
			 var city=$("#error2");
			 for(var i=0;i<msg.length;i++){
				 //创建一个html标签
				 var option=new Option(msg[i].name,msg[i].id);
				 city.append(option);
				 $(".dz3").val($("#error2").find("option:selected").text()); 
				 
			 }
		 });
	}
	function fun5(){
		 $(".dz3").val($("#error2").find("option:selected").text()); 
	}
	
	$(function () {
      $('#myTab li:eq(1) a').tab('show');
   });
   function func(box) {
		$('#formupdate').bootstrapValidator({
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				amount : {
					validators : {
						notEmpty : {
							message : '备注不能为空'
						},
						  numeric: {message: '提款金额只能输入数字'},  
				}
			}
			}
		});
	};
   
   </script>

	<!--===========layout-container================-->
	<div class="layout-footer">
		<div class="footer">
			<div style="background-color: #383d61" class="footer--bg"></div>
			<div class="footer--inner">
				<div class="container">
					<div class="footer_main">
						<div class="am-g">
							<div class="am-u-md-3 ">
								<div class="footer_main--column">
									<strong class="footer_main--column_title">关于我们</strong>
									<div class="footer_about">
										<p class="footer_about--text">云适配(AllMobilize Inc.)
											是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立.
										</p>
										<p class="footer_about--text">
											云适配跨屏云也成功应用于超过30万家企业网站，包括微软、联想等世界500强企业</p>
									</div>
								</div>
							</div>

							<div class="am-u-md-3 ">
								<div class="footer_main--column">
									<strong class="footer_main--column_title">产品中心</strong>
									<ul class="footer_navigation">
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">Enterplorer 企业浏览器</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">Xcloud 网站跨屏云</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
									</ul>
								</div>
							</div>

							<div class="am-u-md-3 ">
								<div class="footer_main--column">
									<strong class="footer_main--column_title">技术支持</strong>
									<ul class="footer_navigation">
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">企业移动信息化白皮书</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">企业移动信息化白皮书</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">企业移动信息化白皮书</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">企业移动信息化白皮书</a></li>
										<li class="footer_navigation--item"><a href="#"
											class="footer_navigation--link">企业移动信息化白皮书</a></li>
									</ul>
								</div>
							</div>

							<div class="am-u-md-3 ">
								<div class="footer_main--column">
									<strong class="footer_main--column_title">联系详情</strong>
									<ul class="footer_contact_info">
										<li class="footer_contact_info--item"><i
											class="am-icon-phone"></i><span>服务专线：400 069 0309</span></li>
										<li class="footer_contact_info--item"><i
											class="am-icon-envelope-o"></i><span>yunshipei.com</span></li>
										<li class="footer_contact_info--item"><i
											class="am-icon-map-marker"></i><span>北京市海淀区海淀大街27号天使大厦（原亿景大厦）三层</span></li>
										<li class="footer_contact_info--item"><i
											class="am-icon-clock-o"></i><span>更多模板 <a
												href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
												- Collect from <a href="http://www.cssmoban.com/"
												title="网页模板" target="_blank">网页模板</a></span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../assets/js/amazeui.js" charset="utf-8"></script>
	<script type="text/javascript">
            var theTable = document.getElementById("t_student");
            var txtValue = document.getElementById("Text1").value;
            function changepage() {
                var txtValue2 = document.getElementById("Text").value;
                if (txtValue != txtValue2) {
                    if (txtValue2 > pageCount()) {

                    }
                    else if (txtValue2 <= 0) {

                    }
                    else if (txtValue2 == 1) {
                        first();
                    }
                    else if (txtValue2 == pageCount()) {
                        last();
                    }
                    else {
                        hideTable();
                        page = txtValue2;
                        pageNum2.value = page;

                        currentRow = pageSize * page;
                        maxRow = currentRow - pageSize;
                        if (currentRow > numberRowsInTable) currentRow = numberRowsInTable;
                        for (var i = maxRow; i < currentRow; i++) {
                            theTable.rows[i].style.display = '';
                        }
                        if (maxRow == 0) { preText(); firstText(); }
                        showPage();
                        nextLink();
                        lastLink();
                        preLink();
                        firstLink();
                   }

                    txtValue = txtValue2;
                }
            }    </script>    <script src="../assets/js/Pagging2.js"></script>
</body>

</html>
