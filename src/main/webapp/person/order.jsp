<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

	<head>
	<base href="<%=basePath%>">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>订单管理</title>

		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="css/personal.css" rel="stylesheet" type="text/css">
		<link href="css/orstyle.css" rel="stylesheet" type="text/css">

		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>

	</head>

	<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									<a href="#" target="_top" class="h">亲，请登录</a>
									<a href="#" target="_top">免费注册</a>
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
						</ul>
						</div>

						<!--悬浮搜索框-->

						<div class="nav white">
							<div class="logoBig">
								<li><img src="images/logobig.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有订单</a></li>
								<li><a href="#tab2">待付款</a></li>
								<li><a href="#tab3">待发货</a></li>
								<li><a href="#tab4">待收货</a></li>
								<li><a href="#tab5">待退款</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">数量</td>
										</div>
																				
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">
											
											
											
									<c:forEach items="${orderlist}" var="order" varStatus="order_i">
											
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">${order.orderid }</a></div>
													<span>订单时间：<fmt:formatDate value="${order.orderTime}" type="both"/></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
														<c:forEach items="${order_firstproduct}" var="content" begin="${order_i.index}" end="${order_i.index}">
															<li class="td td-item">
																<div class="item-pic">
																
																	<a href="#" class="J_MakePoint">
																		<img src="images/${content.mainPicture }" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${content.productname }</p>
														
																		</a>
																	</div>
																</div>
															</li>
															</c:forEach>
															<li class="td td-number">
																<div class="item-number">
																	<c:forEach items="${contentnumlist}" var="contentnum" begin="${order_i.index}" end="${order_i.index}">
				
																			<p>等  ${contentnum} 种商品</p>
																	</c:forEach>
																	
																	
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<span>${order.amount}</span>
																</div>
															</li>
															
														</ul>
											

														

													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${order.amount}
													
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																<c:if test="${order.tradeStatus == 'unpaid'}">
																	<p class="Mystatus">未付款</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'paid'}">
																	<p class="Mystatus">已付款</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'delivered'}">
																	<p class="Mystatus">已发货</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'finished'}">
																	<p class="Mystatus">交易成功</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'redelivered'}">
																	<p class="Mystatus">已退货</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'refunded'}">
																	<p class="Mystatus">已退款</p>
																</c:if>
																<c:if test="${order.tradeStatus == 'canceled'}">
																	<p class="Mystatus">已取消</p>
																</c:if>
<!-- 																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p> -->
												
																</div>
															</li>
															<li class="td td-change">
															<c:if test="${order.tradeStatus == 'unpaid'}">
																	<div class="am-btn am-btn-danger anniu"><a href="trade/pay?orderid=${order.orderid }">付款</a></div>
																	<div class="am-btn am-btn-danger anniu"><a href="order/cancel?orderid=${order.orderid }">取消订单</a></div>
																</c:if>
																
																<c:if test="${order.tradeStatus == 'delivered'}">
																		<div class="am-btn am-btn-danger anniu"><a href="order/finish?orderid=${order.orderid }">确认收货</a></div>
																</c:if>
																<c:if test="${order.tradeStatus == 'finished'}">
																	<div class="am-btn am-btn-danger anniu"><a href="order/redelivery?orderid=${order.orderid }">申请退货</a></div>
																</c:if>
															
																
																	
															</li>
														</div>
													</div>
												</div>
											</div>
											
										</c:forEach>	
											
											
											
											
											
											
											
											

										</div>

									</div>

								</div>
								<div class="am-tab-panel am-fade" id="tab2">

									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
								<c:forEach items="${orderlist}" var="order" varStatus="order_i">
											<c:if test="${order.tradeStatus == 'unpaid'}">
																
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">${order.orderid }</a></div>
													<span>订单时间：<fmt:formatDate value="${order.orderTime}" type="both"/></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
														<c:forEach items="${order_firstproduct}" var="content" begin="${order_i.index}" end="${order_i.index}">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="images/${content.mainPicture }" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${content.productname }</p>
														
																		</a>
																	</div>
																</div>
															</li>
															</c:forEach>
															<li class="td td-number">
																<div class="item-number">
																	<c:forEach items="${contentnumlist}" var="contentnum" begin="${order_i.index}" end="${order_i.index}">
				
																			<p>共  ${contentnum} 件商品</p>
																	</c:forEach>
																	
																	
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<span>${order.amount}</span>
																</div>
															</li>
															
														</ul>
											

														

													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${order.amount}
													
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">未付款</p>
																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
												
																</div>
															</li>
															<li class="td td-change">
															<c:if test="${order.tradeStatus == 'unpaid'}">
																<div class="am-btn am-btn-danger anniu"><a href="trade/pay?orderid=${order.orderid }">付款</a></div>
																<div class="am-btn am-btn-danger anniu"><a href="order/cancel?orderid=${order.orderid }">取消订单</a></div>
																</c:if>
															</li>
														</div>
													</div>
												</div>
											</div>
											
																</c:if>
										</c:forEach>	
											
									
	
								</div>
								<div class="am-tab-panel am-fade" id="tab3">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

								<c:forEach items="${orderlist}" var="order" varStatus="order_i">
											<c:if test="${order.tradeStatus == 'paid'}">
																
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">${order.orderid }</a></div>
													<span>订单时间：<fmt:formatDate value="${order.orderTime}" type="both"/></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
														<c:forEach items="${order_firstproduct}" var="content" begin="${order_i.index}" end="${order_i.index}">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="images/${content.mainPicture }" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${content.productname }</p>
														
																		</a>
																	</div>
																</div>
															</li>
															</c:forEach>
															<li class="td td-number">
																<div class="item-number">
																	<c:forEach items="${contentnumlist}" var="contentnum" begin="${order_i.index}" end="${order_i.index}">
				
																			<p>共  ${contentnum} 件商品</p>
																	</c:forEach>
																	
																	
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<span>${order.amount}</span>
																</div>
															</li>
															
														</ul>
											

														

													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${order.amount}
													
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">未发货</p>
																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
												
																</div>
															</li>
															
														</div>
													</div>
												</div>
											</div>
											
																</c:if>
										</c:forEach>
										
								</div>
								<div class="am-tab-panel am-fade" id="tab4">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<c:forEach items="${orderlist}" var="order" varStatus="order_i">
											<c:if test="${order.tradeStatus == 'delivered'}">
																
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">${order.orderid }</a></div>
													<span>订单时间：<fmt:formatDate value="${order.orderTime}" type="both"/></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
														<c:forEach items="${order_firstproduct}" var="content" begin="${order_i.index}" end="${order_i.index}">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="images/${content.mainPicture }" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${content.productname }</p>
														
																		</a>
																	</div>
																</div>
															</li>
															</c:forEach>
															<li class="td td-number">
																<div class="item-number">
																	<c:forEach items="${contentnumlist}" var="contentnum" begin="${order_i.index}" end="${order_i.index}">
				
																			<p>共  ${contentnum} 件商品</p>
																	</c:forEach>
																	
																	
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<span>${order.amount}</span>
																</div>
															</li>
															
														</ul>
											

														

													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${order.amount}
													
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">未收货</p>
																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
												
																</div>
															</li>
															<li class="td td-change">
																<div class="am-btn am-btn-danger anniu">
																	<div class="am-btn am-btn-danger anniu"><a href="order/finish?orderid=${order.orderid }">确认收货</a></div>
															</li>
														</div>
													</div>
												</div>
											</div>
											
																</c:if>
										</c:forEach>
								</div>

								<div class="am-tab-panel am-fade" id="tab5">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									<c:forEach items="${orderlist}" var="order" varStatus="order_i">
											<c:if test="${order.tradeStatus == 'redelivered'}">
																
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">订单编号：<a href="javascript:;">${order.orderid }</a></div>
													<span>订单时间：<fmt:formatDate value="${order.orderTime}" type="both"/></span>
													
												</div>
												<div class="order-content">
													<div class="order-left">
														<ul class="item-list">
														<c:forEach items="${order_firstproduct}" var="content" begin="${order_i.index}" end="${order_i.index}">
															<li class="td td-item">
																<div class="item-pic">
																	<a href="#" class="J_MakePoint">
																		<img src="images/${content.mainPicture }" class="itempic J_ItemImg">
																	</a>
																</div>
																<div class="item-info">
																	<div class="item-basic-info">
																		<a href="#">
																			<p>${content.productname }</p>
														
																		</a>
																	</div>
																</div>
															</li>
															</c:forEach>
															<li class="td td-number">
																<div class="item-number">
																	<c:forEach items="${contentnumlist}" var="contentnum" begin="${order_i.index}" end="${order_i.index}">
				
																			<p>共  ${contentnum} 件商品</p>
																	</c:forEach>
																	
																	
																</div>
															</li>
															<li class="td td-price">
																<div class="item-price">
																	<span>${order.amount}</span>
																</div>
															</li>
															
														</ul>
											

														

													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：${order.amount}
													
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">待退款</p>
																	<p class="order-info"><a href="orderinfo.html">订单详情</a></p>
												
																</div>
															</li>
														
														</div>
													</div>
												</div>
											</div>
											
																</c:if>
										</c:forEach>
									
													




								</div>
							</div>

						</div>
					</div>
				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">恒望科技</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于恒望</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>© 2015-2025 Hengwang.com 版权所有</em>
						</p>
					</div>

				</div>
			</div>
			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="index.html"><i class="am-icon-user"></i>个人中心</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>个人资料</p>
						<ul>
							<li> <a href="information.html">个人信息</a></li>
							<li> <a href="safety.html">安全设置</a></li>
							<li> <a href="address.html">地址管理</a></li>
							<li> <a href="cardlist.html">快捷支付</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>我的交易</p>
						<ul>
							<li><a href="order.html">订单管理</a></li>
							<li> <a href="change.html">退款售后</a></li>
							<li> <a href="comment.html">评价商品</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-dollar"></i>我的资产</p>
						<ul>
							<li> <a href="points.html">我的积分</a></li>
							<li> <a href="coupon.html">优惠券 </a></li>
							<li> <a href="bonus.html">红包</a></li>
							<li> <a href="walletlist.html">账户余额</a></li>
							<li> <a href="bill.html">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-tags"></i>我的收藏</p>
						<ul>
							<li> <a href="collection.html">收藏</a></li>
							<li> <a href="foot.html">足迹</a></li>
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-qq"></i>在线客服</p>
						<ul>
							<li> <a href="consultation.html">商品咨询</a></li>
							<li> <a href="suggest.html">意见反馈</a></li>							
							
							<li> <a href="news.html">我的消息</a></li>
						</ul>
					</li>
				</ul>

			</aside>
		</div>

	</body>

</html>