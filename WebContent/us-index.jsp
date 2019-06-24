<%@page import ='com.sansege.enuity.*' %>
<%@page import ='com.sansege.DBControl.LoginSqlControl' %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html style= "min-width:1300px">
<head>
<meta charset="utf-8">
<meta http-equiv=imagetoolbar content=no>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>三色格_个人中心</title>
<link rel="shortcut icon" href="us-img/ico.png" />
<link rel="stylesheet" href="us-css/user_style.css" />
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
<script src="us-js/jquery.min.js"></script>
<script src="us-js/LiftEffect.js"></script>
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
			
				<!----<a href="#">登录</a>
				<a href="#">注册</a>---->
			</div>
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
	
	<!---主体左部--->
    <div class="lift-nav">
		<ul class="lift">
			<li><span class="fa fa-music"></span></li>
			<li><span class="fa fa-file-movie-o"></span></li>
			<li><span class="fa fa-book"></span></li>
		</ul>
	</div>
	<!---主体中间--->
	<div class="lift-target">
		<!---个人资料--->
		<div class="t1">
			
			
		</div>
		<!---音乐--->
		<div class="t2">
			<div class="t2_title">
				<p>收藏的音乐</p>
			</div>
			<p class="more">查看更多>></p>
			<div class="user_musicloving">
			<% int id = userEntity.getUseId();
			LoginSqlControl control = new LoginSqlControl();
			List<MusicEntity> music = control.User_Favorite_Music(id);
			if(music != null)
				for(MusicEntity i : music){
			%>
				<div>
					<img src="<%=i.getcover() %>" width="70" height="70"/>
					<p><%=i.getname() %></p>
				</div>
				<%} %>
			</div>
		</div>
		<!---电影--->
		<div class="t3">
			<div class="t3_title">
				<p>收藏的电影</p>
			</div>
			<p class="more">查看更多>></p>
			<div class="user_movieloving">
			<%
			List<FilmEntity> film = control.User_Favorite_Film(id);
			if(film != null)
				for(FilmEntity i : film){
			%>
				<div>
					<img src="<%=i.getF_poster() %>" width="70" height="70"/>
					<p><%=i.getF_name() %></p>
				</div>
				<%} %>
			</div>
		</div>
		<!---书籍--->
		<div class="t4">
			<div class="t4_title">
				<p>收藏的书籍</p>
			</div>
			<p class="more">查看更多>></p>
			<div class="user_booksloving">
			<%
			List<BookEntity> book = control.User_Favorite_Book(id);
			if(book != null)
				for(BookEntity i : book){
			%>
				<div>
					<img src="<%=i.getB_cover() %>" width="70" height="70"/>
					<p><%=i.getB_name() %></p>
				</div>
				<%} %>
			</div>
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
	
<%
					}else{
			 %>
			 <span>
		    			<a href = "sign.jsp">请先登录</a>
				</span>
				
			<%} %>

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