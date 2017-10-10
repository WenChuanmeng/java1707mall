<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加广告图组</title>
	<!-- head begin -->
		<%@include file="common/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="${prc }/resources/thrLib/kindeditor/themes/default/default.css" />
	<script  type="text/javascript" src="${prc }/resources/thrLib/kindeditor/kindeditor-all-min.js" /></script>
	<script type="text/javascript" src="${prc }/resources/thrLib/kindeditor/lang/zh_CN.js"></script>
	<!-- head end -->
	<style type="text/css">
		#categoryParentId,#categoryChildId{
			width: 20%;
			float: left;
		}
		#text{
			float: left;
			margin-top: 7px;
		}
		.form-group{
			clear: left;
		}
	</style>
<script type="text/javascript">
	var urlPRC="${pageContext.request.contextPath}";
	
</script>
<script type="text/javascript" src="${prc }/resources/js/product-add-js.js"></script>
</head>
<body>
	<div class="container" >
		<div class="row">
			<!-- 左边导航栏开始  -->
			<div class="col-md-2" >
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" ><a href="${prc }/banner/pageList.action">商品管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" ><a href="${prc }/banner/pageList.action">商品管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
				<!-- 添加商品 开始 -->
				<form style="margin-top: 10px;" id="form-add" action="${prc }/banner/addBanner.action" method="post" enctype="multipart/form-data" >
				
				  <div class="form-group">
					   <label for="exampleInputEmail1">广告图名称</label>
					   <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
				  </div>
				  <div class="form-group">
					   <label for="exampleInputEmail1">状态</label>
					   <input type="text" name="status" value="2" readonly="readonly" class="form-control" id="exampleInputEmail1">
				  </div>
				  
				 	 <div class="form-group">
					  	<label>商品图片</label>
					  	 <a href="javascript:void(0)" class="picFileUpload" id="picFileUpload">上传图片</a>
		                 <input type="hidden" name="imageUrl" id="subImages"/>
		                 <div id="J_imageView"></div>
				     </div>
				 	
				  <button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				</form>
				<!-- 添加学生 结束 -->
			</div>
			<!-- 右边栏结束  -->
</body>
</html>