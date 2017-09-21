<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改资讯</title>
</head>
<body>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
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
		<!-- /.modal -->
	</div> 
</body>
</html>