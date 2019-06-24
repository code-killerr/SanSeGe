<%@page import="com.sansege.enuity.UserEntity"%>
<%@page import="com.sansege.enuity.BookEntity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="no-css/readstyle.css" />
		<link rel="stylesheet" href="us-css/user_style.css" />
		<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css"/>
	</head>
	<body>
		<!--导航栏-->
		<div class="lxy_header">
					<div class="user_header_left">
					<img src="no-img/logo.png"/>
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
		<div class="lxy_nav1">
				<div >
					<span><a>图书</a></span>
					<span>></span>
					<span><a>小说</a></span>
					<span>></span>
					<span><a>月亮与六便士</a></span>
				</div>
		</div>
		<!--内容主体-->
		<div class="rb_main">
			<!--内容主体（左）-->
			<div class="rb_main_left">
				<%
			    	ArrayList<BookEntity> list = (ArrayList<BookEntity>)session.getAttribute("book");
					if(list!=null)
					{
						for(BookEntity i: list)
						{
							if("月亮与六便士".equals(i.getB_name()))
							{
								
							
				%>
				<!--基本信息-->
				<div class="b_data">
					<div class="b_cover">	</div>
						<h2><%=i.getB_name() %>（作家榜精典）</h2>
						<p>大星文化出品，2019年三色格图书桂冠</p>
						<span>作者：<a>[英]<%=i.getB_author() %></a></span></br>
						<span>译者：<a>徐淳刚</a></span></br>
						<span>类别：图书/虚构</span></br>
						<span>出版社：<%=i.getB_publish() %>/<%=i.getB_year() %></span></br>
						<span>提供方：<a><%=i.getB_publish() %></a></span></br>
						<span>字数:约134,000字</span></br>
						<span>ISBN:<a><%=i.getB_isbn() %></a></span>
						<div class="bookloving">
							<span class="fa fa-heart"></span>
							<span>收藏</span>
					
					</div>
				</div>
				<!--具体介绍-->
				<div class="book_dicription">
					<div class="b_coabstract">
						<h3>作品简介</h3>
						<%=i.getB_coabstract() %>
					</div>
					<div class="b_auabstract">
						<h3>作家简介</h3>
						<%=i.getB_auabstract() %>
					</div>
					<%
								}
							}
						}
					%>
					<div class="b_commend">
						<h3>喜欢这本书的人也喜欢</h3>
						<div class="commend_list">
							<img height="135" width="90" src="no-img/xwz.jpg" />
							<h5>小王子</h5>
							<p>〔法〕安托万·德·圣-埃克苏佩里</p>
						</div>
						<div class="commend_list">
							<img height="135" width="90" src="no-img/z1984.jpg" />
							<h5>1984</h5>
							<p>〔英〕 乔治·奥威尔</p>
						</div>
						<div class="commend_list">
							<img height="135" width="90" src="no-img/hz.jpg" />
							<h5>活着</h5>
							<p>余华</p>
						</div>
						<div class="commend_list">
							<img height="135" width="90" src="no-img/ssyzzgn.jpg" />
							<h5>杀死一只知更鸟</h5>
							<p>〔美〕哈珀·李</p>
						</div>
						<div class="commend_list" style="margin-right: 0px!important;">
							<img height="135" width="90" src="no-img/rxdjs.jpg" />
							<h5>人性的枷锁</h5>
							<p>〔英〕威廉·萨默塞特·毛姆</p>
						</div>
					</div>
				</div>

			</div>	
			<!--内容主体（右）-->
			<div class="rb_main_right">
				<div class="b_publish">
					<h4>出版方</h4>
					<div class="b_p_cover"></div>
					<h4 style="margin-top: 25px;padding-left: 60px;margin-bottom: 36px;;">浙江文艺出版社</h4>
					<p>浙江文艺出版社成立于1983年，是全国重要的文学出版重镇之一。浙江文艺一直以出版高品位、高格调、高档次、高质量的中外文学名著、人文社科著作为特色，近年来也多次成功推出引起全国轰动的重量级畅销书。</p>
					<p style="margin-top: 24px;">全部作品(<a>337</a>)</p>
					<p style="line-height: 30px;">女观众</p>
					<p style="line-height: 30px;">错失之爱</p>
					<p style="line-height: 30px;">1945：秘密营救</p>
					<p style="line-height: 30px;">很高兴遇见你，小猫比利</p>
					<p style="line-height: 30px;">破城</p>
				</div>
				<div class="b_label">
					<h4>作品标签</h4>
					<ul>
						<li>
							<span>小说</span>
							<a>15474</a>
						</li>
						<li>
							<span>经典</span>
							<a>2401</a>
						</li>
						<li>
							<span>外国文学</span>
							<a>4421</a>
						</li>
						<li>
							<span>毛姆</span>
							<a>60</a>
						</li>
						<li>
							<span>世界名著</span>
							<a>1521</a>
						</li>
						<li>
							<span>作家榜经典文库</span>
							<a>67</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--页脚-->
			<div class="pick" style="background-color: #e5eaf1 !important"></div>
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
	</body>
</html>
