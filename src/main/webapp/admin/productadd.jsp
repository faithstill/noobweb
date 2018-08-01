<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'productadd.jsp' starting page</title>
    
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
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">添加商品</strong> / <small>add product</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal" method="post" action="product/add" enctype="multipart/form-data">
				<div class="am-form-group theme-poptit">
							
						</div>
				<table>
					<tr>
				<td>商品名</td>
				<td><input type="text" name="productname" >
				</td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input type="text" name="price">
				</td>
			</tr>
			<tr>
				<td>降价前价格</td>
				<td><input type="text" name="beforeP">
				</td>
			</tr>
			<tr>
				<td>库存量</td>
				<td><input type="text" name="remain">
				</td>
			</tr>
			<tr>
				<td>商品详情</td>
				<td>
				<textarea rows="5" cols="120" placeholder="请开始你的表演..." name="productdetail">
				</textarea>
				</td>
				<!-- <td><input type="text" name="productdetail" style="height:200px;width:700px;">
			
				</td> -->
			</tr>
			<tr>
				<td>分类</td>
				<td><input type="text" name="type">
				</td>
			</tr>
			<tr>
				<td>品牌</td>
				<td><input type="text" name="brand" >
				</td>
			</tr>
			<tr>
				<td>图片</td>
				<td><input type="file" name="pic" multiple/>  
				</td>
			</tr>
		 	<tr>
				<td>附图1</td>
				<td><input type="file" name="pic1" multiple/>  
				</td>
			</tr>
		<	<tr>
				<td>附图2</td>
				<td><input type="file" name="pic2" multiple/>  
				</td>
			</tr>
			<tr>
				<td>附图3</td>
				<td><input type="file" name="pic3" multiple/>  
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
