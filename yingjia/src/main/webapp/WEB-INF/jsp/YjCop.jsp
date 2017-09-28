<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
  <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />

	<title>财务统计</title>

	<meta content="width=device-width, height=device-height, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="/yiingjia/BgAssets/back_desk/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/font-awesome.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="/yingjia/BgAssets/back_desk/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link rel="stylesheet" href="/yingjia/BgAssets/back_desk/media/css/DT_bootstrap.css" />

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="/yingjia/BgAssets/back_desk/media/image/favicon.ico" />
</head>

<style>
	#t1{
	margin-top: 10px;
	}
	#t2{
	margin-top:10px;
	}
	*{
            margin:0;
            padding:0;
        }
        #left{
            width:320px;
            float:left;
            clear:right;
            height:20px;
        }
        #mid{
            width:320px;
            float:left;
            clear:right;
            height:60px;
        }
        #right{
            width:320px;
            float:left;
            clear:right;
            height:20px;
        }

</style>

<body class="page-header-fixed">

<div class="page-container row-fluid">

		<div class="page-content">

			<div class="container-fluid">

				<div class="row-fluid">

					<div class="span12">

						<div class="portlet box green">

							<div class="portlet-title">

								<div class="caption"><i class="icon-cogs"></i>➤财务统计</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body flip-scroll">
							<div class="tools">
							
                                            <form action="/yingjia/GongGao/serCop" method="post" >
											开始时间：<input type="date" name="creatTime" style="color: blue;width: 200px;height: 20px" id="t1">
											结束时间：<input type="date" name="endTime" style="color: blue;width: 200px;height: 20px" id="t2" onblur="fun9()">
											 <input type="hidden" id="time" name="time" value="0">
											  &nbsp&nbsp&nbsp
											 <button type="submit" >查询</button>
											  &nbsp&nbsp
                                             <button type="button"  onclick="finan()">重置</button>
                                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp
									         <input type="submit"  onclick="text()" value="当月">
									          &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp
									          <input type="submit"  onclick="text1()" value="上一个月">
									         &nbsp&nbsp&nbsp &nbsp&nbsp&nbsp
									         <input type="submit"  onclick="text2()" value="本季度">
									</form>
        
                                             </div>
     
								<table border="0">
                           <c:forEach items="${list8 }" var="y" varStatus="stat">
                           <c:forEach items="${list9 }" var="u" varStatus="stat">
                           <c:forEach items="${list10 }" var="i" varStatus="stat">
                           <c:forEach items="${list11 }" var="o" varStatus="stat">
                           <c:forEach items="${list12 }" var="p" varStatus="stat">
                           <c:forEach items="${list13 }" var="s" varStatus="stat">
                           <c:forEach items="${list14 }" var="d" varStatus="stat">
                           <c:forEach items="${list15 }" var="f" varStatus="stat">
                           
                           <c:forEach items="${list }" var="m" varStatus="stat">
                           <c:forEach items="${list2 }" var="a" varStatus="stat">
                           <c:forEach items="${list3 }" var="q" varStatus="stat">
                           <c:forEach items="${list4 }" var="w" varStatus="stat">
                           <c:forEach items="${list5 }" var="e" varStatus="stat">
                           <c:forEach items="${list6 }" var="r" varStatus="stat">
                           <c:forEach items="${list7 }" var="t" varStatus="stat">
                          
                           
                           
                        
									<thead class="flip-content" >

										<tr>

											<th >
											<div  id="left">
        	<div class="in">
            	<p class="first" style="font-size:30px;"><img src="../img/ico1.jpg">${r+t+a+q+w+e+m}<span>元</span></p>
                <p class="txt">平台总资产</p>
            </div>
        </div>
        <br><br><br>
        </th >

											<th>   
											<div  id="mid">
        	<div class="in">
            	<p class="first" style="font-size:30px;"><img src="../img/ico2.jpg" >${r+t+a+q+w+e+m-y-u-i-o-p-s-d-f}<span>元</span></p>
                <p class="txt">平台余额</p>
            </div>
        </div></th>

											<th>
											<div  id="right">
        	<div class="in">
            	<p class="first" style="font-size:30px;"><img src="../img/ico2.jpg">${r+t-y-u}<span>元</span></p>
                <p class="txt">平台总净值/第三方账户总余额</p>
            </div>
        </div>
        <br><br><br>
        </th>
										</tr>
										
									</thead>
								</table>
                    <br><br><br> <br><br><br>
                   
                           <div class="portlet-body flip-scroll">
                           <table border="0">
                           
                          <tr>
                          <td><h4 style="text-align:left;">用户充值总额</h4></td>
                          <td><h3 style="text-align:right;">${r+t}<span>元</span></h3></td>
                          <td>&nbsp&nbsp&nbsp</td>
                          <td><h4 style="text-align:left;">用户总收益</h4></td>
                          <td><h3 style="text-align:right;">${a+q+w+e+m}<span>元</span></h3></td>
                          </tr> 
                           
                          </table>
                          </div>
                      <br>   
                    <table border="0">
                    <tr>
                    <td>
            <table class="table table-bordered listTab" style="margin-top:25px"  >
              <tr>
                <th>账户</th>
                <th>充值（元）</th>
                <th>取现（元）</th>
                <th>余额（元）</th>
              </tr>
              <tr>
                <td>富友</td>
                <td><c:if test="${r==null}">0</c:if><c:if test="${r!=''}">${r}</c:if></td>
                <td><c:if test="${y==null}">0</c:if><c:if test="${y!=''}">${y}</c:if></td>
                <td>${r-y}</td>
              </tr>
              <tr>
                <td>贝付</td>
                <td><c:if test="${t==null}">0</c:if><c:if test="${t!=''}">${t}</c:if></td>
                <td><c:if test="${u==null}">0</c:if><c:if test="${u!=''}">${u}</c:if></td>
                <td>${t-u}</td>
              </tr>
              <tr>
                <td>合计</td>
                <td>${r+t}</td>
                <td>${y+u}</td>
                <td>${r+t-y-u}</td>
              </tr>
              
              
            </table>
                    </td>
                    <td>&nbsp&nbsp&nbsp</td>
                    <td>
                    <h3 class="h3Tit">1.投资总收益</h3>
                    <table class="table table-bordered listTab" >
                    
                      <tr>
                        <th>项目</th>
                        <th>金额</th>
                      </tr>
                      <tr>
                        <td>固收理财</td>
                        <td><c:if test="${e==null}">0</c:if><c:if test="${e!=''}">${e}</c:if></td>
                      </tr>
                       <tr>
                        <td>私募基金</td>
                        <td><c:if test="${q==null}">0</c:if><c:if test="${q!=''}">${q}</c:if></td>
                      </tr>
                       <tr>
                        <td>海外配资</td>
                        <td><c:if test="${w==null}">0</c:if><c:if test="${w!=''}">${w}</c:if></td>
                      </tr>
                       <tr>
                        <td>合计</td>
                        <td>${q+w+e}</td>
                      </tr>
                    
                    </table>
                    </td>
                    <td>&nbsp&nbsp&nbsp</td>
                    <td>
                    <h3 class="h3Tit">2.用户总红包</h3>
                    <table class="table table-bordered listTab"  >
                     
                      <tr>
                        <th>项目</th>
                        <th>金额</th>
                      </tr>
                      <tr>
                        <td>邀请注册红包</td>
                        <td><c:if test="${m==null}">0</c:if><c:if test="${m!=''}">${m}</c:if></td>
                      </tr>
                      <tr>
                        <td>投资奖励红包</td>
                        <td><c:if test="${a==null}">0</c:if><c:if test="${a!=''}">${a}</c:if></td>
                      </tr>
                     
                      <tr>
                        <td>合计</td>
                        <td>${m+a}</td>
                      </tr>
                     
                    </table>
                    </td>
                    </table>
                     <div class="portlet-body flip-scroll">
                           <table border="0">
                          <tr>
                          <td><h4 style="text-align:left;">平台总支出</h4></td>
                          <td><h3 style="text-align:right;">${y+u+i+o+p+s+d+f}<span>元</span></h3></td>
                          </table>
                          </div>
                      <br> 
                      <table>
                      <tr>
                      <td>
                      <h3 class="h3Tit">1.平台总投资</h3>
            <table class="table table-bordered listTab" width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th>项目</th>
                <th>金额</th>
              </tr>
              <tr>
                <td>固收理财</td>
                <td><c:if test="${i==null}">0</c:if><c:if test="${i!=''}">${i}</c:if></td>
              </tr>
               <tr>
                <td>私募基金</td>
                <td><c:if test="${o==null}">0</c:if><c:if test="${o!=''}">${o}</c:if></td>
              </tr>
               <tr>
                <td>海外配资</td>
                <td><c:if test="${p==null}">0</c:if><c:if test="${p!=''}">${p}</c:if></td>
              </tr>
               <tr>
                <td>合计</td>
                <td>${i+o+p}</td>
              </tr>
               
            </table>
                      </td>
                      <td>&nbsp&nbsp&nbsp</td>
                      <td>
                      <h3 class="h3Tit">2.平台总消费</h3>
            <table class="table table-bordered listTab" width="100%" border="0">
              <tr>
                <th>项目</th>
                <th>金额</th>
              </tr>
              <tr>
                <td>手机充值</td>
                <td><c:if test="${s==null}">0</c:if><c:if test="${s!=''}">${s}</c:if></td>
              </tr>
              <tr>
                <td>加油卡充值</td>
                <td><c:if test="${d==null}">0</c:if><c:if test="${d!=''}">${d}</c:if></td>
              </tr>
              <tr>
                <td>生活缴费</td>
                <td><c:if test="${f==null}">0</c:if><c:if test="${f!=''}">${f}</c:if></td>
              </tr>
              <tr>
                <td>合计</td>
                <td>${s+d+f}</td>
              </tr>
              
            </table>
                      </td>
                      <td>&nbsp&nbsp&nbsp</td>
                      <td>
                      <h3 class="h3Tit">3.平台总提现</h3>
            <table class="table table-bordered listTab" width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <th>项目</th>
                <th>金额</th>
              </tr>
              <tr>
                <td>富友账户</td>
                <td><c:if test="${y==null}">0</c:if><c:if test="${y!=''}">${y}</c:if></td>
              </tr>
               <tr>
                <td>贝付账户</td>
                <td><c:if test="${u==null}">0</c:if><c:if test="${u!=''}">${u}</c:if></td>
              </tr>
               <tr>
                <td>合计</td>
                <td>${y+u}</td>
              </tr>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
              </c:forEach>
            </table>
                      </td>
                      </tr>
                      </table>

					</div>

				</div>

			</div>

		</div>

	</div>
	
		</div>

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2013 &copy; Metronic by keenthemes.Collect from <a href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a> - More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="/yingjia/BgAssets/back_desk/media/js/bootstrap.min.js" type="text/javascript"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/excanvas.min.js"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/respond.min.js"></script>  

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<script src="/yingjia/BgAssets/back_desk/media/js/app.js"></script>      

	<script>
	function fun9(){
		var a=$('#t1').val()
		var b=$('#t2').val()
		if(b<a){
			alert("结束时间不能小于开始时间！")
			var b=$('#t2').val("")
		}
 		 
	 }
	
	 function fun(){
		 window.location.href="/yingjia/GongGao/YjTow";
		 
	 }
	 function text(){
		 $('#time').val("1");
		 
	 }
	 function text1(){
		 $('#time').val("2");
		 
	 }
	 function text2(){
		 $('#time').val("3");
		 
	 }
	 function finan(){
			$("input[name='creatTime']").val("");
			$("input[name='endTime']").val("");
		}
		jQuery(document).ready(function() {       
		   App.init();
		});
	</script>
</body>
</html>