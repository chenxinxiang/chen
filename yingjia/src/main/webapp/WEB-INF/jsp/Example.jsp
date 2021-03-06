<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  <button class="am-btn am-btn-primary am-dropdown-toggle" data-am-dropdown-toggle>Language<span class="am-icon-caret-down"></span></button>
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
                加入我们
                <i class="am-icon-facebook"></i>
                <i class="am-icon-twitter"></i>
                <i class="am-icon-google-plus"></i>
                <i class="am-icon-pinterest"></i>
                <i class="am-icon-instagram"></i>
                <i class="am-icon-linkedin"></i>
                <i class="am-icon-youtube-play"></i>
                <i class="am-icon-rss"></i>
                <a href="/yingjia/item/Login">登录</a>
                <a href="/yingjia/item/Register">注册</a>
                <a href="/yingjia/BgItem/BgLogin">进入后台</a>
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
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong>0575-84085869</strong>
  												<span>周一~周五, 8:00 - 20:00</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong>13197176376@163.com</strong>
  												<span>随时欢迎您的来信！</span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
  												<strong>汉水华城</strong>
  												<span>樊城区长虹路27号</span>
  											</div>
  										</div>
                    </div>
                    <a href="/yingjia/item/Contact" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">联系我们</button>
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
              <li class=""><a href="/yingjia/item/Index">首页</a></li>
              <li>
                 <a href="#">网上体验中心</a>
                <!-- sub-menu start-->
                <ul class="sub-menu">
                  <li class="menu-item"><a href="/yingjia/item/Product1">产品展示1</a></li>
                  <li class="menu-item"><a href="/yingjia/item/Product2">产品展示2</a></li>
                  <li class="menu-item"><a href="/yingjia/item/Product3">产品展示3</a></li>
                </ul>
                <!-- sub-menu end-->
              </li>
              <li><a href="/yingjia/item/Example">产品中心</a></li>
              <li><a href="/yingjia/item/Solution">下载中心</a></li>
              <li>
                <a href="/yingjia/item/News">新闻中心</a>
                <!-- sub-menu start-->
                <ul class="sub-menu">
                  <li class="menu-item"><a href="/yingjia/item/NewsC">盈+商学院</a></li>
                  <li class="menu-item"><a href="html/404-dark.html">行业动态</a></li>
                  <li class="menu-item"><a href="html/404-light.html">精彩专题</a></li>
                </ul>
                <!-- sub-menu end-->
              </li>
              <li><a href="/yingjia/item/About">盈+商学院</a></li>
              <li><a href="/yingjia/item/Join">投研中心</a></li>
              <li><a href="/yingjia/item/Contact">我的加法库</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
   </div>



  <!--===========layout-container================-->
    <div class="layout-container">
      <!--product1-page start-->
      <div class="product1-page">
        <div class="container">
          <div data-am-widget="slider" class="am-slider am-slider-b3" data-am-slider='{"animation":"slide","slideshow":true}' >
            <ul class="am-slides">
                <li>
                  <div class="product-banner-box">
                    <h2>自主创新跨平台企业级浏览器内核</h2>
                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                    <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                  </div>
                </li>
                <li>
                  <div class="product-banner-box">
                    <h2>自主创新跨平台企业级浏览器内核</h2>
                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                    <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                  </div>
                </li>
                <li>
                  <div class="product-banner-box">
                    <h2>自主创新跨平台企业级浏览器内核</h2>
                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                    <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                  </div>
                </li>
                <li>
                  <div class="product-banner-box">
                    <h2>自主创新跨平台企业级浏览器内核</h2>
                    <p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可<br/>以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
                    <button type="button" class="am-btn am-btn-secondary am-round">了解更多</button>
                  </div>
                </li>
            </ul>
          </div>

        </div>
      </div>

     <div class="sdShaix" style="width: 800px;margin-left: 500px">
        	<ul>
            	<li class="first">标的类型：</li>
               		<li><a href="#" id="11">全部</a></li>
               		<li><a href="#" id="12">固收类理财</a></li>
               		<li><a href="#" id="13">车盈宝</a></li>
            </ul>
        	<ul>
            	<li class="first">年化收益：</li>
               		<li><a href="#" id="21">全部</a></li>
               		<li><a href="#" id="22">6.0%</a></li>
               		<li><a href="#" id="23">7.0%</a></li>
               		<li><a href="#" id="24">7.5%</a></li>
               		<li><a href="#" id="25">8.0%</a></li>
               		<li><a href="#" id="25">8.0%以上</a></li>
            </ul>
        	<ul>
            	<li class="first">项目期限：</li>
               		<li><a href="#" id="31">全部</a></li>
               		<li><a href="#" id="32">15天以下</a></li>
               		<li><a href="#" id="33">15-30天</a></li>
               		<li><a href="#" id="34">30-180天</a></li>
               		<li><a href="#" id="35">180-365天</a></li>
               		<li><a href="#" id="36">一年以上</a></li>
            </ul>
        	<ul>
            	<li class="first">标的状态：</li>
               		<li><a href="#" id="41">全部</a></li>
               		<li><a href="#" id="42">投标中</a></li>
               		<li><a href="#" id="43">还款中</a></li>
               		<li><a href="#" id="44">已完成</a></li>
            </ul>
        </div>
     
     

    <div class="section">
    
    <div class="container">
      <div>
        <ul>
        
        </ul>
      
      </div>
      
    </div>
      <div class="container">
        <div class="section--header">
					<h2 class="section--title">Latest News</h2>
					<p class="section--description">
						云适配与中建材信息技术股份有限公司（以下简称“中建信息”）联合举办的“战略
						<br>合作签约仪式暨全国跨屏行动启动大会”在北京成功举办。
					</p>
				</div>

        <div class="news-contaier">
          <div class="blog">
            <div class="am-g">
             
              <div class="am-u-lg-4 am-u-md-6">
                <div class="article">
                  <div class="article-img">
                    <img src="../assets/images/news/b01.jpg" alt="" />
                  </div>
                  <div class="article-header">
                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                    <ul class="article--meta">
											<li class="article--meta_item -date">December 28, 2015</li>
											<li class="article--meta_item comments">33 Comments</li>
										</ul>
                  </div>
                  <div class="article--content">
										<p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
									</div>
                  <div class="article--footer">
  									<a href="#" class="link">Read More</a>
  								</div>
                </div>
              </div>

          


              <div class="am-u-lg-4 am-u-md-6  am-u-end">
                <div class="article">
                  <div class="article-img">
                    <img src="../assets/images/news/b01.jpg" alt="" />
                  </div>
                  <div class="article-header">
                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                    <ul class="article--meta">
											<li class="article--meta_item -date">December 28, 2015</li>
											<li class="article--meta_item comments">33 Comments</li>
										</ul>
                  </div>
                  <div class="article--content">
										<p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
									</div>
                  <div class="article--footer">
  									<a href="#" class="link">Read More</a>
  								</div>
                </div>
              </div>

              <div class="am-u-lg-4 am-u-md-6  am-u-end">
                <div class="article">
                  <div class="article-img">
                    <img src="../assets/images/news/b01.jpg" alt="" />
                  </div>
                  <div class="article-header">
                    <h2><a href="#" rel="">云适配：价值驱动是占有市场的关键</a></h2>
                    <ul class="article--meta">
											<li class="article--meta_item -date">December 28, 2015</li>
											<li class="article--meta_item comments">33 Comments</li>
										</ul>
                  </div>
                  <div class="article--content">
										<p>作为一家技术创新型企业，技术的先进性和创新型是构建企业核心竞争力的根本。但是要想占领市场并获得持续增长，需要从服务市场的角度出发，为用户输出价值，也是云适配的发展宗旨。</p>
									</div>
                  <div class="article--footer">
  									<a href="#" class="link">Read More</a>
  								</div>
                </div>
              </div>

            </div>

            <!-- pagination-->
           
          </div>

        </div>
      </div>
    </div>



    <div class="section" style="margin-top:0px;background-image: url('../assets/images/pattern-light.png');">
      <div class="container">
        <!--index-container start-->
        <div class="index-container">
          <div class="am-g">
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-phone"></i>
  							<strong class="contact_card--title">Contact Us</strong>
  							<p class="contact_card--text">Feel free to call us on <br> <strong>0 (855) 233-5385</strong> <br> Monday - Friday, 8am - 7pm</p>
                <button type="button" class="am-btn am-btn-secondary">Order a Call Back</button>
  						</div>
            </div>
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-envelope-o"></i>
  							<strong class="contact_card--title">Our Email</strong>
  							<p class="contact_card--text">Drop us a line anytime at <br> <strong><a href="mailto:info@financed.com">info@financed.com</a>,</strong> <br> and we’ll get back soon.</p>
                <button type="button" class="am-btn am-btn-secondary">Start Writing</button>
  						</div>
            </div>
            <div class="am-u-md-4">
              <div class="contact_card">
  							<i style="color:#59bcdb" class="contact_card--icon am-icon-map-marker"></i>
  							<strong class="contact_card--title">Our Address</strong>
  							<p class="contact_card--text">Come visit us at <br> <strong>Stock Building, New York,</strong> <br> NY 93459</p>
                <button type="button" class="am-btn am-btn-secondary">See the Map</button>
  						</div>
            </div>
          </div>
        </div>
        <!--index-container end-->
      </div>
    </div>


    <!--===========layout-footer================-->
    <div class="layout-footer">
      <div class="footer">
        <div style="background-color:#383d61" class="footer--bg"></div>
        <div class="footer--inner">
          <div class="container">
            <div class="footer_main">
              <div class="am-g">
                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
                    <strong class="footer_main--column_title">关于我们</strong>
                    <div class="footer_about">
												<p class="footer_about--text">
													云适配(AllMobilize Inc.) 是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立.
												</p>
												<p class="footer_about--text">
                          云适配跨屏云也成功应用于超过30万家企业网站，包括微软、联想等世界500强企业
												</p>
											</div>
                  </div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">产品中心</strong>
										<ul class="footer_navigation">
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Enterplorer 企业浏览器</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Xcloud 网站跨屏云</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">Amaze UI 前端开发框架</a></li>
										</ul>
									</div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">技术支持</strong>
										<ul class="footer_navigation">
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
											<li class="footer_navigation--item"><a href="#" class="footer_navigation--link">企业移动信息化白皮书</a></li>
										</ul>
									</div>
                </div>

                <div class="am-u-md-3 ">
                  <div class="footer_main--column">
										<strong class="footer_main--column_title">联系详情</strong>
										<ul class="footer_contact_info">
											<li class="footer_contact_info--item"><i class="am-icon-phone"></i><span>服务专线：400 069 0309</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-envelope-o"></i><span>yunshipei.com</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span>北京市海淀区海淀大街27号天使大厦（原亿景大厦）三层</span></li>
											<li class="footer_contact_info--item"><i class="am-icon-clock-o"></i><span>更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></span></li>
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
</body>

</html>
