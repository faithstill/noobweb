<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.neusoft.domain.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
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
    
<!-- 	<form  method="post" action="address/add"> -->
<!-- 		<table> -->
<!-- 		<input type="hidden" name="userid" value="1" > -->
<!-- 			<tr> -->
<!-- 				<td>收货人</td> -->
<!-- 				<td><input type="text" name="name"> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>省</td> -->
<!-- 				<td><input type="text" name="province"> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>市</td> -->
<!-- 				<td><input type="text" name="city"> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>详细地址</td> -->
<!-- 				<td><input type="text" name="detailedaddress"> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td>联系电话</td> -->
<!-- 				<td><input type="text" name="phone"> -->
<!-- 				</td> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<!-- 				<td colspan="2"><input type="submit"> -->
<!-- 				</td> -->

<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</form> -->
		<form method="post" action="product/queryByName">
<!-- 				<input type="submit" name="producttype" value="牛奶"> -->
<!-- 				<input type="submit" name="producttype" value="零食"> -->
				
				<input type="text" name="productname">
				<input type="submit"  value="搜索">
		</form>

		<c:forEach items="${productlist_byname}" var = "product"  varStatus="productcount" >
		
		${product}
		
		</c:forEach>
    
  </body>
</html>
