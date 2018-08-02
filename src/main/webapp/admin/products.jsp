<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

request.setAttribute("path", basePath);  
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="${path}resources/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${path}resources/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${path}resources/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${path}resources/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${path}resources/static/h-ui.admin/css/style.css" />
<link href="${basePath}css/layer.css" rel="stylesheet" type="text/css">
		<script src="${basePath}AmazeUI-2.4.2/assets/js/jquery-2.1.0.min.js"></script>
		<script src="${basePath}js/layer.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>用户管理</title>
	<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	
			$(function(){
			
			
			})
			
			
		function member_del(obj,id){
	layer.confirm('确认要删除商品“'+obj+'”吗？',function(){
		$.ajax('/product/delete',{
			type: 'post',
			data:{"addressid":id},
			
			dataType: 'json',
			success: function(data){
				layer.msg(data);
				if(data==true)
				layer.msg('删除成功!',{icon:1,time:2000});
				else{
                     layer.msg('删除', {icon: 2});
                 } 
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}
	</script>


</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 商品管理 <span class="c-gray en">&gt;</span> 查看商品 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
	<div class="text-c">
	   <form id="reg-form" method="post" action="queryByName" >	
		<input type="text" class="input-text" style="width:250px" placeholder="输入商品名称"  name="productname">
		<button type="submit" class="btn btn-success radius"><i class="Hui-iconfont">&#xe665;</i> 搜商品</button>
		</form>
	</div>
	<div class="cl pd-5 bg-1 bk-gray mt-20">  <a href="admin/productadd.jsp"  class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加商品</a></span> <span class="r">共有数据：<strong>${length}</strong> 条</span> </div>
	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				
				<th width="80">商品ID</th>
				<th width="100">商品名</th>
				<th width="100">商品价格</th>
				<th width="100">库存剩余</th>
				<th width="80">分类</th>
				<th width="100">品牌</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${productlist}" var="product">
			<tr class="text-c" id="${product.getProductid()}">
				<td>${product.productid}</td>
				<td><u style="cursor:pointer" class="text-primary" onclick="">${product.getProductname()}</u></td>
				<td>${product.getPrice()}</td>
				<td >${product.getRemain()}</td>
				<td >${product.getType()}</td>
				<td >${product.brand}</td>
				
				<td class="td-manage"> <a title="编辑" href="product/update_queryById?productid=${product.productid}"  class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> 
				 <a title="删除" href="product/deleteById?productid=${product.productid}" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
				 
				 
				 </td>				
			
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${path}lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${path}lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${path}static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${path}static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${path}lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${path}lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${path}lib/laypage/1.2/laypage.js"></script>

</body>
</html>