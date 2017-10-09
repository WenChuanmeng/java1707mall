<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>靓淘网-注册</title>
	    <c:set var="prc" value="${pageContext.request.contextPath }" ></c:set>
	    <script type="text/javascript" src="${prc }/resources/thrLib/jquery/jquery-1.11.1.js"></script>
		<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/register_style.css" />
		<script type="text/javascript">
			var urlPRC = "${pageContext.request.contextPath}";
		</script>
		<script type="text/javascript" src="${prc }/resources/front/js/register-js.js"></script>
	</head>

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
			<img class="banner_img" src="${prc }/resources/front/img/110.png" />
			<div class="banner_center">
				<form action="${prc }/register/registerUser.shtml"  method="post" >
					<div class="register">
						<ul>
							<li class="register_title_1">
								<span style="font-size: 20px;color: #F41443;font-weight: 900;">
									用户注册
								</span>
								<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号<a style="color: #F41443;" class="here" href="${prc }/login/login.shtml">在此登录</a></span>
							</li>
							<li>
								<input class="register_user" id="username" name="username" type="text" placeholder="会员名/邮箱/手机号" />
								<span id="usernameSpan" ></span>
							</li>
							<!-- <li>
								<input class="register_note" placeholder="短信校验码"/>
								<input class="register_note_get" type="button" value="获取短信验证码" />
							</li> -->
							<li>
								<input class="register_password" id="password" name="password" type="password" placeholder="密码" />
							</li>
							<li>
								<input class="register_repassword" id="repassword" type="password" placeholder="确认密码" />
								<span id="repasswordSpan" ></span>
							</li>
							<li>
								<input class="register_finish" id="sub" type="submit" value="同意协议并注册" />
							</li>
							<li class="register_bottom">
								<a href=""><span style="color: #F41443;">《靓淘优选用户协议》</span></a>
							</li>
						</ul>

					</div>
				</form>
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