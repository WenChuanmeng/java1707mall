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
	<script type="text/javascript">
		/* 选中地址的第一个   */
		$(function(){
			$("input[name=selectAddress]:first").attr("checked", "checked");
		});
		/* 提交订单 */
		 function toAddorder() {
			 var isSub = confirm("确定下单？"); 
			
			 if (isSub) {
				var payType = $("input[name=selectPaymentType]:checked").val();
				var payType = $("input[name=paymentType]").val($("input[name=selectPaymentType]:checked").val());
				var payType = $("input[name=shippingId]").val($("input[name=selectAddress]:checked").val());
				
				 $("#subForm").submit();
			}
		}
		/*  */
		/* $(function () {
			$(".xm-box .item").click(function() {
				var n;
				n = $(this).index();
				alert(n);
			});
		}); */
	</script>
</head>
<body>


<div class="center" style="background:#fff; width: 1200px; margin: 0 auto;">
	<!--收货地址body部分开始-->
	<div class="border_top_cart">
		<div class="container">
			<div class="checkout-box">
					<div class="checkout-box-bd">
						<!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
						<!-- 收货地址 -->
						<div class="xm-box">
							<div class="box-hd ">
								<h2 class="title">收货地址</h2>
								<!---->
							</div>
							<div class="box-bd">
								<div class="clearfix xm-address-list" id="checkoutAddrList">
									<c:forEach items="${list }" var="shipping">
										<label for="address${shipping.id }">
											<dl class="item" >
												<dt>
													<strong class="itemConsignee">${shipping.receiverName}</strong>
													<span class="itemTag tag">家</span>
												</dt>
												<dd>
													<p class="tel itemTel"></p>
													<p class="itemRegion">${shipping.receiverProvince}&nbsp;&nbsp;${shipping.receiverCity }</p>
													<p class="itemStreet">${shipping.receiverAddress}</p>
													<span class="edit-btn J_editAddr">编辑</span>
												</dd>
													<input id="address${shipping.id }" type="radio" name="selectAddress"  value="${shipping.id }">
											</dl>
										</label>
									</c:forEach>
								</div>
								
								<div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
							</div>
						</div>
						<!-- 收货地址 END-->
						<div id="checkoutPayment">
							<!-- 支付方式 -->
							<div class="xm-box">
								<div class="box-hd ">
									<h2 class="title">支付方式</h2>
								</div>
								<div class="box-bd">
									<ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
										<label for="paymentTypeOnline">
											<li class="item selected">
												<input id="paymentTypeOnline" type="radio" name="selectPaymentType" checked="checked" value="1">
												<p>
													在线支付 <span></span>
												</p>
											</li>
										</label>
										<label for="paymentTypeOffline">
											<li class="item selected">
												<input id="paymentTypeOffline" type="radio" name="selectPaymentType"  value="2">
												<p>
													货到付款<span></span>
												</p>
											</li>
										</label>
									</ul>
								</div>
								
							</div>
							<!-- 支付方式 END-->
							<div class="xm-box">
								<div class="box-hd ">
									<h2 class="title">配送方式</h2>
								</div>
								<div class="box-bd">
									<ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
										<li class="item selected">
											<input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
											<p>
												快递配送（免运费）                                <span></span>
											</p>
										</li>
									</ul>
								</div>
							</div>
							<!-- 配送方式 END-->                    <!-- 配送方式 END-->
						</div>
					</div>
					<div class="checkout-box-ft">
						<!-- 商品清单 -->
						<div id="checkoutGoodsList" class="checkout-goods-box">
							<div class="xm-box">
								<div class="box-hd">
									<h2 class="title">确认订单信息</h2>
								</div>
								<div class="box-bd">
									<dl class="checkout-goods-list">
										<dt class="clearfix">
											<span class="col col-1">商品名称</span>
											<span class="col col-2">购买价格</span>
											<span class="col col-3">购买数量</span>
											<span class="col col-4">小计（元）</span>
										</dt>
										
									<c:forEach items="${buyCart.cartItems }" var="item">
										<dd class="item clearfix">
											<div class="item-row">
												<div class="col col-1">
													<div class="g-pic">
														<img src="${item.product.fullUrl }" width="40" height="40" />
													</div>
													<div class="g-info">
														<a href="#" target="_blank">
															${item.product.name }
														</a>
													</div>
												</div>

												<div class="col col-2">${item.product.price }元</div>
												<div class="col col-3">${item.amount }</div>
												<div class="col col-4">${item.product.price*item.amount }元</div>
											</div>
										</dd>
									</c:forEach>
									</dl>
									<div class="checkout-count clearfix">
										<div class="checkout-count-extend xm-add-buy">
											<h3 class="title">会员留言</h2></br>
												<input type="text" />

										</div>
										<!-- checkout-count-extend -->
										<div class="checkout-price">
											<ul>

												<li>
													订单总额：<span>${buyCart.totalPrice }元</span>
												</li>
												<li>
													活动优惠：<span>-0元</span>
													
												</li>
												<li>
													优惠券抵扣：<span id="couponDesc">-0元</span>
												</li>
												<li>
													运费：<span id="postageDesc">0元</span>
												</li>
											</ul>
											<p class="checkout-total">应付总额：<span><strong id="totalPrice">${buyCart.totalPrice }</strong>元</span></p>
										</div>
										<!--  -->
									</div>
								</div>
							</div>
						</div>
						<!-- 商品清单 END -->
						<div class="checkout-confirm">
							<a href="${prc }/cart/cart.shtml" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
							<button  onclick="toAddorder()" class="btn btn-primary">立即下单</button>
						
						</div>
					</div>
			</div>

			
						<form id="subForm" action="${prc}/order/addOrder.shtml" method="post">
							<input type="text" name="shippingId" value="${shipping.id }" />
							<input type="text" name="payment" value="${buyCart.totalPrice }" />
							<input type="text" name="paymentType" value="1" />
							<input type="text" name="postage" value="0" />
							<input type="text" name="status" value="10" />
						</form>

		</div>
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