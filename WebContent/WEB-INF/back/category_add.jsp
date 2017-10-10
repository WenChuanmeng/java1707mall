<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加分类</title>
	<!-- head begin -->
		<%@include file="common/header.jsp" %>
	<!-- head end -->
</head>
<body>
	<div class="container" >
		<div class="row">
			<!-- 左边导航栏开始  -->
			<div class="col-md-2" >
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" ><a href="${prc }/category/pageList.action">分类管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加分类</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" ><a href="${prc }/category/pageList.action">分类管理</a></li>
					<li role="presentation" class="active"><a href="javascript:void(0)">添加分类</a></li>
				</ul>
				<!-- 添加总分类 开始 -->
				<form style="margin-top: 10px;" id="form-add" action="${prc }/category/addCategory.action" method="post"  >
					
					<div class="form-group">
					   <label for="exampleInputEmail1">分类名称</label>
					   <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
				  	</div>
				  	<input type="hidden" name="parentId" value="0" />
				  	<div class="form-group">
					  <label for="exampleInputPassword1">状态</label>
						<select class="form-control"  name="status" >
							<option value="" >请选择</option>
							<option value="1" >正常</option>								
							<option value="2" >废弃</option>								
						</select>
				 	</div>
				  	<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<hr/>
				<!-- 添加总分类 结束 -->
				<!-- 添加子类 开始 -->
				<form style="margin-top: 10px;" id="form-add" action="${prc }/category/addCategory.action" method="post"  >
				
					<div class="form-group">
					  <label for="exampleInputPassword1">分类</label>
						<select class="form-control" id="categorySelect"  name="parentId" >
							<option value="" >请选择</option>
							<c:forEach items="${cplist }" var="category" >
								<option value="${category.id }" >${category.name }</option>
							</c:forEach>						
						</select>
				 	</div>
				  	<div class="form-group">
					   <label for="exampleInputEmail1">分类名称</label>
					   <input type="text" name="name" class="form-control" id="exampleInputEmail1" placeholder="商品名称">
				  	</div>
				  	<input type="hidden" name="parentId" value="0" />
				  	<div class="form-group">
					  <label for="exampleInputPassword1">状态</label>
						<select class="form-control"  name="status" >
							<option value="" >请选择</option>
							<option value="1" >正常</option>								
							<option value="2" >废弃</option>								
						</select>
				 	</div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				  </div>
				  
				</form>
				<!-- 添加子类 结束 -->
			</div>
			<!-- 右边栏结束  -->
		</div>
	
	
	
</body>
</html>