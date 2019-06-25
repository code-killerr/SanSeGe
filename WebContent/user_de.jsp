<%@page import="com.sansege.enuity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="min-width:1300px">
<head>
<meta charset="utf-8">
<meta http-equiv=imagetoolbar content=no>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>三色格_个人资料</title>
<link rel="shortcut icon" href="us-img/ico.png" />
<link rel="stylesheet" href="us-css/user_style2.css" />
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
						<a href="index.jsp">首页</a>
					</li>
					<li>
						<a href="amusic.jsp">音乐</a>
					</li>
					<li>
						<a href="mfirst.jsp">电影</a>
					</li>
					<li>
						<a href="book-index.jsp">书籍</a>
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
					UserEntity UserEntity = (UserEntity)session.getAttribute("userDate");
				    if(UserEntity != null){
				%>
				<span>
		    			<%=UserEntity.getUserName() %>已登录
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
			
		</ul>
	</div>
	<!---主体中间--->
	<div class="lift-target">
		<!---个人资料--->
		<div class="t1">
			<div class="t1_title">
				<p>个人资料卡</p>
			</div>
			<div class="user_data">
				<div class="user_data_photo">
					<img src="us-img/hjy.jpg" width="100" height="150"/>
				</div>
				<p>
		     	</p>
				<div id="userde">
					<form action="UpdateServlet" method="post" class="STYLE-NAME">
						<label>
							<span>昵称 :</span>
							<input id="name" type="text" name="username" value=""placeholder ="请输入昵称"/>
						</label>
						<br/>
						<br/>
						<label>
							<span> Email :</span>
							<input id="email"name="email" value="" placeholder="请输入您的邮箱"/>
						<br/>
						<br/>
							<span>手机号 :</span>
							<input  name="phone"  value="" placeholder="请输入你的电话"/>
						</label>
						<br/>
						<br/>
						<label>
							<span>个人签名 :</span>
							<input name="introduce"  value="" placeholder="至少输入8个字符"/>
						</label>
						<br/>
						<br/>
						<label>
							<span>更改密码 :</span>
							<input name="password"  value="" placeholder="请输入更改后的密码"/>
						<br/>
						<br/>
							<span>确认密码 :</span>
							<input name="password1"  value="" placeholder="请重复密码"/>
						</label>
						<label>
							<span>&nbsp;</span>
							<input type="submit" value="确认修改" />
						</label>
					</form>
					<%} else{%>
						<a href = sign.jsp> 请先登录</a>
						</div>
						</div>
						</div>
					<% } %>
				</div>
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
	<script>
			
			function loadWindow(){
				var checkError= <%=request.getParameter("error")%>;
				switch(checkError){
				case 1:alert("哎呀!手机号码格式不正确呢，重新来一遍叭。");break;
				case 2:alert("哎呀!邮箱格式不正确，重新来一遍叭。");break;
				case 3:alert("emmmm.....密码据说不能小于6位而且不能超过16位哦\n咱们换一个合适的怎么样^.^");break;
				case 4:alert("输入的两次密码不一样呢\n小手不要抖，再来一次哦!");break;
				case 5:alert("emmmm.....用户名据说不能大于16位而且不能为空呢\n要相信肯定有更合适的￣▽￣");break;
				case 6:alert("这个名字已经有人用了哦\n再想想，肯定有适合你的名字!");break;
				case 7:alert("这个邮箱已经有人用了哦\n换一个邮箱或者快去找回走丢的账号〒▽〒");break;
				case 8:alert("这个手机已经有人用了哦\n换一个邮箱或者快去找回走丢的账号〒▽〒");break;
				case 9:alert("修改失败这个问题我也不知道怎么回事\n可以再重新试试(✪ω✪)!");break;
				case 10:alert("辛苦你啦，修改成功!!!");break;
				case 11:alert("请先登录！");
				}
			}
			setTimeout(function(){loadWindow();},100);
				//if(checkError !="null"){
				//	alert(checkError);
				//}
			</script>
</body>
</html>