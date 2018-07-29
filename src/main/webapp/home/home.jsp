<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>首页</title>

		<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="css/hmstyle.css" rel="stylesheet" type="text/css" />
		<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>
		<div class="hmtop">
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
					<div class="logo"><img src="images/logo.png" /></div>
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
			
			
			<div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<li class="banner1"><a href="introduction.html"><img src="images/ad1.jpg" /></a></li>
								<li class="banner2"><a><img src="images/ad2.jpg" /></a></li>
								<li class="banner3"><a><img src="images/ad3.jpg" /></a></li>
								<li class="banner4"><a><img src="images/ad4.jpg" /></a></li>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>						
			
			<div class="shopNav">
				<div class="slideall">
			        
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
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">蛋糕</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="蒸蛋糕"/><dd>
																			<dd><input type="submit" name="producttpye" value="脱水蛋糕"/></dd>
																			<dd><input type="submit" name="producttpye" value="瑞士卷"/></dd>
																			<dd><input type="submit" name="producttpye" value="软面包"/></dd>
																			<dd><input type="submit" name="producttpye" value="马卡龙"/></dd>
																			<dd><input type="submit" name="producttpye" value="千层饼"/></dd>
																			<dd><input type="submit" name="producttpye" value="甜甜圈"/></dd>
																			<dd><input type="submit" name="producttpye" value="蒸三明治"/></dd>
																			<dd><input type="submit" name="producttpye" value="铜锣烧"/></dd>
																		</form>
																	</dl>
																	
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">点心</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="西式蛋糕"/><dd>
																			<dd><input type="submit" name="producttpye" value="夹心蛋糕"/></dd>
																			<dd><input type="submit" name="producttpye" value="蛋糕"/></dd>
																			<dd><input type="submit" name="producttpye" value="酥饼"/></dd>
																			<dd><input type="submit" name="producttpye" value="麻薯"/></dd>
																			<dd><input type="submit" name="producttpye" value="提拉米苏"/></dd>
																			<dd><input type="submit" name="producttpye" value="软面包"/></dd>
																		</form>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
											<b class="arrow"></b>	
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/cookies.png"></i><a class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="饼干">饼干</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="夹心饼干"/><dd>
																			<dd><input type="submit" name="producttpye" value="威化饼干"/></dd>
																			<dd><input type="submit" name="producttpye" value="发酵饼干"/></dd>
																			<dd><input type="submit" name="producttpye" value="饼干巧克力"/></dd>
																			<dd><input type="submit" name="producttpye" value="传统糕点"/></dd>
																			<dd><input type="submit" name="producttpye" value="苏打饼干"/></dd>
																			<dd><input type="submit" name="producttpye" value="韧性饼干"/></dd>
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="薯片">薯片</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="番茄味"/><dd>
																			<dd><input type="submit" name="producttpye" value="原味"/></dd>
																			<dd><input type="submit" name="producttpye" value="烧烤味"/></dd>
																			<dd><input type="submit" name="producttpye" value="香辣味"/></dd>
																			<dd><input type="submit" name="producttpye" value="麻辣味"/></dd>
																			<dd><input type="submit" name="producttpye" value="葱香味"/></dd>
																		</form>
																	</dl>
																
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/meat.png"></i><a class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="猪肉脯">猪肉脯</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="晋江肉铺"/><dd>
																			<dd><input type="submit" name="producttpye" value="黄胜记"/></dd>
																			<dd><input type="submit" name="producttpye" value="厦门黄金香"/></dd>
																			<dd><input type="submit" name="producttpye" value="荣昌猪"/></dd>
																			<dd><input type="submit" name="producttpye" value="穆阳烤肉"/></dd>
																			<dd><input type="submit" name="producttpye" value="广西猪肉条"/></dd>
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="牛肉丝">牛肉丝</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="老川东"/><dd>
																			<dd><input type="submit" name="producttpye" value="牛浪汉"/></dd>
																			<dd><input type="submit" name="producttpye" value="三只松鼠"/></dd>
																			<dd><input type="submit" name="producttpye" value="好牛"/></dd>
																			<dd><input type="submit" name="producttpye" value="良品铺子"/></dd>
																			<dd><input type="submit" name="producttpye" value="棒棒娃"/></dd>
																		</form>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/bamboo.png"></i><a class="ml-22" title="素食、卤味">素食/卤味</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="豆干">豆干</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="劲仔"/><dd>
																			<dd><input type="submit" name="producttpye" value="好巴食"/></dd>
																			<dd><input type="submit" name="producttpye" value="卫龙"/></dd>
																			<dd><input type="submit" name="producttpye" value="张飞"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="干笋">干笋</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="惊雷"/><dd>
																			<dd><input type="submit" name="producttpye" value="良品铺子"/></dd>
																			<dd><input type="submit" name="producttpye" value="来伊份"/></dd>
																			<dd><input type="submit" name="producttpye" value="珍竹香"/></dd>
														
																		</form>
																	</dl>
													
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/candy.png"></i><a class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="糖果">糖果</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="阿尔卑斯"/><dd>
																			<dd><input type="submit" name="producttpye" value="不二家"/></dd>
																			<dd><input type="submit" name="producttpye" value="宏源"/></dd>
																			<dd><input type="submit" name="producttpye" value="大白兔"/></dd>
														
																		</form>
																	</dl>
																	
																</div>
															</div>
														</div>
													</div>
												</div>
                                            <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/fish.png"></i><a class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="海带丝">海带丝</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="口水娃"/><dd>
																			<dd><input type="submit" name="producttpye" value="老生鲜"/></dd>
																			<dd><input type="submit" name="producttpye" value="海婷"/></dd>
																			<dd><input type="submit" name="producttpye" value="川南"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="小鱼干">小鱼干</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="口水娃"/><dd>
																			<dd><input type="submit" name="producttpye" value="劲仔"/></dd>
																			<dd><input type="submit" name="producttpye" value="老鱼庄"/></dd>
																			<dd><input type="submit" name="producttpye" value="路斯"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="鱿鱼丝">鱿鱼丝</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="海边人"/><dd>
																			<dd><input type="submit" name="producttpye" value="三只松鼠"/></dd>
																			<dd><input type="submit" name="producttpye" value="兄弟海湾"/></dd>
																			<dd><input type="submit" name="producttpye" value="万顺昌"/></dd>
														
																		</form>
																	</dl>
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
											<li class="appliance js_toggle relative">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="images/fish.png"></i><a class="ml-22" title="海味、河鲜">水果</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="苹果"></span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="易果生鲜"/><dd>
																			<dd><input type="submit" name="producttpye" value="王小二"/></dd>
																			<dd><input type="submit" name="producttpye" value="烟台苹果"/></dd>
																			<dd><input type="submit" name="producttpye" value="大河沙"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="小鱼干">火龙果</span></dt>
																		<form method="post" action="product/queryByType">
																			<dd><input type="submit" name="producttpye" value="易果生鲜"/><dd>
																			<dd><input type="submit" name="producttpye" value="果娃果业"/></dd>
																			<dd><input type="submit" name="producttpye" value="果然优鲜"/></dd>
								
																		</form>
																	</dl>
						
																</div>
															</div>
														</div>
													</div>
												</div>
                                             <b class="arrow"></b>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!--轮播 -->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>


					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					<!--走马灯 -->
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">
					<!--热门活动 -->

					<div class="am-container activity ">
						<div class="shopTitle ">
							<h4>活动</h4>
							<h3>每期活动 优惠享不停 </h3>
				
						</div>
					
					  <div class="am-g am-g-fixed ">
						<div class="am-u-sm-3 ">
							<div class="icon-sale one "></div>
								<h4>秒杀</h4>							
							<div class="activityMain ">
								<a href=""
								<img src="images/activity1.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>														
						</div>
						
						<div class="am-u-sm-3 ">
						  <div class="icon-sale two "></div>	
							<h4>特惠</h4>
							<div class="activityMain ">
								<img src="images/activity2.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>								
							</div>							
						</div>						
						
						<div class="am-u-sm-3 ">
							<div class="icon-sale three "></div>
							<h4>团购</h4>
							<div class="activityMain ">
								<img src="images/activity3.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>							
						</div>						

						<div class="am-u-sm-3 last ">
							<div class="icon-sale "></div>
							<h4>超值</h4>
							<div class="activityMain ">
								<img src="images/activity.jpg "></img>
							</div>
							<div class="info ">
								<h3>春节送礼优选</h3>
							</div>													
						</div>

					  </div>
                   </div>
					<div class="clear "></div>

					<!--甜点-->
					
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                    <a class="more-link " href="# ">更多美味</a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodOne ">
						<div class="am-u-sm-5 am-u-md-3 am-u-lg-4 text-one ">
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>					
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
                                  <img src="images/act1.png " />								
							</a>
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-4">
							<div class="text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										仅售：¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
							</div>
							<div class="text-two last">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										仅售：¥13.8
									</div>
									
								</div>
								<a href="# "><img src="images/act2.png " /></a>
						    </div>
						</div>
		             <div class="am-u-sm-12 am-u-md-4 ">
						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥4.8
								</div>
							</div>
							<a href="# "><img src="images/act3.png " /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥4.8
								</div>
							</div>
							<a href="# "><img src="images/act3.png " /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥4.8
								</div>
							</div>
							<a href="# "><img src="images/act3.png " /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-6 text-three last ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								
								<div class="sub-title ">
									尝鲜价：¥4.8
								</div>
							</div>
							<a href="# "><img src="images/act3.png " /></a>
						</div>
					</div>

					</div>
                 <div class="clear "></div>

					<div class="clear "></div>

					
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有</em>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<!--引导 -->

		<div class="navCir">
			<li class="active"><a href="home3.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="# ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名：sl1903</li>
									<li>级&nbsp;别：普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="# ">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					<div id="asset " class="item ">
						<a href="# ">
							<span class="view "></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="foot " class="item ">
						<a href="# ">
							<span class="zuji "></span>
						</a>
						<div class="mp_tooltip ">
							我的足迹
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="images/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href="# ">
							<span class="chongzhi "><img src="images/chongzhi.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我要充值
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="# "><span class="kfzx "></span></a>
							<div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
						</li>
						<!--二维码 -->
						<li class="qtitem ">
							<a href="#none "><span class="mpbtn_qrcode "></span></a>
							<div class="mp_qrcode " style="display:none; "><img src="images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
						</li>
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list ">
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">优惠券</div>
					</a>
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">红包</div>
					</a>
					<a href="# " target="_blank " class="pl money ">
						<div class="num ">￥0</div>
						<div class="text ">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="basic/js/quick_links.js "></script>
	</body>

</html>