<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<body>

<div class="admin-main">

                <input type="hidden" name="id" value="${croptype.id }">
            <div class="layui-form-item">
                <label class="layui-form-label">名称</label>
                <div class="layui-input-block">
                    <input type="text" name="croptype_name" lay-verify="name" placeholder="请输入" autocomplete="off" class="name layui-input" value="${croptype.croptype_name }">
                </div>
            </div>
            <div class="layui-form-item">
              <label class="layui-form-label">备注</label>
              <div class="layui-input-block">
                <input type="text" name="remarks"  lay-verify="remarks" placeholder="请输入类型" autocomplete="off" class="wded layui-input" value="${croptype.remarks }">
              </div>
            </div>
            <div class="layui-form-item">
            <div class="layui-input-block">
                <a href="javascript:;" class="layui-btn add">保存</a>
                <a type="reset" class="layui-btn layui-btn-primary">重置</a>
            </div>
        </div>
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
	 
	  //自定义验证规则
	  form.verify({
	    name: function(value){
	      if(value.length < 1){
	        return '请填写作物种类';
	      }
	    }
	  });
	  
	  
	  var layer=layui.layer,
		form=layui.layer,
		$=layui.jquery;
		  
		//添加
			$('.add').on('click',function(){
				var id=$(" input[ name='id' ] ").val();
				var croptype_name=$(" input[ name='croptype_name' ] ").val();
				var remarks=$(" input[ name='remarks' ] ").val();
				if(croptype_name.length>0){
				$.ajax({
					 	
						
				        url:"${pageContext.request.contextPath }/croptypeSubmit.action?croptype_name="+croptype_name+"&&remarks="+remarks+"&&id="+id,
				        type: "POST",
				        ajax:{},
				        
				    	 success: function(result) {
				            //alert("Connection error");
				            //alert(request.status);
				        	if(result=="success"){
				        		layer.msg('编辑成功！');
				        	}
							if(result=="failed"){
								layer.msg('编辑失败，输入的作物种类早已存在，请重新输入！！！');
							}	  
				        },
				       error: function() {
				           
								  layer.msg('编辑失败！');
								
				        }
			        
			    });
				
				}else{
					alert("请输入作物种类！！");
				}
			});
});

</script>
</html>