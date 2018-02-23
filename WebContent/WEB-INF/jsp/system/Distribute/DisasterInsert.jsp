<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>气象灾害</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
	<form class="layui-form" id="form1">
				<eq name="type" value="1">
                  <input type="hidden" name='crop_id' value="${crop_id}">
                </eq>
            <div class="layui-form-item">
                <label class="layui-form-label">气象灾害</label>
                <div class="layui-input-block">
                    <input type="text" name="disaster_name" required lay-verify="required" placeholder="请输入气象灾害名称" autocomplete="off" class="name layui-input" id="one" >
                </div>
            </div>
       		<div class="layui-form-item">
              <label class="layui-form-label">灾害类型</label>
              <div class="layui-input-block">
                <input type="text" name="type" required lay-verify="required" placeholder="请输入灾害类型" autocomplete="off" class="layui-input" id="two">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">发生条件</label>
              <div class="layui-input-block">
                <input type="text" name="conif" required lay-verify="required" placeholder="请输入发生条件" autocomplete="off" class="layui-input" id="three">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">应对措施</label>
              <div class="layui-input-block">
                <input type="text" name="measure" required lay-verify="required" placeholder="请输入应对措施" autocomplete="off" class="layui-input" id="four">
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
		  
	  $('.add').on('click', function() {
		 //alert($('#form1').serializeArray());
		 //alert("add");
		  var one = document.getElementById("one").value;
		  var two = document.getElementById("two").value;
		  var three = document.getElementById("three").value;
		  var four = document.getElementById("four").value;
		 
		 if(one.length<1||two.length<1||three.length<1||four.length<1){
			 layer.msg('插入失败，有未填项！');
			return false;
		 }
		 
			$.ajax({
		        cache: false,
		        type: "POST",
		        url:"${pageContext.request.contextPath }/insertDisaster.action",
		        data:$('#form1').serializeArray(),// 这句很重要
		        async: false,
		        error: function(request) {
		            //alert("Connection error");
		            //alert(request.status);
		        	layui.use(['layer', 'form'], function(){
						  var layer = layui.layer
						  ,form = layui.form();
						  
						  layer.msg('新增失败！');
						});
		        },
		        success: function(data) {
		           //alert("success");
		        	layui.use(['layer', 'form'], function(){
						  var layer = layui.layer
						  ,form = layui.form();
						  layer.msg('新增成功！');
						  
						});
		        }
		    });
		});
	  
});

</script>
</html>