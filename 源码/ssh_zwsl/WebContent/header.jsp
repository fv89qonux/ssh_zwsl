<%@ page language="java" import="java.util.*,com.lostfound.model.User" pageEncoding="UTF-8"%>
<div id="header">
	<div class="wrap clearfix head">
		<h1 class="fl logo">
		<font size="8">基于SSH的失物招领系统</font>

		</h1>
		<div class="fl renrenlike">

		</div>
		<div id="searchBox-wrap" class="clearfix fr">
				<form action="goods!search">
					<div id="searchBox" class="clearfix">
						<!--<label for="q" class="">搜索丢失/捡到的东西</label>-->
						<input type="text" name="key" class="fl" id="q" autocomplete="off" placeholder="搜索丢失/捡到的东西">
						<button type="submit" id="search-button" class="fl">搜索</button>
						<a href="goods!search" id="search-advanced" class="fr" target="_self">高级搜索</a>
					</div>
				</form>
				<!--<a href="">高级搜索</a>-->
			</div>
	</div>
	<div class="nav-wrap-outer">
	<div class="nav" id="nav">
		<div class="wrap clearfix">
		<ul class="clearfix fl">
				<li class="nav-item"><a href="goods!index" class="nav-item-link">首页</a></li>
				<li class="nav-item"><a href="goods!publish?type=lost" class="nav-item-link nav-item-plus">发布寻物贴</a></li>
				<li class="nav-item"><a href="goods!publish?type=find" class="nav-item-link nav-item-plus">发布招领贴</a></li>
				<li class="nav-item"><a href="thanks!write" class="nav-item-link nav-item-plus">写感谢信</a></li>
				<li class="nav-item"><a href="goods!lost" class="nav-item-link">浏览寻物贴</a></li>
				<li class="nav-item"><a href="goods!find" class="nav-item-link">查看招领贴</a></li>
				<li class="nav-item nav-item-last"><a href="goods!success" class="nav-item-link">成功案例</a></li>
				<li class="nav-item nav-item-last"><a href="thanks!list" class="nav-item-link">感谢信</a></li>
				<!-- <li class="nav-item nav-item-last"><a href="user!mygoods" class="nav-item-link">用户中心</a></li> -->
			</ul>
			<%if(session.getAttribute("user") == null){ %>
			<ul class="nav-login fr">
								<li class="nav-login-item">
				<img class="nav-login-avatar" src="public/image/avatar0.png" alt="请先登录" width="20px" height="20px">
				</li>
				<li class="nav-login-item pr" id="nav-login"><a href="login.jsp" class="nav-login-link" style="color: rgb(255, 255, 255); ">请登录</a>				
				</li>
				<li class="nav-login-item"><a href="reg.jsp" class="nav-login-link">10秒注册<span class="red">!</span></a></li>
				
			</ul>
			<%}else{ %>
			
			<ul class="nav-login fr">
								<li class="nav-login-item">
				<img class="nav-login-avatar" src="public/image/feng.jpg" alt="freewind" title="freewind" width="20px" height="20px" />
				</li>
				<li class="nav-login-item"><a href="user!mygoods" class="nav-login-link"><%=((User)session.getAttribute("user")).getUsername() %></a></li>
				<li class="nav-login-item"><a href="updatepsw.jsp" class="nav-login-link">修改密码</a></li>
				<li class="nav-login-item"><a onclick="return confirm('确定退出')" href="user!logout" class="nav-login-link">登出</a></li>
				
			</ul>
			<%} %>
			
			</div>
			</div>
	</div>
</div>