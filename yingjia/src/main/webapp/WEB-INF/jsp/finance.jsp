<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width,maximum-scale=1.0,user-scalable=yes">
	<meta name="Keywords" content="股指体验交易，股指单手交易，股指多手交易">
	<meta name="description" content="申请实盘交易账户，直接进行实盘交易。">
	<title>我的加法库 - 盈+</title>
	
<meta name="keywords" content="盈+，盈，社区金融，O2O社区金融，社区金融O2O，O2O，互联网+社区金融，O2O连锁，社区门店，首家社区金融，社区金融服务，综合金融，互联网金融，体验中心，普惠金融，金融创新，社区化，普惠化，全渠道化，互联网线上平台，O2O交易，全国首家，盈十，金融衍生品，固收类理财，私募基金，股权基金，股指期货，玩转股指，商品期货，国际期货，外盘，A50，沪深300，中证500，上证50" />
<meta name="description" content="盈+——全国首家互联网金融交流体验中心，与您共盈，给财富做加法。" />
<link href="../BfAssets/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

<link href="../BfAssets/resources/web/font/iconfont.css" tppabs="http://pro.ying158.com/resources/web/font/iconfont.css" rel="stylesheet" type="text/css" />
<link href="../BfAssets/resources/web/css/common.css" tppabs="http://pro.ying158.com/resources/web/css/common.css" rel="stylesheet">
<link href="../BfAssets/resources/web/css/jw.css" tppabs="http://pro.ying158.com/resources/web/css/jw.css" rel="stylesheet">

<script src="../BfAssets/resources/web/js/jquery.js" tppabs="http://pro.ying158.com/resources/web/js/jquery.js"></script>
<script type="text/javascript" src="../BfAssets/resources/web/layer/layer.js" tppabs="http://pro.ying158.com/resources/web/layer/layer.js"></script>
<script src="../BfAssets/resources/web/echart/dist/echarts.js" tppabs="http://pro.ying158.com/resources/web/echart/dist/echarts.js"></script>
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
<script type="text/javascript">
    $(function(){
        function showIn(url){
            var info="<div class='mydig'><div class='bg'></div><div class='imgbox'><a href="+url+"></a></div></div>";
            $('body').append(info);
        }

    });

</script>    <div class="sdbanner probanner"></div>
    <div class="proMain">
    	<div class="hwpzNav">
    		<ul>
    			<li class="first"><a href="subject.htm" tppabs="http://pro.ying158.com/subject">固收类理财</a></li>
    			<li class="second"><a class="active" href="finance.htm" tppabs="http://pro.ying158.com/finance">私募基金</a></li>
    			<li class="three"><a href="oversea.htm" tppabs="http://pro.ying158.com/oversea">海外配置</a></li>
    			<li class="four"><a class="active" href="finance.htm" tppabs="http://pro.ying158.com/finance">股权基金</a></li>
    		</ul>
    	</div>

<meta name="keywords" content="盈+，盈，社区金融，O2O社区金融，社区金融O2O，O2O，互联网+社区金融，O2O连锁，社区门店，首家社区金融，社区金融服务，综合金融，互联网金融，体验中心，普惠金融，金融创新，社区化，普惠化，全渠道化，互联网线上平台，O2O交易，全国首家，盈十，金融衍生品，固收类理财，私募基金，股权基金，股指期货，玩转股指，商品期货，国际期货，外盘，A50，沪深300，中证500，上证50" />
<meta name="description" content="盈+——全国首家互联网金融交流体验中心，与您共盈，给财富做加法。" />
<link href="../BfAssets/resources/web/images/icon.ico" type="image/x-icon" rel="shortcut icon">

    <div class="ajaxContainer">
        <!-- 异步内容开始 -->
                <ul class="tbList">
                    <li class="first">
                        <span class="ico jp"></span>
                        <h2><b>凯丰对冲10号</b></h2>
                        <i></i>
                    </li>
                    <li class="second">
                        <div class="txt1" style="width:115px; margin-left:40px;">
                            <h2>45%</h2>
                            <p>年化收益</p>
                        </div>
                        <div class="txt2" style="width:120px;margin-left:40px;">
                            <h2>1000000</h2>
                            <p>起购金额(元)</p>
                        </div>
                    </li>
                    <li class="six three" style="width:290px;">
                        <p>已购人数：31人
                            <br>
                            管理人：深圳市凯丰投资管理有限公司<br>
                            投资方向：各交易所期货类、证券类投资品种等
                        </p>
                    </li>
                    <li class="five"><a class="abtn" href="/yingjia/item2/frontShopping" tppabs="http://pro.ying158.com/finance/financeView/28">购买</a></li>
                </ul>
                <ul class="tbList">
                    <li class="first">
                        <span class="ico jp"></span>
                        <h2><b>凯丰对冲9号</b></h2>
                        <i></i>
                    </li>
                    <li class="second">
                        <div class="txt1" style="width:115px; margin-left:40px;">
                            <h2>45%</h2>
                            <p>年化收益</p>
                        </div>
                        <div class="txt2" style="width:120px;margin-left:40px;">
                            <h2>1000000</h2>
                            <p>起购金额(元)</p>
                        </div>
                    </li>
                    <li class="six three" style="width:290px;">
                        <p>已购人数：36人
                            <br>
                            管理人：深圳市凯丰投资管理有限公司<br>
                            投资方向：各交易所期货类、证券类投资品种
                        </p>
                    </li>
                    <li class="five"><a class="abtn" href="/yingjia/item2/frontShopping" tppabs="http://pro.ying158.com/finance/financeView/27">购买</a></li>
                </ul>
                    <ul class="tbList">
                        <li class="first">
                            <span class="ico jp"></span>
                            <h2><b>和聚友道专享1号</b></h2>
                            <i></i>
                        </li>
                        <li class="second" style="width:630px;">
                            <div class="txt1">
                                <h2>35%</h2>
                                <p>年化收益</p>
                            </div>
                            <div class="txt2">
                                <h2>360</h2>
                                <p>期限(天)</p>
                            </div>
                            <div class="txt2">
                                <h2>1000000
                                </h2>
                                <p>起购金额(元)</p>
                            </div>

                        </li>
                        <li class="five"><a class="abtn" href="/yingjia/item2/frontShopping" tppabs="http://pro.ying158.com/finance/financeView/24">购买</a></li>
                    </ul>
        <!-- 异步内容结束 -->
	
	
	<div class="llpage">
		<div class="in">
			
				<a class="prev_page">上页</a>
			
			
					<a class="now" >1</a>
			
			
				<a class="next_page" rel="next">下页</a>
		</div>
	</div>
    </div>
    <script type="text/javascript">
        function getJsonInfo(url) {
            $.get(url, 'json', function (data) {
                $(".ajaxContainer").empty();
                $(".ajaxContainer").append(data);
            });
        }
    </script>    	
	</div>
	
<meta charset="UTF-8">
    <div class="security">
        <div class="item">
            <img src="../BfAssets/resources/web/images/indexSecurity1.png" tppabs="http://pro.ying158.com/resources/web/images/indexSecurity1.png">
            <div class="detail">
                资金银行监管
                <div class="desc">
                    平台资金由第三方银行监管
                </div>
            </div>
        </div>
        <div class="item">
            <img src="../BfAssets/resources/web/images/indexSecurity2.png" tppabs="http://pro.ying158.com/resources/web/images/indexSecurity2.png">
            <div class="detail">
                交易证监会监管
                <div class="desc">
                    投资交易由证监会监管
                </div>
            </div>
        </div>
        <div class="item">
            <img src="../BfAssets/resources/web/images/indexSecurity3.png" tppabs="http://pro.ying158.com/resources/web/images/indexSecurity3.png">
            <div class="detail">
                风控盈+监管
                <div class="desc">
                    盈+全自动风控系统为您保驾护航
                </div>
            </div>
        </div>
    </div>
	<div class="foot">
		<div class="container">
            <div class="row">
                <div class="hzhb_box">
                    <div class="title" style=" padding-left:10px; font-weight:normal; font-size:20px; color:#ccc;">
                        主要合作机构
                    </div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.picc.com/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.picc.com/'" tppabs="http://www.picc.com/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/1_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/1_on.png*/" onmouseout="this.src = '../BfAssets/resources/web/images/hzhb/1.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/1.jpg*/" src="../BfAssets/resources/web/images/hzhb/1.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/1.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.fuioupay.com/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.fuioupay.com/'" tppabs="http://www.fuioupay.com/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/2_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/2_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/2.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/2.jpg*/" src="../BfAssets/resources/web/images/hzhb/2.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/2.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.nanhua.net/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.nanhua.net/'" tppabs="http://www.nanhua.net/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/3_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/3_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/3.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/3.jpg*/" src="../BfAssets/resources/web/images/hzhb/3.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/3.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.zttrust.com.cn/stations/526623d20a/index.php/5268e6b50a  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.zttrust.com.cn/stations/526623d20a/index.php/5268e6b50a'" tppabs="http://www.zttrust.com.cn/stations/526623d20a/index.php/5268e6b50a"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/4_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/4_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/4.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/4.jpg*/" src="../BfAssets/resources/web/images/hzhb/4.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/4.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://sc.hkex.com.hk/TuniS/www.hkex.com.hk/eng/index.htm/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://sc.hkex.com.hk/TuniS/www.hkex.com.hk/eng/index.htm/'" tppabs="http://sc.hkex.com.hk/TuniS/www.hkex.com.hk/eng/index.htm/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/5_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/5_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/5.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/5.jpg*/" src="../BfAssets/resources/web/images/hzhb/5.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/5.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.cmegroup.com/cn-s/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.cmegroup.com/cn-s/'" tppabs="http://www.cmegroup.com/cn-s/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/6_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/6_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/6.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/6.jpg*/" src="../BfAssets/resources/web/images/hzhb/6.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/6.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.sgx.com/wps/portal/sgxweb_ch/home/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNHB1NPAycDSz9wwzMDTxD_Z2Cg8PCDANdjYEKIoEKDHAARwNC-sP1o8BK8JhQkBthkO6oqAgAzDYPQQ!!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.sgx.com/wps/portal/sgxweb_ch/home/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNHB1NPAycDSz9wwzMDTxD_Z2Cg8PCDANdjYEKIoEKDHAARwNC-sP1o8BK8JhQkBthkO6oqAgAzDYPQQ!!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/'" tppabs="http://www.sgx.com/wps/portal/sgxweb_ch/home/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNHB1NPAycDSz9wwzMDTxD_Z2Cg8PCDANdjYEKIoEKDHAARwNC-sP1o8BK8JhQkBthkO6oqAgAzDYPQQ!!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/7_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/7_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/7.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/7.jpg*/" src="../BfAssets/resources/web/images/hzhb/7.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/7.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.neeq.com.cn/index/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.neeq.com.cn/index/'" tppabs="http://www.neeq.com.cn/index/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/8_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/8_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/8.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/8.jpg*/" src="../BfAssets/resources/web/images/hzhb/8.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/8.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.cmbchina.com/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.cmbchina.com/'" tppabs="http://www.cmbchina.com/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/9_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/9_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/9.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/9.jpg*/" src="../BfAssets/resources/web/images/hzhb/9.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/9.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.bankcomm.com/BankCommSite/default.shtml  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.bankcomm.com/BankCommSite/default.shtml'" tppabs="http://www.bankcomm.com/BankCommSite/default.shtml"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/10_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/10_on.png*/" onmouseout="this.src = '../BfAssets/resources/web/images/hzhb/10.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/10.jpg*/" src="../BfAssets/resources/web/images/hzhb/10.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/10.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.ccb.com/cn/home/index.html  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.ccb.com/cn/home/index.html'" tppabs="http://www.ccb.com/cn/home/index.html"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/11_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/11_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/11.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/11.jpg*/" src="../BfAssets/resources/web/images/hzhb/11.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/11.jpg" /></a></div>
                    <div class="hzhb_item"><a target="_blank" href="javascript:if(confirm('http://www.icbc.com.cn/icbc/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.icbc.com.cn/icbc/'" tppabs="http://www.icbc.com.cn/icbc/"><img onmouseover="this.src = '../BfAssets/resources/web/images/hzhb/12_on.png'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/12_on.png*/" onmouseout="    this.src = '../BfAssets/resources/web/images/hzhb/12.jpg'/*tpa=http://pro.ying158.com/resources/web/images/hzhb/12.jpg*/" src="../BfAssets/resources/web/images/hzhb/12.jpg" tppabs="http://pro.ying158.com/resources/web/images/hzhb/12.jpg" /></a></div>
                </div>

                <div class="ft_item ft_item_sns">
                    <div class="ft_item_tit">关注我们</div>
                    <ul style=" margin-bottom:0px;" class="ft_sns_list clearfix">
                        <li>
                            <div class="wx_tips j_tips">
                                <div class="tips_hd">
                                    <em class="ico_sns ico_weixin"></em>
                                    <span class="txt">微信公众号</span>
                                </div>
                                <div class="tips_bd">
                                    <em class="arrow"></em>
                                    <img src="../BfAssets/resources/web/images/yj.jpg" tppabs="http://pro.ying158.com/resources/web/images/yj.jpg" alt="微信公共平台">
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="" target="_blank" rel="nofollow">
                                <em class="ico_sns ico_sinawb"></em>
                                <span class="txt">新浪微博</span>
                            </a>
                        </li>
                        <li>
                            <a href="" target="_blank" rel="nofollow">
                                <em class="ico_sns ico_txwb"></em>
                                <span class="txt">腾讯微博</span>
                            </a>
                        </li>
                    </ul>

                    <div class="contactUs">
                       <div class="title" style=" padding-left:10px; font-weight:normal; font-size:20px; color:#ccc;">
                          联系我们
                        </div>
                        <div class="contactInfo" style="padding-left:30px;">
                            <a style="display:inline-block; height:50px; width:50px; text-align:center; " target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=508886246&site=qq&menu=yes  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://wpa.qq.com/msgrd?v=3&uin=508886246&site=qq&menu=yes'" tppabs="http://wpa.qq.com/msgrd?v=3&uin=508886246&site=qq&menu=yes"><img src="../BfAssets/resources/web/images/qqIcon.png" tppabs="http://pro.ying158.com/resources/web/images/qqIcon.png" onmouseover="$(this).css('height', '52px');" onmouseout="    $(this).css('height', '48px');" /></a>
                            <span class="kefu">在线客服</span><span class="time">08:30 - 21:00</span>
                        </div>
                    </div>

                </div>

			</div>
		</div>
	</div>
	<div class="foot3">
		<div class="container">
			<div class="row">
				Copyright © 2010 - 2015 www.ying158.com All Rights Reserverd 杭州吉威投资管理有限公司 版权所有<br>
				浙ICP备14030807号-3 杭州市江干区钱江新城迪凯银座19F 4000-999-158
			</div>
		</div>
	</div>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "../hm.baidu.com/hm.js-06cf97732baac1a65bed8ae95f2384aa"/*tpa=http://hm.baidu.com/hm.js?06cf97732baac1a65bed8ae95f2384aa*/;
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
</body>
</html>