<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
com.lostfound.util.Util.init(request);
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<html lang="zh-CN"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="失物招领网">
	<meta name="keywords" content="失物招领网">
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="public/css/base.css">
	<link rel="stylesheet" href="public/css/style.css">	
	<script type="text/javascript" src="public/jquery/jquery-1.7.1.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

<div id="main" class="wrap clearfix">
<div id="content" class="fl">
	<div class="info-list-wrap clearfix" id="info-list-lost">
		<div class="info-title-wrap">
			<h2><a href="goods!lost">最新失物信息</a></h2>
			<span class="info-list-more fr">
				<a href="goods!lost">查看所有&gt;&gt;</a>
			</span>
		</div>
		<ul class="info-list">
			<li class="clearfix">
				<span class="event-goods-type">物品类别</span>
				<span class="event-goods">物品名称</span>
				<span class="event-time">丢失时间</span>
				<span class="event-address">丢失地点</span>
				<span class="event-title">标题</span>
			</li>
			<c:forEach items="${lostlist}" var="bean">
			<li class="clearfix"><span class="event-goods-type">${bean.category.cname }</span><span class="event-goods">${bean.name}</span><span class="event-time"><fmt:formatDate  value="${bean.happentime}" pattern="yyyy-MM-dd" /></span><span class="event-address">${bean.address}</span><span class="event-title"><a href="goods!view?id=${bean.id}">${fn:substring(bean.title,0,18)}<c:if test="${fn:length(bean.title)>18 }">...</c:if></a></span></li>
			</c:forEach>
			</ul>
	</div>
	<div class="info-list-wrap clearfix" id="info-list-found">
		<div class="info-title-wrap">
			<h2><a href="goods!find">最新招领信息</a></h2>
			<span class="info-list-more fr">
				<a href="goods!find">查看所有&gt;&gt;</a>
			</span>
		</div>
		<ul class="info-list">
			<li class="clearfix">
			
				<span class="event-goods-type">物品类别</span>
				<span class="event-goods">物品名称</span>
				<span class="event-time">捡到时间</span>
				<span class="event-address">捡到地点</span>
				<span class="event-title">标题</span>
			</li>
			<c:forEach items="${findlist}" var="bean">
			<li class="clearfix"><span class="event-goods-type">${bean.category.cname }</span><span class="event-goods">${bean.name}</span><span class="event-time"><fmt:formatDate  value="${bean.happentime}" pattern="yyyy-MM-dd" /></span><span class="event-address">${bean.address}</span><span class="event-title"><a href="goods!view?id=${bean.id}">${fn:substring(bean.title,0,18)}<c:if test="${fn:length(bean.title)>18 }">...</c:if></a></span></li>		
			</c:forEach>
	</ul></div>
 </div>
<div id="sidebar" class="fr">
	<div id="publish">
		<img alt="" src="public/image/lostfound.jpg" width="278" height="188">
	</div>
	<div id="office" class="side-box">
		<div class="clearfix" id="office-title-wrap">
			<h3 id="office-title">教学楼失物招领地点</h3>
			
		</div>
		
		<ul id="office-content">
			<li class="office-item">
				失物招领处：113室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：812345678
			</li>
			<li class="office-item">
				保卫处：112室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：812345678
			</li>
			<li class="office-item">
				1号楼：215室	
			</li>
			<li class="office-item">
				2号楼：108室&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：812345678
			</li>
			<li class="office-item">
				3号楼：104室
			</li>
			<li class="office-item" id="office-item-last">
				4号楼: 215室
			</li>
		</ul>
	</div>
	
	
	<div>
		
	</div>
	
 </div>

</div>
<jsp:include page="footer.jsp"/>
</body></html>