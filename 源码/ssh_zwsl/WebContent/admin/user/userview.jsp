﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>欢迎使用Yourphp企业建站系统 - Powered by Yourphp</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/MyDate/WdatePicker.js"></script>


</head>

<body width="100%"><div id="loader" >页面加载中...</div><div id="result" class="result none"></div><div class="mainbox"><div id="nav" class="mainnav_title"><ul><a href="method!userlist">用户列表</a>
	</ul></div>
	<script>	
		function checkemail(){
			if(!$("#email").val().match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){
		     alert("格式不正确！请重新输入");
		     $("#email").focus();
			return false;
		}
	</script>
	<form id="myform" action="method!usersave" method="post">
	
	<input type="hidden" name="id" value="${user.id}"/> 
	<table cellpadding=0 cellspacing=0 class="table_form" width="100%"><tr><td width="120">邮箱</td>
	<td>${user.email}</td></tr>
	
	<tr><td>昵称</td><td>${user.username}</td></tr>
	<tr><td>密码</td><td>${user.password}</td></tr>
	<tr><td>用户组</td><td><c:if test="${user.role == 0}">普通用户</c:if><c:if test="${user.role==1}">管理员</c:if></td></tr>
	
	</table>
	
	
	<input  onclick="javascript:history.go(-1);" class="button"  type="button" value="返回" />
	<form></div><div></body></html>
