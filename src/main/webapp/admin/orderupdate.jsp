<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
</head>
 ${order.orderTime}
 <body>
 	<div class="mt-20">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<tr class="text-c">
		<tr>
			<th width="100">订单ID:</th><td>${update_order.orderid}</td>
		</tr>
			<tr><th width="100">订单用户:</th><td>${username}</td></tr>
			<tr><th width="100">订单状态:</th><td>${update_order.tradeStatus}</td></tr>
			<tr><th width="100">订单地址:</th><td>${address.name} ${address.phone} ${address.province}省${address.city}市 ${address.detailedaddress}</td></tr>
			<tr><th width="100">订单金额</th><td>${update_order.amount}</td></tr>
			<tr>
				<c:forEach items="${productnamelist}" var="product" varStatus="prs">
				<tr><th width="100">订单商品</th>
					<td>
						${product} 数量：<c:forEach items="${ordercontentlist}" var="ordercontent" begin="${prs.index}" end="${prs.index}">${ordercontent.amount} 件</c:forEach>
									
					</td>
				</tr>
				</c:forEach>
			</tr>
			<tr><th width="120">提交时间</th><td><fmt:formatDate value="${update_order.orderTime}" type="both"/></td></tr>
			<tr><th width="120">付款时间</th><td><fmt:formatDate value="${update_order.payTime}" type="both"/></td></tr>
			<tr><th width="120">发货时间</th><td><fmt:formatDate value="${update_order.deliveryTime}" type="both"/></td></tr>
			<tr><th width="120">完成时间</th><td><fmt:formatDate value="${update_order.finishTime}" type="both"/></td></tr>
			<tr><th width="120">退货时间</th><td><fmt:formatDate value="${update_order.redeliveryTime}" type="both"/></td></tr>
			<tr><th width="120">退款时间</th><td><fmt:formatDate value="${update_order.refundTime}" type="both"/></td></tr>
			<tr><th width="120">取消时间</th><td><fmt:formatDate value="${update_order.cancelTime}" type="both"/></td></tr>
		
		<tr>
		
		<c:if test="${update_order.tradeStatus == 'paid'}">
		<td>
			<form action="order/delivery">
				<input type="hidden" value="${update_order.orderid}" name="orderid">
				<input type="submit" value="发货">
			</form>
			</td>
			</c:if>
		
		
		<c:if test="${update_order.tradeStatus == 'redelivered'}">
		<td>
			<form action="trade/refund">
				<input type="hidden" value="${update_order.orderid}" name="orderid">
				<input type="submit" value="退款">
			</form>
			</td>
			</c:if>	
		
		
		<c:if test="${update_order.tradeStatus == 'unpaid'}">
		<td>
			<form action="order/cancel">
				<input type="hidden" value="${update_order.orderid}" name="orderid">
				<input type="submit" value="取消订单">
			</form>
			</td>
		</c:if>	
		
		</tr>	
	
	</table>
	</div>
</div>
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
