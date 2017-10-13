<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="Generator" content="EditPlus®">
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
	<meta name="renderer" content="webkit">
	<title>确认订单</title>
	<%@ include file="common/head.jsp" %>
	<%@ include file="common/logo.jsp" %>
	<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/order.css">
	<link rel="shortcut icon" type="image/x-icon" href="${prc }/resources/front/img/icon/favicon.ico">
	<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/car/base.css">
	<link rel="stylesheet" type="text/css" href="${prc }/resources/front/css/car/home.css">
</head>
<body>


<div class="center" style="background:#fff; width: 1200px; margin: 0 auto;">
	<!--收货地址body部分开始-->
	<div class="border_top_cart">
		<div class="container">
			<div class="checkout-box">
					<div class="checkout-box-bd">
						<!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
						<input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
						<!-- 收货地址 -->
						<div class="xm-box">
							<div class="box-hd ">
								<h2 class="title">收货地址</h2>
								<!---->
							</div>
							<div class="box-bd">
								<div class="clearfix xm-address-list" id="checkoutAddrList">
									<dl class="item" >
										<dt>
											<strong class="itemConsignee"></strong>
										</dt>
										<dd>
											<p class="tel itemTel">${orderNo }</p>
											<p class="itemRegion">${totalPrice }&nbsp;&nbsp;</p>
											<p class="itemStreet"></p>
											<span class="edit-btn J_editAddr">编辑</span>
										</dd>
										<dd style="display:none">
											<input type="radio" name="Checkout[address]" class="addressId"  value="10140916720030323">
										</dd>
									</dl>
								</div>
								<div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
							</div>                
						</div>
						<div id="checkoutPayment">
							<!-- 支付方式 -->
							<div class="xm-box">
								<div class="box-hd ">
									<h2 class="title">支付方式</h2>
								</div>
								<div class="box-bd">
									<ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
										<li class="item selected">
											<input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
											<p>
												<span>微信支付</span>
											</p>
										</li>
										<li class="item selected">
											<input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
											<p>
												<span>支付宝支付</span>
											</p>
										</li>
										<li class="item selected">
											<input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
											<p>
												<span>银行卡支付</span>
											</p>
										</li>
									</ul>
								</div>
							</div>
							<!-- 支付方式 END-->
						</div>
						<!-- 收货地址 END-->
						<div class="checkout-box-ft">
						<!-- 商品清单 -->
						<div id="checkoutGoodsList" class="checkout-goods-box">
							<div class="xm-box">
								<div class="box-bd">
									
									<div class="checkout-count clearfix">
										<!-- checkout-count-extend -->
										<div class="checkout-price" >
											<ul  >
												<li style="float: right;" >
													订单总额：<span>${totalPrice }元</span>
												</li>
											</ul>
											<button style="float: right;"  class="btn btn-primary">立即下单</button>
										</div>
										<!--  -->
									</div>
								</div>
							</div>



						</div>
						<!-- 商品清单 END -->
					</div>
					</div>
					</div>
			</div>


		</div>
		<!-- 禮品卡提示 S-->
		<div class="modal hide lipin-modal" id="lipinTip">
			<div class="modal-header">
				<h2 class="title">温馨提示</h2>
				<p> 为保障您的利益与安全，下单后礼品卡将会被使用，<br>
					且订单信息将不可修改。请确认收货信息：</p>
			</div>
			<div class="modal-body">
				<ul>
					<li><strong>收&nbsp;&nbsp;货&nbsp;&nbsp;人：</strong><span id="lipin-uname"></span></li>
					<li><strong>联系电话：</strong><span id="lipin-uphone"></span></li>
					<li><strong>收货地址：</strong><span id="lipin-uaddr"></span></li>
				</ul>
			</div>
			<div class="modal-footer">
				<span class="btn btn-primary" id="useGiftCard">确认下单</span><span class="btn btn-dakeLight" id="closeGiftCard">返回修改</span>
			</div>
		</div>
		<!--  禮品卡提示 E-->
		<!-- 预售提示 S-->
		<div class="modal hide yushou-modal" id="yushouTip">
			<div class="modal-body">
				<h2>请确认收货地址及发货时间</h2>
				<ul class="list">
					<li>
						<strong>请确认配送地址，提交后不可变更：</strong>
						<p id="yushouAddr"> </p>
						<span class="icon-common icon-1"></span>
					</li>
					<li>
						<strong>支付后发货</strong>
						<p>如您随预售商品一起购买的商品，将与预售商品一起发货</p>
						<span class="icon-common icon-2"></span>
					</li>
					<li>
						<strong>以支付价格为准</strong>
						<p>如预售产品发生调价，已支付订单价格将不受影响。</p>
						<span class="icon-common icon-3"></span>
					</li>
				</ul>
			</div>
			<div class="modal-footer">
				<p id="yushouOk" class="yushou-ok">
					<span class="icon-checkbox"><i class="iconfont">&#xe626;</i></span>
					我已确认收货地址正确，不再变更</p>
				<span class="btn btn-lineDakeLight" data-dismiss="modal">返回修改地址</span>
				<span class="btn btn-primary" id="yushouCheckout">继续下单</span>

			</div>
		</div>
		<!--  预售提示 E-->

		<script id="newAddrTemplate" type="text/x-dot-template">
			<dl class="item selected" data-isnew="true" data-consignee="{{=it.consignee}}" data-tel="{{=it.tel}}" data-province="{{=it.province}}" data-provincename="{{=it.provinceName}}" data-city="{{=it.city}}" data-cityname="{{=it.cityName}}" data-county="{{=it.county}}" data-countyname="{{=it.countyName}}" data-zipcode="{{=it.zipcode}}" data-street="{{=it.street}}" data-tag="{{=it.tag}}">
				<dt>
					<strong class="itemConsignee">{{=it.consignee}}</strong>
					{{? it.tag }}
					<span  class="itemTag tag">{{=it.tag}}</span>
					{{?}}
				</dt>
				<dd>
					<p class="tel itemTel">{{=it.tel}}</p>
					<p  class="itemRegion">{{=it.provinceName}} {{=it.cityName}} {{=it.countyName}}</p>
					<p  class="itemStreet">{{=it.street}} ({{=it.zipcode}})</p>
					<span class="edit-btn J_editAddr">编辑</span>
				</dd>
			</dl>
		</script>


		<!-- 保险弹窗 -->
		<!-- 保险弹窗 -->




	</div>
	<!--收货地址body部分结束-->
</div>



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