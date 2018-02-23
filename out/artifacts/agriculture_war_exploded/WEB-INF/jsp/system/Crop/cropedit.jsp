<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作物编辑</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
	<form class="layui-form" id="form">
   
                 <input type="hidden" name="id" value="${cropCustom.id }">
            <div class="layui-form-item">
                <label class="layui-form-label">作物名称</label>
                <div class="layui-input-block">
                    <input type="text" name="crop_name" required lay-verify="required" placeholder="请输入类型" autocomplete="off" class="name layui-input" value="${cropCustom.crop_name }">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">作物种类</label>
                <div class="layui-input-block">
                  <select id="type" name="type" lay-verify="">
                  <option value="">请选择作物种类</option>
                    <c:forEach items="${croptypeList }" var="item">
						 <option value="${item.id }">${item.croptype_name }</option>	
					</c:forEach>
                  </select>
                </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">备注</label>
              <div class="layui-input-block">
                <input type="text" name="remarks" required lay-verify="required" placeholder="请输入类型" autocomplete="off" class="wded layui-input" value="${cropCustom.remarks }">
              </div>
            </div>
            <div class="layui-form-item">
            <div class="layui-input-block">
                <a href="javascript:;" class="layui-btn add">保存</a>
                <a type="reset" class="layui-btn layui-btn-primary">重置</a>
            </div>
        </div>
    </form>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript">
layui.use(['form', 'layedit', 'laydate','layer','jquery'], function(){
	  var form = layui.form()
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	 
	  //自定义验证规则
	  form.verify({
	    name: function(value){
	      if(value.length < 1){
	        return '请填写作物名称';
	      }
	    }
	  });
	  
	  
	  var layer=layui.layer,
		form=layui.layer,
		$=layui.jquery;
		  
		//添加
			$('.add').on('click',function(){
				var croptype=$(" select[ name='type' ] ").val();
				var id=$(" input[ name='id' ] ").val();
				var crop_name=$(" input[ name='crop_name' ] ").val();
				var remarks=$(" input[ name='remarks' ] ").val();
				if(crop_name.length>0&&croptype>0){
				$.ajax({
					 	
						
				        url:"${pageContext.request.contextPath }/cropSubmit.action?crop_name="+crop_name+"&&remarks="+remarks+"&&id="+id+"&&croptype="+croptype,
				        type: "POST",
				        ajax:{},
				        
				    	 success: function(result) {
				            //alert("Connection error");
				            //alert(request.status);
				        	if(result=="success"){
				        		layer.msg('编辑成功！');
				        	}
							if(result=="failed"){
								layer.msg('编辑失败，输入的作物早已存在，请重新输入！！！');
							}	  
				        },
				       error: function() {
				           
								  layer.msg('编辑失败！');
								
				        }
			        
			    });
				
				}else{
					alert("请填完作物信息和作物种类！！");
				}
			});
});
</script>
</html>