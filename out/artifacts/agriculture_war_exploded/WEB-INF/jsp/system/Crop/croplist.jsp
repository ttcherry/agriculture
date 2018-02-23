<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作物列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<form name="cropForm" action="" method="post">
<div class="admin-main">
		<blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small add">
            <i class="layui-icon">&#xe608;</i> 添加作物
        </a>

        <div class="layui-input-block" style="display: inline-block; margin-left: 30px; min-height: inherit; vertical-align: bottom;">
            <input type="text" name="keyword" id="keyword" required lay-verify="keyword" class="layui-input" autocomplete="off" placeholder="请输入搜索关键词" style="height: 30px; line-height: 30px;" value="">
        </div>
        <a href="javascript:;" class="layui-btn layui-btn-small" id="search">
            <i class="layui-icon">&#xe615;</i> 搜索
        </a>
        <a href="javascript:;" class="layui-btn layui-btn-small" id="searchAll">
            <i class="layui-icon">&#xe615;</i> 查看全部
        </a>
    </blockquote>
		<fieldset class="layui-elem-field">
		<legend>作物管理</legend>
			<!--区域表格-->
				<table class="site-table">
					<thead>
						<tr>
							<th>名称</th>
							<th>作物种类</th>
							<th>备注</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>	
						<c:forEach items="${cropList }" var="item">
							<tr>
								<td>${item.crop_name }</td>
								<td>${item.croptype_name }</td>
								<td>${item.remarks }</td>
								<td>
								 <a href="javascript:;" data-id="${item.id }" class="layui-btn layui-btn-mini edit">编辑</a>
								 <a href="javascript:;" data-id="${item.id }" data-name="${item.crop_name }" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del">删除</a>
						 		</td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
	</fieldset>
	</div>
	 <div  style="position: fixed;">
	<div id="demo3" style="float:center"></div>
	</div>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/jquery-2.0.3.js"></script>
<script type="text/javascript">
var pages = 100;
var curr = 2;
</script>
<script type="text/javascript">
layui.use((['layer','form','jquery','laypage']),function(){
	var layer=layui.layer,
	form=layui.layer,
	laypage=layui.laypage,
	$=layui.jquery;
	  laypage({
		    cont: 'demo3'
		    ,pages: 100
		    ,skip:true //显示跳页
		    ,groups: 5 //连续显示分页数
		    ,curr: curr//获得当前页码
		    ,jump: function(obj, first) {
		      //得到了当前页，用于向服务端请求对应数据
		      var curr = obj.curr;
		      if(!first) {
		    	  window.location.href="";
		      }
		    }
		  });
	  
	$('#search').on('click',function(){
			var keyword=$(" input[ name='keyword' ] ").val();
			document.cropForm.action="${pageContext.request.contextPath }/search/"+keyword+".action";
			document.cropForm.submit();
	});
	
	$('#searchAll').on('click',function(){
		document.cropForm.action="${pageContext.request.contextPath }/getCropMenu_controll.action";
		document.cropForm.submit();
	});
	
	$('.add').on('click',function(){
		layer.open({
	      type: 2,
	      title: ['作物添加', 'text-align:center;'],
	      content:"${pageContext.request.contextPath }/cropForm.action",
	      area:['500px', '350px'],  //宽高
	      resize: false,    //是否允许拉伸
	      scrollbar: false,
	      end: function(){
		        location.reload();
		  }
	    });
});
	$('.edit').on('click',function(){
			var id=$(this).data("id");
		layer.open({
		      type: 2,
		      title: ['作物编辑', 'text-align:center;'],
		      content:"${pageContext.request.contextPath }/cropedit.action?id="+id,
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
			        location.reload();
			   }
		    });
	});
	//删除
	$('.del').on('click',function(){
		var id=$(this).data("id");
		var crop_name = $(this).data("name");
		$.ajax({
			 	cache: false,
		        type: "POST",	
				url: "${pageContext.request.contextPath }/deleteCropByName.action?id="+id+"&&crop_name="+crop_name,
				//data:$('#form1').serializeArray(),// 这句很重要
		        async: false,
				error: function(request) {
	            //alert("Connection error");
	            //alert(request.status);
	            location.reload();
	        	layui.use(['layer', 'form'], function(){
					  var layer = layui.layer
					  ,form = layui.form();
					  layer.msg('删除失败！');
					});
	        	
	        },
	        success: function(data) {
	           //alert("success");
	           location.reload();
	        	layui.use(['layer', 'form'], function(){
	        		
					  var layer = layui.layer
					  ,form = layui.form();
					  layer.msg('删除成功！');
					  
					});
	        	
	        }
			});	
		
	
	});
});
</script>
</html>