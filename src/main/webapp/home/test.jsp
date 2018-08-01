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
		<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.8.3/jquery.min.js"></script>
	<script >
     function G(id){
    return document.getElementById(id);
};
function GC(t){
   return document.createElement(t);
};
String.prototype.trim = function(){
          return this.replace(/(^\s*)|(\s*$)/g, '');
};
function isIE(){
      return (document.all && window.ActiveXObject && !window.opera) ? true : false;
} 
     var loginDivWidth = 300;
     var pid;
var sign_in_flow = '<div style="background:#FF9900;">assure</div><div>  </div><br><br>'
      
       + '</div><div>do you want to delete?</div><br>'
     /*    + '</div><div><a href="/ssm/user/delete?productid=pid">yes</a> '  */
        +'</div><div><a href="#" onclick="searchCurriculum()">yes</a>' 
        + '   <input type="button" value="cancel" onclick="cancelSign();"/></div><br>'
        
        
        
        function searchCurriculum(){
        var stateObject = {};
       var title = "";
      var newUrl = "/noobweb/user/delete?productid="+pid;
    history.pushState(stateObject,title,newUrl);
    window.location.reload ( ); 
           // window.location.href("/ssm/user/delete?productid="+pid);
        }
function loadSignInFlow(){
   G("sign_div").innerHTML = sign_in_flow;
    G("sign_email").focus();
};
function cancelSign(){
    G("sign_div").style.display = 'none';
    G("cover_div").style.display = 'none';
   document.body.style.overflow = '';
};
function popCoverDiv(){
   if (G("cover_div")) {
    G("cover_div").style.display = '';
   } else {
    var coverDiv = GC('div');
    document.body.appendChild(coverDiv);
    coverDiv.id = 'cover_div';
    with(coverDiv.style) {
     position = 'absolute';
     background = '#CCCCCC';
     left = '0px';
     top = '0px';
     var bodySize = getBodySize();
     width = bodySize[0] + 'px'
     height = bodySize[1] + 'px';
     zIndex = 98;
     if (isIE()) {
      filter = "Alpha(Opacity=60)";
     } else {
      opacity = 0.6;
     }
    }
   }
}
function getBodySize(){
   var bodySize = [];
   with(document.documentElement) {
    bodySize[0] = (scrollWidth>clientWidth)?scrollWidth:clientWidth;
    bodySize[1] = (scrollHeight>clientHeight)?scrollHeight:clientHeight;
   }
   return bodySize;
} 
function popSign(isLogin){
   if (G("sign_div")) {
    G("sign_div").style.display = '';
   } else {
    var signDiv = GC('div');
    document.body.appendChild(signDiv);
    signDiv.id = 'sign_div';
    signDiv.align = "center";
    signDiv.onkeypress = function(evt){
          var e = window.event?window.event:evt;
          if (e.keyCode==13 || e.which==13) {
           if (G("sign_button")) {
            G("sign_div").focus();
            G("sign_button").click();
           }
          }
         };
    with (signDiv.style) {
     position = 'absolute';
     left = (document.documentElement.clientWidth - loginDivWidth)/2 + 'px';
     top = (document.documentElement.clientHeight - 300)/2 + 'px';
     width = loginDivWidth + 'px';
     zIndex = 99;
     background = '#FFFFFF';
     border = '#66CCFF solid 1px';
    }
   }
   if(isLogin) {
    G("sign_div").innerHTML = sign_in_flow;
   } else {
    G("sign_div").innerHTML = change_pwd_flow;
   }
  
}
function popSignFlow(isLogin) {


    pid = isLogin;
   popCoverDiv();  
   popSign(isLogin);  
   document.body.style.overflow = "hidden";
     
      if(isLogin) {
       G("sign_email").focus();
      } else {
       G("old_pwd").focus();
      }
}
     </script>    
	<style>
			*{ margin:0; padding:0}
			body{ font:12px "Microsoft YaHei";}
			ul{ list-style:none;}
			a{ text-decoration:none;}
			
			.data-table{ width:990px; margin:50px auto;}
			.data-table input[type=checkbox]{ position:relative; top:2px; right:5px;}
			
			.t-hd{ border-top:2px solid #e6e6e6; overflow:hidden; padding:20px 15px;}
			
			.hd-check{ width:120px;}
			.hd-commodityInfo{ width:400px;}
			.hd-unitPrice{ width:120px;}
			.hd-number{ width:90px;}
			.hd-amount{ width:140px;}
			.hd-operate{ width:80px;}
			
			.t-hd>div,
			.t-bd ul li>div,
			.t-ft>div,
			.bd-commodityInfo>div{ float:left;}
			
			.t-bd{}
			
			
			
			.t-bd ul li{ border:1px solid #e7e7e7; background-color:#fcfcfc; margin-bottom:15px; padding:15px; overflow:hidden;}
			
			.t-bd ul li.selected{background-color:#fff8e1;}
			
			.bd-check{ width:30px; margin-left:15px;}
			.bd-commodityInfo{ width:440px; height:80px;}
			
			.bd-commodityInfo .info-pic{ width:80px; height:80px; margin-right:10px;}
			.bd-commodityInfo .info-text{ width:190px; line-height:22px;}
			.bd-commodityInfo .info-text a{ color:#333;}
			.bd-commodityInfo .info-parameter{ width:130px; color:#999; margin-left:30px;}
			.bd-commodityInfo .info-parameter span{ display:block;}
			
			.bd-unitPrice{ width:100px; margin-left:30px;}
			.bd-unitPrice del,
			.bd-unitPrice b{ display:block;}
			.bd-unitPrice del{ color:#999;}
			.bd-number{ width:100px;}
			.bd-number a{ float:left; width:16px; height:22px; line-height:22px; background-color:#f0f0f0; border:1px solid #e5e5e5; text-align:center;}
			.bd-number input[type=text]{ float:left; width:40px; height:16px; padding:2px 5px;}
			.bd-amount{ width:120px; margin-left:20px;}
			.bd-amount b,.ft-selectedGoods b,.t-ft .ft-totalPrice b{ color:#f40;}
			.bd-operate{ width:80px; margin-left:15px;}
			.bd-operate a{ color:#333;}
			
			.bd-commodityInfo .info-text a:hover,
			.bd-operate a:hover,
			.ft-del a:hover{ color:#f40;}
			
			
			.t-ft{ height:50px; line-height:50px; background-color:#e5e5e5; position:relative;}
			.ft-check{ margin-left:15px;}
			.ft-del{ padding:0 40px;}
			.ft-del a{ color:#333;}
			.ft-selectedGoods{ margin-left:350px;}
			.ft-selectedGoods b{ padding:0 3px;}
			.t-ft .ft-totalPrice{ float:right; line-height:50px; overflow:hidden;}
			.t-ft .ft-totalPrice span{}
			.t-ft .ft-totalPrice b{ font-size:20px; padding-right:20px;}
			.t-ft .ft-totalPrice a{ float:right; width:120px; height:50px; text-align:center; color:#aaa; font-size:22px; border-radius:3px; cursor:not-allowed;}
			.t-ft .ft-totalPrice a.disable{ background-color:#f22d00; color:#fff;}
			.t-ft .ft-totalPrice a.disable:hover{ background-color:#f40;}
			
			
			.checkShowPic{ width:988px; background-color:#fff; border:1px solid #aaa; position:absolute; left:0; bottom:100%;}
			
			.checkShowPic li{ float:left; margin:10px; position:relative;}
			.checkShowPic li span{ position:absolute; right:0; top:0; background-color:#000; color:#fff; height:20px; line-height:20px; padding:0 8px; cursor:pointer;}
			
		</style>
  </head>
  
    	 
    	
    	 
    
 <body>
		<% List<Product>cartproductList1 =  (List<Product>) request.getAttribute("cartproductList");
      List<Shoppingcar>cartList1 =  ( List<Shoppingcar>) request.getAttribute("cartList"); %> 
      <h2 align="center">购物车详情</h2>
		<div class="data-table">
			
			<div class="t-hd">
				<div class="hd-check">
					<label><input type="checkbox" class="checkAll" />全选</label>
				</div>
				<div class="hd-commodityInfo">商品信息</div>
				<div class="hd-unitPrice">单价（元）</div>
				<div class="hd-number">数量</div>
				<div class="hd-amount">金额（元）</div>
				<div class="hd-operate">操作</div>
			</div>
			
			<div class="t-bd">
				
				<ul>
				<c:forEach  items="${cartproductList}" var="i" > 
			     <%int a=(Integer) request.getAttribute("a");%>
					<li>
						<div class="bd-check">
							<label><input type="checkbox" class="checkboxItem" /></label>
						</div>
						<div class="bd-commodityInfo">
							<div class="info-pic">
								<img src="images/${i.mainPicture}"/>
							</div>
							<div class="info-text">
								<a href="#">${i.productname}</a>
							</div>
							<div class="info-parameter">
								<span>颜色分类：图片色</span>
								<span>尺码：L</span>
							</div>

						</div>
						<div class="bd-unitPrice">
							<del>398.00</del>
							<b>${i.price}</b>
						</div>
						<div class="bd-number">
							<a href="javascript:;" class="minus">-</a>
							<input type="text" class="inputNum" value="${cartList.get(a).getAmount()}"/>
							<a href="javascript:;" class="plus">+</a>
						</div>
						<%double b =cartList1.get(a).getAmount()*cartproductList1.get(a).getPrice(); %>
						<div class="bd-amount">
							<b><%=b%></b>
						</div>
						<%a=a+1;%>	
						<%request.setAttribute("a", a); %>	
						<div class="bd-operate">
						 <input type="button" onclick="popSignFlow('${i.productid}');" value="删除"/>  
						</div>
						</c:forEach>
					</li>
				</ul>
						
			</div>
			
			<div class="t-ft">
				
				
				
				<ul class="checkShowPic">
					<!--<li><a href="javascript:;"><img src="images/80x80_1.jpg"/></a><span>取消选择</span></li>-->
				</ul>
				
				
				
				<div class="ft-check">
					<label><input type="checkbox" class="checkAll"/>全选</label>
				</div>
				<div class="ft-del"><a href="javascript:;">删除</a></div>
				<div class="ft-selectedGoods">
					<span>已选商品<b>0</b>件</span>
				</div>
				
				<div class="ft-totalPrice">
					<span>合计（不含运费）：</span><b>￥0.00</b>
					
					<form action="">
    	 	<input type="button" class="selectaddress"  value="结算"/>
    	 </form>
				<!-- 	<a href="javascript:;">结算</a> -->
				</div>
			</div>
			
		</div>  

 <%
   request.setCharacterEncoding("utf-8");
   String txtMsg = request.getParameter("test2");
   request.setAttribute("totalprice",txtMsg);
	%>	
	</body>
	<script src="../js/jquery-1.8.3.min.js" type="text/javascript"></script>
		<script>
		var price = 0;
			(function(){
				var cart={
					init:function(){
						this.getDom();
						this.bindEvent();
						this.b=false;
						this.bInput=false;
						this.isCheck=false;
					},
					getDom:function(){
						this.dataTable=$('.data-table');
						this.checkBox=this.dataTable.find('input[type=checkbox]');
						this.tBody=this.dataTable.find('.t-bd');
						this.tBodyItem=this.tBody.find('li');
						this.minusBtn=this.tBodyItem.find('.minus');
						this.plusBtn=this.tBodyItem.find('.plus');
						this.checkboxItem=this.tBodyItem.find('.checkboxItem');
						this.tFoot=this.dataTable.find('.t-ft');
						this.totalPrice=this.tFoot.find('.ft-totalPrice');
						this.selectedGoods=this.tFoot.find('.ft-selectedGoods');
					},
					bindEvent:function(){
						var self=this;
						this.dataTable.on('click',function(e){
							
							//全选事件
							if($(e.target).hasClass('checkAll')){
							
								self.checkAll();
								self.isCheck=!self.isCheck;
								var a = self.getTotalPrice();
								price = a;
								self.totalPrice.find('b').html('￥'+a);
							  
								self.selectedGoods.find('b').html(self.isCheckNum());
								
							    
								
							
							}
							
							//选择商品事件
							if($(e.target).hasClass('checkboxItem')){
								
								self.totalPrice.find('b').html('￥'+self.getTotalPrice());
								self.selectedGoods.find('b').html(self.isCheckNum());
						         price = self.getTotalPrice();
							}
							
							//数量加事件
							if($(e.target).hasClass('plus')){
								self.bInput=true;
								self.b=true;
								var obj=$(e.target).parents('li');
								self.getItemPrice(obj);
								self.totalPrice.find('b').html('￥'+self.getTotalPrice());
								 price = self.getTotalPrice();
							}
							
							//数量减事件
							if($(e.target).hasClass('minus')){
								self.bInput=true;
								self.b=false;
								var obj=$(e.target).parents('li');
								self.getItemPrice(obj);
								self.totalPrice.find('b').html('￥'+self.getTotalPrice());
								price = self.getTotalPrice();
							}

						})
						/* .on('keyup',function(e){
							//获取数量总数
							self.bInput=false;
							if($(e.target).hasClass('inputNum')){
								
								//var obj=$(e.target).parents('li');
								//self.getItemPrice(obj);
								//self.totalPrice.find('b').html('￥'+self.getTotalPrice());
							}		

							
						}); */
					
					},
					checkAll:function(){//全选
						for(var i=0;i<this.checkBox.length;i++){
							if(!this.isCheck){
								this.checkBox.eq(i).attr('checked',true);
							}else{
								this.checkBox.eq(i).removeAttr('checked');
							}
						}
					},
					getTotalPrice:function(){//总价格
						var total=0;

						for(var i=0;i<this.checkboxItem.length;i++){
							if(this.checkboxItem.eq(i).is(':checked')){
								var price=this.checkboxItem.eq(i).parents('.bd-check').siblings('.bd-amount').find('b').html();
							
								total+=parseFloat(price);
							}
						}
					   
						return total.toFixed(2);
						
						
						
						
					},
					getItemPrice:function(obj){//商品单价计算
						
						var price=obj.find('.bd-unitPrice b').html();
						var num=parseInt(obj.find('.bd-number input[type=text]').val());
						if(this.bInput){
							if(this.b){
								num++;
							}else{
								num--;
								if(num<1){
									num=1;
								}
							}
						}else{
							if(num<1){
								num=1;
							}
						}
						obj.find('.bd-number input[type=text]').val(num);
						obj.find('.bd-amount b').html((price*num).toFixed(2));
					},
					isCheckNum:function(){//获取已选商品个数
						var isCheckNum=0;
						for(var i=0;i<this.checkboxItem.length;i++){
							
							if(this.checkboxItem.eq(i).is(':checked')){
								isCheckNum++;
								this.totalPrice.find('a').addClass('disable');
								this.checkboxItem.eq(i).parents('li').addClass('selected');
								
							}else{
								this.isCheck=false;
								this.dataTable.find('.checkAll').removeAttr('checked');
								this.checkboxItem.eq(i).parents('li').removeClass('selected');
								
								if(isCheckNum==0){
									this.totalPrice.find('a').removeClass('disable');
								}
							}
							
						}
						return isCheckNum;
						
						
					}

				}
				cart.init();
			})();	
			
			$(function(){
			
				$('.selectaddress').click(function(){					
					var id = price; 
					 
					//var name = $("#name").val();
					$.ajax('user/t',{
						type:'post',
						data:{"price":id},
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
</html>	
