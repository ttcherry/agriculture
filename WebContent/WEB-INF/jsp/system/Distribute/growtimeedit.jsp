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
                  <input type="hidden" name='crop_id' value="${growtime.crop_id}">
                   <input type="hidden" name='id' value="${growtime.id}">
                </eq>
            <div class="layui-form-item">
                <label class="layui-form-label">作物生长发育期</label>
                <div class="layui-input-block">
                    <input type="text" name="grow_name" lay-verify="required" placeholder="请输入" autocomplete="off" class="name layui-input" id="one" value="${growtime.grow_name }">
                </div>
            </div>
       		<div class="layui-form-item">
                <label class="layui-form-label">开始时间</label>
               <select id="startmonth" name="startmonth" lay-verify="">
         		  	 <option value="一月" selected="selected">一月</option>
					 <option value="二月">二月</option>	
					 <option value="三月">三月</option>
				     <option value="四月">四月</option>
				     <option value="五月">五月</option>
				     <option value="六月">六月</option>
					 <option value="七月">七月</option>
					 <option value="八月">八月</option>
				     <option value="九月">九月</option>
				     <option value="十月">十月</option>
					 <option value="十一月">十一月</option>
				     <option value="十二月">十二月</option>
                  </select>
                  <select id="startxun" name="startxun" lay-verify="">
         		  	 <option value="上旬" selected="selected">上旬</option>
					 <option value="中旬">中旬</option>	
					 <option value="下旬">下旬</option>
                  </select>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">结束时间</label>
               <select id="endmonth" name="endmonth" style="width:100px;margin-left: 10px;float: left;">
         		  	 <option value="一月" selected="selected">一月</option>
					 <option value="二月">二月</option>	
					 <option value="三月">三月</option>
				     <option value="四月">四月</option>
				     <option value="五月">五月</option>
				     <option value="六月">六月</option>
					 <option value="七月">七月</option>
					 <option value="八月">八月</option>
				     <option value="九月">九月</option>
				     <option value="十月">十月</option>
					 <option value="十一月">十一月</option>
				     <option value="十二月">十二月</option>
                  </select>
                  <select id="endxun" name="endxun"  style="width:100px;margin-left: 10px;float:left: 10px;">
         		  	 <option value="上旬" selected="selected">上旬</option>
					 <option value="中旬">中旬</option>	
					 <option value="下旬">下旬</option>
                  </select>
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
		 
		 if(one.length<1){
			 layer.msg('编辑失败，请输入生长发育期');
			return false;
		 }
		 
				$.ajax({
		        cache: false,
		        type: "POST",
		        url:"${pageContext.request.contextPath }/growtimeedit.action",
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