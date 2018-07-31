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
		<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
	
	<script type="text/javascript">
			var data = {};
			key = 'addressid';
			value = 21;
			data[key] = value;
			
			$(function(){
			
				$('.selectaddress').click(function(){
				
					var  btn = this;
					var index = $('.selectaddress').index(btn);
					
					//alert('点击的是第'+index+'个按钮');
				
					var aid = $('.aid:eq('+index+')');
				
					//alert(aid.val());
					//return false;
					
					
					var id = aid.val();  
					//var name = $("#name").val();
					$.ajax('address/queryAddress',{
						type:'post',
						data:{"addressid":id},
						dataType:'json',
						success:function(address){
							 //alert(address.name);
 							 //$("p").append(address.name);
							 $("p").text(address.name);
						
						}
					});
				})
			})
			
	
	
	</script>
  </head>
  
  <body>
    	 
    	 <form action="">
    	 	<input type="text" value="21" name="aid" class="aid"> 
    	 	<input type="button" class="selectaddress"  value="选择1"/>
    	 </form>
    	 
    	 
    	 
    	  <form action="">
    	 	<input type="text" value="22" name="aid" class="aid"> 
    	 	<input type="button" class="selectaddress"  value="选择2"/>
    	 </form>
    	 
    	 
    	 
    	  <form action="">
    	 	<input type="text" value="27" name="aid" class="aid"> 
    	 	<input type="button" class="selectaddress"  value="选择3"/>
    	 </form>
    	
    	 <p></p>

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
<!-- 		<form method="post" action="product/queryByName"> -->
<!-- 				<input type="submit" name="producttype" value="牛奶"> -->
<!-- 				<input type="submit" name="producttype" value="零食"> -->
				
<!-- 				<input type="text" name="productname"> -->
<!-- 				<input type="submit"  value="搜索"> -->
<!-- 		</form> -->

<!-- 		<c:forEach items="${orderlist_ByUser}" var = "order"  varStatus="ordercount" > -->
		
<!-- 		${order} -->
		
<!-- 		</c:forEach> -->
    
  </body>
</html>
