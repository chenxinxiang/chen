<%@page import="com.cornucopia.bean.NewsType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯分类页面</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />
</head>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});

function msgbox(n){
    document.getElementById('inputbox').style.display=n?'block':'none'; /* 点击按钮打开/关闭 对话框 */
}

 function updateType(id,name,sort,info) {
	$("#name").val(name);
	$("#sort").val(sort);
	$("#info").val(info);	
	$("#id").val(id);	
}
</script>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">学院管理</a></li>
    <li><a href="/yingjia/news/listTypeAll">资讯分类</a></li>
    <li><a href="/yingjia/news/lisNewstAll">资讯管理</a></li>    
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="../BgAssets/images/t01.png"/> </span> <a class="tablelink"
						data-toggle="modal" data-target="#myModal1"> 添加 </a> </li>               
        <li><span><img src="../BgAssets/images/t04.png" /></span>统计</li>
        </ul>
        
       <!-- 添加-->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">添加类别<button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;            </button></h3>
                    </div>

                    <div class="panel-body">
                       	<form id="form" method="post"  action="/yingjia/news/addType">
                            <div class="form-group">
                                <label>类别名称:</label>
                                 <input type="text" class="form-control" placeholder="请输入类别名称" name="name">
                            </div>
                             <div class="form-group">
                                <label>排序:</label>
                                 <input type="text" class="form-control" placeholder="排序" name="sort">
                            </div>
                            <div class="form-group">
                                <label>简介:</label>
                               <input  type="text" class="form-control" placeholder="简介" name="info" />
                            </div>                            
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">添加</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
		<!-- /.modal -->
	</div>
       
       
       
       <!-- 修改 -->
       <div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">修改类别<button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;            </button></h3>
                    </div>

                    <div class="panel-body">
 <form id="form2" method="post"  action="/yingjia/news/updateType">  
 		<input type="hidden" name="id" id="id">
              <div class="form-group">               
                   <label>类别名称:</label>                   
                    <input type="text" class="form-control" placeholder="类别名称" name="name" id="name">
               </div>
                <div class="form-group">
                   <label>排序:</label>
                    <input type="text" class="form-control" placeholder="排序" name="sort" id="sort">
               </div>
               <div class="form-group">
                   <label>简介:</label>
                  <input  type="text" class="form-control" placeholder="简介"  name="info" id="info">
               </div>
               <div class="form-group">
                   <button type="submit" class="btn btn-primary">修改</button>
               </div> 
              </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
		<!-- /.modal2 -->
	</div>
       
        
           
        <ul class="toolbar1">
        <li><span><img src="../BgAssets/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>id</th>
        <th>名称</th>
        <th>排序</th>
        <th>上级类别</th>
        <th>简介</th>
        <th>添加人id</th>
        <th>修改人id</th>
        <th>修改时间</th>        
        <th>添加时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
     <c:forEach items="${newsTypeList}" var="newsType">
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>${newsType.id }</td>
        <td>${newsType.name }</td>
        <td>${newsType.sort}</td>
        <td>${newsType.supType}</td>
        <td>${newsType.info}</td>
        <td>${newsType.addId}</td>
        <td>${newsType.updId}</td>
        <td>${newsType.updTime}</td>
        <td>${newsType.addTime}</td>
        <td>
        <li class="click"> 
        <span> <img src="../BgAssets/images/t02.png" /> 		
 	<h6 onclick="updateType('${newsType.id}','${newsType.name}','${newsType.sort }','${newsType.info}')"  class="tablelink" data-toggle="modal" data-target="#myModal2"> 修改</h6>
 		 
 </span>
 </li>
        </td>
        </tr>
     </c:forEach>   
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
           
    </div>
      <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>