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
		<script type="text/javascript">
            var checkoutConfig={
                addressMatch:'common',
                addressMatchVarName:'data',
                hasPresales:false,
                hasBigTv:false,
                hasAir:false,
                hasScales:false,
                hasGiftcard:false,
                totalPrice:244.00,
                postage:10,//运费
                postFree:true,//活动是否免邮了
                bcPrice:150,//计算界值
                activityDiscountMoney:0.00,//活动优惠
                showCouponBox:0,
                invoice:{
                    NA:"0",
                    personal:"1",
                    company:"2",
                    electronic:"4"
                }
            };
            var miniCartDisable=true;
		</script>
		<div class="container">
			<div class="checkout-box">
				<form  id="checkoutForm" action="#" method="post">
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
											<strong class="itemConsignee">${shipping.receiverName}</strong>
											<span class="itemTag tag">家</span>
										</dt>
										<dd>
											<p class="tel itemTel">188010666666</p>
											<p class="itemRegion">${shipping.receiverProvince}&nbsp;&nbsp;${shipping.receiverCity }</p>
											<p class="itemStreet">${shipping.receiverAddress}</p>
											<span class="edit-btn J_editAddr">编辑</span>
										</dd>
										<dd style="display:none">
											<input type="radio" name="Checkout[address]" class="addressId"  value="10140916720030323">
										</dd>
									</dl>
									<div class="item use-new-addr"  id="J_useNewAddr" data-state="off">
										<span class="iconfont icon-add"><img src="images/add_cart.png" /></span>
										使用新地址
									</div>
								</div>
								<input type="hidden" name="newAddress[type]" id="newType" value="common">
								<input type="hidden" name="newAddress[consignee]" id="newConsignee">
								<input type="hidden" name="newAddress[province]" id="newProvince">
								<input type="hidden" name="newAddress[city]" id="newCity">
								<input type="hidden" name="newAddress[district]" id="newCounty">
								<input type="hidden" name="newAddress[address]" id="newStreet">
								<input type="hidden" name="newAddress[zipcode]" id="newZipcode">
								<input type="hidden" name="newAddress[tel]" id="newTel">
								<input type="hidden" name="newAddress[tag_name]" id="newTag">
								<!--点击弹出新增/收货地址界面start-->
								<div class="xm-edit-addr-box" id="J_editAddrBox">
									<div class="bd">
										<div class="item">
											<label>收货人姓名<span>*</span></label>
											<input type="text" name="userAddress[consignee]" id="Consignee" class="input" placeholder="收货人姓名" maxlength="15" autocomplete='off'>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>联系电话<span>*</span></label>
											<input type="text" name="userAddress[tel]" class="input" id="Telephone" placeholder="11位手机号" autocomplete='off'>
											<p class="tel-modify-tip" id="telModifyTip"></p>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>地址<span>*</span></label>
											<select name="userAddress[province]" id="Provinces" class="select-1">
												<option>省份/自治区</option>
											</select>
											<select name="userAddress[city]"  id="Citys" class="select-2" disabled>
												<option>城市/地区/自治州</option>
											</select>
											<select name="userAddress[county]"  id="Countys" class="select-3" disabled>
												<option>区/县</option>
											</select>
											<textarea   name="userAddress[street]" class="input-area" id="Street" placeholder="路名或街道地址，门牌号"></textarea>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>邮政编码<span>*</span></label>
											<input type="text" name="userAddress[zipcode]" id="Zipcode" class="input" placeholder="邮政编码"  autocomplete='off'>
											<p class="zipcode-tip" id="zipcodeTip"></p>
											<p class="tip-msg tipMsg"></p>
										</div>
										<div class="item">
											<label>地址标签<span>*</span></label>
											<input type="text" name="userAddress[tag]" id="Tag" class="input" placeholder='地址标签：如"家"、"公司"。限5个字内'  >
											<p class="tip-msg tipMsg"></p>
										</div>
									</div>
									<div class="ft clearfix">
										<button  type="button"  class="btn btn-lineDake btn-small " id="J_editAddrCancel">取消</button>
										<button type="button" class="btn btn-primary  btn-small " id="J_editAddrOk">保存</button>
									</div>
								</div>
								<!--点击弹出新增/收货地址界面end-->
								<div class="xm-edit-addr-backdrop" id="J_editAddrBackdrop"></div>
							</div>                </div>
						<!-- 收货地址 END-->
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
												在线支付                                <span></span>
											</p>
										</li>
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
													订单总额：<span>244元</span>
												</li>
												<li>
													活动优惠：<span>-0元</span>
													<script type="text/javascript">
                                                        checkoutConfig.activityDiscountMoney=0;
                                                        checkoutConfig.totalPrice=244.00;
													</script>
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

							<!--S 加价购 产品选择弹框 -->
							<div class="modal hide modal-choose-pro" id="J_choosePro-664">
								<div class="modal-header">
									<span class="close" data-dismiss='modal'><i class="iconfont">&#xe617;</i></span>
									<h3>选择产品</h3>
									<div class="more">
										<div class="xm-recommend-page clearfix">
											<a class="page-btn-prev   J_carouselPrev iconfont" href="javascript: void(0);">&#xe604;</a><a class="page-btn-next  J_carouselNext iconfont" href="javascript: void(0);">&#xe605;</a>
										</div>
									</div>
								</div>
								<div class="modal-body J_chooseProCarousel">
									<div class="J_carouselWrap modal-choose-pro-list-wrap">
										<ul class="clearfix J_carouselList">
										</ul>
									</div>
								</div>
								<div class="modal-footer">
									<a href="#" class="btn btn-disabled J_chooseProBtn">加入购物车</a>
								</div>
							</div>
							<!--E 加价购 产品选择弹框 -->

							<!--S 保障计划 产品选择弹框 -->


						</div>
						<!-- 商品清单 END -->
						<input type="hidden"  id="couponType" name="Checkout[couponsType]">
						<input type="hidden" id="couponValue" name="Checkout[couponsValue]">
						<div class="checkout-confirm">

							<a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
							<a href="my-apy.html" class="btn btn-primary">立即下单</a>

						</div>
					</div>
			</div>

			</form>

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




		<script src="js/base.min.js"></script>

		<script type="text/javascript" src="js/address_all.js"></script>
		<script type="text/javascript" src="js/checkout.min.js"></script>
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

<script type="text/javascript">
    //hover 触发两个事件，鼠标移上去和移走
    //mousehover 只触发移上去事件
    $(".top-nav ul li").hover(function(){
        $(this).addClass("hover").siblings().removeClass("hover");
        $(this).find("li .nav a").addClass("hover");
        $(this).find(".con").show();
    },function(){
        //$(this).css("background-color","#f5f5f5");
        $(this).find(".con").hide();
        //$(this).find(".nav a").removeClass("hover");
        $(this).removeClass("hover");
        $(this).find(".nav a").removeClass("hover");
    })
</script>


</body>
</html>