<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加学生</title>
	<!-- head begin -->
		<%@include file="../common/header.jsp" %>
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
					<li role="presentation" ><a href="${prc }/product/pageList.action">商品管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" ><a href="${prc }/product/pageList.action">商品管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
				<!-- 添加商品 开始 -->
				<form style="margin-top: 10px;" id="form-add" action="${prc }/product/addProduct.action" method="post" enctype="multipart/form-data" >
				<!-- 商品分类开始 -->
				  <div class="form-group"  >
						<label for="exampleInputEmail1" id="text">产品分类：&nbsp;&nbsp;&nbsp;</label>
					    <select id="categoryParentId" onchange="selectCategories(this)" class="form-control select">
					       <option value="">-请选择-</option>
					    </select>
						<label for="exampleInputEmail1" id="text" >&nbsp;&nbsp;&nbsp;产品类型：&nbsp;&nbsp;&nbsp;</label>
					    <select id="categoryChildId" onchange="selectId()" class="form-control select" >
					       <option value="">-请选择-</option>
					    </select>
				  </div>
				  <input type="hidden" id="categoryId" name="categoryId" >
				  <!-- 商品分类结束 -->
				  <div class="form-group">
					   <label for="exampleInputEmail1">商品名称</label>
					   <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">副标题</label>
					  <input type="text" name="subtitle" class="form-control" id="exampleInputPassword1" placeholder="副标题">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">价格</label>
					  <input type="text" name="price" class="form-control" id="exampleInputPassword1" placeholder="价格">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">库存</label>
					  <input type="text" name="stock" class="form-control" id="exampleInputPassword1" placeholder="库存">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">状态</label>
						<select class="form-control"  name="status" >
							<option value="" >请选择</option>
							<option value="1" >在售</option>								
							<option value="2" >下架</option>								
							<option value="3" >删除</option>								
						</select>
				 	</div>
				  <div class="form-group">
						<label for="exampleInputName2">上传主图</label>
				 		<img alt="loading" id="imgId" src="" width="100px" height="100px" >
				 		<input type="hidden" name="mainImage" id="mainImage" />
				 		<input type="file" name="pictureFile" onchange="uploadPic();" />
				 	</div>
				 	
				 	 <div class="form-group">
					  	<label>商品图片</label>
					  	 <a href="javascript:void(0)" class="picFileUpload" id="picFileUpload">上传图片</a>
		                 <input type="hidden" name="subImages" id="subImages"/>
		                 <div id="J_imageView"></div>
				     </div>
				  	 <div class="form-group">
					  	 <label>商品描述</label>
					  	 <textarea style="width:900px;height:300px;visibility:hidden;" name="detail"></textarea>
				   	 </div>
				 	
				 	
				  <button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				</form>
				<!-- 添加学生 结束 -->
			</div>
			<!-- 右边栏结束  -->
</body>
</html>