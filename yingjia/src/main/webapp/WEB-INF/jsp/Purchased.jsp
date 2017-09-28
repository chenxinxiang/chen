<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" href="../assets/css/news.min.css" />
<link rel="stylesheet" href="../assets/css/product.min.css" />
<link href="../assets/css/iconfont.css" rel="stylesheet" type="text/css" />
<link href="../assets/css/common1.css" rel="stylesheet">
<link href="../assets/css/jw.css" rel="stylesheet">
<script type="text/javascript" src="../assets/js/layer.js"></script>
<script src="../assets/js/echarts.js"></script>
<link href="../assets/css/jj/jw.css" rel="stylesheet">
<script type="text/javascript" src="../assets/js/hm.js"></script>
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />

<script>
	
<%String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()); //获取系统时间%>
	function fun(id,name,qian){
		var qc=	$("#mytext").val();
		var yue=qian;
		var exp = /^([1-9][\d]{0,7}|0)(\.[\d]{1,2})?$/;
		  if(!exp.test(qc)){
				document.getElementById("li5").style.display="none";
				document.getElementById("li7").style.display="none";
				document.getElementById("li6").style.display="none";
				document.getElementById("li4").style.display="none";
				document.getElementById("li8").style.display="";
				return false;
			    }
		if(qc>yue){
			document.getElementById("li5").style.display="none";
			document.getElementById("li7").style.display="none";
			document.getElementById("li4").style.display="none";
			document.getElementById("li8").style.display="none";
			document.getElementById("li6").style.display="";
			return false;
		}
		if(qc==""||qc==0){
			document.getElementById("li5").style.display="none";
			document.getElementById("li4").style.display="none";
			document.getElementById("li6").style.display="none";
			document.getElementById("li8").style.display="none";
			document.getElementById("li7").style.display="";
			return false;
		}
		if(name==null||name==""){
			document.getElementById("li4").style.display="none";
			document.getElementById("li7").style.display="none";
			document.getElementById("li6").style.display="none";
			document.getElementById("li8").style.display="none";
			document.getElementById("li5").style.display="";
			return false;
		} if(id<1){
			document.getElementById("li5").style.display="none";
			document.getElementById("li7").style.display="none";
			document.getElementById("li6").style.display="none";
			document.getElementById("li8").style.display="none";
			document.getElementById("li4").style.display="";
			return false;
		}else{
			return true;
		}
		 
		
		
	}
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
									<a href="/Cornucopia/item/Login1">登录</a>
									<a href="/Cornucopia/item/Register">注册</a>
								</c:if>
								<c:if test="${not empty Lname}"> 欢迎您: ${Lname}
 <a href="/Cornucopia/item/Login1">退出登陆</a>
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
							<li class=""><a href="/Cornucopia/item/Index">首页</a></li>
							<li><a href="#">网上体验中心</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="/Cornucopia/item/Product1">产品展示1</a></li>
									<li class="menu-item"><a href="/Cornucopia/item/Product2">产品展示2</a></li>
									<li class="menu-item"><a href="/Cornucopia/item/Product3">产品展示3</a></li>
								</ul> <!-- sub-menu end--></li>
							<li><a href="/Cornucopia/AGSub/subject">产品中心</a></li>
							<li><a href="/Cornucopia/item/Solution">下载中心</a></li>
							<li><a href="/Cornucopia/item/News">新闻中心</a> <!-- sub-menu start-->
								<ul class="sub-menu">
									<li class="menu-item"><a href="/Cornucopia/item/NewsC">盈+商学院</a></li>
									<li class="menu-item"><a href="html/404-dark.html">行业动态</a></li>
									<li class="menu-item"><a href="html/404-light.html">精彩专题</a></li>
								</ul> <!-- sub-menu end--></li>
							<li><a href="/Cornucopia/item/About">盈+商学院</a></li>
							<li><a href="/Cornucopia/item/Join">投研中心</a></li>
							<li><a href="/Cornucopia/item/Contact">我的加法库</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<form action="/Cornucopia/AG_UserPlay/GoPlay"  method="post" id="formid"   onsubmit="return fun('${memberBankcards[0].id}','${ Lname}',${memberAccount.useable_balance})">
	<div class="proMain">
		<div class="conTit">
			<span><a style="color: #9d8440;" href="/subject">其他标的</a></span>
			<h2>
				<em>￥</em>${subject.name}
				<!-- 交易流水号 --><input type="hidden" name="subject_id" value="${subject.id}">
				<!-- 购买人id --><input type="hidden" name="memberName" value=" ${Lname}">
					<!-- 购买标的类别 --><input type="hidden" name="trade_type" value="${subject.type}">
					<!-- 交易流水号 --><input type="hidden" name="Trade_no" value="<%=datetime%>">
					<!-- 交易流水号 --><input type="hidden" name="create_date" value="<%=datetime%>">
					<!-- 交易流水号 --><input type="hidden" name="update_date" value="<%=datetime%>">
					
			
			</h2>
		</div>
		<table class="conTable" width="100%" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td class="txtInfo" >
					<div class="txt1">
						<h2>${subject.bought }</h2>
						<p>已购人数(人)</p>
					</div>
					<div class="txt2">
						<h2>${subject.year_rate }%</h2>
						<p>年化收益</p>
					</div>
					<div class="txt1">
						<h2>${subject.period }</h2>
						<p>投资期限(天)</p>
					</div>
				</td>
				<td width="360" rowspan="2" align="center" ; valign="middle"
					height="320">
					<div class="tbBox">
						<input type="hidden" id="account" value="">
						<h2>${subject.amount }</h2>
						<p>已投金额(元)</p>
						<div class="li4" id="li4" style="display: none;" >
						<c:if test="${ empty memberBankcards}">
						<span id="checkmoney" style="color: red;">请先绑定银行卡
						:<a style="color: #2695d5"
									class="unlogin" href="/Cornucopia/item/Contact">立即绑定</a></span>
</c:if>
						</div>
						<div class="li4" id="li5" style="display: none;" >
						<span id="checkmoney" style="color: red;">请先登陆</span>
						</div>
						<div class="li4" id="li7" style="display: none;" >
						<span id="checkmoney" style="color: red;">请输入正确金额</span>
						</div>
						<div class="li4" id="li8" style="display: none;" >
						<span id="checkmoney" style="color: red;">请输入正确金额</span>
						</div>
						<div class="li4" id="li6" style="display: none;" >
						<span id="checkmoney" style="color: red;"><a style="color: #2695d5"
									class="unlogin" href="/Cornucopia/AG_UserPlay/GoRecharge">请先充值</a></span>
						</div>
						
						<div class="tit">

							<c:if test="${empty Lname}">
								<span class="fr"> <a style="color: #2695d5"
									class="unlogin" href="/Cornucopia/item/Login?subid=${subject.id}">登录</a>后可见
								</span>
							</c:if>
							<c:if test="${not empty Lname}">
								<a style="color: #2695d5" class="unlogin" >账户可用余额</a> ${memberAccount.useable_balance}
                              
</c:if>

						</div>
						<input id="mytext" class="txt" name="amount" type="text"
							placeholder="起投金额100元以上"> <span
							style="float: right; margin-top: -40px; position: relative; line-height: 40px; padding: 0 10px; color: #f00;"
							id="addMoney"></span>
						<p class="preBox">
							<input type="checkbox" id="registerRule" class="registerRule"
								checked="checked"><span class="fl">同意<a
								href="/web/syxy" target="_black">《产品协议》</a></span>
								
						</p>
						<button class="submit" >确认抢购</button>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<ul class="conInfoList">
						<li class="info">
							<p>
								计息日期：<font color="#00baff"><%=datetime%></font>
							</p>
							<p>
								还款方式：<font color="#00baff">一次性还本付息</font>
							</p>
							<p>
								资金到账日：<font color="#00baff"><%=datetime%></font>
							</p>
						</li>
						<li class="info">
							<p>
								保障方式：<font color="#00baff">企业担保</font>
							</p>
							<p>
								资金安全：<font color="#00baff">星航单号</font>
							</p>
							<p></p>
						</li>
					</ul>
				</td>
			</tr>
		</table>
		<div class="tbConBox">
			<div class="tab">
				<a class="select" href="#1">产品速览</a> <a href="#1">项目详情</a> <a
					href="#1">安全保障</a>
			</div>
			<div id="conBox">
				<div class="box" style="display: block">
					<table class="dbwtab" width="100%" border="1" bordercolor="#e9e9e9"
						cellspacing="0" cellpadding="0">
						<tr>
							<td class="corf9"><span>债权编号</span></td>
							<td>JWYJ15091601</td>

							<td class="corf9"><span>企业认证</span></td>
							<td>杭州吉威投资管理有限公司</td>
						</tr>
						<tr>
							<td class="corf9"><span>债权人</span></td>
							<td>王进</td>

							<td class="corf9"><span>保障平台</span></td>
							<td>盈+理财</td>

						</tr>
					</table>
					<div
						style="border: solid 1px #e9e9e9; padding: 15px; margin-top: 5px;">
						<div class="productDetailCnt">
							<div class="pDetailList">
								<div class="listItem row_1">
									<div class="media">
										<span class="fl"><em class="detailIcon">&nbsp;</em></span>
										<div class="media-body">
											<h3>安不安全</h3>
											<p>本产品是中建投信托产品，上市公司宋都股份为该项目项下宋都集团的债务清偿提供连带责任保证责任，宋都股份为A股上市公司，浙江本地较大房地产企业，综合实力较强；</p>
											<p>标的项目为杭州市区内刚需楼盘，销售情况较好；还款来源充足。</p>
											<p>抵押物位于杭州桐庐大奇山郡未售现房，品质较高，抵押率不超过50%，抵押资产真实可靠。</p>
										</div>
									</div>
								</div>
								<div class="listItem row_2">
									<div class="media">
										<span class="fr"><em class="detailIcon">&nbsp;</em></span>
										<div class="media-body">
											<h3>钱去哪了</h3>
											<p>本产品由债权出让人购得中建投信托-安泉19号集合资金信托计划，用于宋都集团下属子公司香悦郡置业负责开发的杭州宋都香悦郡项目的开发建设。</p>
										</div>
									</div>
								</div>
								<div class="listItem row_3">
									<div class="media">
										<span class="fl"><em class="detailIcon">&nbsp;</em></span>
										<div class="media-body">
											<h3>购买准备</h3>
											<p>1. 首次购买需开通理财账户，理财账户可直接进行充值。</p>
											<p>2.
												了解申购所用银行卡支持情况，大额支付需要网银，支持银行数量和支付限额高；快捷支付方便迅速，但支持银行数量有限。</p>
											<p>3. &nbsp;产品限量抢购，提前充值可以大大提升抢购成功率。</p>
										</div>
									</div>
								</div>
								<div class="listItem row_4">
									<div class="media">
										<span class="fr"><em class="detailIcon">&nbsp;</em></span>
										<div class="media-body">
											<h3>怎样赎回</h3>
											<p>产品到期后本金和收益将自动回款至您的理财账户，产品到期前暂不支持提前赎回。</p>
										</div>
									</div>
								</div>
								<div class="tipRow f12 g9">由于理财资金管理运用过程中，可能会面临多种风险因素，在您选择购买本理财产品前，请充分认识风险，谨慎投资</div>
							</div>
						</div>
					</div>
				</div>

				<div class="box" style="display: none;">
					<p style="text-align: center">
						<strong><span
							style="font-size: 21px; font-family: &amp; #39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">项目亮点</span></strong>
					</p>
					<p class="MsoListParagraph" style="margin-left: 48px">
						<strong><span
							style="font-family: &amp; #39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;"></span></strong>
					</p>
					<p>
						1、<strong>宋都股份为A股上市公司，浙江本地较大房地产企业，综合实力较强：</strong>
					</p>
					<p>截至2014年末，宋都股份总资产136.85亿元，总负债98.01亿元，资产负债率71.62%。宋都股份2014年全年主营业务收入约23.23亿元，净利润为0.55亿元，主要来源于房地产销售收入，销售净利率2.35%。2015年3月末，宋都股份主营业务收入约7.37亿元，净利润0.61亿元。根据预测，其未售存货按照目前的售价估算未来的可售金额可达到140亿元左右，结合其未来工程款投入压力较小的因素，宋都股份整体未来2年内的现金流对本信托计划有较好的保证能力。</p>
					<p>
						<br />
					</p>
					<p>
						2、<strong>标的项目为杭州市区内刚需楼盘，销售情况较好：</strong>
					</p>
					<p>目前项目工程进度至地上主体工程二分之一左右程度，截至2015年5月末，已推盘去化率（按套数）大约52%。由于属于纯刚需楼盘，项目目前销售情况良好，信托计划第一还款来源较为充足。</p>
					<p>
						<br />
					</p>
					<p>
						3、<strong>抵押物位于杭州桐庐大奇山郡未售现房，品质较高，抵押率不超过50%：</strong>
					</p>
					<p>大奇山郡置业拥有的位于杭州桐庐的大奇山郡项目已竣工未销售的现房资产或其他受托人认可的资产，抵押率不超过50%。</p>
					<p class="MsoListParagraph" style="margin-left: 48px">
						<span
							style="font-family: &amp; #39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;"></span><br />
					</p>
					<p style="text-align: center">
						<strong><span
							style="font-size: 21px; font-family: &amp; #39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">增信措施</span></strong>
					</p>
					<p>
						<strong>连带责任保证担保</strong>
					</p>
					<p>上市公司宋都股份为本项目项下宋都集团的债务清偿提供连带责任保证责任。</p>
					<p>
						<br />
					</p>
					<p>
						<strong>抵押担保</strong>
					</p>
					<p>大奇山郡置业以其持有的位于杭州桐庐的大奇山郡项目存量房产提供抵押担保或其他受托人认可的资产提供担保，抵押率不超过50%。</p>
					<p>
						<br />
					</p>
					<p>
						<strong>资金归集</strong>
					</p>
					<p>1、销售资金归集</p>
					<p>当目标项目可售货值&lt;全部信托贷款本金余额*1.5时，如宋都集团未提前一次性偿还全部信托贷款本金及利息，则自目标项目可售货值〈全部信托贷款本金余额*1.5之日起，目标项目销售回款（销售回款以所有按揭银行发放的按揭贷款流水金额以及宋都集团书面提供的首付款金额统计为准，下同）每满5000万元时，宋都集团应向归集账户归集资金人民币3500万元。</p>
					<p>2、到期前归集</p>
					<p>各期贷款到期日前20日，归集该期贷款本金余额的5%；各期贷款到期日前10日，归集至该期贷款本金余额的20%；各期贷款到期日，归集至该期贷款本金余额的100%。</p>
					<p>
						<br />
					</p>
					<p>
						<strong>资金监管</strong>
					</p>
					<p>受托人委托商业银行作为本信托计划监管银行，对信托资金使用进行专项监管。</p>
					<p>
						<br />
					</p>
				</div>
				<div class="box" style="display: none;">
					<p>
						<strong>资金保障</strong>
					</p>
					<p>1.交易过程中盈+平台不触碰资金，资金在银行的监管下在银行账户间流动。</p>
					<p>2.交易资金由招商银行全面监管。</p>
					<p>3.资金流向清晰，资金安全有保障。</p>
					<p>
						<br />
					</p>
					<p>
						<strong>本息保障</strong>
					</p>
					<p>1.资金最终投向中建投信托产品，基础资产风险几乎为零，安全有保障。</p>
					<p>2.杭州吉威投资承担对该笔债权的回购义务，到期无条件偿付投资人本息。</p>
					<p>3.盈+平台对资金真实投向中建投信托产品的过程提供保障。如果因资金没有流向中建投信托产品而发生损失，盈+平台100%全额赔付本息。</p>
					<p>
						<br />
					</p>
					<p>
						<strong>盈+平台风控综述</strong>
					</p>
					<p>盈+平台通过与知名企业合作，利用互联网金融的高周转和灵活性，择时提供既能给盈主（平台客户）带来不错的收益，又能满足低资金成本需求的理财产品。</p>
				</div>
			</div>
		</div>
		<div class="picList">
			认证文件展示
			<ul>
				<li><a href="../assets/css/img/1442455557145.png"><img
						src="../assets/css/img/1442455557145.png" /></a></li>
				<li><a href="../assets/css/img/1442455557158.png"><img
						src="../assets/css/img/1442455557158.png" /></a></li>
				<li><a href="../assets/csss/img/1442455557162.png"><img
						src="../assets/css/img/1442455557162.png" /></a></li>
			</ul>
		</div>

	</div>
</form>


	<!--===========layout-footer================-->
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

	<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
	<script src="../assets/js/amazeui.js" charset="utf-8"></script>
	<style>
.fl {
	float: left
}

.fr {
	float: right
}

.productDetailCnt {
	padding: 0 40px;
	width: 800px;
	margin: 0 auto
}

.productDetailCnt .listItem {
	padding: 25px 0 30px;
	border-bottom: 1px solid #e7e7e7
}

.productDetailCnt h3 {
	font-size: 20px;
	font-weight: 400;
	margin-bottom: 12px;
	line-height: 32px
}

.productDetailCnt .listItem .detailIcon {
	display: inline-block;
	width: 120px;
	height: 120px;
	background-image:
		url(http://wacai-file.b0.upaiyun.com/finance/image/web/licai/wm/detailIcon.png);
	background-repeat: no-repeat
}

.productDetailCnt .listItem .fl {
	margin-right: 42px;
	margin-left: 12px
}

.productDetailCnt .listItem .fr {
	margin-right: 12px;
	margin-left: 42px
}

.productDetailCnt .row_1 .detailIcon {
	background-position: 0 0
}

.productDetailCnt .row_2 .detailIcon {
	background-position: -120px 0
}

.productDetailCnt .row_3 .detailIcon {
	background-position: -240px 0
}

.productDetailCnt .row_4 .detailIcon {
	background-position: -360px 0
}

.productDetailCnt .row_5 .detailIcon {
	background-position: -480px 0
}

.productDetailCnt .row_1 .media-body, .productDetailCnt .row_3 .media-body,
	.productDetailCnt .row_5 .media-body {
	margin-right: 12px
}

.productDetailCnt .row_2 .media-body, .productDetailCnt .row_4 .media-body
	{
	margin-left: 12px
}

.productDetailCnt .listItem p {
	font-size: 14px;
	color: #999;
	line-height: 1.5
}

.productDetailCnt .tipRow, .projectDetailBox .tipRow {
	padding: 20px 0
}
</style>
</body>

</html>
