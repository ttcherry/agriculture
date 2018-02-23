<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/layui/css/layui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css" media="all">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
</head>
<body>
<div class="admin-main">
    <div class="layui-tab" lay-filter="test">
        <ul class="layui-tab-title">
            <li class="layui-this" lay-id="11">气象要素指标</li>
            <li lay-id="22">气象条件</li>
            <li lay-id="33">农业活动及建议</li>
            <li lay-id="44">气象灾害</li>
            <li lay-id="55">气象服务趋势产品</li>
            <li lay-id="66">监测灾害产品</li>
            <li lay-id="77">精细化服务产品</li>
            <li lay-id="88">指标</li>

        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="add_1">
                        <i class="layui-icon">&#xe608;</i> 添加信息
                    </a>
          
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>气象要素指标</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>气象要素</th>
                                <th>适宜</th>
                                <th>适宜下限</th>
                                <th>较适宜下限</th>
                                <th>适宜上限</th>
                                <th>较适宜上限</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="content">
                            <c:forEach items="${factorlist}" var="item1" begin="${factorStart}" end="${factorend}" >

							<tr>

								<td>${item1.factor_name }</td>
								<td>${item1.suitmid}</td>
								<td>${item1.suitlow}</td>
								<td>${item1.resuitlow}</td>
								<td>${item1.resuithigh}</td>
								<td>${item1.suithigh}</td>
								
								<td>
								 <a href="javascript:;" data-id="${item1.id}" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del_1" id="${item1.id}">删除</a>
								 <a href="javascript:;" data-id="${item1.id}" data-name="${item1.factor_name }" class="layui-btn layui-btn-normal layui-btn-mini info_1"  id="${item1.id}">修改</a>
						 		</td>
						 		
							</tr>
							</c:forEach>
                            </tbody>
                        </table>
                        <div class="admin-table-page">
                            <div id="paged" class="page">
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                
                	<c:if test="${conditionlist == null }">
                 	 <a href="javascript:;" class="layui-btn layui-btn-small add_2" id="${conditionlist.crop_id }">
                        <i class="layui-icon" >&#xe621;</i> 新增
                    </a>
                    </c:if>
                    <c:if test="${conditionlist != null }">
                    <a href="javascript:;" class="layui-btn layui-btn-small info_2" id="${conditionlist.id }">
                        <i class="layui-icon" >&#xe621;</i> 修改
                    </a>
                     </c:if>
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>气象条件</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>适宜气象条件</th>
                                <th>较适宜气象条件</th>
                                <th>不适宜气象条件</th>
                            </tr>
                            </thead>
                            <tbody id="content_2">
                        
							<tr>

								<td>${conditionlist.suit }</td>
								<td>${conditionlist.resuit}</td>
								<td>${conditionlist.notsuit}</td>
							</tr>
							
                            </tbody>
                        </table>
                    </div>
                </fieldset>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                   
                   	<c:if test="${activelist==null }">
                     <a href="javascript:;" class="layui-btn layui-btn-small add_3" id="${activelist.crop_id }">
                        <i class="layui-icon info_2" >&#xe621;</i> 新增
                    </a>
                    </c:if>
                    <c:if test="${activelist!=null }">
                     <a href="javascript:;" class="layui-btn layui-btn-small info_3" id="${activelist.id }">
                        <i class="layui-icon info_2" >&#xe621;</i> 修改
                    </a>
                      </c:if>
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>农业活动及建议</legend>
                    <div class="layui-field-box layui-form">
                        <form class="layui-form" action="">
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label">气象关注点：</label>
                                <div class="layui-input-block">
                                    <textarea name="desc" placeholder="(空)" class="layui-textarea">
                                  		${activelist.consider}
                                    </textarea>
                                </div>
                            </div>
                            <div class="layui-form-item layui-form-text">
                                <label class="layui-form-label">农业活动建议：</label>
                                <div class="layui-input-block">
                                    <textarea name="desc_2" placeholder="(空)" class="layui-textarea">
                                        ${activelist.advice}
                                    </textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </fieldset>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="add_4">
                        <i class="layui-icon info_3">&#xe608;</i> 添加信息
                    </a>
     
                </blockquote>
                    <fieldset class="layui-elem-field">
                        <legend>气象灾害</legend>
                        <div class="layui-field-box layui-form">
                            <table class="layui-table admin-table">
                                <thead>
                                <tr>
                                    <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                    <th>灾害名称</th>
                                    <th>灾害类型</th>
                                    <th>发生条件</th>
                                    <th>应对措施</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="content_4">
                                <c:forEach items="${disasterlist}" var="item2" begin="${disasterStart }" end="${disasterend }">

							<tr>

								<td>${item2.disaster_name }</td>
								<td>${item2.type}</td>
								<td>${item2.conif}</td>
								<td>${item2.measure}</td>
								
								
								<td>
								 <a href="javascript:;" data-id="${item2.id}" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini del_2" id="${item2.id}">删除</a>
								 <a href="javascript:;" data-id="${item2.id}" data-name="${item2.disaster_name }" class="layui-btn layui-btn-normal layui-btn-mini info_4"  id="${item2.id}">修改</a>
						 		</td>
						 		
							</tr>
							</c:forEach>
                                </tbody>
                            </table>
                            <div class="admin-table-page">
                                <div id="paged_4" class="page">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>



            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="addProduct1" data-id="${crop_id }" data-type="气象服务趋势产品">
                        <i class="layui-icon">&#xe608;</i> 添加信息
                    </a>
                    
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>气象服务趋势产品</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>产品名称</th>
                                <th>服务关注重点</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="content_5">
                            <c:forEach items="${productWeather }" var="item" begin="${weaStart }" end="${weaend }">
                            	<tr>
                            		<td>${item.product_name }</td>
                            		<td>${item.important }</td>
                            		<td>
									 <a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-normal layui-btn-mini infoProduct_1" >修改</a>
						 			 <a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-danger layui-btn-mini delProduct_1">删除</a>
						 			</td>
                            	</tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="admin-table-page">
                        <div id="paged_5" class="page">
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="addProduct2" data-id="${crop_id }" data-type="监测灾害产品">
                        <i class="layui-icon">&#xe608;</i> 添加信息
                    </a>
                   
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>监测灾害产品</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>产品名称</th>
                                <th>服务关注重点</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="content_6">
                           	<c:forEach items="${productDisaster }" var="item" begin="${PDStart}" end="${PDend}">
                           		<tr>
                           			<td>${item.product_name }</td>
                           			<td>${item.important }</td>
                           			<td>
									<a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-normal layui-btn-mini infoProduct_2" >修改</a>
						 			 <a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-danger layui-btn-mini delProduct_2">删除</a>
						 			</td>
                           		</tr>
                           	</c:forEach>
                            </tbody>
                        </table>
                        <div class="admin-table-page">
                            <div id="paged_6" class="page">
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="addProduct3" data-id="${crop_id }" data-type="精细化服务产品">
                        <i class="layui-icon">&#xe608;</i> 添加信息
                    </a>
          
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>精细化服务产品</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>产品名称</th>
                                <th>服务关注重点</th>
                               	<th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="content_7">
                           	<c:forEach items="${productDetail }" var="item" begin="${JXStart}" end="${JXend}">
                           		<tr>
                           			<td>${item.product_name }</td>
                           			<td>${item.important }</td>
                           			<td>
									<a href="javascript:;" data-id="${item.id}"  class="layui-btn layui-btn-normal layui-btn-mini infoProduct_3" >修改</a>
						 			 <a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-danger layui-btn-mini delProduct_3">删除</a>
						 			</td>
                           		</tr>
                           	</c:forEach>
                            </tbody>
                        </table>
                        <div class="admin-table-page">
                            <div id="paged_7" class="page">
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>

            <div class="layui-tab-item">
                <blockquote class="layui-elem-quote">
                    <a href="javascript:;" class="layui-btn layui-btn-small" id="addGrowTime" data-id="${crop_id }" >
                        <i class="layui-icon">&#xe608;</i> 添加信息
                    </a>
                    
                </blockquote>
                <fieldset class="layui-elem-field">
                    <legend>指标</legend>
                    <div class="layui-field-box layui-form">
                        <table class="layui-table admin-table">
                            <thead>
                            <tr>
                                <!-- <th style="width: 30px;"><input type="checkbox" lay-filter="allselector" lay-skin="primary"></th>-->
                                <th>生长发育期</th>
                                <th>开始时间</th>
                                <th>结束时间</th>
                               	<th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="content_8">
                            <c:forEach items="${growtime }" var="item" begin="${growStart}" end="${growend}">
                            	<tr>
                            		<td>${item.grow_name }</td>
                            		<td>${item.startmonth }${item.startxun }</td>
                            		<td>${item.endmonth }${item.endxun }</td>
                            		<td>
									 <a href="javascript:;" data-id="${item.id}"  class="layui-btn layui-btn-normal layui-btn-mini infoGrowTime" >修改</a>
									  <a href="javascript:;" data-id="${item.id}" class="layui-btn layui-btn-danger layui-btn-mini delGrowTime">删除</a>
						 			</td>
                            	</tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="admin-table-page">
                            <div id="paged_8" class="page">
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</div>



<!--模板-->

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>

<script type="text/html" id="tpl">
    {{# layui.each(d.list, function(index, item){ }}
    <tr>
        <td><input type="checkbox" lay-skin="primary"></td>
        <td>{{ item.name }}</td>
        <td>{{ item.age }}</td>
        <td>{{ item.createtime }}</td>
        <td>
            <a href="/detail-1" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">预览</a>
            <a href="javascript:;" data-name="{{ item.name }}" data-opt="edit" class="layui-btn layui-btn-mini">编辑</a>
            <a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
        </td>
    </tr>
    {{# }); }}
</script>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script>
    layui.config({
        base: 'js/'
    });

    layui.use(['paging', 'form','element'], function() {
        var $ = layui.jquery,
                paging = layui.paging(),
                layerTips = parent.layer === undefined ? layui.layer : parent.layer, //获取父窗口的layer对象
                layer = layui.layer, //获取当前窗口的layer对象
                form = layui.form();
        
        var laypage = layui.laypage
        
        var element = layui.element();
        element.tabChange('test','${layid}');
        
        
        var pageCount = '${factorCount}';
        var currentPage='${factor_currentpage}';
        
        var disasterCount = '${disasterCount}';
        var disaster_curr = '${disaster_currentpage}';
        
        var weaCount = '${weaCount}';
        var wea_curr = '${wea_currentpage}';
        
        var PD_Count = '${PD_Count}';
        var PD_curr = '${PD_currentpage}';
        
        var JXCount = '${JXCount}';
        var JX_curr = '${JX_currentpage}';
        
        var growCount = '${growCount}';
        var grow_curr = '${grow_currentpage}';
        
        laypage({
            cont: 'paged'
            ,pages: pageCount //总页数
            ,groups: 3 //连续显示分页数
            ,curr:currentPage
            ,jump:function(obj,first){
            	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
            		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+obj.curr+"&&disaster_pagecurrent="+disaster_curr+
            				 "&&wea_pagecurrent="+wea_curr+"&&PD_pagecurrent="+PD_curr+"&&grow_pagecurrent="+grow_curr+"&&JX_pagecurrent="+JX_curr+"&&layid=11"
            	 };
            },
        });
        laypage({
            cont: 'paged_4'
            	  ,pages: disasterCount //总页数
                  ,groups: 3 //连续显示分页数
                  ,curr:disaster_curr
                  ,jump:function(obj,first){
                  	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                  		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+currentPage+"&&disaster_pagecurrent="+obj.curr+
        				 "&&wea_pagecurrent="+wea_curr+"&&PD_pagecurrent="+PD_curr+"&&grow_pagecurrent="+grow_curr+"&&JX_pagecurrent="+JX_curr+"&&layid=44"
                  	 };
                  },
        });
        laypage({
            cont: 'paged_5'
            	  ,pages: weaCount //总页数
                  ,groups: 3 //连续显示分页数
                  ,curr:wea_curr
                  ,jump:function(obj,first){
                  	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                  		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+currentPage+"&&disaster_pagecurrent="+disaster_curr+
        				 "&&wea_pagecurrent="+obj.curr+"&&PD_pagecurrent="+PD_curr+"&&grow_pagecurrent="+grow_curr+"&&JX_pagecurrent="+JX_curr+"&&layid=55"
                  	 };
                  },
        });
        laypage({
            cont: 'paged_6'
            	  ,pages: PD_Count //总页数
                  ,groups: 3 //连续显示分页数
                  ,curr:PD_curr
                  ,jump:function(obj,first){
                  	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                  		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+currentPage+"&&disaster_pagecurrent="+disaster_curr+
        				 "&&wea_pagecurrent="+wea_curr+"&&PD_pagecurrent="+obj.curr+"&&grow_pagecurrent="+grow_curr+"&&JX_pagecurrent="+JX_curr+"&&layid=66"

                  	 };
                  },
        });
        laypage({
            cont: 'paged_7'
            	  ,pages:JXCount//总页数
                  ,groups: 3 //连续显示分页数
                  ,curr:JX_curr
                  ,jump:function(obj,first){
                  	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                  		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+currentPage+"&&disaster_pagecurrent="+disaster_curr+
        				 "&&wea_pagecurrent="+wea_curr+"&&PD_pagecurrent="+PD_curr+"&&grow_pagecurrent="+grow_curr+"&&JX_pagecurrent="+obj.curr+"&&layid=77"

                  	 };
                  },
        });
        
        laypage({
            cont: 'paged_8'
            	  ,pages:growCount//总页数
                  ,groups: 3 //连续显示分页数
                  ,curr:grow_curr
                  ,jump:function(obj,first){
                  	 if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                  		 window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent="+currentPage+"&&disaster_pagecurrent="+disaster_curr+
        				 "&&wea_pagecurrent="+wea_curr+"&&PD_pagecurrent="+PD_curr+"&&grow_pagecurrent="+obj.curr+"&&JX_pagecurrent="+JX_curr+"&&layid=88"
                  	 };
                  },
        });

        paging.init({
            url: 'datas/laytpl_laypage_data.json', //地址
            elem: '#content', //内容容器
            params: { //发送到服务端的参数
            },
            type: 'GET',
            tempElem: '#tpl', //模块容器
            pageConfig: { //分页参数配置
                elem: '#paged', //分页容器
                pageSize: 3 //分页大小
            },
            success: function() { //渲染成功的回调
                //alert('渲染成功');
            },
            fail: function(msg) { //获取数据失败的回调
                //alert('获取数据失败')
            },
            complate: function() { //完成的回调
                //alert('处理完成');
                //重新渲染复选框
                form.render('checkbox');
                form.on('checkbox(allselector)', function(data) {
                    var elem = data.elem;

                    $('#content').children('tr').each(function() {
                        var $that = $(this);
                        //全选或反选
                        $that.children('td').eq(0).children('input[type=checkbox]')[0].checked = elem.checked;
                        form.render('checkbox');
                    });
                });

                //绑定所有编辑按钮事件
                $('#content').children('tr').each(function() {
                    var $that = $(this);
                    $that.children('td:last-child').children('a[data-opt=edit]').on('click', function() {
                        layer.msg($(this).data('name'));
                    });

                });

            },
        });
        //获取所有选择的列
        $('#getSelected').on('click', function() {
            var names = '';
            $('#content').children('tr').each(function() {
                var $that = $(this);
                var $cbx = $that.children('td').eq(0).children('input[type=checkbox]')[0].checked;
                if($cbx) {
                    var n = $that.children('td:last-child').children('a[data-opt=edit]').data('name');
                    names += n + ',';
                }
            });
            layer.msg('你选择的名称有：' + names);
        });

        $('#search').on('click', function() {
            parent.layer.alert('你点击了搜索按钮')
        });

        var addBoxIndex = -1;
        $('#add').on('click', function() {
            if(addBoxIndex !== -1)
                return;
            //本表单通过ajax加载 --以模板的形式，当然你也可以直接写在页面上读取
            $.get('temp/edit-form.html', null, function(form) {
                addBoxIndex = layer.open({
                    type: 1,
                    title: '添加表单',
                    content: form,
                    btn: ['保存', '取消'],
                    shade: false,
                    offset: ['100px', '30%'],
                    area: ['600px', '400px'],
                    zIndex: 19950924,
                    maxmin: true,
                    yes: function(index) {
                        //触发表单的提交事件
                        $('form.layui-form').find('button[lay-filter=edit]').click();
                    },
                    full: function(elem) {
                        var win = window.top === window.self ? window : parent.window;
                        $(win).on('resize', function() {
                            var $this = $(this);
                            elem.width($this.width()).height($this.height()).css({
                                top: 0,
                                left: 0
                            });
                            elem.children('div.layui-layer-content').height($this.height() - 95);
                        });
                    },
                    success: function(layero, index) {
                        //弹出窗口成功后渲染表单
                        var form = layui.form();
                        form.render();
                        form.on('submit(edit)', function(data) {
                            console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
                            console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
                            console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
                            //调用父窗口的layer对象
                            layerTips.open({
                                title: '这里面是表单的信息',
                                type: 1,
                                content: JSON.stringify(data.field),
                                area: ['500px', '300px'],
                                btn: ['关闭并刷新', '关闭'],
                                yes: function(index, layero) {
                                    layerTips.msg('你点击了关闭并刷新');
                                    layerTips.close(index);
                                    location.reload(); //刷新
                                }

                            });
                            //这里可以写ajax方法提交表单
                            return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
                        });
                        //console.log(layero, index);
                    },
                    end: function() {
                        addBoxIndex = -1;
                    }
                });
            });
        });

        $('#import').on('click', function() {
            var that = this;
            var index = layer.tips('只想提示地精准些', that, { tips: [1, 'white'] });
            $('#layui-layer' + index).children('div.layui-layer-content').css('color', '#000000');
        });
    });
</script>

<script>
    layui.use('element', function(){
        var $ = layui.jquery
                ,element = layui.element(); //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });
</script>

<script type="text/javascript">
layui.use(['form','layer'], function() {
	  var $ = layui.jquery,
	    form = layui.form(),
	    layer = layui.layer;
	  
	  $('#add_1').on('click',function(){
			layer.open({
			      type: 2,
			      title: ['添加气象要素:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getFactorInsert.action?crop_id=${crop_id}",
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=11";

			      }
			    });
		});
	  
	  
	  $('.add_2').on('click',function(){
			layer.open({
			      type: 2,
			      title: ['添加气象条件:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getConditionInsert.action?crop_id=${crop_id}",
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=22";

			      }
			    });
		});
	  
	  
	  $('.add_3').on('click',function(){
			layer.open({
			      type: 2,
			      title: ['添加气象建议:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getActiveInsert.action?crop_id=${crop_id}",
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=33";

			      }
			    });
		});
	  
	  
	  $('#add_4').on('click',function(){
			layer.open({
			      type: 2,
			      title: ['添加气象灾害:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getDisasterInsert.action?crop_id=${crop_id}",
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=44";

			      }
			    });
		});
	  
	  $('.info_1').on('click',function(){
		  	var id = this.id;
		  	alert(id);
			layer.open({
			      type: 2,
			      title: ['修改气象要素:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getFactorEdit.action?id="+id,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=11";
			      }
			    });
		});
	  
	  $('.info_3').on('click',function(){
		  	var id = this.id;
		  
			layer.open({
			      type: 2,
			      title: ['修改气象建议:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getActiveEdit.action?id="+id,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=33";
			    	 
			      }
			    });
		});
	  
	  $('.info_2').on('click',function(){
		  	var id = this.id;
		  	alert(id);
			layer.open({
			      type: 2,
			      title: ['修改气象条件:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getConditionEdit.action?id="+id,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=22";
			    	  
			      }
			    });
		});
	  
	  $('.info_4').on('click',function(){
		  	var id = this.id;
		  	alert(id);
			layer.open({
			      type: 2,
			      title: ['修改气象灾害:', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/getDisasterEdit.action?id="+id,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=44";
			      }
			    });
		});
	  
	  
	  
	  
$('.del_1').on('click', function() {
	var id=  this.id;
	alert(id);
	$.ajax({
          url:"${pageContext.request.contextPath }/deleteFactorById.action?id="+id,
    	  type: "POST",
          dataType:"text",
          cashe:false,
          async:false,
          success: function(data) {

			  layer.msg('删除成功！');
	    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=11";
    
          },
          error: function(data) {
        	  layui.use(['layer', 'form'], function(){
				 
				  layer.msg('删除失败！');
				});
            
          }
          
	});  
});


$('.del_2').on('click', function() {
	var id=  this.id;
	alert(id);
	$.ajax({
          url:"${pageContext.request.contextPath }/deleteDisasterById.action?id="+id,
    	  type: "POST",
          dataType:"text",
          cashe:false,
          async:false,
          success: function(data) {

			  layer.msg('删除成功！');
	    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=44";
    
          },
          error: function(data) {
        	  layui.use(['layer', 'form'], function(){
				 
				  layer.msg('删除失败！');
				});
            
          }
          
	});  
});

});
</script>


<script type="text/javascript">
layui.use(['form','layer'], function() {
	  var $ = layui.jquery,
	    form = layui.form(),
	    layer = layui.layer;
	  //增加气象服务趋势产品信息
	  $('#addProduct1').on('click',function(){
		  var crop_id=$(this).data("id");
		  var product_type=$(this).data("type");
			layer.open({
			      type: 2,
			      title: ['添加'+product_type, 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/insertProductForm.action?crop_id="+crop_id+"&&product_type="+product_type,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=55";
			      }
			    });
		});
	//增加监测灾害产品信息
	  $('#addProduct2').on('click',function(){
		  var crop_id=$(this).data("id");
		  var product_type=$(this).data("type");
			layer.open({
			      type: 2,
			      title: ['添加'+product_type, 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/insertProductForm.action?crop_id="+crop_id+"&&product_type="+product_type,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=66";
			      }
			    });
		});
	//增加精细化服务产品信息
	  $('#addProduct3').on('click',function(){
		  var crop_id=$(this).data("id");
		  var product_type=$(this).data("type");
			layer.open({
			      type: 2,
			      title: ['添加'+product_type, 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/insertProductForm.action?crop_id="+crop_id+"&&product_type="+product_type,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=77";
			      }
			    });
		});
	
	//增添作物生长时间
	$('#addGrowTime').on('click',function(){
		  var crop_id=$(this).data("id");
			layer.open({
			      type: 2,
			      title: ['添加作物生长时间', 'text-align:center;'],
			      content:"${pageContext.request.contextPath}/insertGrowTimeForm.action?crop_id="+crop_id,
			      area:['500px', '350px'],  //宽高
			      resize: false,    //是否允许拉伸
			      scrollbar: false,
			      end: function(){
			    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=88";
			      }
			    });
		});
	//删除服务趋势产品信息
	$('.delProduct_1').on('click', function() {
		var  id=$(this).data("id");
		$.ajax({
	          url:"${pageContext.request.contextPath }/deleteProduct.action?id="+id,
	    	  type: "POST",
	          dataType:"text",
	          cashe:false,
	          async:false,
	          success: function(data) {
	
				  layer.msg('删除成功！');
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=55";
	    
	          },
	          error: function(data) {
	        	  layui.use(['layer', 'form'], function(){
					 
					  layer.msg('删除失败！');
					});
	            
	          }
	          
		});  
	});
	
	//删除灾害产品信息
	$('.delProduct_2').on('click', function() {
		var  id=$(this).data("id");
		$.ajax({
	          url:"${pageContext.request.contextPath }/deleteProduct.action?id="+id,
	    	  type: "POST",
	          dataType:"text",
	          cashe:false,
	          async:false,
	          success: function(data) {
	
				  layer.msg('删除成功！');
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=66";
	    
	          },
	          error: function(data) {
	        	  layui.use(['layer', 'form'], function(){
					 
					  layer.msg('删除失败！');
					});
	            
	          }
	          
		});  
	});
	
	//删除精细化产品信息
	$('.delProduct_3').on('click', function() {
		var  id=$(this).data("id");
		$.ajax({
	          url:"${pageContext.request.contextPath }/deleteProduct.action?id="+id,
	    	  type: "POST",
	          dataType:"text",
	          cashe:false,
	          async:false,
	          success: function(data) {
	
				  layer.msg('删除成功！');
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=77";
	    
	          },
	          error: function(data) {
	        	  layui.use(['layer', 'form'], function(){
					 
					  layer.msg('删除失败！');
					});
	            
	          }
	          
		});  
	});

	//删除作物生长时间
	$('.delGrowTime').on('click', function() {
		var  id=$(this).data("id");
		$.ajax({
	          url:"${pageContext.request.contextPath }/deleteGrowTime.action?id="+id,
	    	  type: "POST",
	          dataType:"text",
	          cashe:false,
	          async:false,
	          success: function(data) {
	
				  layer.msg('删除成功！');
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=88";
	    
	          },
	          error: function(data) {
	        	  layui.use(['layer', 'form'], function(){
					 
					  layer.msg('删除失败！');
					});
	            
	          }
	          
		});  
	});
	//修改气象趋势产品信息
	$('.infoProduct_1').on('click', function() {
			var id=$(this).data("id");
		layer.open({
		      type: 2,
		      title: ['作物编辑', 'text-align:center;'],
		      content:"${pageContext.request.contextPath }/infoProduct.action?id="+id,
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=55";
			   }
		    });
	});
	
	//修改监测灾害产品信息
	$('.infoProduct_2').on('click', function() {
			var id=$(this).data("id");
		layer.open({
		      type: 2,
		      title: ['作物编辑', 'text-align:center;'],
		      content:"${pageContext.request.contextPath }/infoProduct.action?id="+id,
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=66";
			   }
		    });
	});
	
	//修改精细化服务产品信息
	$('.infoProduct_3').on('click', function() {
			var id=$(this).data("id");
		layer.open({
		      type: 2,
		      title: ['作物编辑', 'text-align:center;'],
		      content:"${pageContext.request.contextPath }/infoProduct.action?id="+id,
		      area:['500px', '350px'],  //宽高
		      resize: false,    //是否允许拉伸
		      scrollbar: false,
		      end: function(){
		    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=77";
			   }
		    });
	});

	//修改作物生长时间
	$('.infoGrowTime').on('click', function() {
		var id=$(this).data("id");
	layer.open({
	      type: 2,
	      title: ['作物编辑', 'text-align:center;'],
	      content:"${pageContext.request.contextPath }/infoGrowTime.action?id="+id,
	      area:['500px', '350px'],  //宽高
	      resize: false,    //是否允许拉伸
	      scrollbar: false,
	      end: function(){
	    	  window.location.href="${pageContext.request.contextPath}/zhibiao.action?crop_id=${crop_id}&&factor_pagecurrent=${factor_currentpage}&&disaster_pagecurrent=${disaster_currentpage}&&wea_pagecurrent=${wea_currentpage}&&PD_pagecurrent=${PD_currentpage}&&grow_pagecurrent=&&JX_pagecurrent=${JX_currentpage}&&layid=88";
		   }
	    });
	});
});
</script>
</html>