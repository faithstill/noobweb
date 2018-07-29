<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />


		<link href="${basePath}css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="${basePath}AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
		<link rel="stylesheet" href="${basePath}AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link rel="stylesheet" href="${basePath}AmazeUI-2.4.2/assets/css/easyform.css" />
		<link href="${basePath}css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="${basePath}AmazeUI-2.4.2/assets/js/jquery-2.1.0.min.js"></script>
		<script src="${basePath}AmazeUI-2.4.2/assets/js/easyform.js"></script>
		
		

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="${basePath}home/demo.html"><img alt="" src="${basePath}images/logobig.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg"><span></span><img src="${basePath}images/big.jpg" /></div>
				<div class="login-box">

						<div class="am-tabs" id="doc-my-tabs">
							<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
								<li class="am-active"><a href="">邮箱注册</a></li>
								<li><a href="">手机号注册</a></li>
							</ul>
                     
  
							<div class="am-tabs-bd">
							<form method="post" action="${basePath}user_register" id="reg-form">	 	
								<div class="am-tab-panel am-active">
									
								   
							   <div class="user-email">
										<label for="email"><i class="am-icon-envelope-o"></i></label>
										<input type="text" name="username"  placeholder="请输入邮箱账号" 
                               data-message="Email格式要正确"data-easytip="class:easy-red;">
                 </div>										
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="password" id="psd"  placeholder="设置密码" data-easyform="length:6 16;char-english;real-time;"
                               data-message="密码必须为6-16位" data-easytip="class:easy-red;">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name=""  placeholder="确认密码" data-easyform="length:6 16;char-english;real-time;equal:#psd;"
                 data-message="密码输入不一致" data-easytip="class:easy-red;">
                 </div>	
                 
              
				
							  <input style="width:15px;height:15px;"  name="check" id="checkbox" margin-top:5px;" value="1" type="checkbox" data-message="请勾选同意协议" data-easytip="position:left;class:easy-red;"><a style="color:black;font-size:13px;">点击表示您同意商城《服务协议》</a>
							 
										<div class="am-cf">
											<input type="submit"  name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
										
								</div>
</form>
								<div class="am-tab-panel">
									<form method="post">
                 <div class="user-phone">
								    <label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label>
								    <input type="tel" name="" id="phone" placeholder="请输入手机号">
                 </div>																			
										<div class="verification">
											<label for="code"><i class="am-icon-code-fork"></i></label>
											<input type="tel" name="" id="code" placeholder="请输入验证码">
											<a class="btn" href="javascript:void(0);" onclick="sendMobileCode();" id="sendMobileCode">
												<span id="dyMobileButton">获取</span></a>
										</div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="password" placeholder="设置密码">
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="确认密码">
                 </div>	
									</form>
								 <div class="login-links">
										<label for="reader-me">
											<input id="reader-me" type="checkbox"> 点击表示您同意商城《服务协议》
											
										</label>
							  	</div>
										<div class="am-cf">
											<input type="submit" name="" value="注册" class="am-btn am-btn-primary am-btn-sm am-fl">
										</div>
								
									<hr>
								</div>

								<!-- <script>
									$(function() {
									    $('#doc-my-tabs').tabs();
									  })
								</script>
 -->
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