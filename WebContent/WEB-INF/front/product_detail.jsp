<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>华为畅享6S</title>
		<%@ include file="common/head.jsp" %>
		<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/detail_style.css" />
		<script type="text/javascript" src="${prc }/resources/front/js/jquery.jqzoom.js"></script>
		<script type="text/javascript" src="${prc }/resources/front/js/base.js"></script>
		<script type="text/javascript">
			$(function() {
				var subImagStr = '${product.subImages}';
				var strs = new Array();
				strs = subImagStr.split(",");
				var int = 0;
				for (int = 0; int < strs.length; int++) {
					$('#smallShop').append("<li class='small_shop' ><img src='/pic/" + strs[int] + "' onmousemove='preview(this);'></li>");
				} 
			});
			
			function sub() {
				var num = $("#num").val();
				if (num == 1) {
					num = 1;
				} else {
					num--;
				}
				$("#num").val(num)
			}
			
			function add() {
				var num = $("#num").val();
				if (num == "${product.stock}") {
					num = "${product.stock}";
					alert("只能购买" + num + "件");
					return ;
				} else {
					num++;
				}
				$("#num").val(num);
			}
		</script>
	</head>
	<body>
		<!--top-->
		
		<!---------------logo-------------------->
		<div class="logo_center">
			<div class="left">
				<img src="${prc }/resources/front/img/LOGO.png" />
			</div>
			<div class="center">
				<input class="logo_search" type="text" />
				<input class="logo_btn" type="button" value="搜索" />
				<ul class="logo_ad">
					<li>
						<a href="">值得买 |</a>
					</li>
					<li>
						<a href="">小米6 |</a>
					</li>
					<li>
						<a href="">金立 |</a>
					</li>
					<li>
						<a href="">华为畅享 7P |</a>
					</li>
					<li>
						<a href="">苹果7 |</a>
					</li>
					<li>
						<a href="">1元800M |</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<a style="color: #666666;" href="">去购物车结算</a>
				<div class="logo_nav">

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="menu">
			<div class="menu_center">
				<ul class="menu_ul">
					<li>
						<a class="all_a" href="">全部商品分类</a>
					</li>
					<li>
						<a href="index.html" target="_blank">商城首页</a>
					</li>
					<li>
						<a href="">手机首页</a>
					</li>
					<li>
						<a href="">新机首发</a>
					</li>
					<li>
						<a href="">手机社区</a>
					</li>
					<li>
						<a href="">企业采购</a>
					</li>
					<li>
						<a href="">精选店铺</a>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>

		</div>
		<div class="little_menu_bg">
			<div class="little_menu">
				<ul>
					<li class="little_menu_left">
						&nbsp;&nbsp;&nbsp;&nbsp;家电数码&nbsp;&gt;&nbsp;&nbsp;手机通讯&nbsp;&gt;&nbsp;&nbsp;手机&nbsp;&gt;&nbsp;&nbsp;<span style="border: 1px solid #808080;">
						华为（HUAWEI）
						<img src="${prc }/resources/front/img/111.png" />
						</span> &nbsp;&nbsp;&gt;&nbsp;华为畅享6S
					</li>
					<li class="little_menu_right">
						华为官方旗舰店
						<img src="${prc }/resources/front/img/tou.png" /> 联系供应商
					</li>
					<li class="little_menu_bottom">
						<img src="${prc }/resources/front/img/shoucang2.png" /> 联系供应商
					</li>
				</ul>
			</div>
		</div>
		<div class="banner_center">
			<div class="left">
				<ul>
						<li  class="banner_center_left_top" id="preview">
						<span class="jqzoom">
							<img src="/pic/${product.mainImage }" />
						</span>
					</li>
					
					<li class="banner_center_left_center">
						<ul id="smallShop">
							<li class="left_right_nav prev">
								<img src="${prc }/resources/front/img/left.png" />
							</li>
						</ul>
						<ul>
							<li class="left_right_nav next">
								<img src="${prc }/resources/front/img/right.png" />
							</li>
						</ul>
					</li>
					<li class="banner_center_left_bottom">
						<img src="${prc }/resources/front/img/xin.png" />&nbsp;关注&nbsp;&nbsp;
						<img src="${prc }/resources/front/img/enjoy.png" />&nbsp;分享&nbsp;&nbsp;
						<img src="${prc }/resources/front/img/duizhao.png" />&nbsp;对比
					</li>
				</ul>
			</div>
			<div class="right">
				<ul>
					<li class="right_1">
						<span class="title">	
							${product.name }
						</span><br />
						<span class="next_title" >
							${product.subtitle }
						</span>
					</li>
					<li class="right_2">
						<ul>
							<li class="right_2_1">
								<img class="img_117" src="${prc }/resources/front/img/117.png" />
								<span class="right_2_1_span">
									&nbsp;&nbsp;&nbsp;全靓淘实物商品通用
								</span>
							</li>
							<li class="right_2_2">
								<span class="right_2_2_span">
									去挂券
								</span>
								<img src="${prc }/resources/front/img/120.png" />
							</li>
							<li class="right_2_3">
								<span class="right_2_3_span">
									促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
								<span>
									¥ ${product.price }&nbsp;&nbsp;
								</span>
								<span>
									<del>¥ 1999</del>
								</span>
							</li>
							<li class="right_2_4">
								<span class="right_2_4_span">
									支&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;持&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
								<img src="${prc }/resources/front/img/119.png" />&nbsp;&nbsp;
								<img src="${prc }/resources/front/img/118.png" />
							</li>
							<li class="right_2_5">
								<span class="right_2_5_span">
									本店活动&nbsp;&nbsp;&nbsp;&nbsp;
								</span>
								<span class="right_2_5_span_2">
									满79元，包邮
								</span>
							</li>
							<li class="right_2_6">
								<span class="right_2_6_span">
									更多优惠
								</span>
								<img src="${prc }/resources/front/img/xia.png" />
							</li>
						</ul>
					</li>
					<li class="right_3">
						<span>
									运&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;费&nbsp;&nbsp;&nbsp;&nbsp;
									广东	深圳&nbsp;至&nbsp;青岛&nbsp;&nbsp;&nbsp;
									<img src="${prc }/resources/front/img/xia.png"/>&nbsp;
									市南区&nbsp;
									<img src="${prc }/resources/front/img/xia.png"/>&nbsp;
									香港中路街道&nbsp;
									<img src="${prc }/resources/front/img/xia.png"/>&nbsp;
									快递：0.00
							</span>

					</li>
					<li class="right_4">
						<ul>
							<li>
								<span class="right_4_1">
									选择颜色
								</span>
								<span class="right_4_2">
									金色
								</span>
								<span class="right_4_3">
									银色
								</span>
								<span class="right_4_4">
									粉色
								</span>
							</li>
							<li class="vision">
								<span class="right_4_1">
									选择版本
								</span>
								<span class="right_4_5">
									普通版
								</span>
								<span class="right_4_6">
									移动定制版
								</span>
							</li>
							<li class="buy_way">
								<span class="right_4_1">
									购买方式
								</span>
								<span class="right_4_7">
									官方标配
								</span>
							</li>
							<li class="safeguard">
								<span class="right_4_1">
									增值保障
								</span>
								<span class="right_4_8">
									屏碎保1年&nbsp;¥66&nbsp;
									<img src="${prc }/resources/front/img/111.png"/>
								</span>
								<span class="right_4_9">
									1年内换新&nbsp;¥86&nbsp;
									<img src="${prc }/resources/front/img/111.png"/>
								</span>
								<span class="right_4_10">
									屏碎保2年&nbsp;¥96&nbsp;
									<img src="${prc }/resources/front/img/111.png"/>
								</span>
							</li>
						</ul>
					</li>
					<li class="right_bottom">
						<span class="right_txt">
							数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量&nbsp;&nbsp;&nbsp;&nbsp;
						</span>
						<input class="right_bottom_text" type="text" id="num" value="1" />
						<ul class="right_bottom_btn">
							<li>
								<input class="right_bottom_substract" type="button" onclick="sub()" value="-" />
								<input class="right_bottom_add" type="button" onclick="add()" value="+" />
							</li>
						</ul>
						<span>
							库存：${product.stock }
						</span>
						<input class="right_bottom_addCar" type="button" value="加入购物车" />
						<span class="right_txt_bottom">
							温馨提示&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;·支持7天无理由退货
						</span>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="add">
			<div class="add_title">
				<ul class="add_title_ul">
					<li>
						<a class="current" href="">人气配件</a>
					</li>
					<li>
						<a href="">手机贴膜</a>
					</li>
					<li>
						<a href="">手机保护套</a>
					</li>
					<li>
						<a href="">数据线</a>
					</li>
					<li>
						<a href="">充电器</a>
					</li>
					<li>
						<a href="">移动电源</a>
					</li>
					<li>
						<a href="">
							更多
							<img src="${prc }/resources/front/img/111.png" />
						</a>
					</li>
				</ul>
			</div>
			<div class="add_content">
				<ul>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/130.png" />
						</div>
						<div class="title_center_p">
							派滋&nbsp;华为畅享6S钢化膜畅享6S手机贴膜&nbsp;高清透明
						</div>
					</li>
					<li>
						<div class="add_img">
							<img src="${prc }/resources/front/img/jia.png" />
						</div>
					</li>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/131.png" />
						</div>
						<div class="title_center_p">
							机灵猫 畅享6S手机壳女防摔带支架保护套
						</div>
						<input type="checkbox" />
						<span>
							¥&nbsp;18.00
						</span>
					</li>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/137.png" />
						</div>
						<div class="title_center_p">
							机灵猫 畅享6S手机壳女防摔带支架保护套
						</div>
						<input type="checkbox" />
						<span>
							¥&nbsp;26.00
						</span>
					</li>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/132.png" />
						</div>
						<div class="title_center_p">
							品胜 Type-C/MicroUSB/Lightning接口三个
						</div>
						<input type="checkbox" />
						<span>
							¥&nbsp;29.00
						</span>
					</li>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/133.png" />
						</div>
						<div class="title_center_p">
							品胜 iPad充电器 移动电源充电
						</div>
						<input type="checkbox" />
						<span>
							¥&nbsp;35.00
						</span>
					</li>
					<li>
						<div class="title_center_img">
							<img src="${prc }/resources/front/img/134.png" />
						</div>
						<div class="title_center_p">
							罗马式（POMOSS）LED数显屏 移动
						</div>
						<input type="checkbox" />
						<span>
							¥&nbsp;108.00
						</span>
					</li>
					<li>
						<div class="nav_img">
							<img src="${prc }/resources/front/img/135.png" />
						</div>
					</li>
					<li>
						<div class="eq_img">
							<img src="${prc }/resources/front/img/136.png" />
						</div>
					</li>
					<li>
						<div class="add_all">
							<span class="now_get">
								已选0个配件
							</span>
							<span class="all_money_txt">
								组合价
							</span>
							<span class="all_money">
								&nbsp;¥&nbsp;1499.00
							</span>
							<input class="now_buy" type="button" value="立即购买" />
							<input class="select_buy" type="button" value="配件选购中心" />
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="detial_info">
			<div class="left">
				<div class="left_top">
					关于手机，您可能再找
				</div>
				<p class="want_content">
					安卓（Android）
				</p>
				<p class="want_content">
					5.0-4.6英寸
				</p>
				<p class="want_content">
					双卡双待
				</p>
				<p class="want_content">
					骁龙芯片
				</p>
				<p class="want_content">
					自拍神器
				</p>
				<p class="want_content">
					3GB
				</p>
				<p class="want_content">
					联通4G
				</p>
				<p class="want_content">
					电信4G
				</p>
				<p class="want_content">
					移动4G/联通4G/电信4G
				</p>
				<p class="want_content">
					移动4G
				</p>
				<p class="want_content">
					32GB
				</p>
				<p class="want_content">
					8核
				</p>
			</div>
			<div class="right">
				<ul>
					<li class="de_li_1">
						<div class="dpi">
							<span>
								分辨率：1280×720（HD）
							</span>
						</div>
						<div class="camera">
							<span>
								后置摄像头：1300万像素<br /> 前置摄像头：500万像素
							</span>

						</div>
						<div class="cpu">
							<span>
								核数：八核 <br />频率：最高1.4GHz
							</span>

						</div>
					</li>
					<li class="de_li_2">
						品牌：
						<span class="brand_name1">
								华为（HUAWEI）
							</span>
						<span class="care1">
								<img src="${prc }/resources/front/img/xin.png"/>
								关注
							</span>
						</span>
					</li>
					<li class="detial_brand">
						<ul>
							<li>
								商品名称：华为畅享6S
							</li>
							<li>
								系统：安卓（Android）
							</li>
							<li>
								机身内存:32GB
							</li>
						</ul>
						<ul>
							<li>
								运行内存：3GB
							</li>
							<li>
								机身颜色：金色、银色、粉色
							</li>
						</ul>
						<ul>
							<li>
								商品产地：中国大陆
							</li>
							<li>
								电池容量：3000mAh-3999mAh
							</li>
						</ul>
						<ul>
							<li>
								热点：骁龙芯片、双卡双待
							</li>
						</ul>
					</li>
					<li class="more_arguments">
						<span>
							更多参数&gt;&gt;
						</span>

					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="surper_big">
			<div class="left_big">
			<div class="left">
				<div class="left">
					<div class="left_top">
						达人选购
					</div>
					<ul>
						<li>
							<img src="${prc }/resources/front/img/138.png" />
							<p class="small_p">荣耀&nbsp;畅玩6X&nbsp;32GB&nbsp;全网通4G手机&nbsp;高配版&nbsp;铂光金<br />
								<span class="left_money">
								¥&nbsp;1299.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/139.png" />
							<p class="small_p">华为 4GB 32GB 全网通4G手机 高配版 白色<br />
								<span class="left_money">
								¥&nbsp;1299.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/140.png" />
							<p class="small_p">华为 HUAWEI noal64GB版本手机 高配版 玫瑰金<br />
								<span class="left_money">
								¥&nbsp;1299.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/141.png" />
							<p class="small_p">荣耀 麦芒5X 64GB 全网通4G手机 高配版 香槟金<br />
								<span class="left_money">
								¥&nbsp;2299.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/142.png" />
							<p class="small_p">荣耀 V9 4GB+64GB 全网通4G手机 高配版 极光蓝<br />
								<span class="left_money">
								¥&nbsp;1299.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/143.png" />
							<p class="small_p">荣耀 畅玩7X 64GB 全网通4G手机 高配版 铂光金<br />
								<span class="left_money">
								¥&nbsp;1499.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/144.png" />
							<p class="small_p">荣耀 P9 双卡双待 全网通4G手机 高配版 皓月银<br />
								<span class="left_money">
								¥&nbsp;1699.00
							</span>
							</p>
						</li>
						<li>
							<img src="${prc }/resources/front/img/145.png" />
							<p class="small_p">荣耀8 青春版 32GB 全网通4G手机 高配版 铂光金<br />
								<span class="left_money">
								¥&nbsp;1399.00
							</span>
							</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="ranking">
				<div class="top">
					手机热销榜
				</div>
				<div class="center_ranking">
					<ul>
						<li>
							<a class="current" href="">同价位</a>
						</li>
						<li>
							<a href="">同品牌</a>
						</li>
						<li>
							<a href="">总排行</a>
						</li>
					</ul>
				</div>
				<div class="bottom">
					<ul>
						<li class="ranking_1">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">华为荣耀6X</span>
							<span class="brand_price">¥&nbsp;1699.00</span>
						</li>
						<li class="ranking_2">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">360N5</span>
							<span class="brand_price">¥&nbsp;1699.00</span>
						</li>
						<li class="ranking_3">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">OPPOA57</span>
							<span class="brand_price">¥&nbsp;1699.00</span>
						</li>
						<li class="ranking_4">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">小米Note4</span>
							<span class="brand_price">¥&nbsp;1199.00</span>
						</li>
						<li class="ranking_5">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">诺基亚6</span>
							<span class="brand_price">¥&nbsp;1699.00</span>
						</li>
						<li class="ranking_6">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">乐视乐2</span>
							<span class="brand_price">¥&nbsp;1699.00</span>
						</li>
						<li class="ranking_7">
							<img class="brand_ranking" src="${prc }/resources/front/img/yuan1.png"/>
							<span class="brand_name">小米5</span>
							<span class="brand_price">¥&nbsp;1599.00</span>
						</li>
					</ul>
				</div>
			</div>
			</div>
			<!--=====================-->
			<div class="right_big">
				<div class="big_img">
					${product.detail }
				</div>
				<div class="right_big_bottom">
					<ul class="right_big_bottom_ul">
						<li class="end_safeguard">
							售后保障
						</li>
						<li class="server_safeguard">
							<span class="server" >
								厂家服务<br />
							</span>
							<span class="server_detial">
							本产品全国联保，享受三包服务，保质期为：一年质保<br />
							如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />
							（注：如厂商在商品介绍中有售后保障的说明，则此商品按照厂家说明执行售后保障服务。）<br />
							</span>
						</li>
						<li class="server_safeguard">
							<span class="server">
								靓淘服务<br />
							</span>
							<span class="server_detial">
							本产品全国联保，享受三包服务，保质期为：一年质保<br />
							如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />
							（注：如厂商在商品介绍中有售后保障的说明，则此商品按照厂家说明执行售后保障服务。）<br />
							</span>
						</li>
						<li class="server_safeguard">
							<span class="server">
								全国联保<br />
							</span>
							<span class="server_detial">
							本产品全国联保，享受三包服务，保质期为：一年质保<br />
							如因质量问题或故障，凭厂商维修中心或特约维修点的质量检测证明，享受7日内退货，15日内换货，15日以上在质保期内享受免费保修等三包服务！<br />
							<span class="end">
								注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，不能确保客户收到的货物与商品图片一致，只能确保为原厂正品货物！<br />
								若本商城没有及时更新，请大家谅解！
							</span>
							</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!------------------------------------------------------------------>

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
						<img src="${prc }/resources/front/img/98.png" />
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
			COPYRIGHT 2010-2017 北京创锐文化传媒有限公司 JUMEI.COM 保留一切权利. 客服热线：400-123-888888<br /> 京公网安备 110101020011226|京ICP证111033号|食品流通许可证 SP1101051110165515（1-1）|营业执照
		</div>
	</body>

</html>