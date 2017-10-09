<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>分类管理</title>
<%@include file="../common/header.jsp" %>
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
<script type="text/javascript" src="${prc }/resources/js/category-show-js.js"></script>
</head>
<body>
	<!-- head begin -->
	<!-- head end -->
	<div class="container" >
		<div class="row">
			<!-- 左边导航栏开始  -->
			<div class="col-md-2" >
				<ul class="nav nav-pills nav-stacked">
					<li role="presentation" class="active"><a href="javascript:void(0)">分类管理</a></li>
				    <li role="presentation"><a href="${prc }/category/toAddCategory.action">添加分类</a></li>
				</ul>
			</div>
			<!-- 左边导航栏结束  -->
			<!-- 右边栏开始  -->
			<div class="col-md-10">
				<ul class="nav nav-tabs">
					<li role="presentation" class="active"><a href="javascript:void(0)">分类管理</a></li>
				    <li role="presentation"><a href="${prc }/category/toAddCategory.action">添加分类</a></li>
				</ul>
				<!-- 查询条件 开始 -->
				<form id="searchForm" action="${prc }/category/pageListByCondition.action" method="post" class="form-inline" style="float: left; margin-top: 10px;margin-bottom: 10px;" >
					<!-- 用于查找+分页 记录反的页数 -->
					<input type="hidden" name="pageIndex" id="pageIndex" />
					<div class="form-group">
					  <label for="exampleInputPassword1">分类</label>
						<select class="form-control" id="categorySelect"  name="category.parentId" >
							<option value="" >请选择</option>
							<c:forEach items="${cplist }" var="category" >
								<option value="${category.id }" >${category.name }</option>
							</c:forEach>						
						</select>
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
							<td>类型</td>
							<td>分类编号</td>
							<td>分类名称</td>
							<td>状态</td>
							<td>创建时间</td>
							<td>更新时间</td>
							<td >更改状态</td>
							<td >删除</td>
						</tr>
						<c:forEach items="${pageBean.list }" var="category">
							<tr>
								<td>
								<input type="checkbox" id="selectAlls" name="selectIds" value="${category.id }" />
								<input type="hidden" id="selectAlls" name="statusIds" value="${category.status }" />
								</td>
								<td>
									<c:if test="${category.parentId == 0 }">
										父类
									</c:if>
									<c:if test="${category.parentId != 0 }">
										子类
									</c:if>
								</td>
								<td>${category.id }</td>
								<td width="100px" >${category.name }</td>
								<td>
									<c:if test="${category.status == 1 }">
										正常
									</c:if>
									<c:if test="${category.status == 2 }">
										废弃
									</c:if>
								</td>
								<td>${category.createTime }</td>
								<td>${category.updateTime }</td>
								<td><span class="glyphicon glyphicon-retweet" onclick="updateStatus(${category.id },${category.status });"></span></td>
								<td><span class="glyphicon glyphicon-trash"  onclick="delProduct(${category.id });"></span></td>
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