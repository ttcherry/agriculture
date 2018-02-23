<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>农业气象服务系统</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="css/font/iconfont.css" media="all"/>
		<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all"/>
		<link rel="stylesheet" href="css/global.css" media="all">
		<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
		<style>
			#layui-btn-group1{
				text-align: center;
			}
		</style>
	</head>

	<body>
		<div class="layui-layout layui-layout-admin" style="border-bottom: solid 5px #1aa094;">
			<div class="layui-header header header-demo">
				<!--用于设置一个宽度为 1140px的水平居中块 -->
				<div class="layui-main">
					<!--控制台上边 -->
					<div class="admin-login-box">
						<a class="logo" style="left: 0;" href="http://beginner.zhengjinfan.cn/demo/beginner_admin/">
							<span style="font-size: 22px;">农业气象服务系统</span>
						</a>

						<div class="admin-side-toggle">
							<!--图标 方便残障人士 -->
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
						<div class="admin-side-full">
							<i class="fa fa-life-bouy" aria-hidden="true"></i>
						</div>
					</div>
					<!--清除缓存 -->
					<ul class="layui-nav admin-header-item">
						<li class="layui-nav-item">
							<a href="javascript:;">清除缓存</a>
						</li>
						<!--头像 -->
						<li class="layui-nav-item">
							<a href="javascript:;" class="admin-header-user">
								<img src="/pic/${user.pic }" />
								<span>${user.name}</span>
							</a>
							<!--导航栏垂直 子类 -->
							<!--个人信息-->
							<dl class="layui-nav-child">
								
								<!--锁屏 -->
								<dd id="lock">
									<a href="javascript:;">
										<i class="fa fa-lock" aria-hidden="true" style="padding-right: 3px;padding-left: 1px;"></i> 锁屏 
									</a>
								</dd>
								<dd>
									<a href="login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
								</dd>
							</dl>
						</li>
					</ul>
					<!--注销 -->
					<ul class="layui-nav admin-header-item-mobile">
						<li class="layui-nav-item">
							<a href="login.html"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- 设置左边条 黑色背景 可滚动-->
			<div class="layui-side layui-bg-black" id="admin-side">
				<div class="layui-side-scroll" id="admin-navbar-side" lay-filter="side"></div>
			</div>
			<!--右侧目标栏 -->
			<div class="layui-body" style="bottom: 0;border-left: solid 2px #1AA094;" id="admin-body">
				<div class="layui-tab admin-nav-card layui-tab-brief" lay-filter="admin-tab">
					<ul class="layui-tab-title">
						<li class="layui-this">
							<i class="fa fa-dashboard" aria-hidden="true"></i>
							<cite>欢迎界面</cite>
						</li>
					</ul>
					<div class="layui-tab-content" style="min-height:150px; padding: 5px 0 0 0;">
						<div class="layui-tab-item layui-show">
							<table width="100%"  >
								<tr >
									<td><iframe src="table.action" width="100%" height="100%"></iframe></td>
								</tr>
							</table>

						</div>
					</div>
				</div>
			</div>
			<!--页脚-->
			<div class="layui-footer footer footer-demo" id="admin-footer">
				<div class="layui-main">
					<p>2017 &copy;
						<a href="index2.jsp">booksun</a> 未来科技有限公司
					</p>
				</div>
			</div>
			<div class="site-tree-mobile layui-hide">
				<i class="layui-icon">&#xe602;</i>
			</div>
			<div class="site-mobile-shade"></div>
			
			<!--锁屏模板 start-->
			<script type="text/template" id="lock-temp">
				<div class="admin-header-lock" id="lock-box">
					<div class="admin-header-lock-img">
						<img src="/pic/${user.pic }"/>
					</div>
					<div class="admin-header-lock-name" id="lockUserName">${user.name}</div>
					<div class="admin-header-lock-name" id="lockUserAccount">${user.account}</div>
					<input type="text" class="admin-header-lock-input" value="输入密码解锁.." name="lockPwd" id="lockPwd" />
					<button class="layui-btn layui-btn-small" id="unlock">解锁</button>
				</div>
			</script>
			<!--锁屏模板 end -->
			
			<script type="text/javascript" src="plugins/layui/layui.js"></script>
			
			
			<script src="js/jquery-2.0.3.js"></script>
			<script src="js/jquery-2.0.3.min.js"></script>
			 
			<script>
		
			var navs;
			$(document).ready(function(){
				
				//alert("123");
				$.ajax({
			          url:"${pageContext.request.contextPath }/getMenu.action",
			    	  type: "POST",
			         
			          data:{},
			          dataType:"json",
			          cashe:false,
			          async:false,
			          success: function(data) {
			          		//alert("success");
					 		//alert(data)
					 		
					 		//var s = JSON.stringify(data); //可以将json对象转换成json字符串 
					 		//alert(s);
					 		navs = data;
					 		layui.use(['layer', 'form'], function(){
								  var layer = layui.layer
								  ,form = layui.form();
								  
								  layer.msg('登录成功！');
								});
					 		
					 		
			          },
			          error: function(data) {
			        	  layui.use(['layer', 'form'], function(){
							  var layer = layui.layer
							  ,form = layui.form();
							  
							  layer.msg('登录失败！');
							});
			            
			          }
			          
				});
			
				//alert(navs);
			});
			
			</script>
			<script src="js/index.js"></script>
			
		</div>
	</body>

</html>