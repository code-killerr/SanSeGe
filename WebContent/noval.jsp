<%@page import="com.sansege.enuity.UserEntity"%>
<%@page import="com.sansege.enuity.BookEntity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="no-css/style_zxy_rank.css" />
		<link rel="stylesheet" href="us-css/user_style.css" />
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css" />
		<script type="text/javascript" src="no-js/js_zxy_rank.js"></script>
		<script type="text/javascript" src="us-js/user_style.js"></script>
	</head>
	<body>
	<!---导航栏--->
	<div class="uesr_header">
		<div class="user_body">
			<p>选择今天的天气：</p>
			<span class="fa fa-sun-o" id="weatherchoose1" onclick="getans1()" on="loseans1()"></span>
			<span class="fa fa-cloud" id="weatherchoose2" onclick="getans2()"></span>
			<span class="fa fa-snowflake-o" id="weatherchoose3" onclick="getans3()"></span>
		</div>
		<div class="user_header_left">
			<img src="us-img/logo.png"/>
			<a href="#">三色格</a>
			<div class="user_header_mid">
				<ul class="user_nav">
					<li>
						<a href="#">首页</a>
					</li>
					<li>
						<a href="#">音乐</a>
					</li>
					<li>
						<a href="#">电影</a>
					</li>
					<li>
						<a href="#">书籍</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="user_header_right">
			<div class="user_research">
				<input type="text" placeholder="搜索更多你想要的"/>
				<button class="fa fa-search"></button>
			</div>
			<div class="user_name" onmouseover="show()" onmouseout="recover()">
			<%
			UserEntity userEntity = (UserEntity)session.getAttribute("userDate");
			    if(userEntity != null){
			%>
				<span>
		    			<%=userEntity.getUserName()%>
				</span>
				
				
		</div>
		<%
					}
			    else{
	 %>
	 <a href="#">登录</a>
	 <a href="#">注册</a>
	 <%
			}
	 %>
	</div>
	
	</div>
	<!---头像下拉列表--->
	<div id="user_underlist" onmouseover="show()" onmouseout="recover()" >
		<ul>
			<li>
				<a href="us-index.jsp">个人中心
					<span class="fa fa-envelope"></span>
				</a>
			</li>
			<li>
				<a href="user_de.jsp">个人资料
					<span class="fa fa-user"></span>
				</a>
			</li>
			<li>
				<a href="DeadUser">退出登录
					<span class="fa fa-sign-out"></span>
				</a>
			</li>
		</ul>
	</div>
	
		<!--整体的页面-->
		<div class="zxy_page">
			<!--阅读导航栏-->
			<div class="zxy_readnav">
				<div>
					<ul>
						<li style="	width: 80px;height: 35px;">书单</li>
						<li style="	width: 80px;height: 35px;">排行榜</li>
					</ul>
				</div>
			</div>
			<!--广告-->
			<div id="zxy_ad">
				<div onclick="zxy_clo()" class="zxy_closebutt" title="关闭">×</div>
			</div>
			<!--热点-->
			<div class="zxy_hot">
				<a title="2019 年首批签约出版作品信息" target="_blank">
					<img src="no-img/zxy_hot.png" width="14px" height="14px"/>
					<span>2019 年首批签约出版作品信息</span>
				</a>
				<a title="《冷雨》线下活动回顾：悬疑小说，真相不止一个" target="_blank">
					<img src="img/zxy_hot.png" width="14px" height="14px"/>
					<span>《冷雨》线下活动回顾：悬疑小说，真相不止一个</span>
				</a>
				<a title="八笔龙获第一百五十期小雅奖最佳作者" target="_blank">
					<img src="img/zxy_hot.png" width="14px" height="14px"/>
					<span>八笔龙获第一百五十期小雅奖最佳作者</span>
				</a>
			</div>
			<!--排行分类-->
			<div class="zxy_sortrank">
				<h1>排行分类</h1>
				<ul>
					<!--<li style="background-color: #389EAC;">全部</li>-->
					<li><a href="#zxy_longwaitrank">长篇连载榜</a></li>
					<li><a href="#zxy_longpoverrank">长篇完本榜</a></li>
					<li><a href="#zxy_midrank">中篇榜</a></li>
					<li><a href="#zxy_longwaitnewrank">长篇连载新作榜</a></li>
					<li><a href="#zxy_bookrank">图书榜</a></li>
				</ul>
			</div>
			<!--长篇连载榜-->
			<div class="content">
				<h1 class="heading" id="zxy_longwaitrank">长篇连载榜</h1>
				<p class="description">作品三日内有更新，按周热度排行</p>
				<a class="card" href="#!">
					<div class="front" style="background-image: url(no-img/zxy_rank11.jpg);">
					    <p>连载榜</p>
					</div>
					<div class="back">
					    <div>
					    	<table width="250px" height="300px">
					    	<%
					    		ArrayList<BookEntity> list = (ArrayList<BookEntity>)session.getAttribute("book");
					    		
					    	%>
					    	<%
					    		int n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="r_book.jsp" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
					    </div>
					</div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank12.jpg);">
				        <p>女性・连载榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank13.jpg);">
				        <p>悬疑・连载榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank14.jpg);">
				        <p>幻想・连载榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank15.jpg);">
				        <p>文艺・连载榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank16.jpg);">
				        <p>历史・连载榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
			</div>
			<!--长篇完本榜-->
			<div class="content">
				<h1 class="heading" id="zxy_longpoverrank">长篇完本榜</h1>
				<p class="description">八万字以上完本，按 30 日阅读时长排序（ 作品完结时间超过一月不足一年 ）</p>
				<a class="card" href="#!">
					<div class="front" style="background-image: url(no-img/zxy_rank21.jpg);">
					    <p>完本榜</p>
					</div>
					<div class="back">
					    <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
					    </div>
					</div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank22.jpg);">
				        <p>女性・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank23.jpg);">
				        <p>悬疑・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank44.jpg);">
				        <p>敬请期待</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
			</div>
			<!--中篇榜-->
			<div class="content">
				<h1 class="heading" id="zxy_midrank">中篇榜</h1>
				<p class="description">八万字以下完本，按 30 日阅读时长排序（ 作品上架时间超过一月不足一年 ）</p>
				<a class="card" href="#!">
					<div class="front" style="background-image:url(no-img/zxy_rank31.jpg);">
					    <p>中篇榜</p>
					</div>
					<div class="back">
					    <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
					    </div>
					</div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank32.jpg);">
				        <p>女性・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank33.jpg);">
				        <p>悬疑・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank34.jpg);">
				        <p>幻想・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank35.jpg);">
				        <p>文艺・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank36.jpg);">
				        <p>历史・完本榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
			</div>
			<!--长篇连载新作榜-->
			<div class="content">
				<h1 class="heading" id="zxy_longwaitnewrank">长篇连载新作榜</h1>
				<p class="description">作品三日内有更新且上架不到一月，按阅读数排行</p>
				<a class="card" href="#!">
					<div class="front" style="background-image:url(no-img/zxy_rank41.jpg);">
					    <p>连载新作榜</p>
					</div>
					<div class="back">
					    <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
					    </div>
					</div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank42.jpg);">
				        <p>女性・连载新作榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank43.jpg);">
				        <p>悬疑・连载新作榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank44.jpg);">
				        <p>敬请期待</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
			</div>
			<!--图书榜-->
			<div class="content">
				<h1 class="heading" id="zxy_bookrank">图书榜</h1>
				<p class="description">本周销量 TOP 15</p>
				<a class="card" href="#!">
					<div class="front" style="background-image: url(no-img/zxy_rank51.jpg);">
					    <p>畅销榜</p>
					</div>
					<div class="back">
					    <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
					    </div>
					</div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank52.jpg);">
				        <p>新书榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image:url(no-img/zxy_rank53.jpg);">
				        <p>套装榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
				<a class="card" href="#!">
				    <div class="front" style="background-image: url(no-img/zxy_rank54.jpg);">
				        <p>好评榜</p>
				    </div>
				    <div class="back">
				        <div>
					        <table width="250px" height="300px">
					    		<%
					    		n=1;
					    		if(list!=null)
					    		{
					    			for(BookEntity i: list){
					    	%>
					    		<tr>
					    			<th width="6px" style="color: hotpink;"><%=n %>.</th>
					    			<th width="130px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_name() %></a></th>
					    			<th width="120px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_author() %></a></th>
					    			<th width="5px"><a href="#" class="zxy_rank" style="text-decoration:none;color:black" onclick="zxy_aChange()"><%=i.getB_score() %></th>
					    		</tr>
				    		<%
				    		    		n++;
					    			}
				    			}
					    	%>
					    	</table>
					        <button class="button">查看详情</button>
				        </div>
				    </div>
				</a>
			</div>
			<!--页脚-->
			<div class="pick"></div>
				<div class="user_footer">
					<div class="user_footer1">
						<p>联系我们</p>
						<br />
						<p>QQ:154844812</p>
						<br />
						<p>TEL:0812-5422567</p>
						<br />
						<p>感谢您的关心</p>
					</div>
					<div class="user_footer1">
						<p>常见问题</p>
						<br />
						<p>登录不了</p>
						<br />
						<p>推荐出错</p>
						<br />
						<p>更新不及时</p>
					</div>
					<div class="user_footer1">
						<p>加入社区</p>
						<br />
						<p>《三色格》社区</p>
						<br />
						<p>百度推荐</p>
						<br />
						<p>广告招商</p>
					</div>
					<div class="user_footer1">
						<img src="us-img/qr.png" width="100" height="100" />
						<p>三色格微信公总号</p>
					</div>
				</div>
			</div>
		<script>
		$(function(){
			LiftEffect({
				"control1": ".lift-nav", 						  //侧栏电梯的容器
				"control2": ".lift",                           //需要遍历的电梯的父元素
				"target": [".t2",".t3",".t4"], //监听的内容，注意一定要从小到大输入
				"current": "current" 						  //选中的样式
			});
		})
		</script>
	</body>
</html>
