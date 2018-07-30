<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addressupdate.jsp' starting page</title>
    
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
  
			<div >
				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改地址</strong> / <small>Update address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal" method="post" action="address/update">
				<div class="am-form-group theme-poptit">
							
						</div>
				<table>
				<input type="hidden" name="userid" value="1" >
				<input type="hidden" name="addressid" value="${update_address.getAddressid() }" >
					<tr>
				<td>收货人</td>
				<td><input type="text" name="name" value="${update_address.getName()}">
				</td>
			</tr>
			<tr>
				<td>省</td>
				<td><input type="text" name="province" value="${update_address.getProvince()}">
				</td>
			</tr>
			<tr>
				<td>市</td>
				<td><input type="text" name="city" value="${update_address.getCity()}">
				</td>
			</tr>
			<tr>
				<td>详细地址</td>
				<td><input type="text" name="detailedaddress" value="${update_address.getDetailedaddress()}">
				</td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><input type="text" name="phone" value="${update_address.getPhone()}">
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" >
				</td>
							</tr>
			
						</table>
					</form>
				</div>

			</div>

			<div class="clear"></div>
  </body>
</html>
