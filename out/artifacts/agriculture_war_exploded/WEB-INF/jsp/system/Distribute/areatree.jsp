<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作物分配</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/common.css">
<style type="text/css">
.container-fluid{max-width:90%;margin:0 5%}
.grid-1{width:16.66666%}
.grid-2{width:83.33%}
</style>
</head>
<body>
<div class="admin-main">
		<fieldset class="layui-elem-field">
		<legend>分配作物</legend>
		<!--区域树形菜单-->
			<div class="container-fluid">
	            <div class="grid-1"style="float:left;">
	                <ul id="AreaTree" style="float:left;  background-color:#fbfbfb; border-radius: 10px;" method=""></ul>
	            </div>
	            <div class="grid-2" style="padding-left:20%; background-color:#fbfbfb;height: auto;border-radius: 10px;">
	                <div id="InfoItem" style="width: 100%; min-height: 450px;"></div>
	            </div>
        </div>
		</fieldset>
	</div>
</body>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script type="text/javascript" src="plugins/layui/jquery-2.0.3.js"></script>
<script type="text/javascript">
var treeMenu;
$(document).ready(function(){
	$.ajax({
          url:"${pageContext.request.contextPath }/getTree.action",
    	  type: "POST",
          dataType:"text",
          data:{},
          dataType:"json",
          cashe:false,
          async:false,
          success: function(data) {
          		
		 		var s = JSON.stringify(data); //可以将json对象转换成json对符串 
		 		
		 		treeMenu = data;
		 		layui.use(['layer', 'form'], function(){
					  var layer = layui.layer
					  ,form = layui.form();
					  
					  layer.msg('树形菜单获取成功！');
					});
		 		
		 		
          },
          error: function(data) {
        	  layui.use(['layer', 'form'], function(){
				  var layer = layui.layer
				  ,form = layui.form();
				  
				  layer.msg('树形菜单获取失败！');
				});
            
          }
          
	});

	
});

	layui.use(['tree','form','layer'], function(){
		 var form = layui.form(),
		 layer=layui.layer,
		 $ = layui.jquery;
		 layui.tree({
			  elem: '#AreaTree' //传入元素选择器
			  ,nodes:treeMenu,
				click: function(node) { //点击后弹出右边页面
					var data = {
						"area_id":"",  //对应crop表中的area_id
						
					};
					
					var index = layer.load(2,{offset:['45%', '60%']});
					//alert(node.id);
					data.area_id = node.id;
					//alert(JSON.stringify(data));
					$('#InfoItem').load("getDistribute.action",data,function() {    //load括号中的data即传入的area_id
						//alert(JSON.stringify(data));
					 		layer.close(index);
					 	});
				}
			});
	});
</script>
</html>