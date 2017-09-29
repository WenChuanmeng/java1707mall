<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改商品</title>
	<%@include file="../common/header.jsp" %>
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

	var urlPRC = "${pageContext.request.contextPath}";
	
	var status = ${product.status};
	
	var parenId = ${product.category.parentId};
	
	var childId = ${product.categoryId};
	
</script>
<script type="text/javascript" src="${prc }/resources/js/product-update-js.js"></script>
</head>
<body>
	<!-- head begin -->
	<!-- head end -->
	<div class="container" >
		<div class="row">
			<!-- 左边导航栏开始  -->
			<div class="col-md-2" >
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" ><a href="${prc }/product/pageList.action">商品管理</a></li>
					<li role="presentation"><a href="${prc }/product/toAddProduct.action">添加商品</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" ><a href="${prc }/product/pageList.action">商品管理</a></li>
					<li role="presentation"><a href="${prc }/product/toAddProduct.action">添加商品</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加商品</a></li>
				</ul>
				<!-- 添加商品 开始 -->
				<form style="margin-top: 10px;" id="form-add" action="${prc }/product/updateProduct.action" method="post"  >
				<input type="hidden" name="id" value="${product.id }" />
				<!-- 商品分类开始 -->
				  <div class="form-group"  >
						<label for="exampleInputEmail1" id="text">产品分类：&nbsp;&nbsp;&nbsp;</label>
					    <select id="categoryParentId" onchange="selectCategories(this)"   class="form-control select">
					       <option id="op" value="">-请选择-</option>
					    </select>
						<label for="exampleInputEmail1" id="text" >&nbsp;&nbsp;&nbsp;产品类型：&nbsp;&nbsp;&nbsp;</label>
					    <select id="categoryChildId" onchange="selectId()" class="form-control select" >
					       <option id="op" value="">-请选择-</option>
					    </select>
				  </div>
				  <input type="text" id="categoryId" name="categoryId" >
				  <!-- 商品分类结束 -->
				  
				  <div class="form-group">
					   <label for="exampleInputEmail1">商品名称</label>
					   <input type="text" name="name" value="${product.name }" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">副标题</label>
					  <input type="text" name="subtitle" value="${product.subtitle }" class="form-control" id="exampleInputPassword1" placeholder="副标题">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">价格</label>
					  <input type="text" name="price" value="${product.price }" class="form-control" id="exampleInputPassword1" placeholder="价格">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">库存</label>
					  <input type="text" name="stock" value="${product.stock }" class="form-control" id="exampleInputPassword1" placeholder="库存">
				  </div>
				  <div class="form-group">
					  <label for="exampleInputPassword1">状态</label>
						<select class="form-control"  name="status" id="status">
							<option id="op" value="" >请选择</option>
							<option id="op" value="1" >在售</option>								
							<option id="op" value="2" >下架</option>								
							<option id="op" value="3" >删除</option>								
						</select>
				 	</div>
				 	<div class="form-group">
						<label for="exampleInputName2">上传主图</label>
				 		<img alt="loading" id="imgId" src="/pic/${product.mainImage }" width="50px" height="50px" >
				 		<input type="hidden" name="mainImage" id="imgSrc" />
				 		<input type="file" name="pictureFile" onchange="uploadPic();" />
				 	</div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				  
				</form>
				<!-- 添加学生 结束 -->
			</div>
			<!-- 右边栏结束  -->
		</div>
	</div>
	
	
	
</body>
</html>