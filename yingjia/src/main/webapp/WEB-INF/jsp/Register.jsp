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
  <link rel="stylesheet" href="../assets/css/other.min.css" />
</head>
<body class="register-container">
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
                  <a href=""><img src="../assets/images/4.jpg" alt="" style="margin-top: -18px"/></a>
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
        <!--nav end-->
      </div>

    </div>


    <!--===========layout-container================-->
    <div class="register-box">
      <form action="" class="am-form" data-am-validator>
        <fieldset>
          <legend>注册用户<p class="register-info">账号可以使用手机或者邮箱注册，但是仔细核对后，填入正确信息。</p></legend>

          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">用户名</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3"
                       placeholder="请输入用户名" required/>
              </div>(需要实名注册)
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">手机号</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3"
                       placeholder="请输入手机号" required/>
              </div>
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">图形验证码</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3"
                       placeholder="图形验证码" required/>
              </div>
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">验证码</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-name-2" minlength="3"
                       placeholder="请输入验证码" required/>
                 <input type="button" value="获取验证码">
              </div>
            </div>
          </div>
          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-name-2" class="register-name">登陆密码</label>
              </div>
              <div class="am-u-md-10">
                <input type="password" id="doc-vld-name-2" minlength="3"
                       placeholder="请输入密码" required/>
              </div>（数字和字母组合，不少于6位）
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd-1" class="register-pwd">确认密码</label>
              </div>
              <div class="am-u-md-10">
                <input type="password" id="doc-vld-pwd-1" placeholder="请再输入密码" pattern="^\d{6}$" required/>
              </div>
            </div>
          </div>

          <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd-2">理财师邀请码</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-pwd-2" placeholder="选填" data-equal-to="#doc-vld-pwd-1"/>
              </div>（填写理财师邀请码，将会有更多惊喜）
            </div>
          </div>
          
           <div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 	">
                <label for="doc-vld-pwd-2">QQ号码</label>
              </div>
              <div class="am-u-md-10">
                <input type="text" id="doc-vld-pwd-2" placeholder="选填" data-equal-to="#doc-vld-pwd-1"/>
                <p placeholder="请用户提供QQ号码，方便客服联系">
              </div>
            </div>
          </div>
				
		<div class="am-form-group">
            <div class="am-g">
              <div class="am-u-md-2 am-padding-0 am-text-right">
                <label for="doc-vld-pwd-2"></label>
              </div>
              <div class="am-u-md-10">
               <input type="checkbox">          
                我已阅读并同意《本网站服务协议》
              </div>
            </div>
          </div>
          <div class="am-g">
            <div class="am-u-md-10">
              <button class="am-btn am-btn-secondary" type="submit">立即注册</button>
            </div>
          </div>
        </fieldset>
      </form>
    </div>

  </div>




  <script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
  <script src="../assets/js/amazeui.js" charset="utf-8"></script>
</body>

</html>
