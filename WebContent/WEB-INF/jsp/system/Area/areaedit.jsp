<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>区域添加</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>

<div class="admin-main">

    <form class="layui-form" id="form1">
               
                <eq name="type" value="1">
                  <input type="hidden" name='type' value="${type}">
                </eq>
          
            <div class="layui-form-item">
                <label class="layui-form-label">名称</label>
                <div class="layui-input-block">
                    <input type="text" name="area_name" id="areaname"  placeholder="请输入名字" autocomplete="off" class="name layui-input" value="${Area}">
                </div>
            </div>
           
            
            
           
 			<c:if test="${not empty areaList && areaList.size() > 0 }">  
              <div class="layui-form-item">
                  <label class="layui-form-label">上级单位</label>
                  <div class="layui-input-block">
                    <select id="pid" name="p_id" lay-verify="required" required> 
                      <option value="">上级单位</option>
                    	<c:forEach var="item" items="${areaList}">  
                         	<option value="${item.id }">${item.area_name }</option>  
                        </c:forEach>  
                    </select>
                     </c:if>  
                  </div>
              </div>
       
            <div class="layui-form-item">
            <div class="layui-input-block">

                <button class="layui-btn add" lay-submit lay-filter="addArea"id="${operate}">保存</button>

                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript">
layui.use(['form','layer'], function() {
  var $ = layui.jquery,
    form = layui.form(),
    layer = layui.layer;
 
  $('#add').on('click', function() {
	  //alert($('#form1').serializeArray());、
	   var areaname = document.getElementById("areaname").value;
	  if(areaname.length<1){
		  layer.msg("请填写名字");
	  }else{

		$.ajax({
	        cache: false,
	        type: "POST",
	        url:"${pageContext.request.contextPath }/insertArea.action",
	        data:$('#form1').serializeArray(),// 这句很重要
	        async: false,
	        error: function(request) {
	            //alert("Connection error");
	            //alert(request.status);	  
					  layer.msg('增加失败！');

	        },
	        success: function(data) {
	           //alert("success");
	           if(data=='success')
	        	   {
	        	   layer.msg('增加成功！',{time:10000},function(){
						  //parent.window.location.reload();
					      
			          });
	        	   }
	           
	           if(data=='failed')
	        	   {
	        	   	layer.msg('增加失败！已经存在',{time:10000},function(){
						  //parent.window.location.reload();
					         
			          });
	        	   }
					 
	        },end: function() {
	        	parent.window.location.reload();
            }
	    });
	  }
	});

  $('#edit').on('click', function() {
	  //alert($('#form1').serializeArray());
	  alert("edit");
		$.ajax({
	        cache: false,
	        type: "POST",
	        url:"${pageContext.request.contextPath }/updateArea/"+${id}+".action",
	        data:$('#form1').serializeArray(),// 这句很重要
	        async: false,
	        error: function(request) {
	            //alert("Connection error");
	            //alert(request.status);
	        	layui.use(['layer', 'form'], function(){
					  var layer = layui.layer
					  ,form = layui.form();
					  
					  layer.msg('修改失败！');
					});
	        },
	        success: function(data) {
	           //alert("success");
	           if(data=="success"){
	        	layui.use(['layer', 'form'], function(){
					  var layer = layui.layer
					  ,form = layui.form();
					  layer.msg('修改成功！');
					  
					});
	           }
	           if(data=="failed")
	        	   {
	        	  	layui.use(['layer', 'form'], function(){
						  var layer = layui.layer
						  ,form = layui.form();
						  layer.msg('修改失败！已经存在');
						  
						});
	        	   }
	        }
	    });
	});
  
  
});



</script>
</html>
