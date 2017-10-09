<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>靓淘网</title>
		<%@ include file="common/head.jsp" %>
		<%@ include file="common/logo.jsp" %>
		<link rel="stylesheet" href="${prc }/resources/front/css/index_style.css" />
		<script type="text/javascript">
		$(function() {
			var imageUrlStr = '${banner.imageUrl}';
			var strs = new Array();
			strs = imageUrlStr.split(",");
			var int = 0;
			for (int = 0; int < strs.length; int++) {
				$('#banner_box').append("<img class='banner' src='/pic/" + strs[int] + "'>");
				
			}
			for (var int2 = 0; int2 < strs.length; int2++) {
				$("#circle").append("<li class=''></li>");
			}
		});
		</script>
	</head>
	
	

	<body>
		<!-----------------------1.top-------------------->
		
		
		<!-----------------------3.导航栏-------------------->
		<div class="big_menu">
			<div class="menu">
				<ul class="menu_ul">
					<li>
						<a class="current" href="">
							商城首页
						</a>
					</li>
					<li>
						<a href="">
							美妆商城
						</a>
					</li>
					<li>
						<a href="">
							服装运动
						</a>
					</li>
					<li>
						<a href="">
							家电数码
						</a>
					</li>
					<li>
						<a href="">
							家装家纺
						</a>
					</li>
					<li>
						<a href="">
							淘遍美食
						</a>
					</li>
					<li>
						<a href="">
							国际轻奢
						</a>
					</li>
					<div class="clearfix"></div>
				</ul>
			</div>
		</div>
		<!-----------------------4.广告区-------------------->
		<div class="banner_box">
			<%-- <img class="banner" src="${prc }/resources/front/img/tu9.png" />
			<img  class="banner" src="${prc }/resources/front/img/tu10.png"/>
			<img class="banner"  src="${prc }/resources/front/img/tu11.png"/>
			<img class="banner"  src="${prc }/resources/front/img/tu8.png"/> --%>
			<div id="banner_box" ></div>
			<div class="banner_center">
				<div class="nav_left">
					<!-- <span>
						女装
					</span>
					<p>
						<a href="">春上新</a>
						<a href="">套装</a>
						<a href="">休闲卫衣</a>
					</p> -->
					<c:forEach items="${parentList }" var="parent">
					<div style="padding-top: 10px">
						<span>
							${parent.name }
						</span>
							
								<c:forEach items="${childList }" var="child" >
									<c:if test="${child.parentId == parent.id }">
										<a href="${prc }/search/search.shtml?categoryId=${child.id}">${child.name }</a>
									</c:if>
								</c:forEach>
							
						
					</div>
					</c:forEach>
				</div>
				<div class="nav_right">
					<div class="nav_top">
						<img src="${prc }/resources/front/img/vip.png" />
						<p>主人好！欢迎来逛靓淘~</p>
						<input type="button" value="会员中心" />
					</div>
					<div class="nav_down">
						<h2>包治百病</h2>
						<h3>17新款汇</h3>
						<img src="${prc }/resources/front/img/bag.png" />
					</div>
				</div>
			</div>
			<ul class="circle" id="circle" >
			</ul>
			<div class="left_fix">
				<a class="fix_a">
						购<br />
						物<br />
						车
					</a>
				<div style="background-image: url(${prc }/resources/front/img/heart2.png); background-repeat: no-repeat; background-position: center 0;">

				</div>
				<div style="background-image: url(${prc }/resources/front/img/shoucang.png); background-repeat: no-repeat; background-position: center 0;">

				</div>
				<div style="background-image: url(${prc }/resources/front/img/time.png); background-repeat: no-repeat; background-position: center 0;">

				</div>
				<div style="background-image: url(${prc }/resources/front/img/advice.png); background-repeat: no-repeat; border-bottom: 1px solid gray; background-position: center 0; ">

				</div>
				<div style="background-image: url(${prc }/resources/front/img/top.png);background-repeat: no-repeat; background-position: center 10%;
					height: 50px;color: white;float: left; padding-top: 20px; text-align: center; ">
					TOP
				</div>
			</div>
		</div>
		<!-----------------------5.品牌选择区-------------------->
		<div class="select_Brand">
			<div class="select_title">
				<ul>
					<li>推荐品牌</li>
					<li>独家品牌</li>
					<li>欧美品牌</li>
					<li>国货品牌</li>
				</ul>
				<img class="brand_nav" src="${prc }/resources/front/img/43.png" />
			</div>
			<div class="brand">
				<div class="left">
					<img src="${prc }/resources/front/img/41.png" />
				</div>
				<div class="brand_bottom_right">
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/1.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>美加净</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/2.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>李医生</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/3.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>自然堂</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/4.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>佳洁士</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/32.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>镖旗男装</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/33.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>艺元素</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/5.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>泊美</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/6.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>赤道</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/7.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>欧珀莱</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/8.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>玉兰油</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/9.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>丁家宜</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/11.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>露得清</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/12.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>宝洁</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/35.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>波斯兰迪</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/14.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>水芝澳</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/51.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>傲慢季节</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/47.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>丹菲诗</p>
						</div>
					</a>
					<a href="">
						<div style="background-image: url(${prc }/resources/front/img/38.png); background-repeat: no-repeat; background-position: center center;color: #808080; text-align: center; ">
							<p>奥利斯</p>
						</div>
					</a>

				</div>
			</div>
		</div>
		<!-----------------------6.抢购区-------------------->
		<div class="panic_Buying">
			<div class="box_1">
				<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;" >
					限时快抢
				</p>
			</div>
			<div class="box_2">
				<div class="box2_1">
					<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;">
						1元抢好货
					</p>
					<p style="font-size: 12px; margin-top: 8px; margin-left: 10px;color: #808080;">
						整点拼手速
					</p>
				</div>
				<div class="box2_2">
					<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;">
						0.01抽好运
					</p>
					<p style="font-size: 12px; margin-top: 8px; margin-left: 10px;color: #808080;">
						一分钱幸运礼遇
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="box_3">
				<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;" >
					团购特卖
				</p>
				<p style="font-size: 12px; margin-top: 8px; margin-left: 10px;color: #808080;">
					风格大牌春季新品<span style="color: #f41443; font-size: 12px;" >10点上新</span>
				</p>
			</div>
			<div class="box_4">
				<div class="box4_1">
					<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;">
						品牌团
					</p>
				</div>
				<div class="box4_2">
					<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;">
						入库质检
					</p>
					<p style="font-size: 12px; margin-top: 8px; margin-left: 10px;color: #f41443;">
						精选好货 劣一赔三
					</p>
				</div>
			</div>
			<div class="box_5">
				<p style="margin-top: 34px; margin-left: 10px; font-size: 15px;" >
					美妆团
				</p>
				<p style="margin-top: 8px; margin-left: 10px;" >
					超值大牌 折扣减免
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-----------------------7.红人穿搭区-------------------->
		<div class="person_demo">
			<div class="person_demo_title">
				<p class="demo_p">红人穿搭</p>
			</div>
			<div class="demo_box">

				<a href="">
					<div class="box1"></div>
				</a>
				<a href="">
					<div class="box2"></div>
				</a>
				<a href="">
					<div class="box3"></div>
				</a>
				<a href="">
					<div class="box4"></div>
				</a>
				<a href="">
					<div class="box5"></div>
				</a>
				<div class="clearfix">

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-----------------------8.广告条-------------------->
		<a href="">
			<div class="ad"></div>
		</a>
		<!-----------------------9.靓淘服装区-------------------->
		<div class="cloth">
			<div class="c_title">
				<ul>
					<li style="font-size: 16px;" >靓淘服饰</li>
					<li class="hot_li">&nbsp;&nbsp;&nbsp;热门搜索：</li>
					<li><a href="">卫衣 |</a></li>
					<li><a href="">风衣 |</a></li>
					<li><a href="">连衣裙 |</a></li>
					<li><a href="">阔腿裤 |</a></li>
					<li><a href="">小脚裤 |</a></li>
					<li><a href="">牛仔裤 |</a></li>
					<a class="all_a">
						查看全部&nbsp;&gt;
					</a>
				</ul>
			</div>
			<div class="left">
				<p class="bb_p">大牌新品折扣&nbsp;&gt;</p>
				<div class="pink_box">
					<p class="c_p1">牛仔裤潮流趋势</p>
					<p class="c_p2">女装春夏新品5折</p>
				</div>
			</div>
			<div class="right">
				<div class="big">
					<h1 style="font-size: 20px; margin-top: 18px; margin-left: 20px;color: rgb(51,51,51);" >
						条纹套装新品首发
					</h1>
					<h3 style="color: #808080;margin-top: 10px;margin-left: 20px;">
						立即预约享好礼
					</h3>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						夏季新品 预约爆款
					</h6>
					<p style="margin-top: 60px;margin-left: 25px; ">
						<a style=" padding: 5px 10px 5px 10px; border: 1px solid rgb(51,51,51);color: rgb(51,51,51);" href="">
							立即查看
						</a>
					</p>
				</div>
				<div class="small1">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						雪纺当道
					</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						一看百变雪纺风采
					</h6>
				</div>
				<div class="small2">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						帅气黑色连体裤</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						精致细节利落休闲
					</h6>
				</div>
				<div class="small3">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						早春时尚新条纹
					</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						春季新款条纹尖货
					</h6>
				</div>
				<div class="small4">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						春夏型牛仔衬衫
					</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						OL的完美新姿
					</h6>
				</div>
				<div class="small5">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						Amii工作装
					</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						百搭显瘦实穿时尚
					</h6>
				</div>
				<div class="small6">
					<h2 style="font-size: 16px;margin-top: 15px;margin-left: 20px; color: rgb(51,51,51);">
						初夏时尚T恤
					</h2>
					<h6 style="color: rgb(249,130,155);margin-left: 20px;margin-top: 5px;">
						新潮出众
					</h6>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
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
		<script type="text/javascript">
			var m = 0;
			$(".banner_box .banner").hide().eq(0).show();
			function changeImg(){
				if(m<3){m=m+1}else{m=0}
				$(".circle li").removeClass("current").eq(m).addClass("current");
				$(".banner_box .banner").hide().eq(m).show();
			}
			t = setInterval(changeImg,2000);
			$(".banner_box").mouseenter(
				function(){
				clearInterval(t);
				}
			).mouseleave(
				function(){
				t = setInterval(changeImg,1000);
				}
			)
			$(".circle li").click(
				function(){
					m = $(this).index();
					$(".circle li").removeClass("current").eq(m).addClass("current");
					$(".banner_box .banner").hide().eq(m).show();
				}
			)
/*			
			$(".banner_box .banner").hide().eq(0).show();
			$(".circle li").click(
				function(){
					var i = 0;
					i = $(this).index();
					$(".banner_box .banner").hide().eq(i).show();
					
				}
			)
			$(".circle li").click(
				function(){
					var n = 0;
					n = $(this).index();
					$(".circle li").removeClass("current").eq(n).addClass("current");
				}
			)*/
		</script>
	</body>

</html>