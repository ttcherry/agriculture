<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户添加错误</title>

 		<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/global.css" media="all">
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
</head>
<body>
<p>账号已存在！</p>
<script language="javascript"> 
function go( ) {//定义函数 
window.location="getPersonAddMenu.action";//页面跳转 
} 
window.setTimeout("go()",500000);//1秒后执行函数go 
</script> 
 <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
 <script type="text/javascript">
 layui.use(['form', 'layedit', 'laydate'], function(){
	  var form = layui.form()
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  layer.msg('新增失败！用户已经存在');
 });
 </script>
</body>
</html>