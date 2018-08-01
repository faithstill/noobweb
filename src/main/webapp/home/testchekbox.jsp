<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<title>菜鸟教程(runoob.com)</title>
<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
</script>
<script>
$(document).ready(function(){
   $('#dosubmit').click(function(){
        var checkID = [];//定义一个空数组 
        $("input[name='vehicle']:checked").each(function(i){//把所有被选中的复选框的值存入数组
            checkID[i] =$(this).val();
        }); 
	  alert(checkID);
    })
});
</script>
</head>
 <body> 
我有一辆自行车:
<input type="checkbox" name="vehicle" value="Bike"><br>
我有一辆汽车:
<input type="checkbox" name="vehicle" value="Car" ><br>
我有一架飞机:
<input type="checkbox" name="vehicle" value="Airplane"><br>
<input type="submit" id="dosubmit">
 
 
</body>
</html>