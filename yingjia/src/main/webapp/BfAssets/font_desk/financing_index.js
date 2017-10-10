/**
 * Created by mjyang on 2017/02/28.
 * 功能：
 * 1.眼睛功能，样式切换等视觉给结果
 * 2.各推荐位功能
 */
//var eyeClickCount=0;
//各业务链接
var suffix=".html";//网页后缀
var fixedAddress = "//dq.jd.com/";//定期理财
var fundAddress = "//fund.jd.com/";//基金理财
var goldAddress = "//firm-gold.jd.com/product/index.htm";//京东黄金
var fundSmartProDetailUrl="//sa.jd.com/detail/";//基智产品链接
var fundSmartIndexUrl="//sa.jd.com/list.html";//基智账户首页
var xjkTranInUrl="//xjk.jr.jd.com/xjk2in/topayin.htm?source=topRate";//小金库转入
var xjkRegularUrl="//xjk.jr.jd.com/fixedin/fixedbase.htm";//小金库定投
var xjkIndexUrl="//xjk.jr.jd.com/gold/page.htm";//小金库首页
var xjkOpenAccount="//xjk.jr.jd.com/open/index.htm";//小金库开户页
var xinbaoDetailUrl="//dq.jd.com/bwinItem.action?skuId=";//信保商品详情页
var fixedDetailUrl="//dq.jd.com/item.action?skuId=";//定期理财详情
var fundDetailUrl="//fund.jd.com/detail/";//基金详情页
var featureUrl="//licai.jd.com/async/tese.action";//特色理财页
var btAutoRepayment="//bt.jd.com/v3/activity/newAuto_init";//白条自动还款

//启动加载
jQuery().ready(function () {
	mappingAreaId();//区块赋值
});


//方法区

//展示隐藏 0:展示 1:隐藏
function eyeClickXJK() {
	try {
		var userMsg = $("#userMsg").val();
		if (userMsg != null && userMsg != '') {
			eyeClick();
			var flag = getEyeStatus();
			if (flag == 0){
				showXJKAccountAmount(0);
			}else{
				showXJKAccountAmount(1);
			}
		}/*else{
			$("#xjk-eye").toggleClass("close-eyes");
			var moneyData = $("#userXJKAmount").find(".asset-money").data("asset");
			if(eyeClickCount++%2){
				$("#userXJKAmount").find(".asset-money").text(moneyData);
			}else{
				$("#userXJKAmount").find(".asset-money").text("***");
			}
		}*/
	} catch (e) {

	}
}

//加载区块
function mappingAreaId(){
	jQuery.ajax({
		url: "/async/financing/getAreaMappingConfig.action?_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			if(result != null){
				var areaConfigMap = result.areaConfigMap;
				if(areaConfigMap != null){
					for (var key in areaConfigMap) {
						$(".homepage-container").find('div[data-part-id='+key+']').attr("data-part-value",areaConfigMap[key]);
					}
				}
				//1.小金库部分
				queryXJKAccountPersonal();
				//3.小金库个人账户
				//showXJKAccountAmount();
				//4.轮播图
				getBannerInfo();
				//5.今日爆款产品
				getTodayHotProduct();
				//6.理财知识
				getKnowledgeTips();
				//7.公告内容
				getPublicNews();
				//8.小金库区展示内容
				getXJKAccountContent();
				//9.小金库购买理财
				getXJKAccountTran();
				//10.小金库消费还款
				getXJKAccountBuy();
				//11.白条自动还款内容
				getBTAutoRepayment();
				//12.定期理财内容
				getFixedProductList();
				//13.基智热度
				getBroadCastHeat();
				//14.按热度时间获取推荐产品
				//getFundProListByDate();
				//15.获取基金推荐内容
				getFundAdjustProduct();
				//16.基金主题推荐数据（右下侧）
				getFundNormalProList();
				//17.特色理财
				getFeatureProList();

			}
		}
	});
}

//组装小金库个人账户部分展示
function queryXJKAccountPersonal(){
	jQuery.ajax({
		url: "/async/isOpenXJK.action?_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var isOpen = result.isOpen;
			showXJKAccountPersonal(isOpen);
		}
	});
}
function showXJKAccountPersonal(isOpen){
	var htmlStr = "";
	htmlStr += '<div class="financial-logo"><div class="financial-logo-box">';
	htmlStr += '<div class="logo-circle-box">';
	htmlStr += '<div class="circle1"></div><div class="circle2"></div><div class="circle3"></div>';
	htmlStr += '</div>';
	htmlStr += '<div class="f-text-logo"></div>';
	htmlStr += '</div></div>';
	htmlStr += '<div class="user-xjk-area"><div class="user-xjk-asset" id="userXJKAmount">';
	htmlStr += '<h3>京东小金库';
	if (isOpen != null && isOpen ==1) {
		htmlStr += '<i class="eye-icon" id="xjk-eye" onclick="eyeClickXJK();" title="隐藏/显示金额"></i>';
		htmlStr += '</h3>';
		htmlStr += '<p class="total-asset-text">可用余额 <em class="asset-money" data-asset="0.00">0.00</em> 元</p>';
	}else{
		htmlStr += '</h3>'
		htmlStr += '<div class="lead-open-area">';
		htmlStr += '<a href="'+xjkOpenAccount+'" class="open-xjk-btn" psa="xjkkh" >立即开通小金库</a>';
		htmlStr += '</div>';
	}
	htmlStr += '</div></div>';
	htmlStr += '<div class="more-financial-link">';
	htmlStr += '<div class="financial-type">';
	htmlStr += '<h3 class="blue-color"><i class="been"></i>稳健理财</h3>';
	htmlStr += '<a href="'+ fixedAddress +'" psa="LCfl" target="_blank">定期理财 <em> > </em></a>';
	htmlStr += '</div>';
	htmlStr += '<div class="financial-type">';
	htmlStr += '<h3 class="red-color"><i class="been"></i>进阶理财</h3>';
	htmlStr += '<a href="'+ fundAddress +'" psa="LCfl" target="_blank">基金理财 <em> > </em></a>';
	//htmlStr += ' <a href="'+ goldAddress +'" psa="LCfl" target="_blank">京东黄金 <em> > </em></a>';
	htmlStr += '</div>';
	htmlStr += '</div>';
	$("#userXJK").html(htmlStr);
	eyeInitXJKAccountAmount();
}
//展示小金库账户余额 0：展示 1：隐藏
function showXJKAccountAmount(type) {
	//flag 0:展示 1：隐藏
	if (type == 0) {
		jQuery.ajax({
			url: "/async/getXJKAccountAmount.action?_dc=" + new Date().getTime(),
			type: "POST",
			async: true,
			success: function (result) {
				if (result != null) {
					var xjkAvailbleAmount = formatOverViewAmount(result.xjkAvailbleAmount); //小金库余额
					//$("#userXJKAmount").find('em.asset-money').text(xjkAvailbleAmount);
					$("#userXJKAmount").find(".asset-money").attr('data-asset', xjkAvailbleAmount);
					$("#userXJKAmount").find(".asset-money").text(xjkAvailbleAmount);
					$("#xjk-eye").attr("class", "eye-icon");
				}
			}
		});
	} else {
		$("#xjk-eye").attr("class", "eye-icon close-eyes");
		$("#userXJKAmount").find(".asset-money").text("***");
	}
}

//获取轮播图内容
function getBannerInfo(){
	var areaId = $("#bannerPic").attr("data-part-value");
	jQuery.ajax({
		url: "/async/financing/getBannerInfo.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var bannerList = result.bannerInfoList;
			$("#bannerPic").html(showBannerInfo(bannerList));
			orderPlay();
		},
		error:function(){
			$("#bannerPic").html(showBannerInfo(null));
			orderPlay();
		}
	});
}
//展示轮播图
function showBannerInfo(bannerList){
	var htmlStr = "";
	htmlStr += '<div class="banner-box-w" id="bannerPicList">';
	htmlStr += '<ul class="change-banner-ul">';
	if(bannerList != null && bannerList.length>0){
		for(var i=0;i<bannerList.length;i++){
			var bannerInfo = bannerList[i];
			htmlStr += '<li class="change-banner-list">';
			if(bannerInfo.linkUrl !=null && bannerInfo.linkUrl !=""){
				htmlStr += '<a href="'+bannerInfo.linkUrl+'" psa="LCbanner" target="_blank"><img src="'+bannerInfo.imageSrc+'" alt=""/></a>';
			}else{
				htmlStr += '<a psa="LCbanner"><img src="'+bannerInfo.imageSrc+'" alt=""/></a>';
			}
			htmlStr += '</li>';
		}
	}else{
		htmlStr += '<li class="change-banner-list">';
		htmlStr += '<a href=""><img src="//img30.360buyimg.com/jr_image/jfs/t3871/234/2441425310/504479/4054cdf9/58aa9e28N74897500.png" alt=""/></a>';
		htmlStr += '</li>';
		htmlStr += '<li class="change-banner-list">';
		htmlStr += '<a href=""><img src="//img30.360buyimg.com/jr_image/jfs/t4354/75/38008548/75442/c212d2f4/58ae3535Ne7b80a06.jpg" alt=""/></a>';
		htmlStr += '</li>';
	}
	htmlStr += '</ul>';
	htmlStr += '</div>';
	htmlStr += '<div class="prev-btn"> < </div>';
	htmlStr += '<div class="next-btn"> > </div>';
	htmlStr += '<div class="change-tabs-number">';
	htmlStr += '</div>';
	return htmlStr;
}

//获取今日爆款产品
function getTodayHotProduct(){
	$("#todayHotPro").find('a').attr('href',fixedAddress);
	var areaId = $("#todayHotPro").attr("data-part-value");
	jQuery.ajax({
		url: "/async/getTodayHotProduct.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var todayHotProduct = result.todayHotProduct;
			$("#todayHotPro").html(showTodayHotProduct(todayHotProduct));
		},
		error: function () {
			$("#todayHotPro").html(showTodayHotProduct(null));
		}
	});
}
//展示今日爆款
function showTodayHotProduct(productInfo){
	var htmlStr = "";
	htmlStr += '<h3 class="hot-text">今日爆款</h3>';
	if(productInfo != null){
		var psaKey = productInfo.statisticKey;
		htmlStr += '<p class="hot-pro-name">'+ productInfo.productName +'</p>';
		/*htmlStr += '<p class="hot-pro-name">'+ productInfo.productName +' - 期限'+productInfo.productPeriod +'</p>';*/
		if(productInfo.productRate == null){
			htmlStr += '<span class="income-num">---</span>';
		}else{
			htmlStr += '<span class="income-num">'+productInfo.productRate.toFixed(2)+'<em>%</em></span>';
		}
		htmlStr += '<p class="yield-text">'+productInfo.productRateDiscribe+'</p>';
		htmlStr += '<div class="btn-area">';
		htmlStr += '<div class="btn-box">';
		if(productInfo.skuId==null){
			htmlStr += '<a href="">立即赚钱</a>';
		}else{
			var linkUrl="";
			if(productInfo.productType==5){//信保
				linkUrl = xinbaoDetailUrl+productInfo.skuId;
			}else if(productInfo.productType==4){//定期
				linkUrl = fixedDetailUrl+productInfo.skuId;
			}else if(productInfo.productType==6){//黄金
				linkUrl = goldAddress;
			}else if(productInfo.productType==1||productInfo.productType==3){//基金
				linkUrl = fundDetailUrl+productInfo.skuId+suffix;
			}else{//基智
				linkUrl = fundSmartProDetailUrl+productInfo.skuId+suffix;
			}
			htmlStr += '<a href="'+linkUrl+'" psa="'+psaKey+'" target="_blank">立即赚钱</a>';
		}
		htmlStr += '</div>';
		htmlStr += '</div>';
	}else{
		htmlStr += '<p class="hot-pro-name">京惠月月盈 - 期限30天</p>';
		htmlStr += '<span class="income-num">4.52<em>%</em></span>';
		htmlStr += '<p class="yield-text">预期年化收益率</p>';
		htmlStr += '<div class="btn-area">';
		htmlStr += '<div class="btn-box">';
		htmlStr += '<a href="">立即赚钱</a>';
		htmlStr += '</div>';
		htmlStr += '</div>';
	}
	return htmlStr;
}

//获取理财知识
function getKnowledgeTips(){
	var areaId = $("#learnKnowledge").attr("data-part-value");
	$("#learnKLXJK").attr('href',xjkIndexUrl);
	$("#learnKLFixed").attr('href',fixedAddress);
	$("#learnKLSmartFund").attr('href',fundSmartIndexUrl);
	jQuery.ajax({
		url: "/async/financing/getKnowledgeTips.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var knowledgeList = result.knowledgeList;
			if(knowledgeList != null && knowledgeList.length>0){
				$("#knowledgeList").html("");
				for(var i=0;i<knowledgeList.length;i++){
					$("#knowledgeList").append(showKnowledgeTips(knowledgeList[i],i));
				}
			}else{
				var htmlStr="";
				htmlStr += '<li class="financial-push-list list-one"><a href="javascript:;" class="position-box" id="learnKLXJK">';
				htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg01.jpg" alt=""/>';
				htmlStr +='<div class="kuang"><h3>学习理财知识<span>得理财券</span></h3><span class="pro-btn" style="left: 90px;">京东小金库</span>';
				htmlStr +='</div></a></li>';
				htmlStr +='<li class="financial-push-list list-two"><a href="javascript:;" class="position-box"  id="learnKLFixed">';
				htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg02.jpg" alt=""/>';
				htmlStr +='<div class="kuang"><h3>首次购买即<span>送百元红包</span></h3><span class="pro-btn">定期理财</span>';
				htmlStr +='</div></a></li>';
				htmlStr +='<li class="financial-push-list list-three"><a href="javascript:;" class="position-box"  id="learnKLSmartFund">';
				htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg03.jpg" alt=""/>';
				htmlStr +='<div class="kuang"><h3>专家打造组合<span>目标10%</span></h3><span class="pro-btn">基智账户</span>';
				htmlStr +='</div></a></li>';
				$("#knowledgeList").append(htmlStr);
			}
		},
		error: function () {
			var htmlStr="";
			htmlStr += '<li class="financial-push-list list-one"><a href="javascript:;" class="position-box" id="learnKLXJK">';
			htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg01.jpg" alt=""/>';
			htmlStr +='<div class="kuang"><h3>学习理财知识<span>得理财券</span></h3><span class="pro-btn" style="left: 90px;">京东小金库</span>';
			htmlStr +='</div></a></li>';
			htmlStr +='<li class="financial-push-list list-two"><a href="javascript:;" class="position-box"  id="learnKLFixed">';
			htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg02.jpg" alt=""/>';
			htmlStr +='<div class="kuang"><h3>首次购买即<span>送百元红包</span></h3><span class="pro-btn">定期理财</span>';
			htmlStr +='</div></a></li>';
			htmlStr +='<li class="financial-push-list list-three"><a href="javascript:;" class="position-box"  id="learnKLSmartFund">';
			htmlStr +='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/f-bg03.jpg" alt=""/>';
			htmlStr +='<div class="kuang"><h3>专家打造组合<span>目标10%</span></h3><span class="pro-btn">基智账户</span>';
			htmlStr +='</div></a></li>';
			$("#knowledgeList").append(htmlStr);
		}
	});
}
//展示理财知识
function showKnowledgeTips(knowledge,flag){
	var htmlStr = "";
	var psaKey = knowledge.statisticKey+(flag+1);
	if(flag==0){
		htmlStr += '<li class="financial-push-list list-one">';
	}else if(flag==1){
		htmlStr += '<li class="financial-push-list list-two">';
	}else{
		htmlStr += '<li class="financial-push-list list-three">';
	}
	if(knowledge.linkUrl !=null && knowledge.linkUrl !=""){
		htmlStr += '<a href="'+knowledge.linkUrl+'" class="position-box" psa="'+psaKey+'" target="_blank">';
	}else{
		htmlStr += '<a class="position-box" psa="'+psaKey+'">';
	}
	htmlStr += '<img src="'+knowledge.imageSrc+'" alt=""/>';
	htmlStr += '</a>';
	htmlStr += '</li>';
	return htmlStr;
}

//获取公告内容
function getPublicNews(){
	var address = $("#publicNews").attr("data-part-value");
	jQuery.ajax({
		url: "/async/financing/getPublicNews.action?address="+address+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var publicNews = result.publicNews;
			if(publicNews != null && publicNews.length>0){
				$("#publicNews").html("");
				var htmlStr='<span class="public-text">[公告]</span>';
				htmlStr+='<ul class="mess-ul clearfix">';
				for(var i=0;i<publicNews.length;i++){
					htmlStr+=showPublicNews(publicNews[i],i,publicNews.length);
				}
				htmlStr+='</ul>';
				$("#publicNews").append(htmlStr);
			}else{
				$("#publicNews").html("");
			}
		},
		error:function(){
			$("#publicNews").html("");
		}
	});
}
//展示公告内容
function showPublicNews(publicNews,flag,length){
	var htmlStr = "";
	if(flag==0){
		htmlStr += '<li class="first-mess">';
	}else if(flag==1){
		htmlStr += '<li class="center-mess">';
	}else{
		htmlStr += '<li class="last-mess">';
	}
	if(publicNews.linkUrl !=null && publicNews.linkUrl !=""){
		htmlStr += '<a href="'+publicNews.linkUrl+'" target="_blank">'+publicNews.productName;
	}else{
		htmlStr += '<a>'+publicNews.productName;
	}
	htmlStr += '</a>';
	if(flag!=(length-1)){
		htmlStr += '<i class="line"></i>';
	}
	htmlStr += '</li>';
	return htmlStr;
}

//获取小金库区展示内容
function getXJKAccountContent(){
	$("#xjkAccount").find('a[class="turn-into-btn"]').attr('href',xjkTranInUrl);
	$("#xjkAccount").find('a[class="dt-btn"]').attr('href',xjkRegularUrl);
	jQuery.ajax({
		url: "/async/financing/getXJKAccount.action?_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var xjk7rate = result.xjk7rate;
			if(xjk7rate !=null){
				$("#xjkAccount").find('span[class="income-num"]').html(xjk7rate.toFixed(4)+'<em>%</em>');
			}
		}
	});
}

//获取支持购买理财内容
function getXJKAccountTran(){
	var areaId = $("#xjkAccountTran").attr("data-part-value");
	$("#xjkAccountProList a").each(function(){
		$(this).attr("href",xjkIndexUrl);
	});
	jQuery.ajax({
		url: "/async/financing/getXJKTranProList.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var xjkTranProList = result.xjkTranProList;
			if(xjkTranProList !=null && xjkTranProList.length>0){
				$("#xjkAccountProList").html("");
				for(var i=0;i<xjkTranProList.length;i++){
					$("#xjkAccountProList").append(showXJKAccountTran(xjkTranProList[i],i));
				}
			}else{
				$("#xjkAccountProList").html("");
				var htmlStr='<li class="support-financial-list"><div class="product-box"><h3><a href=""><em>定期</em>-京穗月月盈一号</a></h3>';
				htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>4.80<em>%</em></span><p>预期年化收益</p></div>';
				htmlStr+='<div class="limit-box"><span>68<em>天</em></span><p>理财期限</p></div></div></div>';
				htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
				htmlStr+='<li class="support-financial-list"><div class="product-box"><h3><a href=""><em>基金</em>-目标盈系列</a></h3>';
				htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>10.00<em>%</em></span><p>目标年化收益</p></div>';
				htmlStr+='<div class="limit-box"><span>90-270<em>天</em></span><p>理财期限</p></div></div></div>';
				htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
				htmlStr+='<li class="support-financial-list no-bottom-line"><div class="product-box"><h3><a href=""><em>基金</em>-随心盈系列</a></a></h3>';
				htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>2.23<em>%</em></span><p>成立以来收益率</p></div>';
				htmlStr+='<div class="limit-box"><span>随存随取</span><p>理财期限</p></div></div></div>';
				htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
				$("#xjkAccountProList").append(htmlStr);
			}
		},
		error:function(){
			$("#xjkAccountProList").html("");
			var htmlStr='<li class="support-financial-list"><div class="product-box"><h3><a href=""><em>定期</em>-京穗月月盈一号</a></h3>';
			htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>4.80<em>%</em></span><p>预期年化收益</p></div>';
			htmlStr+='<div class="limit-box"><span>68<em>天</em></span><p>理财期限</p></div></div></div>';
			htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
			htmlStr+='<li class="support-financial-list"><div class="product-box"><h3><a href=""><em>基金</em>-目标盈系列</a></h3>';
			htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>10.00<em>%</em></span><p>目标年化收益</p></div>';
			htmlStr+='<div class="limit-box"><span>90-270<em>天</em></span><p>理财期限</p></div></div></div>';
			htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
			htmlStr+='<li class="support-financial-list no-bottom-line"><div class="product-box"><h3><a href=""><em>基金</em>-随心盈系列</a></a></h3>';
			htmlStr+='<div class="financial-data-limit clearfix"><div class="income-box"><span>2.23<em>%</em></span><p>成立以来收益率</p></div>';
			htmlStr+='<div class="limit-box"><span>随存随取</span><p>理财期限</p></div></div></div>';
			htmlStr+='<div class="xjk-buy-btn"><a href="">小金库购买</a></div></li>';
			$("#xjkAccountProList").append(htmlStr);
		}
	});
}
//展示支持购买理财内容
function showXJKAccountTran(xjkTranProduct,flag){
	var psaKey = xjkTranProduct.statisticKey;
	var productUrl = "";
	var productTypeStr="";
	if(xjkTranProduct.productType==5){//信保
		productUrl = xinbaoDetailUrl+xjkTranProduct.skuId;
		productTypeStr="定期";
	}else if(xjkTranProduct.productType==4){//定期
		productUrl = fixedDetailUrl+xjkTranProduct.skuId;
		productTypeStr="定期";
	}else if(xjkTranProduct.productType==6){//黄金
		productUrl = goldAddress;
		productTypeStr="黄金";
	}else if(xjkTranProduct.productType==1||xjkTranProduct.productType==3){//基金
		productUrl = fundDetailUrl+xjkTranProduct.skuId+suffix;
		productTypeStr="基金";
	}else{//基智
		productUrl = fundSmartProDetailUrl+xjkTranProduct.skuId+suffix;
		productTypeStr="基智账户";
	}
	var htmlStr = "";
	if(flag == 2){
		htmlStr += '<li class="support-financial-list no-bottom-line">';
	}else{
		htmlStr += '<li class="support-financial-list">';
	}

	htmlStr += '<div class="product-box">';
	if(productTypeStr == ""){
		htmlStr += '<h3><a href="'+productUrl+'" psa="'+psaKey+'" target="_blank">'+xjkTranProduct.productName+'</a></h3>';
	}else{
		htmlStr += '<h3><a href="'+productUrl+'" psa="'+psaKey+'" target="_blank"><em>'+productTypeStr+'</em>-'+xjkTranProduct.productName+'</a></h3>';
	}
	htmlStr += '<div class="financial-data-limit clearfix">';
	htmlStr += '<div class="income-box">';
	if(xjkTranProduct.productRate == null){
		htmlStr += '<span>---</span>';
	}else{
		htmlStr += '<span>'+xjkTranProduct.productRate.toFixed(2)+'<em>%</em></span>';
	}
	htmlStr += ' <p>'+xjkTranProduct.productRateDiscribe+'</p>';
	htmlStr += ' </div>';
	htmlStr += '<div class="limit-box">';
	if(xjkTranProduct.productType==6){
		if(xjkTranProduct.productPeriod=="1"){
			htmlStr += '<span>京生金活期</span>';
		}else if(xjkTranProduct.productPeriod=="2"){
			htmlStr += '<span>京生金定期</span>';
		}else{
			htmlStr += '<span>京生金提金</span>';
		}
	}else{
		htmlStr += '<span>'+xjkTranProduct.productPeriod+'</span>';
	}
	if(xjkTranProduct.productType!=6){
		htmlStr += '<p>理财期限</p>';
	}
	htmlStr += '</div>';
	htmlStr += '</div>';
	htmlStr += '</div>';
	htmlStr += '<div class="xjk-buy-btn">';
	if(xjkTranProduct.productType==6){
		htmlStr += '<a href="'+productUrl+'" psa="'+psaKey+'" target="_blank">查看详情</a>';
	}else{
		htmlStr += '<a href="'+productUrl+'" psa="'+psaKey+'" target="_blank">小金库购买</a>';
	}
	htmlStr += '</div>';
	htmlStr += '</li>';
	return htmlStr;
}

//支持消费还款
function getXJKAccountBuy(){
	var areaId = $("#xjkAccountBuy").attr("data-part-value");
	$("#xjkAccountBuyPart").find('a[class="more"]').attr("href",xjkIndexUrl);
	$("#xjkAccountBuy a").each(function(){
		$(this).attr("href",xjkIndexUrl);
	})
	jQuery.ajax({
		url: "/async/financing/getXJKAccountBuyList.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var xjkBuyProList = result.xjkBuyProList;
			if(xjkBuyProList !=null && xjkBuyProList.length>0){
				$("#xjkAccountBuy").html("");
				for(var i=0;i<xjkBuyProList.length;i++){
					$("#xjkAccountBuy").append(showXJKAccountBuy(xjkBuyProList[i]));
				}
			}else{
				$("#xjkAccountBuy").html("");
				var htmlStr='<div class="financial-pro-list">';
				htmlStr+='<a href=""><div class="pro-box"><div class="pro-w"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/pro02.jpg" alt=""/></div></div>';
				htmlStr+='<p class="pro-name">御茶膳房 宫廷月饼约定</p><span class="red-w">小金库支付返现5%</span></a></div>';
				htmlStr+='<div class="financial-pro-list"><a href=""><div class="pro-box"><div class="pro-w">';
				htmlStr+='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/pro01.jpg" alt=""/></div></div>';
				htmlStr+='<p class="pro-name">御茶膳房 宫廷月饼约定</p><span class="red-w">每满3000减200</span></a></div>';
				$("#xjkAccountBuy").append(htmlStr);
			}
		},
		error:function(){
			$("#xjkAccountBuy").html("");
			var htmlStr='<div class="financial-pro-list">';
			htmlStr+='<a href=""><div class="pro-box"><div class="pro-w"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/pro02.jpg" alt=""/></div></div>';
			htmlStr+='<p class="pro-name">御茶膳房 宫廷月饼约定</p><span class="red-w">小金库支付返现5%</span></a></div>';
			htmlStr+='<div class="financial-pro-list"><a href=""><div class="pro-box"><div class="pro-w">';
			htmlStr+='<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/pro01.jpg" alt=""/></div></div>';
			htmlStr+='<p class="pro-name">御茶膳房 宫廷月饼约定</p><span class="red-w">每满3000减200</span></a></div>';
			$("#xjkAccountBuy").append(htmlStr);
		}
	});
}
//展示消费还款
function showXJKAccountBuy(xjkBuyProList){
	var htmlStr = "";
	var psaKey = xjkBuyProList.statisticKey;
	htmlStr += '<div class="financial-pro-list">';
	if(xjkBuyProList.linkUrl !=null && xjkBuyProList.linkUrl !=""){
		htmlStr += '<a href="'+xjkBuyProList.linkUrl+'" psa="'+psaKey+'" target="_blank">';
	}else{
		htmlStr += '<a psa="'+psaKey+'">';
	}
	htmlStr += '<div class="pro-box">';
	htmlStr += '<div class="pro-w">';
	htmlStr += '<img src="'+xjkBuyProList.imageSrc+'" alt=""/>';
	htmlStr += '</div>';
	htmlStr += '</div>';
	htmlStr += ' <p class="pro-name">'+xjkBuyProList.title+'</p>';
	htmlStr += ' <span class="red-w">'+xjkBuyProList.subTitle+'</span>';
	htmlStr += ' </a>';
	htmlStr += ' </div>';
	return htmlStr;
}

//获取白条自动还款内容
function getBTAutoRepayment(){
	var areaId = $("#btAutoRepayment").attr("data-part-value");
	$("#btAutoRepayment").find('a').attr('href',btAutoRepayment);
	jQuery.ajax({
		url: "/async/financing/getBTAutoRepay.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var btAutoRepay = result.btAutoRepay;
			if(btAutoRepay !=null){
				var psaKey = btAutoRepay.statisticKey;
				$("#btAutoRepayment").html("");
				var htmlStr = '<div class="baitiao-text-box">';
				htmlStr +='<h3>'+btAutoRepay.title+'</h3>';
				htmlStr +='<p>'+btAutoRepay.subTitle+'</p>';
				if(btAutoRepay.linkUrl != null && btAutoRepay.linkUrl !=""){

					htmlStr +='<a href="'+btAutoRepay.linkUrl+'" class="check-more common-btn" psa="'+psaKey+'" target="_blank">查看详情</a>';
				}else{
					htmlStr +='<a class="check-more common-btn" psa="'+psaKey+'">查看详情</a>';
				}
				htmlStr +='</div>';
				$("#btAutoRepayment").append(htmlStr);
			}else{
				$("#btAutoRepayment").html("");
				var htmlStr = '<div class="baitiao-text-box">';
				htmlStr += '<h3>白条自动还款</h3>';
				htmlStr +='<p>小金库支持白条自动还款避免逾期</p>';
				htmlStr +='<a href="" class="check-more common-btn">查看详情</a>';
				htmlStr +='</div>';
				$("#btAutoRepayment").append(htmlStr);
			}
		},
		error:function(){
			$("#btAutoRepayment").html("");
			var htmlStr = '<div class="baitiao-text-box">';
			htmlStr += '<h3>白条自动还款</h3>';
			htmlStr +='<p>小金库支持白条自动还款避免逾期</p>';
			htmlStr +='<a href="" class="check-more common-btn">查看详情</a>';
			htmlStr +='</div>';
			$("#btAutoRepayment").append(htmlStr);
	}
	});
}

//获取定期理财内容
function getFixedProductList(){
	var areaId = $("#fixedFinancialArea").attr("data-part-value");
	$("#fixedFinancialArea").find('a[class="more"]').attr("href",fixedAddress);
	$("#fixedProductList a").each(function(){
		$(this).attr("href",fixedAddress);
	});
	jQuery.ajax({
		url: "/async/financing/getFixedProductList.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var fixedProductList = result.fixedProductList;
			if(fixedProductList !=null && fixedProductList.length>0){
				$("#fixedProductList").html("");
				for(var i=0;i<fixedProductList.length;i++){
					$("#fixedProductList").append(showFixedProduct(fixedProductList[i],i));
				}
			}else{
				$("#fixedProductList").html("");
				var htmlStr='<li class="regular-pro-list"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro01.jpg" alt=""/>';
				htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限18天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">5.60<em>%</em></span>';
				htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
				htmlStr += '</div></div></a></li>';
				htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro02.jpg" alt=""/>';
				htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限30天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">4.35<em>%</em></span>';
				htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
				htmlStr += '</div></div></a></li>';
				htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro03.jpg" alt=""/>';
				htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限120天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">4.85<em>%</em></span>';
				htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
				htmlStr += '</div></div></a></li>';
				htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro04.jpg" alt=""/>';
				htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限365天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">5.68<em>%</em></span>';
				htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
				htmlStr += '</div></div></a></li>';
				$("#fixedProductList").append(htmlStr);
			}
		},
		error:function(){
			$("#fixedProductList").html("");
			var htmlStr='<li class="regular-pro-list"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro01.jpg" alt=""/>';
			htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限18天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">5.60<em>%</em></span>';
			htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
			htmlStr += '</div></div></a></li>';
			htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro02.jpg" alt=""/>';
			htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限30天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">4.35<em>%</em></span>';
			htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
			htmlStr += '</div></div></a></li>';
			htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro03.jpg" alt=""/>';
			htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限120天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">4.85<em>%</em></span>';
			htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
			htmlStr += '</div></div></a></li>';
			htmlStr+='<li class="regular-pro-list ml20"><a href="javascript:;"><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro04.jpg" alt=""/>';
			htmlStr += '<div class="d-pro-box"><h3 class="financial-days">期限365天</h3><p class="pro-name">京穗月月盈一号理财计划</p><span class="income-data">5.68<em>%</em></span>';
			htmlStr += '<p class="income-text">预期年化收益率</p><div class="buy-now-btn"><span class="white-bg"></span><b>立即抢购</b>';
			htmlStr += '</div></div></a></li>';
			$("#fixedProductList").append(htmlStr);
		}
	});
}
//展示定期理财内容
function showFixedProduct(fixedProduct,flag){
	var htmlStr = "";
	var psaKey = fixedProduct.statisticKey;
	var productUrl = fixedDetailUrl+fixedProduct.skuId;
	if(fixedProduct.productType==5){
		productUrl = xinbaoDetailUrl+fixedProduct.skuId;
	}
	if(flag==0){
		htmlStr += '<li class="regular-pro-list">';
	}else{
		htmlStr += '<li class="regular-pro-list ml20">';
	}
	htmlStr += ' <a href="'+productUrl+'" psa="'+psaKey+'" target="_blank">';
	if(flag==0){
		htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro01.jpg" alt=""/>';
	}else if(flag==1){
		htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro02.jpg" alt=""/>';
	}else if(flag==2){
		htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro03.jpg" alt=""/>';
	}else{
		htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/d-pro04.jpg" alt=""/>';
	}

	htmlStr += '<div class="d-pro-box">';

	htmlStr += '<h3 class="financial-days">期限'+fixedProduct.productPeriod+'</h3>';
	htmlStr += '<p class="pro-name">'+fixedProduct.productName+'</p>';
	if(fixedProduct.productRate == null){
		htmlStr += '<span class="income-data">---</span>';
	}else{
		htmlStr += '<span class="income-data">'+fixedProduct.productRate.toFixed(2)+'<em>%</em></span>';
	}
	htmlStr += '<p class="income-text">'+fixedProduct.productRateDiscribe+'</p>';
	htmlStr += '<div class="buy-now-btn">';
	htmlStr += '<span class="white-bg"></span>';
	htmlStr += '<b>立即抢购</b>';
	htmlStr += '</div>';
	htmlStr += '</div>';
	htmlStr += ' </a>';
	htmlStr += '</li>';
	return htmlStr;
}

//获取基智热度
function getBroadCastHeat(){
	$("#fundArea").find('a[class="more"]').attr("href",fundAddress);
		jQuery.ajax({
			url: "/async/financing/getJZBroadCast.action?_dc=" + new Date().getTime(),
			type: "POST",
			async: true,
			success: function (result) {
				if (result != null){
					var heat = result.heat;
					var shareAdvise = result.shareAdvise;//温和上涨等
					var heatAdvise = result.heatAdvise;
					var degreeDateStr = result.degreeDateStr;
					if(degreeDateStr != null && degreeDateStr != ''){
						$("#degreeDateStr").val(degreeDateStr);
						getFundProListByDate();
					}
					$("#fundGauge").attr('data-value',heat);
					$("#smart-fund-hot").find('div[class="meter-state"]').text(shareAdvise);
					$("#smart-fund-hot").find('div[class="hot-suggest-text"]').text(heatAdvise);
					scrollAnimation();
				}
			}
	});

}

//按热度时间获取推荐产品
function getFundProListByDate(){
	var dateStr = $("#degreeDateStr").val();
	$("#smart-pro-list a").each(function(){
		$(this).attr("href",fundAddress);
	});
	jQuery.ajax({
		url: "/async/financing/getFundProListByDate.action?date="+dateStr+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			if (result != null && result.fundProList != null && result.fundProList.length>0){
				$("#smart-pro-list").html("");
				for(var i=0;i<result.fundProList.length+1;i++){
					if(i==result.fundProList.length){
						$("#smart-pro-list").append(showFundProListByDate(null,result.fundProList.length+1))
					}else{
						$("#smart-pro-list").append(showFundProListByDate(result.fundProList[i],i))
					}
				}
			}else{
				$("#smart-pro-list").html("");
				var htmlStr = '<li class="fund-pro-list"><h3 class="fund-pro-name"><a href="">广发中证500ETF联接C类</a></h3><span class="fund-pro-income">3.16<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
				htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
				htmlStr += '<li class="fund-pro-list br-none"><h3 class="fund-pro-name"><a href="">易方达深证100联接</a></h3><span class="fund-pro-income">2.99<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
				htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
				htmlStr += '<li class="fund-pro-list bottom-list"><h3 class="fund-pro-name"><a href="">国泰创业板指数（LOF）</a></h3><span class="fund-pro-income">1.58<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
				htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
				htmlStr += '<li class="fund-pro-list bottom-list br-none"><div class="more-choose-box"><a href="'+fundAddress+'" class="more-pro"><p>更多产品 <em>></em></p><span>SEE  ALL</span></a></div></li>';
				$("#smart-pro-list").append(htmlStr);
			}
		},
		error:function(){
			$("#smart-pro-list").html("");
			var htmlStr = '<li class="fund-pro-list"><h3 class="fund-pro-name"><a href="">广发中证500ETF联接C类</a></h3><span class="fund-pro-income">3.16<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
			htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
			htmlStr += '<li class="fund-pro-list br-none"><h3 class="fund-pro-name"><a href="">易方达深证100联接</a></h3><span class="fund-pro-income">2.99<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
			htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
			htmlStr += '<li class="fund-pro-list bottom-list"><h3 class="fund-pro-name"><a href="">国泰创业板指数（LOF）</a></h3><span class="fund-pro-income">1.58<em>%</em></span><p class="income-text">温和上涨期间涨幅</p>';
			htmlStr += '<div class="btn-area"><a href="" class="common-btn">立即买入</a></div></li>';
			htmlStr += '<li class="fund-pro-list bottom-list br-none"><div class="more-choose-box"><a href="'+fundAddress+'" class="more-pro"><p>更多产品 <em>></em></p><span>SEE  ALL</span></a></div></li>';
			$("#smart-pro-list").append(htmlStr);
		}
	});
}
//展示热度时间获取推荐产品
function showFundProListByDate(fundProduct,flag){
	var htmlStr = "";
	if (fundProduct != null){
		var productUrl = fundDetailUrl+fundProduct.skuId+suffix;
		if(fundProduct.productType==2){
			productUrl = fundSmartProDetailUrl+fundProduct.skuId+suffix;
		}
		if(flag==0){
			htmlStr += '<li class="fund-pro-list">';
		}else if(flag==1){
			htmlStr += '<li class="fund-pro-list br-none">';
		}else{
			htmlStr += '<li class="fund-pro-list bottom-list">';
		}
		htmlStr += '<h3 class="fund-pro-name"><a href="'+productUrl+'" psa="LCjzbb" target="_blank">'+fundProduct.productName+'</a></h3>';
		if (fundProduct.productRate==null){
			htmlStr += '<span class="fund-pro-income">---</span>';
		}else{
			htmlStr += '<span class="fund-pro-income">'+fundProduct.productRate.toFixed(2)+'<em>%</em></span>';
		}
		var tempStr = $("#smart-fund-hot").find('div[class="meter-state"]').text();
		htmlStr += '<p class="income-text">'+tempStr+'期间涨幅</p>';
		htmlStr += '<div class="btn-area">';
		htmlStr += '<a href="'+productUrl+'" class="common-btn" psa="LCjzbb" target="_blank">立即买入</a>';
		htmlStr += '</div>';
		htmlStr += '</li>';
	}else{
		htmlStr += '<li class="fund-pro-list bottom-list br-none">';
		htmlStr += '<div class="more-choose-box">';
		htmlStr += '<a href="'+fundAddress+'" psa="LCjzbb" class="more-pro" target="_blank">';
		htmlStr += ' <p>更多产品 <em>></em></p>';
		htmlStr += '<span>SEE  ALL</span>';
		htmlStr += ' </a>';
		htmlStr += '</div>';
		htmlStr += '</li>';
	}

	return htmlStr;
}

//获取基金推荐内容
function getFundAdjustProduct(){
	var areaId = $("#fundAdjustProduct").attr("data-part-value");
	jQuery.ajax({
		url: "/async/financing/getFundAdjustProduct.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			var fundAdjustProduct = result.fundAdjustProduct;
			if(fundAdjustProduct != null){
				$("#fundAdjustProduct").html("");
				var productDetailUrl = fundSmartProDetailUrl+fundAdjustProduct.skuId+suffix;
				if(fundAdjustProduct.productType==1){
					productDetailUrl = fundDetailUrl+fundAdjustProduct.skuId+suffix;
				}
				var psaKey = fundAdjustProduct.statisticKey;
				var htmlStr = '<a href="'+ productDetailUrl +'" psa="'+psaKey+'" target="_blank">';
				htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/fund-add-bg.jpg" alt=""/>';
				htmlStr += '<div class="product-box">';
				htmlStr += '<h3><em>今日推荐</em>-'+fundAdjustProduct.productName+'</h3>';
				htmlStr += '<div class="financial-data-limit clearfix">';
				htmlStr += '<div class="income-box">';
				if(fundAdjustProduct.productRate == null){
					htmlStr += '<span>---</span>';
				}else{
					htmlStr += '<span>'+fundAdjustProduct.productRate.toFixed(2)+'<em>%</em></span>';
				}
				htmlStr += '<p>'+fundAdjustProduct.productRateDiscribe+'</p>';
				htmlStr += '</div>';
				htmlStr += '<div class="limit-box">';
				htmlStr += '<span>'+fundAdjustProduct.productPeriod+'<!--<em>天</em>--></span>';
				htmlStr += '<p>理财期限</p>';
				htmlStr += '</div>';
				htmlStr += '</div>';
				htmlStr += '</div>';
				htmlStr += '</a>';
				$("#fundAdjustProduct").append(htmlStr);
			}else{
				var htmlStr = '<a href="'+fundSmartIndexUrl+'" target="_blank" psa="LCjzzh">';
				htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/fund-add-bg.jpg" alt=""/>';
				htmlStr += '<div class="product-box">';
				htmlStr += '<h3><em>今日推荐</em>-目标盈系列</h3>';
				htmlStr += '<div class="financial-data-limit clearfix">';
				htmlStr += '<div class="income-box">';
				htmlStr += '<span>10.00<em>%</em></span>';
				htmlStr += '<p>止盈年化收益</p>';
				htmlStr += '</div>';
				htmlStr += '<div class="limit-box">';
				htmlStr += '<span>90-270<em>天</em></span>';
				htmlStr += '<p>理财期限</p>';
				htmlStr += '</div>';
				htmlStr += '</div>';
				htmlStr += '</div>';
				htmlStr += '</a>';
				$("#fundAdjustProduct").append(htmlStr);
			}
		},
		error:function(){
			var htmlStr = '<a href="'+fundSmartIndexUrl+'" target="_blank">';
			htmlStr += '<img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/fund-add-bg.jpg" alt=""/>';
			htmlStr += '<div class="product-box">';
			htmlStr += '<h3><em>今日推荐</em>-目标盈系列</h3>';
			htmlStr += '<div class="financial-data-limit clearfix">';
			htmlStr += '<div class="income-box">';
			htmlStr += '<span>10.00<em>%</em></span>';
			htmlStr += '<p>目标年化收益</p>';
			htmlStr += '</div>';
			htmlStr += '<div class="limit-box">';
			htmlStr += '<span>90-270<em>天</em></span>';
			htmlStr += '<p>理财期限</p>';
			htmlStr += '</div>';
			htmlStr += '</div>';
			htmlStr += '</div>';
			htmlStr += '</a>';
			$("#fundAdjustProduct").append(htmlStr);
		}
	});
}

//获取基金主题推荐数据（右下侧）
function getFundNormalProList(){
	var areaId = $("#fund-normalpro-list").attr("data-part-value");
	$("#fund-normalpro-list a").each(function(){
		$(this).attr("href",fundAddress);
	});
	jQuery.ajax({
		url: "/async/financing/getFundNormalProList.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			if (result != null && result.fundNormalProductList != null && result.fundNormalProductList.length>0){
				var fundNormalProductList = result.fundNormalProductList;
				$("#fund-normalpro-list").html("");
				for(var i=0;i<fundNormalProductList.length;i++){
					$("#fund-normalpro-list").append(showFundNormalProList(fundNormalProductList[i],i));
				}
				hoverShow();
			}else{
				$("#fund-normalpro-list").html("");
				var htmlStr='<div class="talk-list-box open" style="height: 95px"><div class="talk-title"><a href=""><i class="been"></i>平时很忙抽不出时间理财</a></div>';
				htmlStr +='<ul class="sub-content" style="height: 60px"><li class="content-list"><p>选择基金定投躺着赚钱不操心</p><div class="income-content">';
				htmlStr +='<span>7.88<em>%</em></span><b>平均定投三年</b></div></li></ul></div>';
				htmlStr +='<div class="talk-list-box"><div class="talk-title"><a href=""><i class="been"></i>初识基金不知道该买什么</a></div>';
				htmlStr +='<ul class="sub-content"><li class="content-list"><p>货基/债基收益波动小，适合入门</p><div class="income-content">';
				htmlStr +='<span>2.39<em>%</em></span><b>近一年收益率</b></div></li></ul></div>';
				htmlStr +='<div class="talk-list-box"><div class="talk-title"><a href=""><i class="been"></i>资深”基”友想降低投资风险</a></div>';
				htmlStr +='<ul class="sub-content"><li class="content-list"><p>组合购买分担风险，拒绝过山车</p><div class="income-content">';
				htmlStr +='<span>2.05<em>%</em></span><b>近一年收益率</b></div></li></ul></div>';
				$("#fund-normalpro-list").append(htmlStr);
				hoverShow();
			}
		},
		error:function(){
			$("#fund-normalpro-list").html("");
			var htmlStr='<div class="talk-list-box open" style="height: 95px"><div class="talk-title"><a href=""><i class="been"></i>平时很忙抽不出时间理财</a></div>';
			htmlStr +='<ul class="sub-content" style="height: 60px"><li class="content-list"><p>选择基金定投躺着赚钱不操心</p><div class="income-content">';
			htmlStr +='<span>7.88<em>%</em></span><b>平均定投三年</b></div></li></ul></div>';
			htmlStr +='<div class="talk-list-box"><div class="talk-title"><a href=""><i class="been"></i>初识基金不知道该买什么</a></div>';
			htmlStr +='<ul class="sub-content"><li class="content-list"><p>货基/债基收益波动小，适合入门</p><div class="income-content">';
			htmlStr +='<span>2.39<em>%</em></span><b>近一年收益率</b></div></li></ul></div>';
			htmlStr +='<div class="talk-list-box"><div class="talk-title"><a href=""><i class="been"></i>资深”基”友想降低投资风险</a></div>';
			htmlStr +='<ul class="sub-content"><li class="content-list"><p>组合购买分担风险，拒绝过山车</p><div class="income-content">';
			htmlStr +='<span>2.05<em>%</em></span><b>近一年收益率</b></div></li></ul></div>';
			$("#fund-normalpro-list").append(htmlStr);
			hoverShow();
		}
	});
}
//展示基金主题推荐数据
function showFundNormalProList(fundNormalProduct,flag){
	var htmlStr = "";
	var title="";
	var subTitle="";
	if(flag == 0){
		htmlStr += '<div class="talk-list-box open" style="height: 95px">';
		title="平时很忙抽不出时间理财";
		subTitle="选择基金定投躺着赚钱不操心";
	}else{
		htmlStr += '<div class="talk-list-box">';
		if(flag==1){
			title="初识基金不知道该买什么";
			subTitle="货基/债基收益波动小，适合入门";
		}else{
			title="资深”基”友想降低投资风险";
			subTitle="组合购买分担风险，拒绝过山车";
		}
	}
	var productUrl = "";
	if(fundNormalProduct.productType==1||fundNormalProduct.productType==3){
		productUrl = fundDetailUrl+fundNormalProduct.skuId+suffix;
	}else{//基智
		productUrl = fundSmartProDetailUrl+fundNormalProduct.skuId+suffix;
	}
	var psaKey = fundNormalProduct.statisticKey;
	htmlStr += '<div class="talk-title"><a href="'+productUrl+'" psa="'+psaKey+'" target="_blank"><i class="been"></i>'+title+'</a></div>';
	if(flag==0){
		htmlStr += '<ul class="sub-content" style="height: 60px">';
	}else{
		htmlStr += '<ul class="sub-content">';
	}
	htmlStr += '<li class="content-list">';
	htmlStr += '<p>'+subTitle+'</p>';
	htmlStr += '<div class="income-content">';
	if(fundNormalProduct.productRate==null){
		htmlStr += '<span>---</span>';
	}else{
		htmlStr += '<span>'+fundNormalProduct.productRate.toFixed(2)+'<em>%</em></span>';
	}
	htmlStr += '<b>'+fundNormalProduct.productRateDiscribe+'</b>';
	htmlStr += '</div>';
	htmlStr += '</li>';
	htmlStr += '</ul>';
	htmlStr += '</div>';
	return htmlStr;
}

//获取特色理财数据
function getFeatureProList(){
	var areaId = $("#featureArea").attr("data-part-value");
	$("#featureArea").find('a[class="more"]').attr("href",featureUrl);
	jQuery.ajax({
		url: "/async/financing/getFeatureProList.action?areaId="+areaId+"&_dc=" + new Date().getTime(),
		type: "POST",
		async: true,
		success: function (result) {
			if (result != null && result.featureProductList != null && result.featureProductList.length>0){
				var featureProductList = result.featureProductList;
				$("#featureProductList").html("");
				for(var i=0;i<featureProductList.length;i++){
					$("#featureProductList").append(showFeatureProductList(featureProductList[i],i));
				}
			}else{
				var htmlStr='<li class="special-financial-list"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img01.jpg" alt=""/><div class="special-content-box"><h3>智投理财</h3><p>30秒体验组合理财新模式</p></div>';
				htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
				htmlStr+='<li class="special-financial-list ml20"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img02.jpg" alt=""/><div class="special-content-box"><h3>京东黄金</h3><p>买金超简单，存金享分红</p></div>';
				htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
				htmlStr+='<li class="special-financial-list ml20"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img03.jpg" alt=""/><div class="special-content-box"><h3>权益投连</h3><p>历史年化投资回报高达40%</p></div>';
				htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
				$("#featureProductList").append(htmlStr);
			}
		},
		error:function(){
			var htmlStr='<li class="special-financial-list"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img01.jpg" alt=""/><div class="special-content-box"><h3>智投理财</h3><p>30秒体验组合理财新模式</p></div>';
			htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
			htmlStr+='<li class="special-financial-list ml20"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img02.jpg" alt=""/><div class="special-content-box"><h3>京东黄金</h3><p>买金超简单，存金享分红</p></div>';
			htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
			htmlStr+='<li class="special-financial-list ml20"><a href=""><img src="//static.360buyimg.com/finance/financial/index/2.0.0/images/s-img03.jpg" alt=""/><div class="special-content-box"><h3>权益投连</h3><p>历史年化投资回报高达40%</p></div>';
			htmlStr+='<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div></a></li>';
			$("#featureProductList").append(htmlStr);
		}
	});
}
//展示特色理财数据
function showFeatureProductList(featureProduct,flag){
	var htmlStr = "";
	if(flag == 0){
		htmlStr += '<li class="special-financial-list">';
	}else{
		htmlStr += '<li class="special-financial-list ml20">';
	}
	var psaKey = featureProduct.statisticKey;
	htmlStr += '<a href="'+featureProduct.linkUrl+'" psa="'+psaKey+'" target="_blank">';
	htmlStr += '<img src="'+featureProduct.imageSrc+'" alt=""/>';
	htmlStr += '<div class="special-content-box">';
	htmlStr += '<h3>'+featureProduct.title+'</h3>';
	if(featureProduct.subTitle !=null){
		htmlStr += '<p>'+featureProduct.subTitle+'</p>';
	}else{
		htmlStr += '<p></p>';
	}
	htmlStr += '</div>';
	htmlStr += '<div class="check-details-btn"><span class="black-bg"></span><b>查看详情</b></div>';
	htmlStr += '</a>';
	return htmlStr;
}
