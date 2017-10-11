<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="Generator" content="EditPlus®">
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta name="renderer" content="webkit">
	<title>${name }--分类</title>
	<%@ include file="common/head.jsp" %>
	<%@ include file="common/logo.jsp" %>
	<link rel="stylesheet" href="${prc }/resources/front/css/search_style.css" />
	<link rel="stylesheet" type="text/css" href="${prc }/resources/thrLib/bootstrap/css/bootstrap.css" />
	<script type="text/javascript" src="${prc }/resources/thrLib/jquery/jquery-1.11.1.js"></script>
	<style type="text/css">
		.proLi:HOVER{
			position: relative;
			top: -2px;
			left: 2px;
		}
	</style>
	<script type="text/javascript">
		function goPage(pageIndex) {
			$("#pageIndex").val(pageIndex);
			$("#subForm").submit();
		}
	</script>

</head>
<body>
	<!-- 分类 -->
	<div style="margin: 10px auto; width: 1100px;">
			<div class="search_center" style="float: right;">
				<form id="subForm" action="${prc }/search/findByCondition.shtml" >
					<input class="btn1" type="hidden" name="pageIndex" id="pageIndex" />
					<input class="btn1" type="hidden" name="product.categoryId" value="${categoryId }" />
					<input class="btn1" type="text" name="product.name" value="${name }" placeholder="在结果中搜索"/>
					<input class="btn2" type="submit" value="搜索" />
				</form>
			</div>
			<c:forEach items="${parentList }" var="parent">
				<ul  >
					<span style="font-size: 18px;font-weight: 900; color: black;">
						${parent.name }&nbsp;&nbsp;:&nbsp;&nbsp;
					</span>
					<c:forEach items="${childList }" var="child">
						<c:if test="${child.parentId==parent.id }">
							<li>
								<a style="text-decoration: none;" href="${prc }/search/search.shtml?name=${child.name}&categoryId=${child.id}">
									<span style="margin: 0 5px; color: rgb(244,20,67);">${child.name }</span>
								</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</c:forEach>
		<div class="clearfix"></div>
		</div>
		<!-- 商品 -->
		<div style="margin: 10px auto; width: 1100px;">
			<ul  >
			<c:forEach items="${pageBean.list }" var="product">
				<li style="width: 180px;height: 180px; margin: 10px;  float: left; ">
					<a  href="${prc }/product/detail.shtml?id=${product.id}">
						<img class="proLi"  width="150px" height="150px" src="${product.fullUrl }">
						<p style="color: black; width:150px; text-overflow:ellipsis; white-space:nowrap; overflow:hidden;" >${product.name }</p>
						<p style="color: red;" >¥&nbsp;&nbsp;${product.price }</p>
					</a>
				</li>
			</c:forEach>
		</ul>
		<div class="clearfix"></div>
		</div>
		<!-- 分页开始 -->
		<div style="width: 1100px; margin: 0 auto; " >
			<nav aria-label="Page navigation">
	 				<ul class="pagination">
	 				<!-- 左箭头开始 -->
			    <li>
			        <c:if test="${pageBean.pageIndex==1 }">
				      <a href="javascript:void(0)" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
			        </c:if>
			        <c:if test="${pageBean.pageIndex!=1 }">
				      <a href="javascript:goPage('${pageBean.pageIndex-1 }')" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
			        </c:if>
			    </li>
	 				<!-- 左箭头结束 -->
	 				<!-- 中间数字开始 -->
			    <c:forEach begin="1" end="${pageBean.totalPage }" var="pageIndex" >
				<c:if test="${pageIndex==pageBean.pageIndex }">
				    <li class="active"><a href="javascript:goPage('${pageIndex }')">${pageIndex }</a></li>
				</c:if>
				<c:if test="${pageIndex!=pageBean.pageIndex }">
				    <li><a href="javascript:goPage('${pageIndex }')">${pageIndex }</a></li>
				</c:if>
				</c:forEach>
					
	 				<!-- 中间数字结束 -->
	 				<!-- 右箭头开始 -->
			    <li>
			    	<c:if test="${pageBean.pageIndex==pageBean.totalPage }">
				      <a href="javascript:void(0)" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
			    	</c:if>
			    	<c:if test="${pageBean.pageIndex!=pageBean.totalPage }">
				      <a href="javascript:goPage('${pageBean.pageIndex + 1 }')" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
			    	</c:if>
			    </li>
	 				<!-- 右箭头结束 -->
			  </ul>
			</nav>
		</div>
		<!-- 分页结束 -->
<div style="height:100px"></div>

<div class="sp">
			<div class="sp1">
				<p style="color: rgb(51,51,51);">品质保障</p>
				<p style="font-size: 12px; color: #808080;margin-top: 5px;">品质护航 购物无忧</p>
			</div>
			<div class="sp2">
				<p style="color: rgb(51,51,51);">品质保障</p>
				<p style="font-size: 12px; color: #808080;margin-top: 5px;">品质护航 购物无忧</p>
			</div>
			<div class="sp3">
				<p style="color: rgb(51,51,51);">品质保障</p>
				<p style="font-size: 12px; color: #808080;margin-top: 5px;">品质护航 购物无忧</p>
			</div>
			<div class="sp4">
				<p style="color: rgb(51,51,51);">品质保障</p>
				<p style="font-size: 12px; color: #808080;margin-top: 5px;">品质护航 购物无忧</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="more">
			<div class="mb1">
				<ul>
					<li>
						购物指南
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;免费注册
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;开通支付宝
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;支付宝充值
						</a>
					</li>
				</ul>
			</div>
			<div class="mb2">
				<ul>
					<li>
						品质保障
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;发票保障
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;售后规则
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;缺货赔付
						</a>
					</li>
				</ul>
			</div>
			<div class="mb3">
				<ul>
					<li>
						支付方式
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;快捷支付
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;信用卡
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;货到付款
						</a>
					</li>
				</ul>
			</div>
			<div class="mb4">
				<ul>
					<li>
						商家服务
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;商家入驻
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;商家中心
						</a>
					</li>
					<li>
						<a href="">
							&nbsp;&nbsp;运营服务
						</a>
					</li>
				</ul>
			</div>
			<div class="mb5">
				<ul>
					<li>
						手机靓淘
					</li>
					<li>
						<img src="${prc }/resources/front/img/98.png"/>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="link">
			<ul>
				<li>
					<a href="">
						关于靓淘
					</a>
				</li>
				<li>
					<a href="">
						帮助中心
					</a>
				</li>
				<li>
					<a href="">
						开放平台
					</a>
				</li>
				<li>
					<a href="">
						诚聘精英
					</a>
				</li>
				<li>
					<a href="">
						联系我们
					</a>
				</li>
				<li>
					<a href="">
						网站合作
					</a>
				</li>
				<li>
					<a href="">
						法律声明及隐私政策
					</a>
				</li>
				<li>
					<a href="">
						知识产权
					</a>
				</li>
				<li>
					<a href="">
						廉政举报
					</a>
				</li>
				<li>
					<a href="">
						规则意见征集
					</a>
				</li>
			</ul>
		</div>
		<div class="copyright">
			COPYRIGHT 2010-2017 北京创锐文化传媒有限公司 JUMEI.COM 保留一切权利. 客服热线：400-123-888888<br /> 
			京公网安备 110101020011226|京ICP证111033号|食品流通许可证 SP1101051110165515（1-1）|营业执照
		</div>
</body>
</html>