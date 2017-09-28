<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>资讯管理页面</title>
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>
<link href="../assets/css/bootstrap.css" rel="stylesheet">
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/jquery.ztree.all-3.5.js"></script>
<script src="../BgAssets/js/bootstrapValidator.min.js"></script>
<link href="../assets/css/metroStyle.css" rel="stylesheet" />
<link href="../BgAssets/css/bootstrapValidator.min.css" rel="stylesheet" />
<link href="../BgAssets/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../BgAssets/js/jquery.js"></script>

<style type="text/css">
.wrap{  
overflow: hidden;
overflow: hidden; //超出隐藏  
}  
</style>

</head>

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

</script>

<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">学院管理</a></li>
    <li><a href="/yingjia/news/listNewsAll">资讯管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="../BgAssets/images/t01.png" /> </span> <a class="tablelink"
					data-toggle="modal" data-target="#myModal1" href="/yingjia/news/toAddNews" >添加 </a> </li>
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
                        <h3 class="panel-title">添加资讯<button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;            </button></h3>
                    </div>

                    <div class="panel-body">
                       	<form id="form" method="post"  action="/yingjia/news/addNews">                               
                            <div class="form-group">
                                <label>标题:</label>
                               <input  type="text" class="form-control" placeholder="标题" name="title" />
                            </div>
                            
                             <div class="form-group">
                                <label>简介:</label>
                               <input  type="text" class="form-control" placeholder="简介" name="info" />
                            </div>
                             <div class="form-group">
                                <label>所属类别:</label>
                                 	<select id="typeid" name="typeid">
                                 	<option value="-1">请选择</option>
                                 	<c:forEach items="${newsTypeList }" var="newsType">                                 		
                                 		<option value="${newsType.id }" id="${newsType.id }">${newsType.name }</option>
                                 	</c:forEach>
                                 	</select>
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
	</div>
	
	
	<!-- 修改 -->
 <%-- <div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="container" style="margin-top: 50px;">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">修改资讯<button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;            </button></h3>
                    </div>

                    <div class="panel-body">
                       	<form id="form2" method="post" action="/yingjia/news/updateNews">   
                       		<input type="hidden"  name="id" value="${news.id }">                             		
                       		 <div class="form-group">
                                <label>所属类别:</label>
                                 	<select id="typeid" name="typeid">
                                 	<option value="-1">请选择</option>
                                 	<c:forEach items="${newsTypeList }" var="newsType">                                 		
                                 		<option value="${newsType.id }">${newsType.name }</option>
                                 	</c:forEach>
                                 	</select>
                            </div>                      
                            <div class="form-group">
                                <label>标题:</label>
                               <input  type="text" class="form-control" placeholder="标题" name="title" value="${news.title }"/>
                            </div>
                            
                             <div class="form-group">
                                <label>简介:</label>
                               <input  type="text" class="form-control" placeholder="简介" name="info" value="${news.info }"/>
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
	</div>      --%>    
        
        <ul class="toolbar1">
        <li><span><img src="../BgAssets/images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    <form action="/yingjia/news/listNewsAll" method="post" style="text-align: center;">
    	标题：<input type="text" name="title" placeholder="请输入标题" style="font-size: medium;"> 
     	类别名称：
     	<select name="typeid">
     			<option value="-1">请选择</option>
     			<c:forEach items="${newsTypeList }" var="list">
     				<option value="${list.id }">${list.name }</option>
     			</c:forEach>
     	
     	</select>
    	<input type="submit" value="查询"> 
    </form>   
    
    <table class="tablelist" style="table-layout: fixed;">
     <thead>
    	<tr>
        <th class="wrap">id</th>
        <th class="wrap">所属类别</th>
        <th class="wrap">标题</th>
        <th class="wrap">排序</th>
        <th class="wrap">简介</th>
        <th class="wrap">封面图片</th>
        <th class="wrap">链接地址</th>        
        <th class="wrap">附件地址</th>
        <th class="wrap">添加人id</th>
        <th class="wrap">修改人id</th>
        <th class="wrap">修改时间</th>
        <th class="wrap">添加时间</th> 
        <th class="wrap">操作</th>    
        </tr>
      </thead>
        <tbody>
      <c:forEach items="${newsList }" var="news">  
        <tr>
        <td class="wrap">${news.id }</td>
        <td class="wrap">${news.newsType.name}</td>
        <td class="wrap">${news.title}</td>
        <td class="wrap">${news.sort}</td>
        <td class="wrap">${news.info}</td>
        <td class="wrap">${news.cPhoto}</td>
        <td class="wrap">${news.link}</td>        
        <td class="wrap">${news.filelink}</td>
        <td class="wrap">${news.addId}</td>
        <td class="wrap">${news.updId}</td>
        <td class="wrap">${news.updTime}</td>
        <td class="wrap">${news.addTime}</td>    
        <td class="">            
      <a href="/yingjia/news/deleteNews/${news.id }"> <span><img src="../BgAssets/images/t03.png" />删除</span></a>  <br>            
	  <a href="/yingjia/news/initData/${news.id }"> <span><img src="../BgAssets/images/t02.png" />修改</span></a>		       
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