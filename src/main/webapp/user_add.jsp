<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    	<form method="post" action="user/m4.action" >
    	
    	<!-- 	用户id:<input type="text" name="userid"   /></br>
    		用户名:<input type="text" name="username"   /></br>
    		密   码:<input type="text" name="password"   /></br>
    		薪    资:<input type="text" name="amount"   /></br>
    		出生日期:<input type="text" name="birthday"   /></br> -->
    	
    	
    	
    	    	用户id:<input type="text" name="user.userid"   /></br>
    	    	订单id:<input type="text" name="order.id"   /></br>


    	    	用户id:<input type="text" name="user.name"   /></br>
    	    	订单id:<input type="text" name="order.name"   /></br>
    	
    	
    		<input type="submit">
    	</form>
    	
    
    
    
    
    
  </body>
</html>
