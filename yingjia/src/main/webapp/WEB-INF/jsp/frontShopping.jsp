<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta name="viewport"
	content="width=device-width,maximum-scale=1.0,user-scalable=yes">
<meta name="Keywords"
	content="盈+，盈，社区金融，O2O社区金融，社区金融O2O，O2O，互联网+社区金融，O2O连锁，社区门店，首家社区金融，社区金融服务，综合金融，互联网金融，体验中心，普惠金融，金融创新，社区化，普惠化，全渠道化，互联网线上平台，O2O交易，全国首家，盈十，金融衍生品，固收类理财，私募基金，股权基金，股指期货，玩转股指，商品期货，国际期货，外盘，A50，沪深300，中证500，上证50">
<meta name="description" content="盈+——全国首家互联网金融交流体验中心，与您共盈，给财富做加法。">
<title>盈+理财 购买产品页面</title>
<link href="/yingjia/BfAssets/css/common.css" rel="stylesheet">
<link href="/yingjia/BfAssets/css/iframeindex_data/jw.css" rel="stylesheet">
<link rel="stylesheet" href="/yngjia/BfAssets/css/layer.css" id="layui_layer_skinlayercss" style="">

<script src="/yingjia/BfAssets/js/jquery.js"></script>
<script src="/yngjia/BfAssets/js/bootstrap.js"></script>
<script src="/yngjia/BfAssets/js/hm.js"></script>
<script src="/yngjia/BfAssets/js/hm_002.js"></script>
<script src="/yngjia/BfAssets/js/echarts.js"></script>
<script src="/yngjia/BfAssets/js/layer.js"></script>
<script src="/yngjia/BfAssets/js/pie.js"></script>

<style type="text/css">
.hzhb_box {
	float: left;
	width: 610px;
	margin-top: 32px;
}

.down_img{
		position:absolute;
		left:660px;
		top:250px;
	}

.hzhb_item {
	float: left;
	margin: 5px;
	border: solid 1px #aaa;
	border-radius: 3px;
}

.hzhb_item img {
	width: 120px;
	height: 40px;
}

.ft_item {
	float: left;
	width: 239px;
}

.ft_item_tit {
	height: 28px;
	line-height: 28px;
	font-size: 20px;
	color: #ccc;
	padding-left: 40px;
}

.ft_links_list {
	margin-top: 10px;
}

.ft_links_list .ft_link {
	height: 30px;
	line-height: 30px;
}

.ft_item_sns {
	float: right;
	width: 340px;
}

.ft_sns_list {
	margin-left: 40px;
}

.ft_sns_list li {
	float: left;
	width: 74px;
	margin: 5px;
}

.ft_sns_list a {
	display: block;
	width: 74px;
}

.ft_sns_list .txt {
	display: block;
	line-height: 32px;
	text-align: center;
	color: #ccc;
}

.ft_sns_list .ico_sns {
	display: block;
	width: 62px;
	height: 62px;
	margin: 0 auto;
	background: url(/yngjia/BfAssets/img/ft_sns.png) no-repeat;
}

.ft_sns_list .ico_weixin {
	background-position: 0 0;
}

.ft_sns_list .ico_sinawb {
	background-position: -63px 0;
}

.ft_sns_list .ico_txwb {
	background-position: -126px 0;
}

.ft_sns_list a:hover .ico_sinawb {
	background-position: -63px -63px;
}

.ft_sns_list a:hover .ico_txwb {
	background-position: -126px -63px;
}

.ft_sns_list a:hover .txt {
	color: #3D9FE1
}

.ft_sns_list .wx_tips {
	cursor: pointer;
	position: relative;
}

.ft_sns_list .wx_tips .tips_hd {
	
}

.ft_sns_list .wx_tips .tips_bd {
	display: none;
	position: absolute;
	left: 90px;
	top: -10px;
}

.ft_sns_list .wx_tips .tips_bd .arrow {
	width: 0;
	height: 0;
	overflow: hidden;
	border-color: transparent #fff transparent transparent;
	border-width: 8px 8px 8px 8px;
	border-style: dashed solid dashed none;
	position: absolute;
	top: : -8px;
}

.ft_sns_list .wx_tips .tips_bd img {
	width: 180px;
	height: 180px;
}

.ft_sns_list .wx_tips .tips_bd .txt {
	font-size: 14px;
	line-height: 32px;
	color: #3D9FE1;
}

.ft_sns_list .wx_tips:hover .ico_weixin {
	background-position: 0 -63px;
}

.ft_sns_list .wx_tips:hover .txt {
	color: #3D9FE1;
}

.ft_sns_list .wx_tips:hover .tips_bd {
	display: block;
}
</style>

<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

img {
	border: 0;
}

.rides-cs {
	font-size: 12px;
	background: #29a7e2;
	position: fixed;
	top: 250px;
	right: 0px;
	_position: absolute;
	z-index: 1500;
	border-radius: 6px 0px 0 6px;
}

.rides-cs a {
	color: #00A0E9;
}

.rides-cs a:hover {
	color: #ff8100;
	text-decoration: none;
}

.rides-cs .floatL {
	width: 36px;
	float: left;
	position: relative;
	z-index: 1;
	margin-top: 21px;
	height: 181px;
}

.rides-cs .floatL a {
	font-size: 0;
	text-indent: -999em;
	display: block;
}

.rides-cs .floatR {
	width: 130px;
	float: left;
	padding: 5px;
	overflow: hidden;
}

.rides-cs .floatR .cn {
	background: #F7F7F7;
	border-radius: 6px;
	margin-top: 4px;
}

.rides-cs .cn .titZx {
	font-size: 14px;
	color: #333;
	font-weight: 600;
	line-height: 24px;
	padding: 5px;
	text-align: center;
}

.rides-cs .cn ul {
	padding: 0px;
}

.rides-cs .cn ul li {
	line-height: 38px;
	height: 38px;
	border-bottom: solid 1px #E6E4E4;
	overflow: hidden;
	text-align: center;
}

.rides-cs .cn ul li span {
	color: #333;
}

.rides-cs .cn ul li a {
	color: #777;
}

.rides-cs .cn ul li img {
	vertical-align: middle;
}

.rides-cs .btnOpen, .rides-cs .btnCtn {
	position: relative;
	z-index: 9;
	top: 25px;
	left: 0;
	background-image: url(/Content/images/jw/qqkefu.png);
	background-repeat: no-repeat;
	display: block;
	height: 146px;
	padding: 8px;
}

.rides-cs .btnOpen {
	background-position: 0 0;
}

.rides-cs .btnCtn {
	background-position: -37px 0;
}

.rides-cs ul li.top {
	border-bottom: solid #ACE5F9 1px;
}

.rides-cs ul li.bot {
	border-bottom: none;
}

.topNav {
	padding: 0;
	margin: 0;
}

li {
	margin: 0;
	padding: 8px 0;
}

li.active {
	/*background: #323030;*/
	background: none;
}

li.active a {
	color: white;
}
</style>
<script type="text/javascript">

$(function(){
	$("#btnBuy").click(function(){ 
	  $("#form1").attr("action","/yingJiaProfit/shopping/goBuy");
		$("#form1").submit();
	});
	});

function fun(obj){
	var amountYuE=$("#amountYuE").val();//账户余额
	var mytext=obj.value;//输入框输入金额
	if(parseInt(amountYuE)<parseInt(mytext)){
		$("#btnBuy").attr("disabled", true); 
	}
}
	$(function(){
		$("#btnBuy").click(function(){
			var check=$("#cardHidden").val();//判断是否绑卡了
			var checkLogin=$("#hiddenLogin").val();//判断是否登录
			var mytext=$("#mytext").val();//输入框输入的起投金额
	       var amountYuE=$("#amountYuE").val();//账户余额
			
			var reg = /^(\+)?\d+(\.\d+)?$/;//正则验证正数 包括小数
			var subjectId=$("#subjectId").val();//标ID
			if(checkLogin=='hasLogin'){
				if(check=='nocard'){
					$("#bankCard").show();
				}
				if(check=='hascard'){
					if((mytext!="")||mytext!=null){
						if (!reg.test(mytext)) {//说明输入的不是正确数字
							$("#NAN").show();//验证数值失败的div显示
							$("#notLess100").hide();
							$("#notToPay").hide();
						}else{
							$("#NAN").hide();
							if(mytext<100){
								$("#notLess100").show();
								$("#notToPay").hide();
							}else{
								$("#notLess100").hide();
								if(parseInt(mytext)>parseInt(amountYuE)){
									$("#notToPay").show();
								}else{
									$("#notToPay").hide();
								}
							}
						}
					}
				}
			}
		});
	});
</script>
</head>
<body>

	<div class="logo container">
    <div class="row">
        <div class="logoImg">
            <a href="javascript:if(confirm('http://www.ying158.com/home  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.ying158.com/home'" tppabs="http://www.ying158.com/home"><img src="../BfAssets/resources/web/images/logo2.png" tppabs="http://pro.ying158.com/resources/web/images/logo2.png" onmouseover="this.src = '../BfAssets/resources/web/images/logo1.png'/*tpa=http://pro.ying158.com/resources/web/images/logo1.png*/" onmouseout="this.src = '../BfAssets/resources/web/images/logo2.png'/*tpa=http://pro.ying158.com/resources/web/images/logo2.png*/"></a>
        </div>
        <div class="telInfo">
            <img src="../BfAssets/resources/web/images/400Icon.png" tppabs="http://pro.ying158.com/resources/web/images/400Icon.png" onmousemove="this.src = '../BfAssets/resources/web/images/400IconActive.png'" onmouseout="	this.src = '../BfAssets/resources/web/images/400Icon.png'/*tpa=http://pro.ying158.com/resources/web/images/400Icon.png*/">
            <div class="detail">

                        <a style="font-size:18px;float:right;margin-top:5px;color:#917739;" href="/yingjia/item2/login" tppabs="http://pro.ying158.com/web/login">登录</a>
                        <a style="font-size:18px;float:right;margin-right:15px;margin-top:5px;color:#917739;" href="/yingjia/item2/Register" tppabs="http://pro.ying158.com/web/regis">注册</a>
               <br>4000-999-158
            </div>
        </div>
    </div>
</div>
	<div class="jwNav">
		<div class="container">
			<div class="row">
				<ul class="topNav">
					<li>
						<a class="item first" href="/yingjia/item2/home" tppabs="http://www.ying158.com/home">
							首页
						</a>
					</li>
					<li>
						<a class="item" href="/yingjia/item2/kcenter" tppabs="http://www.ying158.com/home/kcenter">
							网上体验中心
						</a>
					</li>
					<li>
						<a class="item" href="/yingjia/item2/subject" tppabs="http://pro.ying158.com/subject">
							产品中心
						</a>
					</li>
					<li>
						<a class="item" href="/yingjia/item2/NewsCenter" tppabs="http://www.ying158.com/Home/NewsCenter">
							新闻中心
						</a>
					</li>
					<li>
                        <a class="item" href="/yingjia/item2/mobileappdownload" tppabs="http://pro.ying158.com/mobileappdownload">
                            下载中心
                        </a>
					</li>
					<li>
                        <a class="item " href="/yingjia/item2/Help" tppabs="http://www.ying158.com/Home/Help">
                            盈+商学院
                        </a>
					</li>
					<li>
                        <a class="item" href="/yingjia/item2/TradingSoftware" tppabs="http://www.ying158.com/UserGuide/TradingSoftware">
                            投研中心
                        </a>
					</li>
					<li>
						<a class="item last" href="/yingjia/item2/login" tppabs="http://pro.ying158.com/account/trades/profit/records">
							我的加法库
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->
	   <form action=""  method="post" id="form1">
	<div class="proMain">
    <div class="conTit">
        <span><a style="color:#9d8440;" href="/yingJiaProfit/product/login">其他标的</a></span>
        <h2><em>￥</em>购买的标名</h2>
        <input type="hidden" value="${sub.id }" id="subjectId" name="subjectId"><!-- 点击购买把标ID传过去 -->
    </div>
    <table class="conTable" width="100%" cellspacing="0" cellpadding="0" border="0">
        <tbody><tr>
            <td class="txtInfo">
                <div class="txt1">
                    <h2>${sub.bought }</h2>
                    <p>已购人数(人)</p>
                </div>
                <div class="txt2">
                    <h2>${sub.year_rate }%</h2>
                    <p>年化收益</p>
                </div>
                <div class="txt1">
                    <h2>${sub.period }</h2>
                    <p>投资期限(天)</p>
                </div>
            </td>
            <td rowspan="2"  width="360" valign="middle" height="320" align="center">
                <div class="tbBox">
                    <input id="account" value="0" type="hidden">
                    <h2>${sub.amount}</h2>
                    <p>已投金额(元)</p>
<!--                     <div class="li4" style="display: none;"><span id="checkmoney" style="color: red;"></span></div> -->
                    <div style="display:none;" id="NAN">
                    	<span style="color:red;">请输入正确的金额</span>
                    </div>
                    <div style="display:none;" id="notLess100">
                    	<span style="color:red;">起投金额不能低于100元</span>
                    </div>
                    <div style="display:none;" id="notToPay">
                    	<span style="color:red;">余额不足,请充值</span>
                    </div>
                    <div  style="display:none;" id="bankCard">
                    	<span style="color:red;">请先绑定银行卡,</span>
                    	<a href="/yingJiaProfit/shopping/memberCard">绑卡</a>
                    </div>
                    <c:if test="${empty memberBankcards }">
                    	<input type="hidden" value="nocard" id="cardHidden">
                    </c:if>
                    <c:if test="${memberBankcards.id>0 }">
                    	<input type="hidden" value="hascard" id="cardHidden">
                    </c:if>
                 
                    <div class="tit">
                    	<c:if test="${member.id>0 }">
	                    	<span class="fr">
	                    	<input type="hidden" value="${memberAccount.useable_balance }"  id="amountYuE" name="amountYuE">
	                        ${memberAccount.useable_balance }元&nbsp;&nbsp;<a href="/yingJiaProfit/shopping/tocongzhi">充值&nbsp;&nbsp;&nbsp;</a>
							</span>
                        	<h2>账户余额</h2>
                        	<input type="hidden" value="${memberAccount.useable_balance }" id="hiddenLogin">
                        </c:if>
                        <c:if test="${empty member }">
                        	<h2 style="color:red; text-align: center; width: 100%;" >登录后可购买</h2>
                        	<input type="hidden" value="noLogin" id="hiddenLogin">
                        </c:if>
                        <div id="count" style="">预期所得收益<i data-num="0.000822" id="num">0</i>元
                        </div>
                    </div>
                    <input id="mytext" class="txt" name="mytext" placeholder="起投金额100元以上" type="text" onkeyup="fun(this)">
                        <span style="float: right;margin-top: -40px;position: relative; line-height: 40px; padding: 0 10px;color: #f00;" id="addMoney"></span>
                    <p class="preBox">
                        <input id="registerRule" class="registerRule" checked="checked" type="checkbox"><span class="fl">同意<a href="http://pro.ying158.com/web/syxy" target="_black">《产品协议》</a></span>
                        <button id="redPacket">使用红包</button>
                        <button id="bbinAll">体验金全投</button>
                    </p>
                    <button id="btnBuy" class="submit">确认抢购</button>
                </div>
              
            </td>
        </tr>
        <tr>
            <td>
                <ul class="conInfoList">
                    <li class="info">
                        <p>计息日期：<font color="#00baff">123</font></p>
                        <p>还款方式：<font color="#00baff">一次性还本付息</font></p>
                        <p>资金到账日：<font color="#00baff">123至$123456</font>
                        </p>
                    </li>
                    <li class="info">
                        <p>保障方式：<font color="#00baff">企业担保</font></p>
                        <p>资金安全：<font color="#00baff">中国人保财险承保</font></p>
                        <p></p>
                    </li>
                </ul>
            </td>
        </tr>
    </tbody></table>
    <div class="tbConBox">
        <div class="tab">
            <a class="select" href="#1">产品速览</a>
            <a href="#1" class="">项目详情</a>
            <a href="#1" class="">安全保障</a>
        </div>
        <div id="conBox">
            <div class="box" style="display: block;">
                <table class="dbwtab" width="100%" cellspacing="0" cellpadding="0" bordercolor="#e9e9e9" border="1">
                <tbody><tr>
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
                </tbody></table>
                </form>  
                <div style="border:solid 1px #e9e9e9; padding:15px; margin-top:5px;"><style>.fl{ float:left}
                  
.fr{ float:right}
.productDetailCnt{
	padding:0 40px;
	width:800px; margin:0 auto
}

.productDetailCnt .listItem{
	padding:25px 0 30px;
	border-bottom:1px solid #e7e7e7
}

.productDetailCnt h3{
	font-size:20px;
	font-weight:400;
	margin-bottom:12px;
	line-height:32px
}

.productDetailCnt .listItem .detailIcon{
	display:inline-block;
	width:120px;
	height:120px;
	background-image:url(http://wacai-file.b0.upaiyun.com/finance/image/web/licai/wm/detailIcon.png);
	background-repeat:no-repeat
}

.productDetailCnt .listItem .fl{
	margin-right:42px;
	margin-left:12px
}

.productDetailCnt .listItem .fr{
	margin-right:12px;
	margin-left:42px
}

.productDetailCnt .row_1 .detailIcon{
	background-position:0 0
}

.productDetailCnt .row_2 .detailIcon{
	background-position:-120px 0
}

.productDetailCnt .row_3 .detailIcon{
	background-position:-240px 0
}

.productDetailCnt .row_4 .detailIcon{
	background-position:-360px 0
}

.productDetailCnt .row_5 .detailIcon{
	background-position:-480px 0
}

.productDetailCnt .row_1 .media-body,.productDetailCnt .row_3 .media-body,.productDetailCnt .row_5 .media-body{
	margin-right:12px
}

.productDetailCnt .row_2 .media-body,.productDetailCnt .row_4 .media-body{
	margin-left:12px
}

.productDetailCnt .listItem p{
	font-size:14px;
	color:#999;
	line-height:1.5
}

.productDetailCnt .tipRow,.projectDetailBox .tipRow{
	padding:20px 0
}</style><div class="productDetailCnt"><div class="pDetailList"><div class="listItem row_1"><div class="media"><span class="fl"><em class="detailIcon">&nbsp;</em></span><div class="media-body"><h3>安不安全</h3><p>本产品是中建投信托产品，上市公司宋都股份为该项目项下宋都集团的债务清偿提供连带责任保证责任，宋都股份为A股上市公司，浙江本地较大房地产企业，综合实力较强；</p><p>标的项目为杭州市区内刚需楼盘，销售情况较好；还款来源充足。</p><p>抵押物位于杭州桐庐大奇山郡未售现房，品质较高，抵押率不超过50%，抵押资产真实可靠。</p></div></div></div><div class="listItem row_2"><div class="media"><span class="fr"><em class="detailIcon">&nbsp;</em></span><div class="media-body"><h3>钱去哪了</h3><p>本产品由债权出让人购得中建投信托-安泉19号集合资金信托计划，用于宋都集团下属子公司香悦郡置业负责开发的杭州宋都香悦郡项目的开发建设。</p></div></div></div><div class="listItem row_3"><div class="media"><span class="fl"><em class="detailIcon">&nbsp;</em></span><div class="media-body"><h3>购买准备</h3><p>1. 首次购买需开通理财账户，理财账户可直接进行充值。</p><p>2. 了解申购所用银行卡支持情况，大额支付需要网银，支持银行数量和支付限额高；快捷支付方便迅速，但支持银行数量有限。</p><p>3. &nbsp;产品限量抢购，提前充值可以大大提升抢购成功率。</p></div></div></div><div class="listItem row_4"><div class="media"><span class="fr"><em class="detailIcon">&nbsp;</em></span><div class="media-body"><h3>怎样赎回</h3><p>产品到期后本金和收益将自动回款至您的理财账户，产品到期前暂不支持提前赎回。</p></div></div></div><div class="tipRow f12 g9">由于理财资金管理运用过程中，可能会面临多种风险因素，在您选择购买本理财产品前，请充分认识风险，谨慎投资</div></div></div></div>
            </div>

            <div class="box" style="display: none;">
            <p style="text-align:center"><strong><span style="font-size:21px;font-family:'微软雅黑','sans-serif'">项目亮点</span></strong></p><p class="MsoListParagraph" style="margin-left:48px"><strong><span style=";font-family:'微软雅黑','sans-serif'"></span></strong></p><p>1、<strong>宋都股份为A股上市公司，浙江本地较大房地产企业，综合实力较强：</strong></p><p>截
至2014年末，宋都股份总资产136.85亿元，总负债98.01亿元，资产负债率71.62%。宋都股份2014年全年主营业务收入约23.23亿
元，净利润为0.55亿元，主要来源于房地产销售收入，销售净利率2.35%。2015年3月末，宋都股份主营业务收入约7.37亿元，净利润0.61亿
元。根据预测，其未售存货按照目前的售价估算未来的可售金额可达到140亿元左右，结合其未来工程款投入压力较小的因素，宋都股份整体未来2年内的现金流
对本信托计划有较好的保证能力。</p><p><br></p><p>2、<strong>标的项目为杭州市区内刚需楼盘，销售情况较好：</strong></p><p>目前项目工程进度至地上主体工程二分之一左右程度，截至2015年5月末，已推盘去化率（按套数）大约52%。由于属于纯刚需楼盘，项目目前销售情况良好，信托计划第一还款来源较为充足。</p><p><br></p><p>3、<strong>抵押物位于杭州桐庐大奇山郡未售现房，品质较高，抵押率不超过50%：</strong></p><p>大奇山郡置业拥有的位于杭州桐庐的大奇山郡项目已竣工未销售的现房资产或其他受托人认可的资产，抵押率不超过50%。</p><p class="MsoListParagraph" style="margin-left:48px"><span style=";font-family:'微软雅黑','sans-serif'"></span><br></p><p style="text-align:center"><strong><span style="font-size:21px;font-family:'微软雅黑','sans-serif'">增信措施</span></strong></p><p><strong>连带责任保证担保</strong></p><p>上市公司宋都股份为本项目项下宋都集团的债务清偿提供连带责任保证责任。</p><p><br></p><p><strong>抵押担保</strong></p><p>大奇山郡置业以其持有的位于杭州桐庐的大奇山郡项目存量房产提供抵押担保或其他受托人认可的资产提供担保，抵押率不超过50%。</p><p><br></p><p><strong>资金归集</strong></p><p>1、销售资金归集</p><p>当
目标项目可售货值&lt;全部信托贷款本金余额*1.5时，如宋都集团未提前一次性偿还全部信托贷款本金及利息，则自目标项目可售货值〈全部信托贷款本金
余额*1.5之日起，目标项目销售回款（销售回款以所有按揭银行发放的按揭贷款流水金额以及宋都集团书面提供的首付款金额统计为准，下同）每满5000万
元时，宋都集团应向归集账户归集资金人民币3500万元。</p><p>2、到期前归集</p><p>各期贷款到期日前20日，归集该期贷款本金余额的5%；各期贷款到期日前10日，归集至该期贷款本金余额的20%；各期贷款到期日，归集至该期贷款本金余额的100%。</p><p><br></p><p><strong>资金监管</strong></p><p>受托人委托商业银行作为本信托计划监管银行，对信托资金使用进行专项监管。</p><p><br></p>
            </div>
            <div class="box" style="display: none;">
            <p><strong>资金保障</strong></p><p>1.交易过程中盈+平台不触碰资金，资金在银行的监管下在银行账户间流动。</p><p>2.交易资金由招商银行全面监管。</p><p>3.资金流向清晰，资金安全有保障。</p><p><br></p><p><strong>本息保障</strong></p><p>1.资金最终投向中建投信托产品，基础资产风险几乎为零，安全有保障。</p><p>2.杭州吉威投资承担对该笔债权的回购义务，到期无条件偿付投资人本息。</p><p>3.盈+平台对资金真实投向中建投信托产品的过程提供保障。如果因资金没有流向中建投信托产品而发生损失，盈+平台100%全额赔付本息。</p><p><br></p><p><strong>盈+平台风控综述</strong></p><p>盈+平台通过与知名企业合作，利用互联网金融的高周转和灵活性，择时提供既能给盈主（平台客户）带来不错的收益，又能满足低资金成本需求的理财产品。</p>
            </div>
        </div>
    </div>
    <div class="picList">
        认证文件展示
        <ul>
            <li><a href="/yingjia/BfAssets/img/1442455557145.png" target="_blank"><img src="/yingjia/BfAssets/img/1442455557145.png"></a></li>
            <li><a href="/yingjia/BfAssets/img/1442455557158.png" target="_blank"><img src="/yingjia/BfAssets/img/1442455557158.png"></a></li>
            <li><a href="/yingjia/BfAssets/img/1442455557162.png" target="_blank"><img src="/yingjia/BfAssets/img/1442455557162.png"></a></li>
            <li><a href="/yingjia/BfAssets/img/1442455557165.png" target="_blank"><img src="/yingjia/BfAssets/img/1442455557165.png"></a></li>
        </ul>
        <!-- <div style="clear:both;"></div> -->
    </div>

</div>

	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->
	<!-- -----------------------------------------分割线---------------------------------- -->

	<div class="container index">
		<div class="row">
			<div class="security">
				<div class="item">
					<img src="/yingjia/BfAssets/img/indexSecurity1.png">
					<div class="detail">
						资金银行监管
						<div class="desc">平台资金由第三方银行监管</div>
					</div>
				</div>
				<div class="item">
					<img src="/yingjia/BfAssets/img/indexSecurity2.png">
					<div class="detail">
						交易证监会监管
						<div class="desc">投资交易由证监会监管</div>
					</div>
				</div>
				<div class="item">
					<img src="/yingjia/BfAssets/img/indexSecurity3.png">
					<div class="detail">
						风控盈+监管
						<div class="desc">盈+全自动风控系统为您保驾护航</div>
					</div>
				</div>
			</div>


		</div>
	</div>
	</div>



	<div class="foot">
		<div class="container">
			<div class="row">
				<div class="hzhb_box">
					<div class="title"
						style="padding-left: 10px; font-weight: normal; font-size: 20px; color: #ccc;">
						主要合作机构</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.picc.com/"><img
							onmouseout="this.src = '/yingjia/BfAssets/img/1.jpg'"
							src="/yingjia/BfAssets/img/1.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.fuioupay.com/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/2.jpg'"
							src="/yingjia/BfAssets/img/2.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.nanhua.net/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/3.jpg'"
							src="/yingjia/BfAssets/img/3.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank"
							href="http://www.zttrust.com.cn/stations/526623d20a/index.php/5268e6b50a"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/4.jpg'"
							src="/yingjia/BfAssets/img/4.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank"
							href="http://sc.hkex.com.hk/TuniS/www.hkex.com.hk/eng/index.htm/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/5.jpg'"
							src="/yingjia/BfAssets/img/5.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.cmegroup.com/cn-s/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/yngjia/BfAssets/img/6.jpg'"
							src="/yingjia/BfAssets/img/6.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank"
							href="http://www.sgx.com/wps/portal/sgxweb_ch/home/%21ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNHB1NPAycDSz9wwzMDTxD_Z2Cg8PCDANdjYEKIoEKDHAARwNC-sP1o8BK8JhQkBthkO6oqAgAzDYPQQ%21%21/dl5/d5/L2dBISEvZ0FBIS9nQSEh/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/7.jpg'"
							src="/yingjia/BfAssets/img/7.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.neeq.com.cn/index/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/8.jpg'"
							src="/yingjia/BfAssets/img/8.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.cmbchina.com/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/9.jpg'"
							src="/yingjia/BfAssets/img/9.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank"
							href="http://www.bankcomm.com/BankCommSite/default.shtml"><img
							onmouseout="this.src = '/yingjia/BfAssets/img/10.jpg'"
							src="/yingjia/BfAssets/img/10.jpg"></a>
					</div>

					<div class="hzhb_item">
						<a target="_blank" href="http://www.ccb.com/cn/home/index.html"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/11.jpg'"
							src="/yingjia/BfAssets/img/11.jpg"></a>
					</div>
					<div class="hzhb_item">
						<a target="_blank" href="http://www.icbc.com.cn/icbc/"><img
							onmouseout="    this.src = '/yingjia/BfAssets/img/12.jpg'"
							src="/yingjia/BfAssets/img/12.jpg"></a>
					</div>
				</div>

				<div class="ft_item ft_item_sns">
					<div class="ft_item_tit">关注我们</div>
					<ul style="margin-bottom: 0px;" class="ft_sns_list clearfix">
						<li>
							<div class="wx_tips j_tips">
								<div class="tips_hd">
									<em class="ico_sns ico_weixin"></em> <span class="txt">微信公众号</span>
								</div>
								<div class="tips_bd">
									<em class="arrow"></em> <img src="/yingjia/BfAssets/yj.jpg"
										alt="微信公共平台">
								</div>
							</div>
						</li>
						<li><a href="" target="_blank" rel="nofollow"> <em
								class="ico_sns ico_sinawb"></em> <span class="txt">新浪微博</span>
						</a></li>
						<li><a href="" target="_blank" rel="nofollow"> <em
								class="ico_sns ico_txwb"></em> <span class="txt">腾讯微博</span>
						</a></li>
					</ul>

					<div class="contactUs">
						<div class="title"
							style="padding-left: 10px; font-weight: normal; font-size: 20px; color: #ccc;">
							联系我们</div>
						<div class="contactInfo" style="padding-left: 30px;">
							<a
								style="display: inline-block; height: 50px; width: 50px; text-align: center;"
								target="_blank"
								href="http://wpa.qq.com/msgrd?v=3&amp;uin=508886246&amp;site=qq&amp;menu=yes"><img
								src="/yingjia/BfAssets/img/qqIcon.png"
								onmouseover="$(this).css('height', '52px');"
								onmouseout="    $(this).css('height', '48px');"></a> <span
								class="kefu">在线客服</span><span class="time">08:30 - 21:00</span>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="foot3">
		<div class="container">
			<div class="row">
				Copyright © 2010 - 2015 www.ying158.com All Rights Reserverd
				杭州吉威投资管理有限公司 版权所有<br> 浙ICP备14030807号-3 杭州市江干区钱江新城迪凯银座19F
				4000-999-158
			</div>
		</div>
	</div>
	<div class="modal fade loginModal infoModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="width: 400px;">
				<div class="modal-header">
					<span>用户登录</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<div class="content" style="padding: 20px 40px;">
						<input class="form-control" placeholder="用户名/手机/邮箱" id="modalUser"
							type="text"><br> <input class="form-control"
							placeholder="密码" id="modalPw" type="password">
					</div>
					<div>
						<button class="btn btn-primary" onclick="loginFromModal()"
							style="padding-left: 20px; padding-right: 20px;">登录</button>
						<a class="btn btn-info"
							href="http://www.ying158.com/Account/Regist" target="blank"
							style="padding-left: 20px; padding-right: 20px; margin-left: 20px;">注册</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade loginInfo infoModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="width: 400px;">
				<div class="modal-header">
					<span>错误信息</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body text-center">
					<div class="content" id="loginFail"></div>
					<button class="btn btn-primary confirmBtn" data-dismiss="modal">确认</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade infoModal" id="infosModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 0px; width: 400px;">
				<div class="modal-header">
					<span>通知</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="infosModalError"></div>
					<button class="btn btn-success confirmBtn" data-dismiss="modal">确认</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade infoModal" id="infosSuccessModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 0px; width: 400px;">
				<div class="modal-header">
					<span>通知</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="infosSuccessModalError"></div>
					<button class="btn btn-success confirmBtn" data-dismiss="modal">确认</button>
				</div>
			</div>
		</div>
	</div>

	<div id="feedbackModal" class="modal fade infoModal">
		<div data-bind="" class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<span>填写反馈</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only"></span>
					</button>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="feedbackForm">
						<div class="form-group">
							<div class="col-sm-12">


								<select name="MsgType" class="form-control" id="MsgType"
									data-val-required="留言类型 字段是必需的。" data-val="true">
									<option selected="selected" value="0">请选择反馈类型</option>
									<option value="1">终止实盘结算申请</option>
									<option value="6">追加保证金</option>
									<option value="7">交易问题</option>
									<option value="3">功能使用问题</option>
									<option value="4">大额预约</option>
									<option value="50">其他问题</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<input class="form-control" id="contact" placeholder="请输入手机号或邮箱"
									type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<textarea class="form-control" id="content"
									placeholder="请填写你的用户名、实盘帐号并说明是结算申请还是追加保证金！"></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="submitFeedback"
						onclick="submitFeedback();">提交</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		function submitFeedback() {
			var type = $('#feedbackForm #MsgType').val();
			var contact = $('#feedbackForm #contact').val();
			var content = $('#feedbackForm #content').val();
			$('#submitFeedback').attr('disabled', true);
			$.post('/api/feedback/create', {
				msgType : type,
				contact : contact,
				content : content
			}).done(function(res) {
				if (res.isSuccess) {
					alert('感谢您的反馈，我们会尽快给您做出答复！');
					$('#feedbackModal').modal('hide');
					$('#feedbackForm #contact').val('');
					$('#feedbackForm #content').val('');
				} else {
					alert(res.errorMessage);
				}
			}).always(function() {
				$('#submitFeedback').attr('disabled', false);
			});
		}
	</script>

	<div id="bannedStockModal" class="modal fade infoModal">
		<div data-bind="" class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<span>今日限制购买的股票</span>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<span>今日暂时没有限购的股票</span>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary btn-straight"
						data-dismiss="modal" style="margin-top: initial;">确认</button>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function showBannedStocks() {
			$('#bannedStockModal').modal('show');
		}
	</script>


	<script>
		$("#aFloatTools_Show").click(function() {
			$('#divFloatToolsView').animate({
				width : 'show',
				opacity : 'show'
			}, 100, function() {
				$('#divFloatToolsView').show();
			});
			$('#aFloatTools_Show').hide();
			$('#aFloatTools_Hide').show();
		});
		$("#aFloatTools_Hide").click(function() {
			$('#divFloatToolsView').animate({
				width : 'hide',
				opacity : 'hide'
			}, 100, function() {
				$('#divFloatToolsView').hide();
			});
			$('#aFloatTools_Show').show();
			$('#aFloatTools_Hide').hide();
		});
		$('*[data-toggle="tooltip"]').tooltip();
		$(document).ready(
				function() {
					var href = window.location.href.toLowerCase();

					if (href.indexOf("/account/") >= 0) {
						$(".topNav li:eq(7)").addClass("active");

					} else if (href.indexOf("/home/help") >= 0) {

						$(".topNav li:eq(5)").addClass("active");

					} else if (href.indexOf("/home/kcenter") >= 0) {

						$(".topNav li:eq(1)").addClass("active");

					} else if (href.indexOf("/home/newscenter") >= 0
							|| href.indexOf("/news/") >= 0) {

						$(".topNav li:eq(3)").addClass("active");

					} else if (href.indexOf("/home/rule") >= 0) {

						$(".topNav li:eq(3)").addClass("active");

					} else if (href.indexOf("/tradingsoftware") >= 0) {

						$(".topNav li:eq(6)").addClass("active");

					} else if (href.indexOf("/gzpeizi") >= 0) {

						$(".topNav li:eq(2)").addClass("active");

					} else if (href.indexOf("jiameng") >= 0) {

						$(".topNav li:eq(4)").addClass("active");

					} else {

						$(".topNav li:eq(0)").addClass("active");
					}

				});

		var kefu = function(num) {
			var url = "";
			switch (num) {
			case 1:
				url = "tencent://message/?uin=3044901756&Menu=yes";
				break;
			case 2:
				url = "tencent://message/?uin=773031422&Menu=yes";
				break;
			default:
				url = "tencent://message/?uin=2093717869&Menu=yes";
			}
			window
					.open(
							url,
							'在线客服',
							'height=405,width=500,top=200,left=200,toolbar=no,menubar=no,scrollbars=yes, resizable=no,location=no, status=no');
		}

		var loginFromModal = function() {
			var un = $("#modalUser").val();
			var pw = $("#modalPw").val();
			if (un == "" || un == undefined) {
				$("#loginFail").html("请输入用户名");
				$(".loginInfo").modal();
				return;
			}
			if (pw == "" || pw == undefined) {
				$("#loginFail").html("请输入登录密码");
				$(".loginInfo").modal();
				return;
			}
			$.post("/api/authentication/signIn", {
				login : un,
				password : pw
			}, function(data) {
				if (data.isAuthenticated) {
					window.location.reload();
				} else {
					$("#loginFail").html("用户名或密码有误");
					$(".loginInfo").modal();
				}
			});

		}

		var gotoTop = function() {
			$("html,body").animate({
				scrollTop : 0
			}, 1000);
		}
	</script>

	<script type="text/javascript">
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?bb6cf2322300378a89a69641641427c0";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

<script type="text/javascript">

    $(function () {
        $(".tbConBox .tab a").click(function () {
            if (!$(this).hasClass("select")) {
                var num = $(this).index();
                $(this).addClass("select").siblings().removeClass("select");
                $("#conBox .box").eq(num).show().siblings().hide();
            }
        });

        $(":input[name=totalFee]").focus(function () {
            $(".li4").hide();
        });

        var redPacket = $("#redPacket");
        var bbinAll = $("#bbinAll");
        var addMoney = $("#addMoney");
        var mytext = $("#mytext");
        var exists = false;
        var authBankCard=false;
        
            $(".submit").click(function () {

                if (exists == false) {
                    $("#checkmoney").html("请先登陆!");
                    $(".li4").show(100);
                    return false;
                }
                
                if(authBankCard==false){
                 	$("#checkmoney").html("请先绑定银行卡，<a href='/account/security/memberBankcardView'>绑卡</a>");
                     $(".li4").show(100);
                 	return false;
                 }
                 var value = $(":input[name=totalFee]").val();
                 if (value == null || value == '') {
                     $("#checkmoney").html("金额不能为空");
                     $(".li4").show(100);
                     return false;
                 }
                 value = parseInt(value);
                 if (value
                         <100) {
                     $("#checkmoney").html("起投金额在100以上");
                     $(".li4").show(100);
                     return false;
                 }
                 var bonusFee = 0;
                 var bbinStatus = 0;
                 if (!(bbinAll.hasClass("active"))) {//未选中体验金
                     var acountval = $("#account").val();
                     if (acountval != -1) {
                         if ((acountval - value) < 0) {
                             $("#checkmoney").html("账号余额不足，请充值");
                             $(".li4").show(100);
                             return false;
                         }
                     }
                     if (redPacket.hasClass("active")) {//选中红包
                         bonusFee =0;
                     }
                 } else {
                     bbinStatus = 1;
                 }

                 $.ajax({
                     type: "POST", // 用POST方式传输
                     dataType: "json", // 数据格式:JSON
                     async: true,
                  //   url: '/subjectPur/order', // 目标地址
                     data: {
                         subjectId:1612,
                         totalFee: value,
                         bonusFee: bonusFee,
                         bbinStatus: bbinStatus
                     },
                     success: function (msg) {
                         if (msg.code == 0) {
                           //  window.location.href = "/subjectPur/orderView?tradeNo=" + msg.msg + "&bbinStatus=" + bbinStatus;
                         } else {
                             $("#checkmoney").html(msg.msg);
                             $(".li4").show(100);
                         }
                     }
                 });

             });


    });


</script>


</body>
</html>