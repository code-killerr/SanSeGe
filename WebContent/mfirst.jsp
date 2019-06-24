<%@page import="com.sansege.enuity.UserEntity"%>
<%@page import="com.sansege.enuity.FilmEntity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>三色格_电影盒子</title>
		<link rel="shortcut icon" href="us-img/ico.png" />
		<link rel="icon" href=" img/movieslogo.ico" type="image/x-icon"/>
		<link rel="stylesheet" href="css/mfirst.css" />
		<link rel="stylesheet" href="us-css/user_style2.css">
		<link rel="stylesheet" type="text/css" href="css/fstyle.css" />
		<script type="text/javascript" src="js/mfirst.js" ></script>
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css" />
	</head>
	<body>
		<div class="mainbody">
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
						<a href="noval.jsp">书籍</a>
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
	<%} else{%>
						<a href = sign.jsp> 请先登录</a>
						</div>
						</div>
						</div>
					<% } %>
			<!--顶部轮播-->
			<div id="banner">
				<div id="carousel">
					<img src="img/thwj.jpg" data-url="#">
					<img src="img/gsl2.jpg" data-url="#">
					<img src="img/fl4.jpg" data-url="#">
					<img src="img/yhhwd2.png" data-url="#">
					<img src="img/dy.jpeg" data-url="#">
					<img src="img/ss2.jpg" data-url="#">
				</div>
			</div>
			<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
			<script src="js/slider.js" type="text/javascript" charset="utf-8"></script>
			<script>
				$(function() {
					$('#carousel').carousel({
						curDisplay: 0, //默认索引
						autoPlay: true, //是否自动播放
						interval:4000//间隔时间
					});
				});
			</script>
			 <!--导航栏-->
			<div class="Ynav">
				<div class="Ycarrier">
				<!--片库-->
				<div class="Ymodul" >
					<h4 class="Ymsize">片库<a href="zy.jsp" class="Ysize">全部></a></h4>
					<dl class="Yblocks">
						<dd>
							<a href="" class="Ysize">近期热门</a>
							<a href="" class="Ysize">免费电影</a>
							<a href="" class="Ysize">会员专享</a>
						</dd>
						<dd class="Ydis">
							<a href="" class="Ysize">最新上线</a>
							<a href="" class="Ysize">院线大片</a>
							<a href="" class="Ysize">评分最高</a>
						</dd>
					</dl>
				</div>
				<!--地区-->
				<div class="Ymodul Yarea">
					<h4 class="Ymsize">地区<a href="zy.jsp" class="Ysize">全部></a></h4>
					<dl class="Yblocks">
						<dd>
							<a href="" class="Ysize">华语</a>
							<a href="" class="Ysize">美国</a>
							<a href="" class="Ysize">欧洲</a>
						</dd>
						<dd class="Ydis">
							<a href="" class="Ysize">日本</a>
							<a href="" class="Ysize">韩国</a>
							<a href="" class="Ysize">泰国</a>
						</dd>
					</dl>
				</div>
				<!--分类-->
				<div class="Ymodul Yclassify">
					<h4 class="Ymsize">分类<a href="zy.jsp" class="Ysize">全部></a></h4>
					<dl class="Yblocks">
						<dd>
							<a href="" class="Ysize">喜剧</a>
							<a href="" class="Ysize">爱情</a>
							<a href="" class="Ysize">动作</a>
							<a href="" class="Ysize">青春</a>
						</dd>
						<dd class="Ydis">
							<a href="" class="Ysize">科幻</a>
							<a href="" class="Ysize">惊悚</a>
							<a href="" class="Ysize">悬疑</a>
							<a href="" class="Ysize">战争</a>
						</dd>
					</dl>
				</div>
				<div class="Yvip">
					<a href=""><img src="img/viplogo2.png"/></a>
				</div>
				</div>
			</div>
			<!--电影推荐-->
			<div class="Ymore">
				<!--推荐导航栏-->
				<div class="Yrnav">
					<div class="Yrnavleft" onmouseover="bgcolor()" onmouseout="lfcolor()">
						<a href="sptx.jsp">
							<span class="spesize"id="bgc">科幻影片</span>
							<span class="Ysize" id="bgm">更多></span>
						</a>
					</div>
					<a href="tptx.jsp">
						<div class="Yhot">
						热播榜
						</div>
					</a>
					<a href="tptx.jsp">
						<div class="Yhot">
						高分榜
						</div>
					</a>
				</div>
				<!--排版样式-->
				<div class="Ystylesheet">
					<!--视频样式-->
					<div class="Yvideos">
						<video src="videos/北美全新电视预告震撼出击，白色战服曝光，众英雄开启存亡之战！-_超清.mp4" loop="loop" 
							autoplay="autoplay" controls="controls" style="width: 640px;height: 370px;object-fit: fill;" >
						</video>
					</div>
					<!--视屏描述-->
					<div class="Yintro">《复仇者联盟4》</div>
					<div class="Yothers">
						<ul class="Ylist">
							<%
					    		ArrayList<FilmEntity> list = (ArrayList<FilmEntity>)session.getAttribute("film");
					    	%>
							<%
								if(list!=null)
				    			{
				    				for(FilmEntity i: list){
							%>
							
							<li>
								<div class="Yexam">
									<div class="Ypicture">
										<a href="">
											<img src="<%=i.getF_poster() %>" style="width: 230px;height: 300px;" />
										</a>
									</div>
									<div class="Yminintro">
										<a href=""><%=i.getF_name()%></a>
										<!--点赞评分系统-->
										<span id="Ymark"><%=i.getF_grade() %></span>
										<span class="fa fa-thumbs-o-down" id="Ydislike" onclick="dislike()"></span>
										<span class="fa fa-thumbs-o-up" id="Ylike" onclick="like()"></span>
										<p class="Ysyn"><%=i.getF_focus() %></p>
									</div>
								</div>
							
							<%
				    				}
				    			}
							%>

							<!--  
							<li>
								<div class="Yexam">
									<div class="Ypicture">
										<a href="">
										<img src="img/bxjg5.png" style="width: 230px;height: 300px;" />
										</a>
									</div>
									<div class="Yminintro">
										<a href="">变形金刚5</a>
										
										<span id="Ymark">8.0</span>
										<span class="fa fa-thumbs-o-down" id="Ydislike2" onclick="dislike2()"></span>
										<span class="fa fa-thumbs-o-up" id="Ylike2" onclick="like2()"></span>
										<p class="Ysyn">地球陷入毁灭危机，擎天柱失踪，汽车人和霸天虎来....</p>
									</div>
								</div>
							</li>
							<li>
								<div class="Yexam">
									<div class="Ypicture">
										<a href="">
										<img src="img/hw.png" style="width: 230px;height: 300px;" />
										</a>
									</div>
									<div class="Yminintro">
										<a href="">海王</a>
										
										<span id="Ymark">8.7</span>
										<span class="fa fa-thumbs-o-down" id="Ydislike3" onclick="dislike3()"></span>
										<span class="fa fa-thumbs-o-up" id="Ylike3" onclick="like3()"></span>
										<p class="Ysyn">许多年前，亚特兰蒂斯女王和人类相知相恋，共同孕育...</p>
									</div>
								</div>
							</li>
							-->
						</ul>
					</div>
				</div>
			</div>
			<!--经典电影推荐-->
			<div class="Yclassic">
				<div class="Yrnav2">
					<a href="">
						<div class="Yhot2">
						华语经典
						</div>
					</a>
					<a href="">
						<div class="Yhot2">
						外语经典
						</div>
					</a>
					<div class="Yrnavright" onmouseover="bgcolor2()" onmouseout="lfcolor2()">
						<a href="">
							<span class="spesize"id="bgc2">今日经典电影</span>
							<span class="Ysize" id="bgm2">更多></span>
						</a>
					</div>
				</div>
				<!--视频位置，样式-->
				<div class="Yvideos2">
						<video src="videos/再来感受一次哥哥张国荣的柔与刚，《霸王别姬》精彩剪辑-_标清.mp4"
							controls="controls" style="width: 640px;height: 370px;object-fit: fill;" >
						</video>
				</div>
				<!--经典影片简介-->
				<div class="Yci">
					<ul class="Yclist">
						<li><h2><a href="">《霸王别姬》</h2></a></li>
						<li><span class="Ycisize">导演：</span>陈凯歌</li>
						<li><span class="Ycisize">演员:</span>张国荣，巩俐，张丰毅,葛优</li>
						<li><span class="Ycisize">内容简介：</span>影片讲述一对从小一起长大的师兄弟，段小楼演生，程蝶衣演旦，两人一向配合天衣无缝，
							尤其一出《霸王别姬》誉满京城。师弟倾慕师兄，然而段小楼在认为该成家之时迎娶了名妓菊仙，
							自此三人围绕一出《霸王别姬》生出的爱恨情仇开始随着时代风云的变迁不断升级，终酿成悲剧......</li>
						<li><span class="Ycisize">精彩影评：</span>蝶衣于台上贵妃醉酒，头顶忽撒下无数抗日传单。灯骤灭，台下喧哗。
							没有人再顾及台上的贵妃。唯有蝶衣，继续着未尽的绝美舞步丝毫未曾停滞。一片混乱之中，也唯有四爷，
							独自于楼上包厢继续丝毫未曾分神。看到这里感动的一塌糊涂。结尾处“我本是男儿郎,又不是女娇娥”真的落泪了。
							纯粹坚持的2人去了     ------用户 UrthónaD'Mors.</li>
					</ul>
				</div>
			</div>
		    <!--页脚-->
		    <div class="pick">
				<div class="user_footer">
					<div class="user_footer1">
						<p>联系傲视我们</p>
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
						<img src="img/qr.png" width="100" height="100" />
						<p>三色格微信公总号</p>
					</div>
				</div>
			</div>	
    	</div>
	</body>
</html>
