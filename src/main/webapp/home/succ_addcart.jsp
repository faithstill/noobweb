<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>购物车页面</title>
        <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="css/optstyle.css" rel="stylesheet" type="text/css" />
		<style>
		.data-table{ width:990px; margin:50px auto;}
		</style>

  </head>
  
  <body>
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
						</c:choose>
					</div>
				</div>
			</ul>
			<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="/home" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng"><a href="person/index" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="shopping/show" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="shopping/showcollection" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
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

<table width="100%" align="center">
<tr>
<td style="width:20%">
<img src="images/cart.jpg"  width="150" height="120"/>
</td style="width:10%">
<td>
<img src="images/a.jpg"  width="70" height="50"/>
成功添加购物车</td>  
</td>  
<td>
<label  style="width:200px "><a href="shopping/show" ><font color="red">去购物车结算</font></a></label>
</td>
<td>
<label  style="width:300px "><a href="home" ><font color="red">继续购物</font></a></label>
</td>
</tr>
</table>			
  </body>
</html>
