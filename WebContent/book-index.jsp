<%@page import="com.sansege.enuity.UserEntity" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="r2-css/readstyle.css" />
		<link rel="stylesheet" href="r2-css/style.css" />
		<link rel="stylesheet" href="r2-css/swiper.css" />
		<link rel="stylesheet" href="us-css/user_style2.css" />
		<link rel="stylesheet" type="text/css" href="r2-css/flip.css">
		<script type="text/javascript" src="r2-js/jquery-1.11.2.min.js" ></script>
		<script type="text/javascript" src="r2-js/swiper.js"></script>
	</head>
	<body>
		<!--头部-->
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
		<!--轮播图-->
		<!--<div class="lxy_p"></div>-->
		<div class="wqd-section-three">
			<div class="section-three-fix">
				<h5 class="animate-img wqd-h5 animate-text" data-lazy="lazy">每日读书推荐</h5>
				<p class="animate-img wqd-p animate-text" data-lazy="lazy">每一次阅读，都是生命的光合作用</p>
				<a href="#" class="animate-text wqd-btn-blue animate-btn" data-lazy="lazy">开启阅读</a>
			</div>
			
			<div class="section-three-box">
			
				<div class="section-box-title">
					<em></em>
					<em></em>
					<em></em>
				</div>
				
				<div class="section-img">
					<img src="r2-images/byx.jpg" width="100%" alt="白夜行" style="opacity:1;">
					<img src="r2-images/lh.jpg" width="100%" alt="月亮与六便士">
					<img src="r2-images/smz.jpg" width="100%" alt="">
					<img src="r2-images/dm.jpg" width="100%" alt="">
					<img src="r2-images/ys.jpg" width="100%" alt="">
					<img src="r2-images/sg.jpg" width="100%" alt="">
				</div>
				
			</div>
			
			<div class="slipe-box">
		
				<div class="bannar">
				
					<div class="slipe-left"><img src="r2-images/banner-arow.png" alt="" /></div>
					<div class="slipe-right"><img src="r2-images/banner-arow.png" alt="" /></div>
		
					<div class="swiper-container slider-two">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">凭借着这份光，我便能把黑夜当成白天。我从来就没有太阳，所以不怕失去。 </p>
									<h6 class="animate-text" data-lazy="lazy">《白夜行》<span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/bg.jpg" alt="" />
							</div>
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">满地都是六便士，他却抬头看到了月亮</p>
									<h6 class="animate-text" data-lazy="lazy">《月亮与六便士》<span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/section-bg3-1.jpg" alt="" />
							</div>
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">我认为我们是看得见的盲人，能看见但不去看的盲人。</p>
									<h6 class="animate-text" data-lazy="lazy">《失明症漫记》<span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/bg2.jpg" alt="" />
							</div>
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">世界上最幸福的地方，不是迪士尼乐园，而是丹麦，这个缺少光照、连狗都可能抑郁的国度。</p>
									<h6 class="animate-text" data-lazy="lazy">《丹麦一年》  <span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/section-bg3-3.jpg" alt="" />
							</div>
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">创作同样是一项平凡的工作，并不是世界上不存在的完美。</p>
									<h6 class="animate-text" data-lazy="lazy">《艺术与恐惧》<span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/bg4.jpg" alt="" />
							</div>
							<div class="swiper-slide">
								<div class="section-three-item">
									<p class="animate-text" data-lazy="lazy">每个人心中都有一种历久弥香的味道，是食物，也是念想，可以满足味蕾，也能慰藉灵魂。</p>
									<h6 class="animate-text" data-lazy="lazy">《食光深处的温暖》 <span class="slider-auther"></span></h6>
								</div>
								<img src="r2-images/bgg.jpg" alt="" />
							</div>
						</div>
						<div class="swiper-pagination swiper-pagination-two"></div>
					</div>
					
				</div>
				
			</div>
		</div>
		<script type="text/javascript" src="r2-js/banner.js"></script>
		<!--主体-->
		<div class="lxy_main">
			<div class="lxy_main1">
				<div class="lxy_book">
				<!--书单推荐-->
					<div class="lxy_book_title">
						<div class="lxy_book_title_1"><a>热门书单</a></div>
						
					</div>
					
					<section class="container">

						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>

							<section class="itemContentBox">
								<img src="r2-images/b9.jpg" alt="">
								<section class="itemContent">
								<span>《去爱可爱的食物》</span>
								</section>
								<section class="itemContent">
								<span>《今天也要用心生活》</span>
								</section>
								<section class="itemContent">
								<span>《芒果街上的小屋》</span>
								</section>
								<section class="itemContent">
								<span>《花与童》</span>
								</section>
							</section>
							
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b1.jpg" alt="">
								<section class="itemContent">
								<span>《孤独梦想家》</span>
								</section>
								<section class="itemContent">
								<span>《你在哪里》</span>
								</section>
								<section class="itemContent">
								<span>《一个陌生女人的来信》</span>
								</section>
								<section class="itemContent">
								<span>《晴天》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b3.jpg" alt="">
								<section class="itemContent">
								<span>《我们之间》</span>
								</section>
								<section class="itemContent">
								<span>《大洋之间的光》</span>
								</section>
								<section class="itemContent">
								<span>《挪威的森林》</span>
								</section>
								<section class="itemContent">
								<span>《我可以咬你一口吗》</span>
								</section>
							</section>
						</section>
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>晴</a></div>
							<div class="lxy_booklist1"><a>雨</a></div>
							<div class="lxy_booklist1"><a>雪</a></div>	
						</div>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b12.jpg" alt="">
								<section class="itemContent">
								<span>《乱世佳人》</span>
								</section>
								<section class="itemContent">
								<span>《杀死一只知更鸟》</span>
								</section>
								<section class="itemContent">
								<span>《请以你的名字呼唤我》</span>
								</section>
								<section class="itemContent">
								<span>《断背山》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b11.jpg" alt="">
								<section class="itemContent">
								<span>《列侬回忆》</span>
								</section>
								<section class="itemContent">
								<span>《神迷列车》</span>
								</section>
								<section class="itemContent">
								<span>《噪音》</span>
								</section>
								<section class="itemContent">
								<span>《然而，很美》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b10.jpg" alt="">
								<section class="itemContent">
								<span>《度外》</span>
								</section>
								<section class="itemContent">
								<span>《缓刑时刻》</span>
								 </section>
								<section class="itemContent">
								<span>《奥斯特利茨》</span>
								</section>
								<section class="itemContent">
								<span>《人行道王国》</span>
								</section>
							</section>
						</section>
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>青</a></div>
							<div class="lxy_booklist1"><a>灰</a></div>
							<div class="lxy_booklist1"><a>蓝</a></div>	
						</div>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b4.jpg" alt="">
								<section class="itemContent">
								<span>《一夫食堂》</span>
								</section>
								<section class="itemContent">
								<span>《厨房探险》</span>
								</section>
								<section class="itemContent">
								<span>《四季便当》</span>
								</section>
								<section class="itemContent">
								<span>《鱼翅与花椒》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b7.jpg" alt="">
								<section class="itemContent">
								<span>《带一本书去巴黎》</span>
								</section>
								<section class="itemContent">
								<span>《撒哈拉的故事》</span>
								</section>
								<section class="itemContent">
								<span>《在路上》</span>
								</section>
								<section class="itemContent">
								<span>《在旅行中找到自己》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/b5.jpg" alt="">
								<section class="itemContent">
								<span>《一个人生活》</span>
								</section>
								<section class="itemContent">
								<span>《刺猬的优雅》</span>
								</section>
								<section class="itemContent">
								<span>《小王子》</span>
								</section>
								<section class="itemContent">
								<span>《上来透口气》</span>
								</section>
							</section>
						</section>
						
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>食</a></div>
							<div class="lxy_booklist1"><a>旅</a></div>
							<div class="lxy_booklist1"><a>人</a></div>	
						</div>
					</section>
										<div class="lxy_book_title">
						<div class="lxy_book_title_1"><a>最新书单</a></div>
						
					</div>
					
					<section class="container">

						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>

							<section class="itemContentBox">
								<img src="r2-images/1.jpg" alt="">
								<section class="itemContent">
								<span>《日出酒店》</span>
								</section>
								<section class="itemContent">
								<span>《线》</span>
								</section>
								<section class="itemContent">
								<span>《回归》</span>
								</section>
								<section class="itemContent">
								<span>《我选择独自一个人》</span>
								</section>
							</section>
							
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/2.jpg" alt="">
								<section class="itemContent">
								<span>《枯枝败叶》</span>
								</section>
								<section class="itemContent">
								<span>《橘子不是唯一的水果》</span>
								</section>
								<section class="itemContent">
								<span>《皮囊》</span>
								</section>
								<section class="itemContent">
								<span>《漫长的告别》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/3.jpg" alt="">
								<section class="itemContent">
								<span>《岛》</span>
								</section>
								<section class="itemContent">
								<span>《纯真博物馆》</span>
								</section>
								<section class="itemContent">
								<span>《精神病患》</span>
								</section>
								<section class="itemContent">
								<span>《漫游世界的尽头》</span>
								</section>
							</section>
						</section>
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>只</a></div>
							<div class="lxy_booklist1"><a>是</a></div>
							<div class="lxy_booklist1"><a>个</a></div>	
						</div>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/4.jpg" alt="">
								<section class="itemContent">
								<span>《恰似水于巧克力》</span>
								</section>
								<section class="itemContent">
								<span>《如果一切重来》</span>
								</section>
								<section class="itemContent">
								<span>《人间失格》</span>
								</section>
								<section class="itemContent">
								<span>《设计诗》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/5.jpg" alt="">
								<section class="itemContent">
								<span>《遥望》</span>
								</section>
								<section class="itemContent">
								<span>《小夜曲》</span>
								</section>
								<section class="itemContent">
								<span>《青春咖啡馆》</span>
								</section>
								<section class="itemContent">
								<span>《我们在此相遇》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/6.jpg" alt="">
								<section class="itemContent">
								<span>《黑书》</span>
								</section>
								<section class="itemContent">
								<span>《暗店街》</span>
								 </section>
								<section class="itemContent">
								<span>《灵魂只能独行》</span>
								</section>
								<section class="itemContent">
								<span>《近在远方》</span>
								</section>
							</section>
						</section>
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>浪</a></div>
							<div class="lxy_booklist1"><a>漫</a></div>
							<div class="lxy_booklist1"><a>的</a></div>	
						</div>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/7.jpg" alt="">
								<section class="itemContent">
								<span>《看不见的岛屿》</span>
								</section>
								<section class="itemContent">
								<span>《伊斯坦布尔假期》</span>
								</section>
								<section class="itemContent">
								<span>《一人食》</span>
								</section>
								<section class="itemContent">
								<span>《动物农场》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/8.jpg" alt="">
								<section class="itemContent">
								<span>《时间之间》</span>
								</section>
								<section class="itemContent">
								<span>《解离的真实》</span>
								</section>
								<section class="itemContent">
								<span>《生活在别处》</span>
								</section>
								<section class="itemContent">
								<span>《冬牧场》</span>
								</section>
							</section>
						</section>
						
						<section class="boxItem">
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<a href="javascript:void(0)"></a>
							<section class="itemContentBox">
								<img src="r2-images/9.jpg" alt="">
								<section class="itemContent">
								<span>《一星星上的人》</span>
								</section>
								<section class="itemContent">
								<span>《外婆的道歉信》</span>
								</section>
								<section class="itemContent">
								<span>《每天都是小春日和》</span>
								</section>
								<section class="itemContent">
								<span>《房思琪的失恋乐园》</span>
								</section>
							</section>
						</section>
						
						<div class="lxy_booklist">
							<div class="lxy_booklist1"><a>逃</a></div>
							<div class="lxy_booklist1"><a>亡</a></div>
							<div class="lxy_booklist1"><a>者</a></div>	
						</div>
					</section>
					
				</div>
			<!--人气作者-->	
				<div class="lxy_wr">			
					<div class='tiles'>
						<div class="lxy_box lxy_bg1">
		
							<a>文学</a>
						</div>
						<div class="lxy_box lxy_bg2">
							<a>流行</a>
						</div>
						<div class="lxy_box lxy_bg3">
							<a>文化</a>
						</div>
						<div class="lxy_box lxy_bg4">
							<a>生活</a>
						</div>
						<div class="lxy_box lxy_bg5">
							<a>艺术</a>
						</div>
						<div class="lxy_box lxy_bg6">
							<a>外语</a>
						</div>
						<div class="lxy_box lxy_bg7">
							<a>经济</a>
						</div>
						<div class="lxy_box lxy_bg8">
							<a>科技</a>
						</div>

					</div>
				</div>
			</div>
				
		<!--页尾-->
		<div class="lxy_footer"></div>
		
		
	</body>
</html>