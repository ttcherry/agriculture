<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<meta charset="utf-8">
		<title>个人信息</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
 		 		<style type="text/css">.layui-form-select .layui-input {
    padding-right: 30px;
    cursor: pointer;
    width: 190px;
}</style>
 		<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="css/global.css" media="all">
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/jquery-2.0.3.js"></script>
	<script type="text/javascript">
	function setImagePreview(avalue) {
        var docObj = document.getElementById("doc");
        var imgObjPreview = document.getElementById("LAY_demo_upload");
        if(docObj.files && docObj.files[0])
        {
            //火狐下，直接设img属性
            imgObjPreview.style.display = 'block';
            imgObjPreview.style.width = '200px';
            imgObjPreview.style.height = '200px';
            //imgObjPreview.src = docObj.files[0].getAsDataURL();
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
            imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
        }
        else
        {
            //IE下，使用滤镜
            docObj.select();
            var imgSrc = document.selection.createRange().text;
            var localImagId = document.getElementById("localImag"); //必须设置初始大小
            localImagId.style.width = "200px";
            localImagId.style.height = "200px"; //图片异常的捕捉，防止用户修改后缀来伪造图片
            try {
                localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
            } catch(e) {
                alert("您上传的图片格式不正确，请重新选择!");
                return false;
            }
            imgObjPreview.style.display = 'none';
            document.selection.empty();
        }
        return true;
    }
		
	</script>
	</head>

	<body>
		          

              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>个人信息</legend>
</fieldset>

<form class="layui-form" action="personInsert.action" method="post" enctype="multipart/form-data" style="float:left; padding-left:150px;" >
  
  	<div class="site-demo-upload" style="margin-bottom: 50px; margin-left: 70px;">
  		<img id="LAY_demo_upload" src="">
  		<div class="site-demo-upbar">
    		<input name="picture" class="layui-upload-file" id="doc" type="file" onchange="javascript:setImagePreview();">
  		</div>
	</div>
  <div class="layui-form-item">
    <label class="layui-form-label">账号</label>
    <div class="layui-input-inline">
      <input name="account" lay-verify="account" autocomplete="off"  class="layui-input" >
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">昵称</label>
    <div class="layui-input-inline">
      <input name="name"  lay-verify="name" autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-inline">
      <input name="password"  lay-verify="pass"  autocomplete="off" class="layui-input" type="password" id="pd1">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">确认密码</label>
    <div class="layui-input-inline">
      <input name="password2"  lay-verify="pass2"  autocomplete="off" class="layui-input" type="password" id="pd2">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">电话</label>
    <div class="layui-input-inline">
      <input name="phone"  lay-verify="phone"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">email</label>
    <div class="layui-input-inline">
      <input name="email"  lay-verify="email"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">QQ</label>
    <div class="layui-input-inline">
      <input name="qq"  lay-verify="qq"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">邮编地址</label>
    <div class="layui-input-inline">
      <input name="post"  lay-verify="post"  autocomplete="off" class="layui-input" type="text">
    </div>
  </div>
     <div class="layui-form-item">
           <label class="layui-form-label">性别</label>
             <select id="sex" name="sex" lay-verify="">
             		
             		 <option value="1" selected="selected">男</option>
             		 <option value="0">女</option>	
             		  
             </select>         
             </div>
  
   <div class="layui-form-item">
           <label class="layui-form-label">管理员类别</label>
             <select id="role_id" name="role_id" lay-verify="role_id">
             		 <option value="0" >超级管理员</option>
             		 <option value="1" selected="selected">省级管理员</option>
             		 <option value="2">市级管理员</option>	
             		 <option value="3">县级管理员</option>	
             		  
             </select>         
	</div>
	
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
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
        return '请填写昵称';
      }
    },
    account: function(value){
        if(value.length < 1){
          return '请填写账号';
        }
      }, password2: function(value){
          if(value.length < 1){
              return '请填写确认密码';
            }
          }, phone: function(value){
              if(value.length < 1){
                  return '请填写电话';
                }
              }, qq: function(value){
                  if(value.length < 1){
                      return '请填写qq号';
                    }
                  }, post: function(value){
                      if(value.length < 1){
                          return '请填写邮编地址';
                        }
                      }
    ,pass: [/(.+){3,12}$/, '密码必须3到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
    
  });
  //监听提交
  form.on('submit(demo1)', function(data){
   
   //判断两次输入的密码是否一致
   var pd1=document.getElementById("pd1").value;
	var pd2=document.getElementById("pd2").value;
	if(pd1!=pd2){
		//alert("");
		layer.msg('两次输入的密码不一致,请重新输入');
		return false;
	}else{
 	  //alert("修改成功");
 	 	layer.msg('提交成功');
 	 	window.parent.location.reload();
  	  return true;
   }
  });
});

</script>
	</body>
</html>