<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<!--<p>${area_id }</p> -->
<form class="layui-form" action="${pageContext.request.contextPath}/InsertDistributeForm/${area_id}.action">
<c:forEach items="${typelist}" var="type"> 
<div class="layui-form-item">
    <label class="layui-form-label">${type}</label>
    <c:forEach items="${customlist}" var="custom"> 
   <c:if test="${type == custom.croptype_name}">
    <div class="layui-input-block">
      <input type="checkbox" name="cropid" title="${custom.crop_name }" value = "${custom.id}|${custom.croptype}|${custom.crop_name}">
    </div>
    </c:if>
    </c:forEach>
</div>
</c:forEach>
 
    <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn save" id="btn" lay-submit lay-filter="addArea">保存</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
      </div>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/layui/layui.js"></script>
<script type="text/javascript">
layui.use(['form','layer','jquery'], function() {
var layer=layui.layer,
	form=layui.layer,
	$=layui.jquery;

	
});
</script>
</html>