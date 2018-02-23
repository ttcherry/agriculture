<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>气象要素指标</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
	<form class="layui-form" id="form1">
	 			<eq name="type" value="1">
                  <input type="hidden" name='crop_id' value="${product.crop_id}">
                  <input type="hidden" name='product_type' value="${product.product_type}">
                   <input type="hidden" name='id' value="${product.id}">
                </eq>
            <div class="layui-form-item">
                <label class="layui-form-label">产品名称</label>
                <div class="layui-input-block">
                    <input type="text" name="product_name" required lay-verify="required" placeholder="请输入产品名称" autocomplete="off" class="name layui-input" id="one" value="${product.product_name }">
                </div>
            </div>
       		<div class="layui-form-item">
              <label class="layui-form-label">服务关注重点</label>
              <div class="layui-input-block">
                <input type="text" name="important" required lay-verify="required" placeholder="请输入服务关注重点" autocomplete="off" class="wded layui-input" id="two" value="${product.important }" >
              </div>
            </div>
            <div class="layui-input-block">
                <a href="javascript:;" class="layui-btn edit">确定</a>
                <a type="reset" class="layui-btn layui-btn-primary">重置</a>
            </div>
        </div>
        </form>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/jquery-2.0.3.js"></script>
<script type="text/javascript">
layui.use(['form', 'layedit', 'laydate','layer','jquery'], function(){
	 
	  
	  
	  var layer=layui.layer,
		form=layui.layer,
		$=layui.jquery;
		  
	  $('.edit').on('click', function() {
		  
		  var one = document.getElementById("one").value;
		  var two = document.getElementById("two").value;
		 if(one.length<1&&two.length<1){
			 layer.msg('编辑失败，请输入产品名称和服务关注重点');
			return false;
		 }
		 if(two.length<1&&one.length>1){
			 layer.msg('编辑失败，请输入服务关注重点');
			 return false;
		 }
		 if(one.length<1&&two.length>1){
			 layer.msg('编辑失败，请输入请输入产品名称');
		 	return false;
		 }
				$.ajax({
		        cache: false,
		        type: "POST",
		        url:"${pageContext.request.contextPath }/productedit.action",
		        data:$('#form1').serializeArray(),// 这句很重要
		        async: false,
		     
		        success: function(data) {
		        	if(data=="success"){
		        		layer.msg('编辑成功');
		        	}else{
		        		layer.msg('编辑失败，你输入的产品名称重复，请重新输入');
		        	}
		        },
		        error: function(data) {
		        	
					  layer.msg('编辑失败！');
			
	        },
		    });
		});
	  
});

</script>
</html>