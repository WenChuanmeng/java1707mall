<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="prc" value="${pageContext.request.contextPath }" ></c:set>
    <script type="text/javascript" src="${prc }/resources/thrLib/jquery/jquery-1.11.1.js"></script>
    <div class="bg_color">
			<div class="top_center">
				<div class="left">
					<span class="wel">
						欢迎来到靓淘！
					</span>
				</div>
				<div class="right">
					<ul>
						<c:if test="${user != null }">
							<li><a class="login" href="${prc }/login/login.shtml" target="_blank">${user.username }</a></li>
						</c:if>
						<c:if test="${user == null }">
							<li><a class="login" href="${prc }/login/login.shtml" target="_blank">请登录</a></li>
						<li><a href="${prc }/register/register.shtml" target="_blank">快速注册</a></li>
						</c:if>
						<li><a class="collect" href="">我的收藏</a></li>
						<li><a class="indent" href="">我的订单</a></li>
						<li><a class="phone" href="">手机靓淘</a></li>
						<li><a href="">我的积分</a></li>
						<li><a href="">我的评价</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>