<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	
			$(function(){
			
				$('#append').click(function(){
					//xhr-->后端的数据
					
					
					
					$.ajax('user/queryUser',{
						type:'post',
						dataType:'json',
						success:function(user){
							alert(user.username);
							$("body").append("<h1>"+user.username+"</h1>");
						}
					});
				})
			})
		
	
	
	
	</script>
	
  </head>
  
  <body>
    This is my JSP page. <br> <input type="button"  id="append"  value="动态添加信息" />
  </body>
</html>
