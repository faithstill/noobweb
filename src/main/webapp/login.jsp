<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="${basePath}AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link rel="stylesheet" href="${basePath}AmazeUI-2.4.2/assets/css/easyform.css" />
		<link href="${basePath}css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="${basePath}AmazeUI-2.4.2/assets/js/jquery-2.1.0.min.js"></script>
		<script src="${basePath}AmazeUI-2.4.2/assets/js/easyform.js"></script>
		
		
	</head>
	<body>

		<div class="login-boxtitle">
			<a href="home.html"><img alt="logo" src="${basePath}images/logobig.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="${basePath}images/big.jpg" /></div>
				<div class="login-box">

							<h3 class="title">登录商城</h3>

							<div class="clear"></div>
						<form id="reg-form" method="post" action="${basePath}user_login" >	 
						<div class="login-form">
						 
							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <input type="text" name="username"  placeholder="邮箱/手机/用户名" data-easyform="real-time;" data-message="账号不能为空"  data-easytip="class:easy-red;">
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password"  placeholder="请输入密码" data-easyform="real-time;" data-message="密码不能为空"  data-easytip="class:easy-red;">
                 </div>
                
           </div>
          	<div style="color:red;font-size:10px;">${status}</div>
            <div class="login-links">
               <!--  <label for="remember-me">
                <input id="remember-me" type="checkbox">记住密码</label> -->
                 <input  type="checkbox" style="width:15px;height:15px"data-easyform="null;">记住密码
								<a href="#" class="am-fr">忘记密码</a>
								<a href="zhuce.jsp" class="zcnext am-fr am-btn-default">注册</a>
								<br />
            </div>
            		
				<div class="am-cf">
									<input type="submit"  name="" value="登 录" class="am-btn am-btn-primary am-btn-sm">
								</div>
								</form>	
						<div class="partner">		
								<h3>合作账号</h3>
							<div class="am-btn-group">
								<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a></li>
								<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span> </a></li>
								<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span> </a></li>
							</div>
						</div>	

				</div>
			</div>
		</div>


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
	</body>
	<script>

    $(document).ready(function ()
    {
    	debugger;
        var v = $('#reg-form').easyform();

        $('#reg-form').easyform();

        v.is_submit = false;

        v.error = function (ef, i, r)
        {
            //console.log("Error事件：" + i.id + "对象的值不符合" + r + "规则");
        };

        v.success = function (ef)
        {
         //  console.log("成功");
          
        };

        v.complete = function (ef)
        {
        	
           // console.log("完成");
        };
    });
</script>
</html>