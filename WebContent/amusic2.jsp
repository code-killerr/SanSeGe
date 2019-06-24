<%@page import="java.util.List"%>
<%@page import="com.sansege.enuity.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Welcome 喵音乐</title>
		<link rel="shortcut icon" href="img/blogo.ico"/>
		<link rel="stylesheet" href="am2-css/bfile.css" />
		<link rel="stylesheet"  href="am2-font-awesome-4.7.0/css/font-awesome.min.css"/>
		<script type="text/javascript" src="am2-js/bile.js"></script>
	</head>
	<body>
		<!--头部 -->
		<!--固定导航栏-->
		<div class="uesr_header">
				<div class="user_header_left">
					<img src="am2-img/3sg.png"/>
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
					<div class="user_name">
						<a href="#">登录</a>
						<a href="#">注册</a>
					</div>
				</div>
		</div>
		<!--右侧标签栏-->
		<div id="bdh">
			<!--全部标签-->
			<div class="bmost">
				<p class="fa fa-bars">
					全部标签
				</p>
			</div>
			<!--主题-->
			<div class="bmost">
				<h5>主题
					<i class="fa fa-plus" id="hid1" onclick="hid1()" aria-hidden="true"></i> 
				</h5>
			</div>
			<!--情绪-->
			<div class="bmost">
				<h5>情绪
					<i class="fa fa-plus" id="hid2" onclick="hid2()"   aria-hidden="true"></i> 
				</h5>
			</div>
			<!--场景-->			
			<div class="bmost">
				<h5>场景
					<i class="fa fa-plus" id="hid3" onclick="hid3()"   aria-hidden="true"></i> 
				</h5>
			</div>
			<!--流派-->
			<div class="bmost">
				<h5>流派
					<i class="fa fa-plus" id="hid4" onclick="hid4()"   aria-hidden="true"></i> 
				</h5>
			</div>
			<!--乐器-->
			<div class="bmost">
				<h5>乐器
					<i class="fa fa-plus" id="hid5" onclick="hid5()"   aria-hidden="true"></i> 
				</h5>
			</div>
			<!--情歌-->
			<div class="bmost">
				<h5>情歌
					<i class="fa fa-plus" id="hid6" onclick="hid6()"   aria-hidden="true"></i> 
				</h5>
			</div>
			<!--其他-->
			<div class="bmost">
				<h5>其他
					<i class="fa fa-minus" id="hid7" onclick="hid7()"   aria-hidden="true"></i> 
				</h5>
			</div>
		</div>
		<!--主题下拉列表-->
		<div id="bunderlist1" onclick="hid1()">
			<dd>
				<a href="#">短视频</a>
				<a href="#">动感</a>
			</dd>
			<dd>
				<a href="#">儿童节</a>
				<a href="#">广告</a>
			</dd>
			<dd>
				<a href="#">中国风</a>
				<a href="#">直播平台</a>
			</dd>
			<dd>
				<a href="#">下午茶</a>
				<a href="#">520</a>
			</dd>
			<dd>
				<a href="#">世界杯 </a>
				<a href="#">动画</a>
			</dd>
			<dd>
				<a href="#">老照片</a>
				<a href="#">音乐节</a>
			</dd>
		</div>
		<!--情绪 下拉列表-->
		<div id="bunderlist2">
			<dd>
				<a href="#">正能量</a>
				<a href="#">欢乐</a>
			</dd>
			<dd>
				<a href="#">梦幻的</a>
				<a href="#">慵懒</a>
			</dd>
			<dd>
				<a href="#">雄壮的</a>
				<a href="#">抽象</a>
			</dd>
			<dd>
				<a href="#">神圣的</a>
				<a href="#">惊悚</a>
			</dd>
			<dd>
				<a href="#">幽默的 </a>
				<a href="#">励志</a>
			</dd>
			<dd>
				<a href="#">温柔的</a>
				<a href="#">简约</a>
			</dd>
		</div>
		<!--场景 下拉列表-->
		<div id="bunderlist3">
			<dd>
				<a href="#">预告片</a>
				<a href="#">古镇</a>
			</dd>
			<dd>
				<a href="#">西餐厅</a>
				<a href="#">史诗</a>
			</dd>
			<dd>
				<a href="#">仙侠剧</a>
				<a href="#">密室逃脱</a>
			</dd>
			<dd>
				<a href="#">纪录片</a>
				<a href="#">电音夜店</a>
			</dd>
			<dd>
				<a href="#">动漫展</a>
				<a href="#">流水</a>
			</dd>
			<dd>
				<a href="#">电影院</a>
				<a href="#">短视频</a>
			</dd>
		</div>
		<!--流派 下拉列表-->
		<div id="bunderlist4">
			<dd>
				<a href="#">轻音乐</a>
				<a href="#">爵士</a>
			</dd>
			<dd>
				<a href="#">中国风</a>
				<a href="#">拉丁</a>
			</dd>
			<dd>
				<a href="#">管弦乐</a>
				<a href="#">宗教</a>
			</dd>
			<dd>
				<a href="#">布鲁斯</a>
				<a href="#">古典</a>
			</dd>
			<dd>
				<a href="#">乡村乐 </a>
				<a href="#">摇滚</a>
			</dd>
			<dd>
				<a href="#">流行乐</a>
				<a href="#">民谣</a>
			</dd>
		</div>
		<!--乐器 下拉列表-->
		<div id="bunderlist5">
			<dd>
				<a href="#">打击乐</a>
				<a href="#">贝斯</a>
			</dd>
			<dd>
				<a href="#">合成乐</a>
				<a href="#">钢琴</a>
			</dd>
			<dd>
				<a href="#">吉他</a>
				<a href="#">管乐</a>
			</dd>
		</div>
		<!-- 情歌下拉列表-->
		<div id="bunderlist6">
			<dd>
				<a href="#">深情</a>
				<a href="#">苦情</a>
			</dd>
			<dd>
				<a href="#">爱情</a>
				<a href="#">情歌对唱</a>
			</dd>
			<dd>
				<a href="#">情深深</a>
				<a href="#">依恋</a>
			</dd>
			<dd>
				<a href="#">两情若是长久时</a>
			</dd>
		</div>
		<!--其他 下拉列表 -->
		<div id="bunderlist7">
			<dd>
				<a href="#">机械</a>
				<a href="#">步行</a>
			</dd>
			<dd>
				<a href="#">飞行</a>
				<a href="#">冷酷</a>
			</dd>
			<dd>
				<a href="#">著名</a>
			</dd>
		</div>
		<!--右边歌单-->
		<div id="bright">
			<!--标签盒子-->
			<div class="brp">
				<p style="float: left;line-height: 80px;">
					<i class="fa fa-file-text-o" aria-hidden="true" style="color: crimson;"></i>
					<h4 style="margin-left: 25px; float: left; line-height: 80px;">热门歌单推荐</h4>
				</p>
			</div>
			<!--第一个盒子 小嗨-->
			<div class="bfourbox1">
				<div>
					<h3 class="nb_t">小嗨AI-春天的希望</h3>
					<p class="nb_p">万物复苏，一切都是春天最美的希望</p>
					<ul class="tages">
						<li><a href="#" style="list-style: none;">抒情</a></li>
						<li><a href="#" style="list-style: none;">感动</a></li>
						<li><a href="#" style="list-style: none;">希望</a></li>
						<li><a href="#" style="list-style: none;">温暖</a></li>
					</ul>
				</div>
			</div>
			<!--第二个盒子 Grime-->
			<div class="bfourbox2">
				<div>
					<h3 class="nb_t">GRIME</h3>
					<p class="nb_p">让爆裂的节奏冲击你的耳膜</p>
					<ul class="tages">
						<li><a href="#" style="list-style: none;">律动</a></li>
						<li><a href="#" style="list-style: none;">强烈</a></li>
						<li><a href="#" style="list-style: none;">动感</a></li>
						<li><a href="#" style="list-style: none;">黑暗</a></li>
					</ul>
				</div>
			</div>
			<!--第三个盒子 预告片-->
			<div class="bfourbox3">
				<div>
					<h3 class="nb_t">预告片混剪BGM</h3>
					<p class="nb_p">音乐风格的混合，古典、电子……</p>
					<ul class="tages">
						<li><a href="#" style="list-style: none;">激情</a></li>
						<li><a href="#" style="list-style: none;">强烈</a></li>
						<li><a href="#" style="list-style: none;">预告片</a></li>
						<li><a href="#" style="list-style: none;">电影</a></li>
					</ul>
				</div>
			</div>
			<!--第四个盒子 手碟-->
			<div class="bfourbox4">
				<div>
					<h3 class="nb_t">特殊乐器-手碟</h3>
					<p class="nb_p">一种打击乐器，强到爆炸的致命节奏</p>
					<ul class="tages">
						<li><a href="#" style="list-style: none;">梦幻</a></li>
						<li><a href="#" style="list-style: none;">空灵</a></li>
						<li><a href="#" style="list-style: none;">器乐</a></li>
						<li><a href="#" style="list-style: none;">手碟</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--标签栏-->
		<div class="biaoqian">
			<p style="float: left;line-height: 80px;">
					<i class="fa fa-music" aria-hidden="true" style="color: crimson;"></i>
					<h4 style="margin-left: 25px; float: left; line-height: 80px;">推荐歌曲</h4>
			</p>
		</div>
		<!--详细乐曲部分-->
		<div class="bmusic">
			<div class="bmostsql">
				<ul>
					<li><span>歌曲信息</span></li>
					<li style="margin-left: 100px;">标签</li>
					<li style="margin-left: 250px;">时长</li>
					<li style="margin-left: 90px;">BPM</li>
					
				</ul>
			</div>
			<!--第一首歌-->
			<div class="bmusic1">
				<!--播放图片-->
				<div class="bimg_a">
					<div class="butte">
						<i id="au1"  class="fa fa-play" aria-hidden="true" style="margin-left:10px; margin-top: 8px;" onclick="play1()"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="7 YEARS" href="#" style="text-decoration: none;">7 years</a>
					<p><span style="margin-top: 10px;">Lukas Graham</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">人生</a></li>
						<li><a href="#" style="list-style: none;">情绪</a></li>
						<li><a href="#" style="list-style: none;">感悟</a></li>
						<li><a href="#" style="list-style: none;">焦虑</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>03:57</li>
					<li>250</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic2">
				<div class="bimg_b">
					<div class="butte">
						<i id="au2"  class="fa fa-play" aria-hidden="true" style="margin-left:10px; margin-top: 8px;" onclick="play2()"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="盗将行" href="#" style="text-decoration: none;">盗将行</a>
					<p><span style="margin-top: 10px;">花粥/马雨阳</span></p>
				</div>
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">情深</a></li>
						<li><a href="#" style="list-style: none;">意侬</a></li>
						<li><a href="#" style="list-style: none;">誓言</a></li>
						<li><a href="#" style="list-style: none;">刻骨</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>03:18</li>
					<li>233</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic3">
				<div class="bimg_c">
					<div class="butte">
						<i id="au3"  class="fa fa-play" aria-hidden="true" style="margin-left:10px; margin-top: 8px;" onclick="play3()"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="I am you" href="#" style="text-decoration: none;">I am you</a>
					<p><span style="margin-top: 10px;">Kim Taylor</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">舒缓</a></li>
						<li><a href="#" style="list-style: none;">放松</a></li>
						<li><a href="#" style="list-style: none;">节奏</a></li>
						<li><a href="#" style="list-style: none;">悠远</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>04:34</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic4">
				<div class="bimg_d">
					<div class="butte">
						<i id="au4"  class="fa fa-play" aria-hidden="true" style="margin-left:10px; margin-top: 8px;" onclick="play4()"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="Monsters" href="#" style="text-decoration: none;">Monsters</a>
					<p><span style="margin-top: 10px;">Katie Sky</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">治愈</a></li>
						<li><a href="#" style="list-style: none;">节奏</a></li>
						<li><a href="#" style="list-style: none;">旋律</a></li>
						<li><a href="#" style="list-style: none;">轻松</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>03:37</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic5">
				<div class="bimg_e">
					<div class="butte">
						<i id="au5"  class="fa fa-play" onclick="play5()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="君子于役" href="#" style="text-decoration: none;">君子于役</a>
					<p><span style="margin-top: 10px;">郭斯/小盒纸酱</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">古风</a></li>
						<li><a href="#" style="list-style: none;">伤恋</a></li>
						<li><a href="#" style="list-style: none;">无奈</a></li>
						<li><a href="#" style="list-style: none;">无缘</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>04:13</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic6">
				<div class="bimg_f">
					<div class="butte">
						<i id="au6"  class="fa fa-play" onclick="play6()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="Rain" href="#" style="text-decoration: none;">Rain</a>
					<p><span style="margin-top: 10px;">秦基博</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">成长</a></li>
						<li><a href="#" style="list-style: none;">温情</a></li>
						<li><a href="#" style="list-style: none;">细雨</a></li>
						<li><a href="#" style="list-style: none;">伤恋</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>04:53</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic7">
				<div class="bimg_g">
					<div class="butte">
						<i id="au7"  class="fa fa-play" onclick="play7()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="山外小楼夜听雨" href="#" style="text-decoration: none;">山外小楼夜听雨</a>
					<p><span style="margin-top: 10px;">任然</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">思念</a></li>
						<li><a href="#" style="list-style: none;">孤寂</a></li>
						<li><a href="#" style="list-style: none;">古风</a></li>
						<li><a href="#" style="list-style: none;">伤感</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>04:09</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic8">
				<div class="bimg_h">
					<div class="butte">
						<i id="au8"  class="fa fa-play" onclick="play8()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="南方姑娘" href="#" style="text-decoration: none;">南方姑娘</a>
					<p><span style="margin-top: 10px;">赵雷</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">民谣</a></li>
						<li><a href="#" style="list-style: none;">温柔</a></li>
						<li><a href="#" style="list-style: none;">画面</a></li>
						<li><a href="#" style="list-style: none;">美感</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>05:34</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic9">
				<div class="bimg_i">
					<div class="butte">
						<i id="au9"  class="fa fa-play" onclick="play9()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="一直很安静" href="#" style="text-decoration: none;">一直很安静</a>
					<p><span style="margin-top: 10px;">阿桑</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">回忆</a></li>
						<li><a href="#" style="list-style: none;">寂寞</a></li>
						<li><a href="#" style="list-style: none;">怀旧</a></li>
						<li><a href="#" style="list-style: none;">经典</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>04:10</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
			<div class="bmusic10">
				<div class="bimg_j">
					<div class="butte">
						<i id="au10"  class="fa fa-play" onclick="play10()" aria-hidden="true" style="margin-left:10px; margin-top: 8px;"></i>
					</div>
				</div>
				<!--歌曲信息-->
				<div class="lay">
					<a title="成都" href="#" style="text-decoration: none;">成都</a>
					<p><span style="margin-top: 10px;">赵雷</span></p>
				</div>
				<!--标签-->
				<div>
					<ul class="styles">
						<li><a href="#" style="list-style: none;">民谣</a></li>
						<li><a href="#" style="list-style: none;">轻松</a></li>
						<li><a href="#" style="list-style: none;">舒适</a></li>
						<li><a href="#" style="list-style: none;">怀念</a></li>
					</ul>
				</div>
				<!-- 时长  BPM 版本 -->
				<div class="lli">
					<li>05:28</li>
					<li>214</li>
				</div>
				<!-- 点赞 歌单 图标 -->
				<div class="tubiao">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
					<i class="fa fa-download" aria-hidden="true"></i>
					<i class="fa fa-commenting-o" aria-hidden="true"></i> 
					<i class="fa fa-share-alt" aria-hidden="true"></i>
				</div>
			</div>
		</div>
		<!-- 尾部翻页按钮-->
		<div class="last">
			<div  class="tt" style="padding: 25px 0px 15px;">
			<span class="page a1">上一页</span>
			<span class="page">1</span>
			<span class="page">2</span>
			<span class="page">3</span>
			<span class="page">4</span>
			<span class="page">5</span>
			<span class="page">6</span>
			<span class="page">7</span>
			<span class="page">8</span>
			<span class="page">9</span>
			<span class="page">10</span>
			<span class="page a1">下一页</span>
		</div>
	
		</div>
		<!-- 底部 -->
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
						<img src="am2-img/qr.png" width="100" height="100" />
						<p>三色格微信公总号</p>
					</div>
				</div>
			</div>	
		<!-- 播放界面盒子 -->
			<div class="poter1" id="1mp3">
				<div class="type">
					<p class="ppp">以为是七年，其实是一辈子。</p>
					<p class="ppp">人生能有几个7 Years呢，珍惜现在</p>
				</div>
				<div class="bmp3">
					<audio  id="mu1" src="am2-audio/7years.mp3" controls="controls"></audio>
						<div class="shoucang">
							<button>收藏</button>
						</div>
				</div>
			</div>
			
			<div class="poter2" id="2mp3">
				<div class="type">
					<p class="ppp">&nbsp;&nbsp;&nbsp;&nbsp;人间烟火，山河远阔。 无一是你，无一不是你。</p>
				</div>
				<div class="bmp3">
					<audio id="mu2" src="am2-audio/DJX.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter3" id="3mp3">
				<div class="type">
					<p class="ppp">你走也是诗，躺也成文，怎有烟火浊了身。我糟糠也食，五谷也认，跳一场花旦笑捧。</p>
				</div>
				<div class="bmp3">
					<audio id="mu3" src="am2-audio/IAMY.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter4" id="4mp3">
				<div class="type">
					<p class="ppp">真正喜欢一个人的时候，是不舍得让他伤心难过的。虽然自己还是个小女生，但是也想变成你的灯塔，保护你</p>
				</div>
				<div class="bmp3">
					<audio id="mu4" src="am2-audio/Monster.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter5" id="5mp3">
				<div class="type">
					<p class="ppp">有人问我什么是思念，搁浅的鲸，无法投递的信，离开根头的蒲公英，东去寻不到大海的溪，我回头却找不到的你。</p>
				</div>
				<div class="bmp3">
					<audio id="mu5" src="am2-audio/JZYY.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter6" id="6mp3">
				<div class="type">
					<p class="ppp">殷其雷，天阴霾，雨零耶，盼君留。</p>
					<p class="ppp">殷其雷，纵不零，卿若留，吾将从。</p>
				</div>
				<div class="bmp3">
					<audio id="mu6" src="am2-audio/RAIN.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter7" id="7mp3">
				<div class="type">
					<p class="ppp">一上高城万里愁，蒹葭杨柳似汀洲。溪云初起日沉阁，山雨欲来风满楼。鸟下绿芜秦苑夕，蝉鸣黄叶汉宫秋。行人莫问当年事，故国东来渭水流。</p>
				</div>
				<div class="bmp3">
					<audio id="mu7" src="am2-audio/SWXLYTY.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter8" id="8mp3">
				<div class="type">
					<p class="ppp">这个世界除了朝九晚五，还有很多人要加班到深夜。 没有双休，没有热好的粥，灯火通明的家。 用尽全力去生活，不过勉强温饱。 生活不会总是一片黑暗，你想要的终会到来！</p>
				</div>
				<div class="bmp3">
					<audio id="mu8" src="am2-audio/NFGN.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter9" id="9mp3">
				<div class="type">
					<p class="ppp">听这首歌的时候，就想到林月如，她死的时候，我哭得很伤心，有的时候爱情这件事，先遇到谁，谁就赢了，即使形影不离，也赢不了。</p>
				</div>
				<div class="bmp3">
					<audio id="mu9" src="am2-audio/YZHHAJ.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
			
			<div class="poter10" id="10mp3">
				<div class="type">
					<p class="ppp">在成都的街头哼唱着这首歌，把手揣进裤兜，坐在小酒馆的门口，就这样一个个静静的走着，消失在灯光的尽头，就这样，走着，走完 自己选择的人生！</p>
				</div>
				<div class="bmp3">
					<audio id="mu10" src="am2-audio/CHD.mp3" controls="controls"></audio>
					<div class="shoucang">
							<button>收藏</button>
					</div>
				</div>
			</div>
	</body>
</html>
