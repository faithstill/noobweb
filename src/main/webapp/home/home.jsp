<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
						
						<c:choose> 
					     <c:when test="${loginflag=='1'}">    <!--如果 --> 
						<div target="_top" class="h">欢迎您 ! &nbsp; ${username}</div>
						 </c:when>      
						<c:when test="${loginflag=='0'}">    <!--如果 --> 
							<a href="login.jsp" target="_top" class="h">亲，请登录</a>
							<a href="zhuce.jsp" target="_top">免费注册</a>
						 </c:when>      
					   	<c:otherwise>  <!--否则 -->    
							<a href="login.jsp" target="_top" class="h">亲，请登录</a>
							<a href="zhuce.jsp" target="_top">免费注册</a>
						 </c:otherwise> 
						</c:choose>
												
						
						<%-- <c:if test="${loginflag=='1'}">
						<div target="_top" class="h">欢迎您 ! &nbsp; ${username}</div>
						</c:if>
						<c:if test="${loginflag=='0'}">
							<a href="login.jsp" target="_top" class="h">亲，请登录</a>
							<a href="zhuce.jsp" target="_top">免费注册</a>
						</c:if> --%>
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="/home" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="/noobweb/shopping/showcollection" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
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
						<form method="post" action="search/byname">
							<input id="searchInput" name="key" type="text" placeholder="搜索" autocomplete="off">
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
								<li class="index"><a href="home">首页</a></li>
                                <li class="qc"><a href="search/bybrand?search_brand=<%=java.net.URLEncoder.encode("三只松鼠","UTF-8")%>">三只松鼠</a></li>
                                <li class="qc"><a href="search/bybrand?search_brand=<%=java.net.URLEncoder.encode("百草味","UTF-8")%>">百草味</a></li>
                                <li class="qc"><a href="search/bybrand?search_brand=<%=java.net.URLEncoder.encode("卫龙","UTF-8")%>">卫龙</a></li>
                                <li class="qc last"><a href="href=search/bytype?search_brand=<%=java.net.URLEncoder.encode("良品铺子","UTF-8")%>">良品铺子</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的购物车
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
													
													<h3 class="category-name b-category-name"><i><img src="images/cake.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("点心","UTF-8")%>" class="ml-22" title="点心">点心/蛋糕</a></h3>
											
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<!-- <form method="post" action=""> -->
																	
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("蛋糕","UTF-8")%>">
																	<dt><span title="蛋糕" >蛋糕</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="蛋糕" />
																			<dd><input type="submit" name="brand" value="丸京"/><dd>
																			<dd><input type="submit" name="brand" value="泓一"/></dd>
																			<dd><input type="submit" name="brand" value="三只松鼠"/></dd>
																			<dd><input type="submit" name="brand" value="达利园"/></dd>
																			<dd><input type="submit" name="brand" value="百草味"/></dd>
																			<dd><input type="submit" name="brand" value="良品铺子"/></dd>
																			<dd><input type="submit" name="brand" value="香当当"/></dd>
																		</form>
																	</dl>
																	
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("点心","UTF-8")%>">
																		<dt><span title="蛋糕">点心</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="点心" />
																			<dd><input type="submit" name="brand" value="皇族"/><dd>
																			<dd><input type="submit" name="brand" value="迪乐司"/></dd>
																			<dd><input type="submit" name="brand" value="丸京"/></dd>
																			<dd><input type="submit" name="brand" value="统一"/></dd>
																			<dd><input type="submit" name="brand" value="友谊牌"/></dd>
																			
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
													<h3 class="category-name b-category-name"><i><img src="images/cookies.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("饼干","UTF-8")%>" class="ml-22" title="饼干、膨化">饼干/膨化</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("饼干","UTF-8")%>">
																		<dt><span title="饼干">饼干</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="饼干" />
																			<dd><input type="submit" name="brand" value="友谊牌"/><dd>
																			<dd><input type="submit" name="brand" value="丽芝士"/></dd>
																			<dd><input type="submit" name="brand" value="不二家"/></dd>
																			<dd><input type="submit" name="brand" value="迪乐斯"/></dd>
																			<dd><input type="submit" name="brand" value="嘉士利"/></dd>
																			<dd><input type="submit" name="brand" value="edo"/></dd>
																			
																		</form>
																	</dl>
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("薯片","UTF-8")%>">
																		<dt><span title="薯片">薯片</span></dt>
																		</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="薯片" />
																			<dd><input type="submit" name="brand" value="番茄味"/><dd>
																			<dd><input type="submit" name="brand" value="原味"/></dd>
																			<dd><input type="submit" name="brand" value="烧烤味"/></dd>
																			<dd><input type="submit" name="brand" value="香辣味"/></dd>
																			<dd><input type="submit" name="brand" value="麻辣味"/></dd>
																			<dd><input type="submit" name="brand" value="葱香味"/></dd>
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
													<h3 class="category-name b-category-name"><i><img src="images/meat.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("肉类","UTF-8")%>" class="ml-22" title="熟食、肉类">熟食/肉类</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("猪肉脯","UTF-8")%>">
																		<dt><span title="猪肉脯">猪肉脯</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="猪肉铺" />
																			<dd><input type="submit" name="brand" value="晋江肉铺"/><dd>
																			<dd><input type="submit" name="brand" value="黄胜记"/></dd>
																			<dd><input type="submit" name="brand" value="厦门黄金香"/></dd>
																			<dd><input type="submit" name="brand" value="荣昌猪"/></dd>
																			<dd><input type="submit" name="brand" value="穆阳烤肉"/></dd>
																			<dd><input type="submit" name="brand" value="广西猪肉条"/></dd>
																		</form>
																	</dl>
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("牛肉丝","UTF-8")%>">
																		<dt><span title="牛肉丝">牛肉丝</span></dt>
																	</a>	
																		<form method="post" action="search/bytypeandbrand">
																		<input type="hidden" name="type" value="牛肉丝" />
																			<dd><input type="submit" name="brand" value="老川东"/><dd>
																			<dd><input type="submit" name="brand" value="牛浪汉"/></dd>
																			<dd><input type="submit" name="brand" value="三只松鼠"/></dd>
																			<dd><input type="submit" name="brand" value="好牛"/></dd>
																			<dd><input type="submit" name="brand" value="良品铺子"/></dd>
																			<dd><input type="submit" name="brand" value="棒棒娃"/></dd>
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
													<h3 class="category-name b-category-name"><i><img src="images/bamboo.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("素食","UTF-8")%>" class="ml-22" title="素食、卤味">素食/卤味</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("豆干","UTF-8")%>">
																	<dt><span title="豆干">豆干</span></dt>
																	</a>
								
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="豆干" />
																			<dd><input type="submit" name="brand" value="劲仔"/><dd>
																			<dd><input type="submit" name="brand" value="好巴食"/></dd>
																			<dd><input type="submit" name="brand" value="卫龙"/></dd>
																			<dd><input type="submit" name="brand" value="张飞"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("干笋","UTF-8")%>">
																		<dt><span title="干笋">干笋</span></dt>
																		</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="干笋" />
																			<dd><input type="submit" name="brand" value="惊雷"/><dd>
																			<dd><input type="submit" name="brand" value="良品铺子"/></dd>
																			<dd><input type="submit" name="brand" value="来伊份"/></dd>
																			<dd><input type="submit" name="brand" value="珍竹香"/></dd>
														
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
													<h3 class="category-name b-category-name"><i><img src="images/candy.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("糖果","UTF-8")%>" class="ml-22" title="糖果、蜜饯">糖果/蜜饯</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("糖果","UTF-8")%>">
																		<dt><span title="糖果">糖果</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="糖果" />
																			<dd><input type="submit" name="brand" value="阿尔卑斯"/><dd>
																			<dd><input type="submit" name="brand" value="不二家"/></dd>
																			<dd><input type="submit" name="brand" value="宏源"/></dd>
																			<dd><input type="submit" name="brand" value="大白兔"/></dd>
														
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
													<h3 class="category-name b-category-name"><i><img src="images/fish.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("海味","UTF-8")%>" class="ml-22" title="海味、河鲜">海味/河鲜</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("海带丝","UTF-8")%>">
																		<dt><span title="海带丝">海带丝</span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="海带丝" />
																			<dd><input type="submit" name="brand" value="口水娃"/><dd>
																			<dd><input type="submit" name="brand" value="老生鲜"/></dd>
																			<dd><input type="submit" name="brand" value="海婷"/></dd>
																			<dd><input type="submit" name="brand" value="川南"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("小鱼干","UTF-8")%>">
																		<dt><span title="小鱼干">小鱼干</span></dt>
																		</a>
																		<form method="post" action="search/bytypeandbrand">
																			<input type="hidden" name="type" value="小鱼干" />
																			<dd><input type="submit" name="brand" value="口水娃"/><dd>
																			<dd><input type="submit" name="brand" value="劲仔"/></dd>
																			<dd><input type="submit" name="brand" value="老鱼庄"/></dd>
																			<dd><input type="submit" name="brand" value="路斯"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("鱿鱼丝","UTF-8")%>">
																		<dt><span title="鱿鱼丝">鱿鱼丝</span></dt>
																		</a>
																		<form method="post" action="search/bytypeandbrand">
																		<input type="hidden" name="type" value="鱿鱼丝" />
																			<dd><input type="submit" name="brand" value="海边人"/><dd>
																			<dd><input type="submit" name="brand" value="三只松鼠"/></dd>
																			<dd><input type="submit" name="brand" value="兄弟海湾"/></dd>
																			<dd><input type="submit" name="brand" value="万顺昌"/></dd>
														
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
													<h3 class="category-name b-category-name"><i><img src="images/fish.png"></i><a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("水果","UTF-8")%>" class="ml-22" title="海味、河鲜">水果</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																	<a href="search/bytype?search_type=<%=java.net.URLEncoder.encode("鱿鱼丝","UTF-8")%>">
																	
																		<dt><span title="苹果"></span></dt>
																	</a>
																		<form method="post" action="search/bytypeandbrand">
																		<input type="hidden" name="type" value="苹果" />
																			<dd><input type="submit" name="brand" value="易果生鲜"/><dd>
																			<dd><input type="submit" name="brand" value="王小二"/></dd>
																			<dd><input type="submit" name="brand" value="烟台苹果"/></dd>
																			<dd><input type="submit" name="brand" value="大河沙"/></dd>
														
																		</form>
																	</dl>
																	<dl class="dl-sort">
																		<dt><span title="小鱼干">火龙果</span></dt>
																		<form method="post" action="search/bytypeandbrand">
																		<input type="hidden" name="type" value="火龙果" />
																			<dd><input type="submit" name="brand" value="易果生鲜"/><dd>
																			<dd><input type="submit" name="brand" value="果娃果业"/></dd>
																			<dd><input type="submit" name="brand" value="果然优鲜"/></dd>
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
					  <c:forEach items = "${productlist_discount}" var="product" varStatus="productcount">
						<a href="introduction/showbyid?porductid=${product.productid}">
						<div class="am-u-sm-3 ">
							<div class="icon-sale one "></div>
								<h4>特惠</h4>							
							<div class="activityMain ">
								<img src="images/${product.mainPicture}"></img>
	
							</div>
							<div class="sub-title">
										仅售：¥ ${product.price}
							</div>	
							<div class="title ">
										${product.productname}
							</div>													
						</div>
						</a>
					</c:forEach>
					  </div>
                   </div>
					<div class="clear "></div>

					<!--甜点-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>新品</h4>
							<h3>每一道新品都有一个故事</h3>
							<div class="today-brands ">
							<form method="post" action="product/queryByType">
									<input type="submit" name="brand" value="桂花糕"/>
						     		<input type="submit" name="brand" value="奶皮酥"/>
						        	<input type="submit" name="brand" value="栗子糕"/>
					                <input type="submit" name="brand" value="马卡龙"/>
					                <input type="submit" name="brand" value="铜锣烧"/>
							</form>
							</div>
							<span class="more ">
                    <a class="more-link " href="product/queryall">更多美味</a>
                        </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodOne ">
						<div class="am-u-sm-5 am-u-md-3 am-u-lg-4 text-one ">
							<a href="introduction/showbyid?porductid=${product_main.productid}">
								<div class="outer-con">
									<div class="title">
										零食大礼包开抢啦
									</div>					
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
                                  <img src="images/${product_main.mainPicture}" />								
							</a>
						</div>
						
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-4">
					<c:forEach items = "${productlist_new}" var="product" varStatus="productcount">
						<div class="am-u-sm-3 am-u-md-6 text-three">
							<div class="outer-con ">
								<div class="title ">
									${product.productname}
								</div>
								<div class="sub-title ">
									${ product.price}
								</div>
							</div>
							<a href="introduction/showbyid?porductid=${product.productid}"><img src="images/${product.mainPicture} " /></a>
						</div>
						</c:forEach>
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
						<a href="shopping/show" >
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