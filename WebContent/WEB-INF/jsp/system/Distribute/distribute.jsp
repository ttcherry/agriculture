<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="plugins/layui/css/layui.css" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/common.css">
<body>
<div class="admin-main">
		<blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small distribute">
            <i class="layui-icon">&#xe608;</i> 作物分配
        </a>
    </blockquote>
		<fieldset class="layui-elem-field">
		<legend>作物分配管理</legend>
			<!--区域表格-->
				<table class="site-table">
					<thead>
						<tr>
							<th>名称</th>
							<th>所属类别</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>	


						<c:forEach items="${cropList}" var="item">

							<tr>

								<td>${item.crop_name }</td>
								<td>${item.croptype_name}</td>

								<td>

								
								 <a href="javascript:;" data-id="${item.id}" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del" id="${item.id}">删除</a>
								 <a href="javascript:;" data-id="${item.id}" data-name="${item.crop_name }" class="layui-btn layui-btn-normal layui-btn-mini info"  id="${item.id}">详情</a>


						 		</td>
							</tr>
							</c:forEach>
					</tbody>
					</table>
	</fieldset>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript">

	$('.distribute').on('click',function(){
		layer.open({
		      type: 2,
		      title: ['作物分配:', 'text-align:center;'],
		      content:"${pageContext.request.contextPath}/getDistributeForm/"+${area_id}+".action",
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function () {
		    	  //alert("123");
		    	  location.reload();
	            }
		     
		    });
	});
	
	$('.info').on('click',function(){
		var id= $(this).data('id');
		//alert(id);
		var name=$(this).data('name');
		var crop_id=$(this).data('id');
		//alert(crop_id);
		layer.open({
			type:2,
			title:[name+'指标','text-align:center;'],
			 content:"${pageContext.request.contextPath }/zhibiao.action?crop_id="+crop_id,
			 area:['100%', '100%'],  //宽高
			 resize: false,    //是否允许拉伸
		      scrollbar: false,
		      maxmin: true,
		      
		})
	});
	
	$('.del').on('click',function(){
		var id = this.id;
		//alert(this.id);
		$.ajax({
	        cache: false,
	        type: "POST",
	        url:"${pageContext.request.contextPath }/deleteCropById.action?id="+id,
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

</script>
</html>