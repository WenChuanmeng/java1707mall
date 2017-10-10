<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>靓淘网-登录</title>
    	<c:set var="prc" value="${pageContext.request.contextPath }" ></c:set>
		<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/login_style.css" />
	</head>
	</script>
	<body>
		<div class="top_center">
			<div class="left">
				<img src="${prc }/resources/front/img/LOGO.png" />
			</div>
			<div class="right">
				<ul>
					<li class="top_seven">7天无理由退换货</li>
					<li class="top_real">100%正品保证</li>
					<li class="top_back">退货返运费</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="banner">
			<img class="banner_img" src="${prc }/resources/front/img/beijing.png" />
			<div class="banner_center">
				<div class="login">
					<form action="${prc }/login/loginIn.shtml" method="post">
						<ul>
							<li class="login_title_1">
								<a href="">密码登录</a>

							</li>
							<li class="login_title_2">
								<a href="">扫码登录</a>
							</li>
							<li>
								<span style="color: red;">${error }</span>
								<input class="login_user" name="username" type="text" placeholder="会员名/邮箱/手机号" />
								<input class="login_password" name="password" type="password" placeholder="密码" />
								<input class="login_btn" type="submit" value="登录" />
							</li>
							<li class="login_select">
								<a class="weibo" href="">微博登录</a>
								<a class="zhifubao" href="">支付宝登录</a><br />
							</li>
							<li class="renmenber_user">
								<input type="checkbox" value="remer_user" id="remer_user" />
								<label for="remer_user">记住用户名</label>
							</li>
							<li class="login_bottom">
								<a href="">忘记密码</a>
								<a href="">免费注册</a>
							</li>
						</ul>
					</form>
				</div>
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
			COPYRIGHT 2010-2017 北京创锐文化传媒有限公司 JUMEI.COM 保留一切权利. 客服热线：400-123-888888<br /> 京公网安备 110101020011226|京ICP证111033号|食品流通许可证 SP1101051110165515（1-1）|营业执照
		</div>
	</body>

</html>