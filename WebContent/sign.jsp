<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>三色格_Login</title>
		<link rel="shortcut icon" href="us-img/ico.png" />
		<link rel="stylesheet" href="us-css/style.css">
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
		<link href="us-css/css.css" rel="stylesheet">
		<link rel='stylesheet prefetch' href="us-css/icon.css">
	</head>
		

		<body>
			<div class="uesr_header">
				<div class="user_header_left">
					<img src="us-img/logo.png" />
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
						<input type="text" placeholder="搜索更多你想要的" />
						<button class="fa fa-search"></button>
					</div>
					<div class="user_name">
						<a href="#">登录</a>
						<a href="#">注册</a>
					</div>
				</div>
			</div>
			<div class="cotn_principal">
				<div class="cont_centrar">
					<div class="cont_login">
						<div class="cont_info_log_sign_up">
							<div class="col_md_login">
								<div class="cont_ba_opcitiy">
									<h2>登录</h2>
									<p>有你，生活每天都很精彩</p>
									<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
								</div>
							</div>
							<div class="col_md_sign_up">
								<div class="cont_ba_opcitiy">
									<h2>注册</h2>
									<p>你可能会发现不一样的自己</p>
									<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN UP</button>
								</div>
							</div>
						</div>
						<div class="cont_back_info">
							<div class="cont_img_back_grey"> <img src="po.jpg" alt="" /> </div>
						</div>
						<div class="cont_forms">
							<div class="cont_img_back_"> <img src="po.jpg" alt="" /> </div>
							<form action="LoginServlet" method="post">
								<div class="cont_form_login">
									<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
									<h2>登录</h2>
									
										<input type="text" placeholder="Email/手机号" name="userphone" required/>
										<input type="password" placeholder="输入密码" name="password" required/>
										<button type = "submit" class="btn_login" >Login</button>
									
								</div>
							</form>
							<form action="RegistServlet" method="post">
								<div class="cont_form_sign_up">
								<a href="#" onclick="ocultar_login_sign_up()"><i class="material-icons">&#xE5C4;</i></a>
								<h2>注册</h2>
								
									<input type="text" name="phone" placeholder="Email/手机号" required/>
									<input type="text" name ="username" placeholder="用户名" required/>
									<input type="password" name="password" placeholder="密码" required/>
									<input type="password" name="password1" placeholder="确认密码" required/>
									<button type="submit" class="btn_sign_up" >Sign up</button>
								
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<script src="us-js/index.js"></script>
			<script>
			
			function loadWindow(){
				var checkError= <%=request.getParameter("error")%>;
				switch(checkError){
				case 1:alert("哎呀!手机号码或邮箱格式不正确呢，重新来一遍叭。");break;
				case 2:alert("输入的两次密码不一样呢\n小手不要抖，再来一次哦!");break;
				case 3:alert("emmmm.....密码据说不能小于6位而且不能超过16位哦\n咱们换一个合适的怎么样^.^");break;
				case 4:alert("emmmm.....用户名据说不能大于16位而且不能为空呢\n要相信肯定有更合适的￣▽￣")
				case 5:alert("对不起啦，人家也不知道怎么回事就注册失败了\n可以再重新试试哦(✪ω✪)!");break;
				case 6:alert("账号或密码错误，请重新登录");break;
				case 7:alert("登录失败，未知错误");break;
				case 8:alert("亲亲，你的名字或者电话和邮箱有小伙伴用了哦\n如果你注册过，快去找回走丢的账号(T＿T)");break;
				}
			}
			setTimeout(function(){loadWindow();},100);
				//if(checkError !="null"){
				//	alert(checkError);
				//}
			</script>
		</body>
	</body>

</html>