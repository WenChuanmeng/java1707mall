<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品管理</title>
<%@include file="common/header.jsp" %>
<style type="text/css">
	.form-group{
		width: 140px;
	}
	.form-group .form-control{
		width: 90px;
	}
	td{
		text-align: center;
		 white-space:nowrap;
		 overflow:hidden;
		 text-overflow: ellipsis;
		 
	}
	table{
		 table-layout:fixed;
	}
</style>
	
<script type="text/javascript">  
       var urlPRC="${pageContext.request.contextPath}";  
</script>  
<script type="text/javascript" src="${prc }/resources/js/product-show-js.js"></script>
</head>
<body>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}">
	<!-- head begin -->
	<!-- head end -->
	<div class="container" >
		<div class="row">
			<!-- 左边导航栏开始  -->
			<div class="col-md-2" >
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" class="active"><a href="javascript:void(0)">商品管理</a></li>
				    <li role="presentation"><a href="${prc }/product/toAddProduct.action">添加商品</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="javascript:void(0)">商品管理</a></li>
				    <li role="presentation"><a href="${prc }/product/toAddProduct.action">添加商品</a></li>
				</ul>
				<!-- 查询条件 开始 -->
				<form id="searchForm" action="${prc }/product/pageListByContidition.action" method="post" class="form-inline" style="float: left; margin-top: 10px;margin-bottom: 10px;" >
					<!-- 用于查找+分页 记录反的页数 -->
					<input type="hidden" name="pageIndex" id="pageIndex" />
					<div class="form-group"  >
						<label for="exampleInputName2">商品名称</label>
					    <input type="text" name="product.name" value="${condition.product.name }" class="form-control" id="exampleInputName2" placeholder="商品名称">
				 	</div>
					<button type="submit" class="btn btn-default">查询</button>
					<button type="reset" class="btn btn-default">重置</button>
				</form>
				<!-- 查询条件 结束 -->
					<button onclick="javascript:deleteAll()"  class="btn btn-default">批量删除</button>
					<button onclick="javascript:updateAllStatus()"  class="btn btn-default">批量修改</button>
				<!-- 学生列表开始 -->
				<form id="delForm"  method="post">
					<table class="table table-striped table-bordered table-hover" style="margin-top: 10px;" >
						<tr>
							<td>
								<input type="checkbox" id="selectAlls" onclick="selectAll()" />
							</td>
							<td>分类</td>
							<td title="商品名称">商品名称</td>
							<td>副标题</td>
							<td>价格</td>
							<td>库存</td>
							<td>状态</td>
							<td>主图</td>
							<td>创建时间</td>
							<td>更新时间</td>
							<td>修改状态</td>
							<td>删除</td>
							<td>修改</td>
						</tr>
						<c:forEach items="${pageBean.list }" var="product">
							<tr>
								<td>
								<input type="checkbox" id="selectAlls" name="selectIds" value="${product.id }" />
								<input type="hidden" id="statusId" name="statusIds" value="${product.status}" />
								</td>
								<td title="${product.category.name }">${product.category.name }</td>
								<td style="width: 100px;" title="${product.name }" >${product.name }</td>
								<td title="${product. subtitle}">${product. subtitle}</td>
								<td >${product.price }</td>
								<td>${product.stock }</td>
								<td>
									<c:if test="${product.status == 1 }">
										在售
									</c:if>
									<c:if test="${product.status == 2 }">
										下架
									</c:if>
								</td>
								<td>
									<img alt="无图" id="imgId" src="${product.fullUrl }" width="50px" height="50px" >
								</td>
								<td title="${product.createTime }">${product.createTime }</td>
				 				<td title="${product.updateTime }">${product.updateTime }</td>
								<td><span class="glyphicon glyphicon-retweet" onclick="updateStatus(${product.id },${product.status });"></span></td>
								<td><span class="glyphicon glyphicon-trash" onclick="delProduct(${product.id })" ></span></td>
								<td><span class="glyphicon glyphicon-pencil" onclick="update(${product.id})" ></span></td>
							</tr>
						</c:forEach>
					</table>
				</form>
				<!-- 学生列表结束 -->
				<!-- 分页 开始 -->
				<nav aria-label="Page navigation">
					<ul class="pagination">
						<!-- 左箭头开始 -->
						<c:if test="${pageBean.pageIndex == 1 }">
							<li class="disabled">
							<a href="javascript:void(0)" aria-label="Previous">
								<span aria-hidden="true"  >&laquo;</span>
							</a>
							</li>
						</c:if>
						<c:if test="${pageBean.pageIndex != 1 }">
							<li>
							<a href="javascript:goPage('${pageBean.pageIndex - 1}');" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
							</li>
						</c:if>
						<!--左箭头 结束  -->
						<!-- 中间数字开始 -->
						
						<c:forEach begin="1" end="${pageBean.totalPage }" var="page">
							<c:if test="${pageBean.pageIndex == page }">
								<li class="active"><a href="javascript:goPage('${page }');">${page }</a></li>
							</c:if>
							<c:if test="${pageBean.pageIndex != page }">
								<li><a href="javascript:goPage('${page }');">${page }</a></li>
							</c:if>
						</c:forEach>
						
						<!-- 中间数字 结束 -->
						<!-- 右边箭头 开始 -->
						<c:if test="${pageBean.pageIndex == pageBean.totalPage }">
							<li class="disabled">
							<a href="javascript:void(0)" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
							</li>
						</c:if>
						<c:if test="${pageBean.pageIndex != pageBean.totalPage }">
							<li>
							<a href="javascript:goPage('${pageBean.pageIndex + 1}');" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
							</li>
						</c:if>
						
						<!-- 右边箭头 结束 -->
					</ul>
				</nav>
				<!-- 分页 结束 -->
			</div>
			<!-- 右边栏结束  -->
		</div>
	</div>
</body>
</html>