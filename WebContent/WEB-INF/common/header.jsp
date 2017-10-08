<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="prc" value="${pageContext.request.contextPath }" ></c:set>
	<link rel="stylesheet" type="text/css" href="${prc }/resources/thrLib/bootstrap/css/bootstrap.css" />
	<script type="text/javascript" src="${prc }/resources/thrLib/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="${prc }/resources/thrLib/jquery/jquery.form.js"></script>
	
	
	
	<!-- head begin -->
		<nav class="navbar navbar-default">
		  <div class="container">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a class="navbar-brand" href="#">网站后台管理系统</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="${prc }/product/pageList.action">商品管理 <span class="sr-only">(current)</span></a></li>
		        <li><a href="${prc }/category/pageList.action">分类管理</a></li>
		        <li><a href="${prc }/banner/pageList.action">广告图管理</a></li>
		        <li><a href="#">**管理</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">欢迎您<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="#">Action</a></li>
		            <li><a href="#">Another action</a></li>
		            <li><a href="#">Something else here</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="#">Separated link</a></li>
		          </ul>
		        </li>
		        <li><a href="#">当前在线<span style="color: red;">${count }</span>人</a></li>
		        <li><a href="${prc }/loginOut/loginOut.action">退出</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	<!-- head end -->