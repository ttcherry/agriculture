<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${area_type}区域管理</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>

<body>
<form name="areaForm" action="" method="post">
	<div class="admin-main">
		<blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small add">
            <i class="layui-icon">&#xe608;</i> 添加${area_type}管理 
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
		<legend>${area_type}管理</legend>
			<!--区域表格-->
				<table class="site-table">
					<thead>
						<tr>
							
							<th>名称</th>
							<th>行政区类型</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>	
				
						<c:forEach items="${areaList}" var="area"> 
						
						<tr>
							
							
							<td>${area.area_name}</td>
							<c:if test="${area.type==2}">
								<td>市级单位</td>
							</c:if>
							<c:if test="${area.type==1}">
								<td>省级单位(直辖市)</td>
							</c:if>
							<c:if test="${area.type==3}">
								<td>县级单位</td>
							</c:if>
							<td>
								 <a href="javascript:;" data-id="" class="layui-btn layui-btn-mini edit" id="${area.id}">编辑</a>
								 <a href="javascript:;" data-id="" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del" id="${area.id}">删除</a>
						 	</td>
					</tr>
					</c:forEach>
					</tbody>
					</table>
	</fieldset>
	</div>
	</form>
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
		      title: ['添加区域管理:', 'text-align:center;'],
		      content:"${pageContext.request.contextPath}/HandleArea/add/"+"${type}"+"/1.action",
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
		        location.reload();
		      }
		    });
	});
	
	$('#search').on('click',function(){
		var keyword=$(" input[ name='keyword' ] ").val();
		//alert(keyword);
		document.areaForm.action="${pageContext.request.contextPath}/searchArea/"+keyword+".action?areatype=${area_type}";
		document.areaForm.submit();
	});
	
	
	$('#searchAll').on('click',function(){
		document.areaForm.action="${pageContext.request.contextPath }/getAreaMenu/"+"${area_type_id}"+".action";
		document.areaForm.submit();
	});
	
	$('.edit').on('click',function(){
		var id = this.id;
		alert(id);
		layer.open({
		      type: 2,
		      title: ['修改区域管理:', 'text-align:center;'],
		      content:"${pageContext.request.contextPath}/HandleArea/edit/"+"${type}/"+id+".action",
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
		        location.reload();
		      }
		    });
	});
	
	$('.del').on('click',function(){
		var id = this.id;
		alert(id);
		$.ajax({
	        cache: false,
	        type: "POST",
	        url:"${pageContext.request.contextPath }/HandleArea/delete/"+"${type}/"+id+".action",
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