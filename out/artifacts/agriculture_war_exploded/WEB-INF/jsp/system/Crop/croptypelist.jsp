<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
		<blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small add">
            <i class="layui-icon">&#xe608;</i> 添加作物种类
        </a>
    </blockquote>
		<fieldset class="layui-elem-field">
		<legend>作物种类管理</legend>
			<!--区域表格-->
				<table class="site-table">
					<thead>
						<tr>
							<th>名称</th>
							<th>备注</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>	
						<c:forEach items="${croptypeList }" var="item">
							<tr>
								<td>${item.croptype_name }</td>
								<td>${item.remarks }</td>
								<td>
								 <a href="javascript:;" data-id="${item.id }" class="layui-btn layui-btn-mini edit">编辑</a>
								 <a href="javascript:;" data-id="${item.id }" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del">删除</a>
						 		</td>
							</tr>
						</c:forEach>
					</tbody>
					</table>
	</fieldset>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/jquery-2.0.3.js"></script>
<script type="text/javascript">
layui.use((['layer','form','jquery']),function(){
	var layer=layui.layer,
	form=layui.layer,
	$=layui.jquery;
	
	$('.add').on('click',function(){
		layer.open({
	      type: 2,
	      title: ['作物种类添加', 'text-align:center;'],
	      content:"${pageContext.request.contextPath }/croptypeForm.action",
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
		      title: ['作物种类编辑', 'text-align:center;'],
		      content:"${pageContext.request.contextPath }/HandlerCroptype.action?id="+id,
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
		//alert("123");
		$.ajax({
			 	cache: false,
		        type: "POST",	
				url: "${pageContext.request.contextPath }/croptypeDelete.action?id="+id,
				data:$('#form1').serializeArray(),// 这句很重要
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