<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="失物招领网">
	<meta name="keywords" content="失物招领网">
	<meta charset="UTF-8">
	<title></title>
	<link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" href="public/css/base.css" />
	<link rel="stylesheet" href="public/css/style.css" />
	<link rel="stylesheet" href="public/jquery/jqueryui-1.8.18.css" />
	<script type="text/javascript" src="public/jquery/jquery-1.7.1.min.js"></script>

</head>
<body>
<jsp:include page="header.jsp"/>

<div class="wrap note-list-page">
	<div class="info-list-wrap">
		<div class="info-title-wrap">
			<h2 id="search-list-title">成功案例</h2>
			<h3 id="serach-list-goodsType">
							</h3>
			
		</div>
		
		<ul class='info-list'><li class='clearfix'><span class='info-goods-type'>事件类型</span><span class='info-goods-type'>物品类别</span><span class='info-goods'>丢失物品</span><span class='info-goods'>丢失地点</span><span class='info-goods'>丢失时间</span><span class='info-title'>结果</span></li>
		
		<c:forEach items="${list}" var="bean">
		<li class='clearfix'><span class='info-goods-type'><c:if test="${bean.typename == 'lost'}">寻物</c:if><c:if test="${bean.typename == 'find'}">招领</c:if></span>
		<span class='info-goods'>${bean.category.cname}</span>
		<span class='info-goods'>${bean.name}</span><span class='info-goods'>${bean.address}</span><span class='info-goods'><fmt:formatDate  value="${bean.happentime}" pattern="yyyy-MM-dd" /></span>
		<span class='info-title'><a href='goods!view?id=${bean.id}'><c:if test="${bean.typename == 'lost'}">已找到</c:if><c:if test="${bean.typename == 'find'}">已招领</c:if>${bean.result}</a></span></li>
		</c:forEach>
		</ul>
		<div class='cmt-pageList-wrap'><div class='cmt-pageList'>${pageinfo}</div></div>			
	</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
