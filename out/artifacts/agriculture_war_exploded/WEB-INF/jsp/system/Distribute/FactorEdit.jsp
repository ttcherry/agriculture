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
                  <input type="hidden" name='id' value="${id}">
                </eq>
            <div class="layui-form-item">
                <label class="layui-form-label">气象要素</label>
                <div class="layui-input-block">
                    <input type="text" name="factor_name" required lay-verify="required" placeholder="请输入气象要素名称" autocomplete="off" class="name layui-input" value="${factor.factor_name }" id="one">
                </div>
            </div>
       		<div class="layui-form-item">
              <label class="layui-form-label">适宜</label>
              <div class="layui-input-block">
                <input type="text" name="suitmid" required lay-verify="required" placeholder="请输入适宜温度" autocomplete="off" class="wded layui-input" value="${factor.suitmid }" id="two">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">适宜下限</label>
              <div class="layui-input-block">
                <input type="text" name="suitlow" required lay-verify="required" placeholder="请输入适宜下限温度" autocomplete="off" class="wded layui-input" value="${factor.suitlow }" id="three">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">较适宜下限</label>
              <div class="layui-input-block">
                <input type="text" name="resuitlow" required lay-verify="required" placeholder="请输入较适宜下限温度" autocomplete="off" class="wded layui-input" value="${factor.resuitlow }" id="four">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">适宜上限</label>
              <div class="layui-input-block">
                <input type="text" name="suithigh" required lay-verify="required" placeholder="请输入适宜上限温度" autocomplete="off" class="wded layui-input" value="${factor.suithigh }" id="five">
              </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">较适宜上限</label>
              <div class="layui-input-block">
                <input type="text" name="resuithigh" required lay-verify="required" placeholder="请输入较适宜温度上限" autocomplete="off" class="wded layui-input" value="${factor.resuithigh}" id="six">
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
		 //alert($('#form1').serializeArray());
		  //alert("add");
		  var one = document.getElementById("one").value;
		  var two = document.getElementById("two").value;
		  var three = document.getElementById("three").value;
		  var four = document.getElementById("four").value;
		  var five = document.getElementById("five").value;
		  var six = document.getElementById("six").value;
		  
		  if(one.length<1||two.length<1||three.length<1||four.length<1||five.length<1||six.length<1){
				 layer.msg('编辑失败，有未填项！');
				return false;
			 }
		  
			$.ajax({
		        cache: false,
		        type: "POST",
		        url:"${pageContext.request.contextPath }/EditFactor.action",
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