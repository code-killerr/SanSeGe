<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>三色格_音乐盒子</title>
		<link rel="shortcut icon" href="us-img/ico.png" />
		<link rel="stylesheet" href="am-css/amusic.css" />
		<script type="text/javascript" src="am-js/amusic.js"></script>   <!--调用js--->
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css"/>
		<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css"/>
		<script type="text/javascript" src="am-js/jquery.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	</head>
	<body>
		<!--固定导航栏-->
		<div class="uesr_header">
				<div class="user_header_left">
					<img src="us-img/logo.png" />
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
					<div class="user_name">
						<a href="#">登录</a>
						<a href="#">注册</a>
					</div>
				</div>
			</div>
		<!--导航栏轮播-->
		<div class="cut">
			<div class="butten">
				<div id="myCarousel" class="carousel slide">
				<!-- 轮播（Carousel）指标 -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>   
				<!-- 轮播（Carousel）项目 -->
				<div class="carousel-inner">
					<div class="item active">
						<img style="height: 336px;width: 882px;" src="am-img/0.png" alt="First slide">
					</div>
					<div class="item">
						<img style="height: 336px;width: 882px;" src="am-img/1.png" alt="Second slide">
					</div>
					<div class="item">
						<img style="height: 336px;width: 882px;" src="am-img/2.png" alt="Third slide">
					</div>
					<div class="item">
						<img style="height: 336px; width: 882px;" src="am-img/3.png" alt="Third slide">
					</div>
					<div class="item">
						<img style="height: 336px;width: 882px;" src="am-img/4.png" alt="Third slide">
					</div>
					<!-- 轮播（Carousel）导航 -->
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
				</div> 
			</div>
		</div>
		</div>
		<!--中间内容-->
		<div class="page">   <!--给页面加背景颜色-->
			<div class="box">
			    <!--热门推荐-->
				<div class="recomed">
					<div class="hot">
					     ○&nbsp;&nbsp;&nbsp;热门推荐
					</div>
					<ul class="list">
						<li class="single" >
							<div class="img" onmouseover="changes()" onmouseout="recovers()">
								<img src="am-img/r1.jpg" width="170px" height="170px" />
								<div id="butt" >
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								华语速款新歌
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r2.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								轻柔曲调｜宁静之间流动的缱绻时光
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r3.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								『英伦男嗓』那些迷人声线的英国歌手
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r4.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								 #郁我一起唱#路过人间
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r5.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								华语搞笑 | 一不小心歌名就抬杠系列
							</div></li>
						<li class="single">
							<div class="img">
								<img src="am-img/r6.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								 有的人你要穷极一生去怀念
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r7.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								【旋律控】超级好听的欧美良曲
							</div>
						</li>
						<li class="single">
							<div class="img">
								<img src="am-img/r8.jpg" width="170px" height="170px" />
								<div id="butt">
									<a class="fa fa-play-circle-o fa-4x" title="播放" href="#" ></a>
								</div>
							</div>
							<div class="words">
								 来自天堂的魔鬼_王巨星.m4a
							</div>
						</li>
					</ul>
				</div>
				<!--新碟上架-->
				<div class="new">
					<div class="hot">
						○&nbsp;&nbsp;&nbsp;新碟上架
					</div>
					<div class="disc">
						<ul class="disc_list">
							<li class="disc_single">
								<div class="disc_img">
									<img src="am-img/n1.jpg" width="130px" height="130px" />
									<div id="play">
										<a class="fa fa-play-circle-o fa-3x" title="播放" href="#" ></a>
									</div>
								</div>
								<div class="disc_words1">
									 MARIA
								</div>
								<div class="disc_words2">
									 黄明昊 (Justin)  /  KOHH
								</div>
							</li>
							<li class="disc_single">
								<div class="disc_img">
									<img src="am-img/n2.jpg" width="130px" height="130px" />
									<div id="play">
										<a class="fa fa-play-circle-o fa-3x" title="播放" href="#" ></a>
									</div>
								</div>
								<div class="disc_words1">
									ME! 
								</div>
								<div class="disc_words2">
									Taylor Swift
								</div>
							</li>
							<li class="disc_single">
								<div class="disc_img">
									<img src="am-img/n3.jpg" width="130px" height="130px" />
									<div id="play">
										<a class="fa fa-play-circle-o fa-3x" title="播放" href="#"></a>
									</div>
								</div>
								<div class="disc_words1">
									 Dream Visit
								</div>
								<div class="disc_words2">
									  李易峰
								</div>
							</li>
							<li class="disc_single">
								<div class="disc_img">
									<img src="am-img/n4.jpg" width="130px" height="130px" />
									<div id="play">
										<a class="fa fa-play-circle-o fa-3x" title="播放" href="#" ></a>
									</div>
								</div>
								<div class="disc_words1">
									 孤单心事
								</div>
								<div class="disc_words2">
									 颜人中
								</div>
							</li>
							<li class="disc_single">
								<div class="disc_img">
									<img src="am-img/n5.jpg" width="130px" height="130px" />
									<div id="play">
										<a class="fa fa-play-circle-o fa-3x" title="播放" href="#"" ></a>
									</div>
								</div>
								<div class="disc_words1">
									末日青春：补完计划
								</div>
								<div class="disc_words2">
									F.I.R.
								</div>
							</li>
						</ul>
					</div>
				</div>
				<!--榜单-->
				<div class="notice">
					<div class="hot">
						○&nbsp;&nbsp;&nbsp;榜单
					</div>
					<div class="notice_list">
						<dl class="notice_list_left">
							<!--顶部-->
							<dt class="notice_list_left_header">
								<div class="header_img">
									<img src="am-img/bsb.jpg" width="90px" height="90px"/>
								</div>
								<div class="header_matter">&nbsp;&nbsp;云音乐飙升榜</div>
							</dt>
							<!--表单-->
							<dd>
								<ol>
									<li>
										<span class="nomber_one">1</span>
										<a href="#" class="song_one" title="不是每趟爱情都能开往地老天荒">不是每趟爱情都能开往地老天荒</a>
									</li>
									<li>
										<span class="nomber_double">2</span>
										<a href="#" class="song_double" title="原来">原来</a>
									</li>
									<li>
										<span class="nomber_one">3</span>
										<a href="#" class="song_one" title="Come Back">Come Back</a>
									</li>
									<li>
										<span class="nomber_double">4</span>
										<a href="#" class="song_double" title="Tiger">tiger</a>
									</li>
									<li>
										<span class="nomber_one">5</span>
										<a href="#" class="song_one" title="春暖花开(Spring Memories)中文版">春暖花开(Spring Memories)中文版</a>
									</li>
									<li>
										<span class="nomber_double">6</span>
										<a href="#" class="song_double" title="想你">想你</a>
									</li>
									<li>
										<span class="nomber_one">7</span>
										<a href="#" class="song_one" title="9-TEEN">9-TEEN</a>
									</li>
									<li>
										<span class="nomber_double">8</span>
										<a href="#" class="song_double" title="公子向北走">公子向北走</a>
									</li>
									<li>
										<span class="nomber_one">9</span>
										<a href="#" class="song_one" title="Why.">Why.</a>
									</li>
									<li>
										<span class="nomber_double">10</span>
										<a href="#" class="song_double" title="多想在平庸的生活拥抱你">多想在平庸的生活拥抱你</a>
									</li>
								</ol>
							</dd>		
						</dl>						
						<dl class="notice_list_left">
							<dt class="notice_list_left_header">
								<div class="header_img">
									<img src="am-img/xgb.jpg" width="90px" height="90px"/>
								</div>
								<div class="header_matter">&nbsp;&nbsp;云音乐新歌榜</div>
							</dt>
							<!--表单-->
							<dd>
								<ol>
									<li>
										<span class="nomber_one">1</span>
										<a href="#" class="song_one" title="四块五">四块五</a>
									</li>
									<li>
										<span class="nomber_double">2</span>
										<a href="#" class="song_double" title="孤单心事">孤单心事</a>
									</li>
									<li>
										<span class="nomber_one">3</span>
										<a href="#" class="song_one" title="别叫我达芬奇">别叫我达芬奇</a>
									</li>
									<li>
										<span class="nomber_double">4</span>
										<a href="#" class="song_double" title="失眠飞行">失眠飞行</a>
									</li>
									<li>
										<span class="nomber_one">5</span>
										<a href="#" class="song_one" title="不是每趟爱情都能开往地老天荒">不是每趟爱情都能开往地老天荒</a>
									</li>
									<li>
										<span class="nomber_double">6</span>
										<a href="#" class="song_double" title="孤身">孤身</a>
									</li>
									<li>
										<span class="nomber_one">7</span>
										<a href="#" class="song_one" title="MARIA">MARIA</a>
									</li>
									<li>
										<span class="nomber_double">8</span>
										<a href="#" class="song_double" title="ME! (feat. Brendon Urie of Panic! At The Disco)">ME! (feat. Brendon Urie of Panic! At The Disco)</a>
									</li>
									<li>
										<span class="nomber_one">9</span>
										<a href="#" class="song_one" title="原来">原来</a>
									</li>
									<li>
										<span class="nomber_double">10</span>
										<a href="#" class="song_double" title="Lovebird (Remix)">Lovebird (Remix)</a>
									</li>
								</ol>
							</dd>
						</dl>
						<dl class="notice_list_left">
							<dt class="notice_list_left_header">
								<div class="header_img">
									<img src="am-img/ycb.jpg" width="90px" height="90px"/>
								</div>
								<div class="header_matter">&nbsp;&nbsp;云音乐原创榜</div>
							</dt>
							<!--表单-->
							<dd>
								<ol>
									<li>
										<span class="nomber_one">1</span>
										<a href="#" class="song_one" title="超人">超人</a>
									</li>
									<li>
										<span class="nomber_double">2</span>
										<a href="#" class="song_double" title="天南歌">天南歌</a>
									</li>
									<li>
										<span class="nomber_one">3</span>
										<a href="#" class="song_one" title="我们都是无名之辈">我们都是无名之辈</a>
									</li>
									<li>
										<span class="nomber_double">4</span>
										<a href="#" class="song_double" title="矛盾综合体">矛盾综合体</a>
									</li>
									<li>
										<span class="nomber_one">5</span>
										<a href="#" class="song_one" title="云淡风轻">云淡风轻</a>
									</li>
									<li>
										<span class="nomber_double">6</span>
										<a href="#" class="song_double" title="意识之舞">意识之舞</a>
									</li>
									<li>
										<span class="nomber_one">7</span>
										<a href="#" class="song_one" title="雄鹰">雄鹰</a>
									</li>
									<li>
										<span class="nomber_double">8</span>
										<a href="#" class="song_double" title="谜底 Under the Riddle">谜底 Under the Riddle</a>
									</li>
									<li>
										<span class="nomber_one">9</span>
										<a href="#" class="song_one" title="期待">期待</a>
									</li>
									<li>
										<span class="nomber_double">10</span>
										<a href="#" class="song_double" title="花之谜">花之谜</a>
									</li>
								</ol>
							</dd>
						</dl>
					</div>
				</div>
				<!--全部音乐-->
				<div class="all">
					<a href="amusic2.jsp">全部音乐</a>
				</div>
			</div>
		</div>
		<div class="pick"></div>
			<div class="user_footer">
				<div class="user_footer1" style="margin-left: 380px; !important; ">
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
					<img src="am-img/2wm.png" width="100" height="100" />
					<p>三色格微信公总号</p>
				</div>
			</div>
	</body>
</html>