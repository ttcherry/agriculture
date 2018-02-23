<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>农业活动建议</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
	<form class="layui-form" id="form1">
	 			
	 			<c:if test="${crop_id!=null}">
								<eq name="type" value="1">
								 	<input type="hidden" name='crop_id' value="${crop_id}">
								</eq>
				</c:if>
					<c:if test="${id!=null}">
								<eq name="type" value="1">
								 	<input type="hidden" name='id' value="${id}">
								</eq>
				</c:if>
                 
                
            <div class="layui-form-item">
                <label class="layui-form-label">气象关注点</label>
                <div class="layui-input-block">
                    <input type="textArea" name="consider" required lay-verify="required" placeholder="请输入气象关注点" autocomplete="off" class="name layui-input" value="${Active.consider}">
                </div>
            </div>
       		
            <div class="layui-form-item">
              <label class="layui-form-label">农业活动建议</label>
              <div class="layui-input-block">
                <input type="textArea" name="advice" required lay-verify="required" placeholder="请输入气象建议" autocomplete="off" class="wded layui-input" value="${Active.advice }">
              </div>
            </div>
       
            <div class="layui-form-item">
           <div class="layui-input-block">
                <a href="javascript:;" class="layui-btn edit">保存</a>
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
	  var form = layui.form()
	  ,layer = layui.layer
	  ,layedit = layui.layedit
	  ,laydate = layui.laydate;
	  
	  //创建一个编辑器
	  var editIndex = layedit.build('LAY_demo_editor');
	 
	  var layer=layui.layer,
		form=layui.layer,
		$=layui.jquery;
		  
	  $('.edit').on('click', function() {
		// alert($('#form1').serializeArray());
		 alert("add");
			$.ajax({
		        cache: false,
		        type: "POST",
		        url:"${pageContext.request.contextPath }/EditActive/${operate}.action",
		        data:$('#form1').serializeArray(),// 这句很重要
		        async: false,
		        error: function(request) {
		            //alert("Connection error");
		            //alert(request.status);
		        	layui.use(['layer', 'form'], function(){
						  var layer = layui.layer
						  ,form = layui.form();
						  
						  layer.msg('编辑失败！');
						});
		        },
		        success: function(data) {
		           //alert("success");
		        	layui.use(['layer', 'form'], function(){
						  var layer = layui.layer
						  ,form = layui.form();
						  layer.msg('编辑成功！');
						  
						});
		        }
		    });
		});
	  
});

</script>
</html>