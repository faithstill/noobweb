<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'productupdate.jsp' starting page</title>
    
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
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改商品</strong> / <small>Update product</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
				<form class="am-form am-form-horizontal" method="post" action="product/update">
				<div class="am-form-group theme-poptit">
							
						</div>
				<table>
				<input type="hidden" name="productid" value="${update_product.getProductid()}" >
					<tr>
				<td>商品名</td>
				<td><input type="text" name="productname" value="${update_product.getProductname()}">
				</td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input type="text" name="price" value="${update_product.getPrice()}">
				</td>
			</tr>
			<tr>
				<td>库存量</td>
				<td><input type="text" name="remain" value="${update_product.remain}">
				</td>
			</tr>
			<tr>
				<td>商品详情</td>
				<td><input type="text" name="productdetail" value="${update_product.getProductdetail()}">
				</td>
			</tr>
			<tr>
				<td>分类</td>
				<td><input type="text" name="type" value="${update_product.type}">
				</td>
			</tr>
			<tr>
				<td>品牌</td>
				<td><input type="text" name="brand" value="${update_product.brand}">
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
